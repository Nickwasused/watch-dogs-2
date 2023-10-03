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
end
function export:Init(cbox)
  local l0
  self._name = "L31M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main"
  self.PlayerEntity = nil
  self.box_FreeRoam_Beat_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_10
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|319174926"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_10_NewBeatStarted
  self.box_Reward_Phone_Call_Monitor_6 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_6
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|403336704"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_6_OnPhoneCallEnded
  self.box_FreeRoam_Hack_Gameplay_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_4
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|504033453"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_4_Hacked
  self.box_FreeRoam_Hack_Gameplay_9 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_9
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|987820600"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_9_Hacked
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1131621887"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1237815237"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Progression_Tag_Monitor_11 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_11
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1311766405"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_11_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_11_HasNOT
  self.box_Reward_Phone_Call_Monitor_5 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1386012171"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1546583003"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1639280629"
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1642129501"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1856466589"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_12 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_12
  l0._graph = self
  l0._name = "box_RewardController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1990703454"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_12_RewardsExecuted
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|554358091", "554358091", "L31M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_10()
  l0 = self.box_FreeRoam_Beat_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|848221317", "848221317", "L31M010_Main", "CheckPoint_1", "box_FreeRoam_Beat_10.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|2090656198", "2090656198", "L31M010_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|480420971", "480420971", "L31M010_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_10_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_11
  l0.ProgressionTag = "ProgressionTag.9223372072565784511"
  l0 = self.box_FreeRoam_Beat_10
  l1 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|384815283", "384815283", "L31M010_Main", "box_FreeRoam_Beat_10.NewBeatStarted", "box_Progression_Tag_Monitor_11.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Reward_Phone_Call_Monitor_6_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_Reward_Phone_Call_Monitor_6
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1839673174", "1839673174", "L31M010_Main", "box_Reward_Phone_Call_Monitor_6.OnPhoneCallEnded", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_Hack_Gameplay_4_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0.ItemDb = "Items.9223372051775435971"
  l0 = self.box_FreeRoam_Hack_Gameplay_4
  l1 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|101917016", "101917016", "L31M010_Main", "box_FreeRoam_Hack_Gameplay_4.Hacked", "box_Reward_Phone_Call_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Hack_Gameplay_9_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_6
  l0.ItemDb = "Items.9223372050495846790"
  l0 = self.box_FreeRoam_Hack_Gameplay_9
  l1 = self.box_Reward_Phone_Call_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1617214262", "1617214262", "L31M010_Main", "box_FreeRoam_Hack_Gameplay_9.Hacked", "box_Reward_Phone_Call_Monitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_9
  l0.CLO = "9223372049726146859"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_FreeRoam_Hack_Gameplay_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|564090868", "564090868", "L31M010_Main", "box_MissionMessageController_v3_8.Out", "box_FreeRoam_Hack_Gameplay_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M010.ActivationObjective",
    item = "ActivationObjective",
    id = "550169"
  }
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|517426504", "517426504", "L31M010_Main", "box_MultipleOR_7.Out", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_11_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|179822908", "179822908", "L31M010_Main", "box_Progression_Tag_Monitor_11.Has", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_11_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611567231"
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_PhoneCommunicationController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|172663497", "172663497", "L31M010_Main", "box_Progression_Tag_Monitor_11.HasNOT", "box_PhoneCommunicationController_13.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_10()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l1 = self.box_FreeRoam_Beat_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1719871550", "1719871550", "L31M010_Main", "box_Reward_Phone_Call_Monitor_5.OnPhoneCallEnded", "box_FreeRoam_Beat_10.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M010.ActivationObjective",
    item = "ActivationObjective",
    id = "550169"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1581710275", "1581710275", "L31M010_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Hack_Gameplay_4
  l0.CLO = "9223372049726146858"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_MissionMessageController_v3_2
  l1 = self.box_FreeRoam_Hack_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|474862823", "474862823", "L31M010_Main", "box_MissionMessageController_v3_2.Out", "box_FreeRoam_Hack_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_13_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_12
  l0.ItemDB = "Items.9223372072565784510"
  l0 = self.box_PhoneCommunicationController_13
  l1 = self.box_RewardController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1759135108", "1759135108", "L31M010_Main", "box_PhoneCommunicationController_13.OnCommunicationFinished", "box_RewardController_v3_12.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_RewardController_v3_12_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_RewardController_v3_12
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M010.domino|@L31M010_Main|1359664301", "1359664301", "L31M010_Main", "box_RewardController_v3_12.RewardsExecuted", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_FreeRoam_Beat_10()
  local l0
  l0 = self.box_FreeRoam_Beat_10
  l0.ProgressionLayer = "ProgressionLayers.9223372070253267483"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201759"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372052611639472"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
