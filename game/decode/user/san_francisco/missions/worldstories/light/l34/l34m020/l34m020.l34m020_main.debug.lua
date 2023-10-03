export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/HackGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L34M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main"
  self.PlayerEntity = "5"
  self.Target = 0
  self.box_Multiple_AND_52 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_52
  l0._graph = self
  l0._name = "box_Multiple_AND_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|35713311"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_52_Out
  self.box_HackGameplayController_21 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_21
  l0._graph = self
  l0._name = "box_HackGameplayController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|43441347"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_21_Completed
  self.box_PhoneCommunicationController_23 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_23
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|235739678"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_44 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_44
  l0._graph = self
  l0._name = "box_RewardController_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|281826574"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_44_RewardsExecuted
  self.box_Progression_Tag_Monitor_41 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_41
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|291573687"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_41_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_41_HasNOT
  self.box_Progression_Tag_Monitor_26 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_26
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|310609341"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_26_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_26_HasNOT
  self.box_Reward_Phone_Call_Monitor_2 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|333380885"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_2_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded
  self.box_PhoneCommunicationController_31 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_31
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|412614193"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_31_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_14 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_14
  l0._graph = self
  l0._name = "box_Multiple_AND_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|413382003"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_14_Out
  self.box_Reward_Phone_Call_Monitor_32 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_32
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|529105650"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_32_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_32_OnPhoneCallEnded
  self.box_FreeRoam_Beat_75 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_75
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|622654788"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_75_NewBeatStarted
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|650481281"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|697993143"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_Progression_Tag_Monitor_42 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_42
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|758473079"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_42_HasNOT
  self.box_PhoneCommunicationController_22 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_22
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|781474256"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_40 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_40
  l0._graph = self
  l0._name = "box_RewardController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|974782440"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_40_RewardsExecuted
  self.box_PhoneCommunicationController_29 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_29
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|982701071"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_47 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_47
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|994261916"
  l0.Out = self.f_box_MissionMessageController_v3_47_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_43 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_43
  l0._graph = self
  l0._name = "box_RewardController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1000651040"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_43_RewardsExecuted
  self.box_Reward_Phone_Call_Monitor_36 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_36
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1012780943"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_36_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_36_OnPhoneCallEnded
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1033169402"
  self.box_MultipleOR_45 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1047273538"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_Progression_Tag_Monitor_12 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_12
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1051554397"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_12_HasNOT
  self.box_HackGameplayController_35 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_35
  l0._graph = self
  l0._name = "box_HackGameplayController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1054395032"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_35_Completed
  self.box_FreeRoam_Hack_Gameplay_46 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_46
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1123445079"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_46_Hacked
  self.box_Multiple_AND_49 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_49
  l0._graph = self
  l0._name = "box_Multiple_AND_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1260851941"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_49_Out
  self.box_Progression_Tag_Monitor_24 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_24
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1470306953"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_24_HasNOT
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1563848099"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_39 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_39
  l0._graph = self
  l0._name = "box_MultipleOR_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1620883485"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_39_Out
  self.box_Reward_Phone_Call_Monitor_37 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_37
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1715251270"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_37_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_37_OnPhoneCallEnded
  self.box_RewardController_v3_4 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_4
  l0._graph = self
  l0._name = "box_RewardController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1809944108"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_4_RewardsExecuted
  self.box_Progression_Tag_Monitor_7 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_7
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1835140271"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_7_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_7_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_7_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_7_HasNOT
  self.box_HackGameplayController_28 = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self.box_HackGameplayController_28
  l0._graph = self
  l0._name = "box_HackGameplayController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1961904223"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_HackGameplayController_28_Completed
  self.box_ObjectiveMonitor_v2_3 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_3
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2059770136"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_3_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_Progression_Tag_Monitor_10 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_10
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2083475906"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_10_HasNOT
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
  self:OnEnter_box_FreeRoam_Beat_75()
  l0 = self.box_FreeRoam_Beat_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1000261755", "1000261755", "L34M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_75.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2095955440", "2095955440", "L34M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1663172444"
  l0.Out = self.f_box_SetInteger_v2_50_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1835563458", "1835563458", "L34M020_Main", "In", "box_SetInteger_v2_50.FromInteger", self, l0)
  l0:FromInteger()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_37()
  l0 = self.box_Reward_Phone_Call_Monitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|362555672", "362555672", "L34M020_Main", "box_Ordered_Output_51.Out", "box_Reward_Phone_Call_Monitor_37.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|467119999", "467119999", "L34M020_Main", "box_Ordered_Output_51.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Multiple_AND_52_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1832541719"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_Multiple_AND_52
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|591445925", "591445925", "L34M020_Main", "box_Multiple_AND_52.Out", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_HackGameplayController_21_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2009757835"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_HackGameplayController_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|510021061", "510021061", "L34M020_Main", "box_HackGameplayController_21.Completed", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_44_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_49()
  l0 = self.box_RewardController_v3_44
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1197361181", "1197361181", "L34M020_Main", "box_RewardController_v3_44.RewardsExecuted", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Progression_Tag_Monitor_41_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_42
  l0.ProgressionTag = "ProgressionTag.9223372063489283003"
  l0 = self.box_Progression_Tag_Monitor_41
  l1 = self.box_Progression_Tag_Monitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|654788102", "654788102", "L34M020_Main", "box_Progression_Tag_Monitor_41.Has", "box_Progression_Tag_Monitor_42.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_41_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_44
  l0.ItemDB = "Items.9223372063489283006"
  l0 = self.box_Progression_Tag_Monitor_41
  l1 = self.box_RewardController_v3_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1319756285", "1319756285", "L34M020_Main", "box_Progression_Tag_Monitor_41.HasNOT", "box_RewardController_v3_44.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Progression_Tag_Monitor_26_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_41
  l0.ProgressionTag = "ProgressionTag.9223372063489283002"
  l0 = self.box_Progression_Tag_Monitor_26
  l1 = self.box_Progression_Tag_Monitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2033276226", "2033276226", "L34M020_Main", "box_Progression_Tag_Monitor_26.Has", "box_Progression_Tag_Monitor_41.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_26_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_40
  l0.ItemDB = "Items.9223372063489283005"
  l0 = self.box_Progression_Tag_Monitor_26
  l1 = self.box_RewardController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|566535407", "566535407", "L34M020_Main", "box_Progression_Tag_Monitor_26.HasNOT", "box_RewardController_v3_40.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2076552440", "2076552440", "L34M020_Main", "box_Reward_Phone_Call_Monitor_2.Disabled", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Reward_Phone_Call_Monitor_2_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_2()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|744387736", "744387736", "L34M020_Main", "box_Reward_Phone_Call_Monitor_2.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_22
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846428"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1769781575", "1769781575", "L34M020_Main", "box_Ordered_Output_58.Out", "box_PhoneCommunicationController_22.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_49()
  l0 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1770756397", "1770756397", "L34M020_Main", "box_Ordered_Output_58.Out", "box_Multiple_AND_49.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_PhoneCommunicationController_31_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_4
  l0.ItemDB = "Items.9223372063489283004"
  l0 = self.box_PhoneCommunicationController_31
  l1 = self.box_RewardController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1671621987", "1671621987", "L34M020_Main", "box_PhoneCommunicationController_31.OnCommunicationStarted", "box_RewardController_v3_4.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Multiple_AND_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|442462387"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0 = self.box_Multiple_AND_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|827032134", "827032134", "L34M020_Main", "box_Multiple_AND_14.Out", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_23
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846429"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1819418106", "1819418106", "L34M020_Main", "box_Ordered_Output_60.Out", "box_PhoneCommunicationController_23.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2143858452", "2143858452", "L34M020_Main", "box_Ordered_Output_60.Out", "box_Multiple_AND_14.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Reward_Phone_Call_Monitor_32_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_Reward_Phone_Call_Monitor_32
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|79827629", "79827629", "L34M020_Main", "box_Reward_Phone_Call_Monitor_32.Disabled", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Reward_Phone_Call_Monitor_32_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_32()
  l0 = self.box_Reward_Phone_Call_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|157560629", "157560629", "L34M020_Main", "box_Reward_Phone_Call_Monitor_32.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_32.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_52()
  l0 = self.box_Multiple_AND_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|886625271", "886625271", "L34M020_Main", "box_Ordered_Output_54.Out", "box_Multiple_AND_52.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_49()
  l0 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|201897627", "201897627", "L34M020_Main", "box_Ordered_Output_54.Out", "box_Multiple_AND_49.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_54_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1894061484", "1894061484", "L34M020_Main", "box_Ordered_Output_54.Out", "box_Multiple_AND_14.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_FreeRoam_Beat_75_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_75
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_47
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L34.L34M020.Objectives.Objective010",
    item = "Objective",
    id = "550148"
  }
  l0.IncrementalObjectiveTotal = 4
  l0 = self.box_FreeRoam_Beat_75
  l1 = self.box_MissionMessageController_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1384326284", "1384326284", "L34M020_Main", "box_FreeRoam_Beat_75.NewBeatStarted", "box_MissionMessageController_v3_47.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_26
  l0.ProgressionTag = "ProgressionTag.9223372063489283001"
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_Progression_Tag_Monitor_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1235602594", "1235602594", "L34M020_Main", "box_MissionMessageController_v3_6.Out", "box_Progression_Tag_Monitor_26.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_MultipleOR_17
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|297493556", "297493556", "L34M020_Main", "box_MultipleOR_17.Out", "box_TriggerMonitor_v2_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_42_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_43
  l0.ItemDB = "Items.9223372063489283007"
  l0 = self.box_Progression_Tag_Monitor_42
  l1 = self.box_RewardController_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|949178526", "949178526", "L34M020_Main", "box_Progression_Tag_Monitor_42.HasNOT", "box_RewardController_v3_43.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_RewardController_v3_40_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_52()
  l0 = self.box_RewardController_v3_40
  l1 = self.box_Multiple_AND_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|742750479", "742750479", "L34M020_Main", "box_RewardController_v3_40.RewardsExecuted", "box_Multiple_AND_52.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionMessageController_v3_47_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1856531992"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_5_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_5_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_5_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_5_Out_5
  l0 = self.box_MissionMessageController_v3_47
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1279073203", "1279073203", "L34M020_Main", "box_MissionMessageController_v3_47.Out", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_43_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_14()
  l0 = self.box_RewardController_v3_43
  l1 = self.box_Multiple_AND_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1359394387", "1359394387", "L34M020_Main", "box_RewardController_v3_43.RewardsExecuted", "box_Multiple_AND_14.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Reward_Phone_Call_Monitor_36_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_Reward_Phone_Call_Monitor_36
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1916547526", "1916547526", "L34M020_Main", "box_Reward_Phone_Call_Monitor_36.Disabled", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Reward_Phone_Call_Monitor_36_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_36()
  l0 = self.box_Reward_Phone_Call_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|872419346", "872419346", "L34M020_Main", "box_Reward_Phone_Call_Monitor_36.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_36.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L34.L34M020.Objectives.Objective010",
    item = "Objective",
    id = "550148"
  }
  l0 = self.box_MultipleOR_45
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|287997431", "287997431", "L34M020_Main", "box_MultipleOR_45.Out", "box_MissionMessageController_v3_6.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Progression_Tag_Monitor_12_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_HackGameplayController_21
  l0.MarkerEntity = "9223372049643791952"
  l0.Entity = "9223372050443645718"
  l0 = self.box_Progression_Tag_Monitor_12
  l1 = self.box_HackGameplayController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|379364511", "379364511", "L34M020_Main", "box_Progression_Tag_Monitor_12.HasNOT", "box_HackGameplayController_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackGameplayController_35_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|11183781"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_HackGameplayController_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1629327226", "1629327226", "L34M020_Main", "box_HackGameplayController_35.Completed", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_46_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2018174284"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1558132255", "1558132255", "L34M020_Main", "box_FreeRoam_Hack_Gameplay_46.Hacked", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_32()
  l0 = self.box_Reward_Phone_Call_Monitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|470768910", "470768910", "L34M020_Main", "box_Ordered_Output_48.Out", "box_Reward_Phone_Call_Monitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1590601798", "1590601798", "L34M020_Main", "box_Ordered_Output_48.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Multiple_AND_49_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|392825856"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0 = self.box_Multiple_AND_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|2093556142", "2093556142", "L34M020_Main", "box_Multiple_AND_49.Out", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_24_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_HackGameplayController_35
  l0.MarkerEntity = "9223372058085839993"
  l0.Entity = "9223372054698134880"
  l0 = self.box_Progression_Tag_Monitor_24
  l1 = self.box_HackGameplayController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|766191067", "766191067", "L34M020_Main", "box_Progression_Tag_Monitor_24.HasNOT", "box_HackGameplayController_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_31
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846426"
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_PhoneCommunicationController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|35476506", "35476506", "L34M020_Main", "box_TriggerMonitor_v2_13.Enter", "box_PhoneCommunicationController_31.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_MultipleOR_39_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|535253380"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_54_Out_2
  l0 = self.box_MultipleOR_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1121418783", "1121418783", "L34M020_Main", "box_MultipleOR_39.Out", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.Target = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Beat_75()
  l0 = self.box_FreeRoam_Beat_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|861818907", "861818907", "L34M020_Main", "box_SetInteger_v2_50.Out", "box_FreeRoam_Beat_75.StartNewBeat", clone, l0)
  l0:StartNewBeat()
end
function export:f_box_Reward_Phone_Call_Monitor_37_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_Reward_Phone_Call_Monitor_37
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1206751450", "1206751450", "L34M020_Main", "box_Reward_Phone_Call_Monitor_37.Disabled", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Reward_Phone_Call_Monitor_37_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_37()
  l0 = self.box_Reward_Phone_Call_Monitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|809659202", "809659202", "L34M020_Main", "box_Reward_Phone_Call_Monitor_37.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_37.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_RewardController_v3_4_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_RewardController_v3_4
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|981897726", "981897726", "L34M020_Main", "box_RewardController_v3_4.RewardsExecuted", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_29
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846427"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1062013791", "1062013791", "L34M020_Main", "box_Ordered_Output_56.Out", "box_PhoneCommunicationController_29.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_52()
  l0 = self.box_Multiple_AND_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1116938478", "1116938478", "L34M020_Main", "box_Ordered_Output_56.Out", "box_Multiple_AND_52.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Progression_Tag_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|257567597", "257567597", "L34M020_Main", "box_Progression_Tag_Monitor_7.Disabled", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_Progression_Tag_Monitor_7
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|213186720", "213186720", "L34M020_Main", "box_Progression_Tag_Monitor_7.Enabled", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Progression_Tag_Monitor_7_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|155379580", "155379580", "L34M020_Main", "box_Progression_Tag_Monitor_7.HasNOT", "box_Progression_Tag_Monitor_7.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_7_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1133661071", "1133661071", "L34M020_Main", "box_Progression_Tag_Monitor_7.TagIsOwned", "box_Progression_Tag_Monitor_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_10
  l0.ProgressionTag = "ProgressionTag.9223372049643787637"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|306926023", "306926023", "L34M020_Main", "box_Ordered_Output_5.Out", "box_Progression_Tag_Monitor_10.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_12
  l0.ProgressionTag = "ProgressionTag.9223372049643787638"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|11223343", "11223343", "L34M020_Main", "box_Ordered_Output_5.Out", "box_Progression_Tag_Monitor_12.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_5_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_24
  l0.ProgressionTag = "ProgressionTag.9223372049643787639"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1085698412", "1085698412", "L34M020_Main", "box_Ordered_Output_5.Out", "box_Progression_Tag_Monitor_24.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_5_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FreeRoam_Hack_Gameplay_46
  l0.CLO = "9223372054698134876"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372049643787640"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1722022340", "1722022340", "L34M020_Main", "box_Ordered_Output_5.Out", "box_FreeRoam_Hack_Gameplay_46.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_5_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L34.L34M020.Objectives.Objective010",
    item = "Objective",
    id = "550148"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1365580747", "1365580747", "L34M020_Main", "box_Ordered_Output_5.Out", "box_ObjectiveMonitor_v2_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_7()
  l0 = self.box_Progression_Tag_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|89733363", "89733363", "L34M020_Main", "box_Ordered_Output_5.Out", "box_Progression_Tag_Monitor_7.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_HackGameplayController_28_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1241296838"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0 = self.box_HackGameplayController_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1828607198", "1828607198", "L34M020_Main", "box_HackGameplayController_28.Completed", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_36()
  l0 = self.box_Reward_Phone_Call_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|213646079", "213646079", "L34M020_Main", "box_Ordered_Output_53.Out", "box_Reward_Phone_Call_Monitor_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|652549185", "652549185", "L34M020_Main", "box_Ordered_Output_53.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reward_Phone_Call_Monitor_2()
  l0 = self.box_Reward_Phone_Call_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|222062528", "222062528", "L34M020_Main", "box_Ordered_Output_11.Out", "box_Reward_Phone_Call_Monitor_2.Enable", clone, l0)
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
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|523847463", "523847463", "L34M020_Main", "box_Ordered_Output_11.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_ObjectiveMonitor_v2_3_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_ObjectiveMonitor_v2_3
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|822190259", "822190259", "L34M020_Main", "box_ObjectiveMonitor_v2_3.ObjectiveCompleted", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_Progression_Tag_Monitor_10_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_HackGameplayController_28
  l0.MarkerEntity = "9223372049643791950"
  l0.Entity = "9223372050443645714"
  l0 = self.box_Progression_Tag_Monitor_10
  l1 = self.box_HackGameplayController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L34\\L34M020\\L34M020.domino|@L34M020_Main|1305554529", "1305554529", "L34M020_Main", "box_Progression_Tag_Monitor_10.HasNOT", "box_HackGameplayController_28.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Multiple_AND_52()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_2()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_2
  l0.ItemDb = "Items.9223372056442002757"
end
function export:OnEnter_box_Multiple_AND_14()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_32()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_32
  l0.ItemDb = "Items.9223372050495846415"
end
function export:OnEnter_box_FreeRoam_Beat_75()
  local l0
  l0 = self.box_FreeRoam_Beat_75
  l0.ProgressionLayer = "ProgressionLayers.9223372049643788343"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_36()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_36
  l0.ItemDb = "Items.9223372050495846416"
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050495846430"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 1
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_Multiple_AND_49()
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.TriggerList = {
    "9223372066509532673",
    "9223372066509532675",
    "9223372066509532679",
    "9223372066509532677"
  }
end
function export:OnEnter_box_MultipleOR_39()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_37()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_37
  l0.ItemDb = "Items.9223372050357370618"
end
function export:OnEnter_box_Progression_Tag_Monitor_7()
  local l0
  l0 = self.box_Progression_Tag_Monitor_7
  l0.ProgressionTag = "ProgressionTag.9223372063489283000"
end
_compilerVersion = 4
