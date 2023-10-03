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
  self._name = "L06M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main"
  self.PlayerEntity = nil
  self.Player = "0"
  self.voices = 0
  self.box_Progression_Tag_Monitor_24 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_24
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|8119014"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_24_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_24_HasNOT
  self.box_ObjectiveMonitor_v2_38 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_38
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|336090179"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_38_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_PhoneCommunicationMonitor_28 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|395847581"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_28_OnCommunicationFinished
  self.box_RewardController_v3_21 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_21
  l0._graph = self
  l0._name = "box_RewardController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|400629340"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_21_RewardsExecuted
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|600798167"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Reward_Phone_Call_Monitor_5 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|815543735"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|859107806"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_20 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_20
  l0._graph = self
  l0._name = "box_RewardController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|918152951"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_20_RewardsExecuted
  self.box_Reward_Phone_Call_Monitor_4 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_4
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1013822596"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_4_OnPhoneCallEnded
  self.box_MissionController_v4_14 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_14
  l0._graph = self
  l0._name = "box_MissionController_v4_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1015506718"
  self.box_PhoneCommunicationController_27 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_27
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1052340254"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1081771009"
  l0.Out = self.f_box_MissionCheckpointReach_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Reward_Phone_Call_Monitor_3 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1140401137"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded
  self.box_FreeRoam_Beat_23 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_23
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1220275755"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_23_NewBeatStarted
  self.box_PhoneCommunicationController_36 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_36
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1279077554"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Progression_Tag_Monitor_17 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_17
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1284764961"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_17_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_17_HasNOT
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1385062777"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_PhoneCommunicationController_35 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_35
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1492527039"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_10 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_10
  l0._graph = self
  l0._name = "box_RewardController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1522592837"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_10_RewardsExecuted
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1886812658"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_MissionMessageController_v3_29 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_29
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1900308758"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_18 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1919152938"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_18_Hacked
  self.box_FreeRoam_Hack_Gameplay_19 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_19
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2052090188"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_19_Hacked
  self.box_Progression_Tag_Monitor_1 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_1
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2099611586"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_1_HasNOT
  self.box_FreeRoam_Hack_Gameplay_22 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_22
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2146289767"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_22_Hacked
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
  self:OnEnter_box_FreeRoam_Beat_23()
  l0 = self.box_FreeRoam_Beat_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2043554954", "2043554954", "L06M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_23.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|567117792", "567117792", "L06M010_Main", "CheckPoint_1", "box_MultipleOR_11.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_23()
  l0 = self.box_FreeRoam_Beat_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|840747376", "840747376", "L06M010_Main", "In", "box_FreeRoam_Beat_23.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Progression_Tag_Monitor_24_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_1
  l0.ProgressionTag = "ProgressionTag.9223372066822572842"
  l0 = self.box_Progression_Tag_Monitor_24
  l1 = self.box_Progression_Tag_Monitor_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|702432683", "702432683", "L06M010_Main", "box_Progression_Tag_Monitor_24.Has", "box_Progression_Tag_Monitor_1.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_24_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_21
  l0.ItemDB = "Items.9223372066709406424"
  l0 = self.box_Progression_Tag_Monitor_24
  l1 = self.box_RewardController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|86996999", "86996999", "L06M010_Main", "box_Progression_Tag_Monitor_24.HasNOT", "box_RewardController_v3_21.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0.ItemDb = "Items.9223372049814636764"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1469270586", "1469270586", "L06M010_Main", "box_Ordered_Output_9.Out", "box_Reward_Phone_Call_Monitor_5.Enable", clone, l0)
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|121461032", "121461032", "L06M010_Main", "box_Ordered_Output_9.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reward_Phone_Call_Monitor_4
  l0.ItemDb = "Items.9223372049814636765"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1505783504", "1505783504", "L06M010_Main", "box_Ordered_Output_8.Out", "box_Reward_Phone_Call_Monitor_4.Enable", clone, l0)
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1837999102", "1837999102", "L06M010_Main", "box_Ordered_Output_8.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_ObjectiveMonitor_v2_38_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_ObjectiveMonitor_v2_38
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1529481186", "1529481186", "L06M010_Main", "box_ObjectiveMonitor_v2_38.ObjectiveCompleted", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationMonitor_28_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_PhoneCommunicationMonitor_28
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2134071879", "2134071879", "L06M010_Main", "box_PhoneCommunicationMonitor_28.OnCommunicationFinished", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RewardController_v3_21_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_36
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123374"
  l0 = self.box_RewardController_v3_21
  l1 = self.box_PhoneCommunicationController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1917903331", "1917903331", "L06M010_Main", "box_RewardController_v3_21.RewardsExecuted", "box_PhoneCommunicationController_36.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_29
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  l0 = self.box_MultipleOR_7
  l1 = self.box_MissionMessageController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2109275878", "2109275878", "L06M010_Main", "box_MultipleOR_7.Out", "box_MissionMessageController_v3_29.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|802056971", "802056971", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_18.PreStart", clone, l0)
  l0:PreStart()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1134551501", "1134551501", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_18.Start", clone, l0)
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
  self:OnEnter_box_FreeRoam_Hack_Gameplay_19()
  l0 = self.box_FreeRoam_Hack_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|394959518", "394959518", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_19.PreStart", clone, l0)
  l0:PreStart()
end
function export:f_box_Ordered_Output_25_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_19()
  l0 = self.box_FreeRoam_Hack_Gameplay_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1432527469", "1432527469", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_22()
  l0 = self.box_FreeRoam_Hack_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1000142224", "1000142224", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_22.PreStart", clone, l0)
  l0:PreStart()
end
function export:f_box_Ordered_Output_25_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_22()
  l0 = self.box_FreeRoam_Hack_Gameplay_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1520515949", "1520515949", "L06M010_Main", "box_Ordered_Output_25.Out", "box_FreeRoam_Hack_Gameplay_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_25_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1933640794", "1933640794", "L06M010_Main", "box_Ordered_Output_25.Out", "box_ObjectiveMonitor_v2_38.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|793212683", "793212683", "L06M010_Main", "box_Reward_Phone_Call_Monitor_5.OnPhoneCallEnded", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|634903075"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_25_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_25_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_25_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_25_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_25_Out_6
  l0 = self.box_MissionMessageController_v3_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1214445446", "1214445446", "L06M010_Main", "box_MissionMessageController_v3_2.Out", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_20_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_35
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123373"
  l0 = self.box_RewardController_v3_20
  l1 = self.box_PhoneCommunicationController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|430143716", "430143716", "L06M010_Main", "box_RewardController_v3_20.RewardsExecuted", "box_PhoneCommunicationController_35.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Reward_Phone_Call_Monitor_4_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_Reward_Phone_Call_Monitor_4
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|779821807", "779821807", "L06M010_Main", "box_Reward_Phone_Call_Monitor_4.OnPhoneCallEnded", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MissionCheckpointReach_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationMonitor_28
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123375"
  l0 = self.box_MissionCheckpointReach_15
  l1 = self.box_PhoneCommunicationMonitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|162040653", "162040653", "L06M010_Main", "box_MissionCheckpointReach_15.Out", "box_PhoneCommunicationMonitor_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_3_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|58930410", "58930410", "L06M010_Main", "box_Reward_Phone_Call_Monitor_3.OnPhoneCallEnded", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FreeRoam_Beat_23_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L06.L06M010.Objectives.Objective010",
    item = "Objective",
    id = "457809"
  }
  l0.IncrementalObjectiveTotal = 3
  l0 = self.box_FreeRoam_Beat_23
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1414130024", "1414130024", "L06M010_Main", "box_FreeRoam_Beat_23.NewBeatStarted", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_17_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_24
  l0.ProgressionTag = "ProgressionTag.9223372066709406421"
  l0 = self.box_Progression_Tag_Monitor_17
  l1 = self.box_Progression_Tag_Monitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1185955252", "1185955252", "L06M010_Main", "box_Progression_Tag_Monitor_17.Has", "box_Progression_Tag_Monitor_24.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_17_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_20
  l0.ItemDB = "Items.9223372066709406423"
  l0 = self.box_Progression_Tag_Monitor_17
  l1 = self.box_RewardController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1360637919", "1360637919", "L06M010_Main", "box_Progression_Tag_Monitor_17.HasNOT", "box_RewardController_v3_20.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_11
  l1 = self.box_MissionController_v4_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|692354407", "692354407", "L06M010_Main", "box_MultipleOR_11.Out", "box_MissionController_v4_14.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RewardController_v3_10_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_27
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049090123375"
  l0 = self.box_RewardController_v3_10
  l1 = self.box_PhoneCommunicationController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|871289559", "871289559", "L06M010_Main", "box_RewardController_v3_10.RewardsExecuted", "box_PhoneCommunicationController_27.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_17
  l0.ProgressionTag = "ProgressionTag.9223372066709406420"
  l0 = self.box_MultipleOR_37
  l1 = self.box_Progression_Tag_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1586489522", "1586489522", "L06M010_Main", "box_MultipleOR_37.Out", "box_Progression_Tag_Monitor_17.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_FreeRoam_Hack_Gameplay_18_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|92314867"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|275268426", "275268426", "L06M010_Main", "box_FreeRoam_Hack_Gameplay_18.Hacked", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_19_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|2078823561"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1570283858", "1570283858", "L06M010_Main", "box_FreeRoam_Hack_Gameplay_19.Hacked", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reward_Phone_Call_Monitor_3
  l0.ItemDb = "Items.9223372049957906168"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|282711805", "282711805", "L06M010_Main", "box_Ordered_Output_6.Out", "box_Reward_Phone_Call_Monitor_3.Enable", clone, l0)
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
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|577405807", "577405807", "L06M010_Main", "box_Ordered_Output_6.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Progression_Tag_Monitor_1_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_10
  l0.ItemDB = "Items.9223372066822572843"
  l0 = self.box_Progression_Tag_Monitor_1
  l1 = self.box_RewardController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|1334316710", "1334316710", "L06M010_Main", "box_Progression_Tag_Monitor_1.HasNOT", "box_RewardController_v3_10.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_FreeRoam_Hack_Gameplay_22_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|128827785"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L06\\L06M010\\L06M010.domino|@L06M010_Main|950211905", "950211905", "L06M010_Main", "box_FreeRoam_Hack_Gameplay_22.Hacked", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_FreeRoam_Beat_23()
  local l0
  l0 = self.box_FreeRoam_Beat_23
  l0.ProgressionLayer = "ProgressionLayers.9223372047486643325"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_18()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_18
  l0.CLO = "9223372054698301514"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643340"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_19()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_19
  l0.CLO = "9223372054698301515"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643341"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_22()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_22
  l0.CLO = "9223372047486648762"
  l0.HackCategory = "Contextual"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047486643342"
end
_compilerVersion = 4
