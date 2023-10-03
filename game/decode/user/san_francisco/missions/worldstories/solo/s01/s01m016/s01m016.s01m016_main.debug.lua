export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SendTrackingEvent.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShopMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/3549285901.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2670290390.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S01M016_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main"
  self.PlayerEntity = nil
  self.box_RewardController_v3_42 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_42
  l0._graph = self
  l0._name = "box_RewardController_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|90449080"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_42_RewardsExecuted
  self.box_PlayerPhoneMonitor_32 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_32
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|140504876"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = self.f_box_PlayerPhoneMonitor_32_OnPhoneOpened
  l0.OnPhoneClosed = self.f_box_PlayerPhoneMonitor_32_OnPhoneClosed
  l0.OnAppOpened = self.f_box_PlayerPhoneMonitor_32_OnAppOpened
  l0.OnAppClosed = self.f_box_PlayerPhoneMonitor_32_OnAppClosed
  l0.OnAppInstalled = DummyFunction
  self.box_RewardController_v3_44 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_44
  l0._graph = self
  l0._name = "box_RewardController_v3_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|151129918"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_44_RewardsExecuted
  self.box_RewardController_v3_30 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_30
  l0._graph = self
  l0._name = "box_RewardController_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|159713361"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_30_RewardsExecuted
  self.box_MissionController_v4_9 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_9
  l0._graph = self
  l0._name = "box_MissionController_v4_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|179121341"
  self.box_InteractGameplayController_43 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_43
  l0._graph = self
  l0._name = "box_InteractGameplayController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|277545550"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_43_Completed
  self.box_MissionMessageController_v3_4 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_4
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|284388776"
  l0.Out = self.f_box_MissionMessageController_v3_4_Out
  l0.MessageCompleted = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_46 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_46
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|399006116"
  l0.Enabled = self.f_box_Player_Vehicle_Monitor_v2_46_Enabled
  l0.Disabled = self.f_box_Player_Vehicle_Monitor_v2_46_Disabled
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_46_Enter
  l0.Leave = DummyFunction
  l0.ChangeSeat = DummyFunction
  self.box_MultipleOR_28 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|418888238"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_RewardController_v3_13 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_13
  l0._graph = self
  l0._name = "box_RewardController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|429450344"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_13_RewardsExecuted
  self.box_Progression_Tag_Monitor_14 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_14
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|445224989"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_14_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_14_HasNOT
  self.box_RewardController_v3_20 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_20
  l0._graph = self
  l0._name = "box_RewardController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|503274961"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_20_RewardsExecuted
  self.box_TutorialController_3 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_3
  l0._graph = self
  l0._name = "box_TutorialController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|509571572"
  l0.Out = self.f_box_TutorialController_3_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_19 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_19
  l0._graph = self
  l0._name = "box_Multiple_AND_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|708072983"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_19_Out
  self.box_MissionMessageController_v3_41 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_41
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|775911603"
  l0.Out = self.f_box_MissionMessageController_v3_41_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_18 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_18
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|829402737"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_18_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_18_HasNOT
  self.box_PlayerPhoneMonitor_6 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_6
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|851969116"
  l0.Enabled = self.f_box_PlayerPhoneMonitor_6_Enabled
  l0.Disabled = self.f_box_PlayerPhoneMonitor_6_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = self.f_box_PlayerPhoneMonitor_6_OnAppInstalled
  self.box_MissionMessageController_v3_17 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_17
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|987949106"
  l0.Out = self.f_box_MissionMessageController_v3_17_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1028576668"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_PlaySound_v2_47 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_47
  l0._graph = self
  l0._name = "box_PlaySound_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1112069334"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_25 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1122991230"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_TutorialController_21 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_21
  l0._graph = self
  l0._name = "box_TutorialController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1144634081"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1191693776"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_12_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_45 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1194494948"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_TutorialController_31 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_31
  l0._graph = self
  l0._name = "box_TutorialController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1213801802"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Beat_29 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_29
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1243876074"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_29_NewBeatStarted
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1346512184"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1408790088"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_PlayDialog_v2_40 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1598413234"
  l0.Started = self.f_box_PlayDialog_v2_40_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Beat_8 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_8
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1634493612"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_8_NewBeatStarted
  self.box_TutorialController_23 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_23
  l0._graph = self
  l0._name = "box_TutorialController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1666533947"
  l0.Out = self.f_box_TutorialController_23_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1785543318"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1797133134"
  l0.Out = self.f_box_MissionMessageController_v3_38_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_35 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_35
  l0._graph = self
  l0._name = "box_TutorialController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1913401154"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_1 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_1
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2023866846"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_1_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_1_HasNOT
  self.box_ShopMonitor_v2_5 = cbox:CreateBox("domino/System/ShopMonitor_v2.lua")
  l0 = self.box_ShopMonitor_v2_5
  l0._graph = self
  l0._name = "box_ShopMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2027604504"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnClothingBought = DummyFunction
  l0.OnPartBought = self.f_box_ShopMonitor_v2_5_OnPartBought
  l0.OnEnteredShop = DummyFunction
  l0.OnExitedShop = DummyFunction
  self.box_PlayerPhoneMonitor_33 = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self.box_PlayerPhoneMonitor_33
  l0._graph = self
  l0._name = "box_PlayerPhoneMonitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2071331469"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PlayerPhoneMonitor_33_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = self.f_box_PlayerPhoneMonitor_33_OnPhoneClosed
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self.box_TutorialController_7 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_7
  l0._graph = self
  l0._name = "box_TutorialController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2093525948"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_29()
  l0 = self.box_FreeRoam_Beat_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|525512225", "525512225", "S01M016_Main", "CheckPoint_0", "box_FreeRoam_Beat_29.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_8()
  l0 = self.box_FreeRoam_Beat_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|238760520", "238760520", "S01M016_Main", "CheckPoint_1", "box_FreeRoam_Beat_8.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_29()
  l0 = self.box_FreeRoam_Beat_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1311547535", "1311547535", "S01M016_Main", "In", "box_FreeRoam_Beat_29.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ShopMonitor_v2_5()
  l0 = self.box_ShopMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1526124999", "1526124999", "S01M016_Main", "box_Ordered_Output_37.Out", "box_ShopMonitor_v2_5.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_20
  l0.ItemDB = "Items.9223372051918335305"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|959117622", "959117622", "S01M016_Main", "box_Ordered_Output_37.Out", "box_RewardController_v3_20.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_RewardController_v3_42_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_30
  l0.ItemDB = "Items.9223372065071594851"
  l0.DisplayFeedback = 0
  l0 = self.box_RewardController_v3_42
  l1 = self.box_RewardController_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1946553194", "1946553194", "S01M016_Main", "box_RewardController_v3_42.RewardsExecuted", "box_RewardController_v3_30.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SmartphoneAppController_56_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372048122502589"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1529770788"
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_box_SmartphoneAppController_57_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1667406011", "1667406011", "S01M016_Main", "box_SmartphoneAppController_56.InstalledSet", "box_SmartphoneAppController_57.SetNew", clone, l0)
  l0:SetNew()
end
function export:f_box_PlayerPhoneMonitor_32_OnAppClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PlayerPhoneMonitor_32
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|534542760", "534542760", "S01M016_Main", "box_PlayerPhoneMonitor_32.OnAppClosed", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayerPhoneMonitor_32_OnAppOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_35()
  l0 = self.box_PlayerPhoneMonitor_32
  l1 = self.box_TutorialController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1787136929", "1787136929", "S01M016_Main", "box_PlayerPhoneMonitor_32.OnAppOpened", "box_TutorialController_35.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_32_OnPhoneClosed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_7()
  l0 = self.box_PlayerPhoneMonitor_32
  l1 = self.box_TutorialController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1928066906", "1928066906", "S01M016_Main", "box_PlayerPhoneMonitor_32.OnPhoneClosed", "box_TutorialController_7.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_32_OnPhoneOpened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PlayerPhoneMonitor_32
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1799104596", "1799104596", "S01M016_Main", "box_PlayerPhoneMonitor_32.OnPhoneOpened", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RewardController_v3_44_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_RewardController_v3_44
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1613650985", "1613650985", "S01M016_Main", "box_RewardController_v3_44.RewardsExecuted", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RewardController_v3_30_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_8()
  l0 = self.box_RewardController_v3_30
  l1 = self.box_FreeRoam_Beat_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|83913479", "83913479", "S01M016_Main", "box_RewardController_v3_30.RewardsExecuted", "box_FreeRoam_Beat_8.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1107488626", "1107488626", "S01M016_Main", "box_Ordered_Output_24.Out", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_1
  l0.ProgressionTag = "ProgressionTag.9223372068308184303"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|301571916", "301571916", "S01M016_Main", "box_Ordered_Output_24.Out", "box_Progression_Tag_Monitor_1.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_SmartphoneAppController_54_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257062"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|384969567"
  l0.HiddenSet = self.f_box_SmartphoneAppController_55_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|881882670", "881882670", "S01M016_Main", "box_SmartphoneAppController_54.InstalledSet", "box_SmartphoneAppController_55.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_InteractGameplayController_43_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_41
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective010",
    item = "Objective",
    id = "495562"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_InteractGameplayController_43
  l1 = self.box_MissionMessageController_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1853788808", "1853788808", "S01M016_Main", "box_InteractGameplayController_43.Completed", "box_MissionMessageController_v3_41.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_SmartphoneAppController_60_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257061"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1522972409"
  l0.HiddenSet = self.f_box_SmartphoneAppController_61_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1475683557", "1475683557", "S01M016_Main", "box_SmartphoneAppController_60.InstalledSet", "box_SmartphoneAppController_61.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_MissionMessageController_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|423911618"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0 = self.box_MissionMessageController_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1992971673", "1992971673", "S01M016_Main", "box_MissionMessageController_v3_4.Out", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_55_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257064"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|137624525"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_56_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|439359885", "439359885", "S01M016_Main", "box_SmartphoneAppController_55.HiddenSet", "box_SmartphoneAppController_56.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_Player_Vehicle_Monitor_v2_46_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_47
  l0.Entity = "9223372066903663491"
  l0.SoundId = "soundbinary/3549285901.bnk"
  l0 = self.box_Player_Vehicle_Monitor_v2_46
  l1 = self.box_PlaySound_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1353952046", "1353952046", "S01M016_Main", "box_Player_Vehicle_Monitor_v2_46.Disabled", "box_PlaySound_v2_47.Play", l0, l1)
  l1:Play()
end
function export:f_box_Player_Vehicle_Monitor_v2_46_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_14
  l0.ProgressionTag = "ProgressionTag.9223372050495845974"
  l0 = self.box_Player_Vehicle_Monitor_v2_46
  l1 = self.box_Progression_Tag_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1891936248", "1891936248", "S01M016_Main", "box_Player_Vehicle_Monitor_v2_46.Enabled", "box_Progression_Tag_Monitor_14.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Player_Vehicle_Monitor_v2_46_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_46()
  l0 = self.box_Player_Vehicle_Monitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|803652650", "803652650", "S01M016_Main", "box_Player_Vehicle_Monitor_v2_46.Enter", "box_Player_Vehicle_Monitor_v2_46.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_MultipleOR_28
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|169221708", "169221708", "S01M016_Main", "box_MultipleOR_28.Out", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1845479866", "1845479866", "S01M016_Main", "box_Ordered_Output_34.Out", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlayerPhoneMonitor_33()
  l0 = self.box_PlayerPhoneMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1494107975", "1494107975", "S01M016_Main", "box_Ordered_Output_34.Out", "box_PlayerPhoneMonitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_RewardController_v3_13_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_4
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective010",
    item = "Objective",
    id = "578180"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_RewardController_v3_13
  l1 = self.box_MissionMessageController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1131946983", "1131946983", "S01M016_Main", "box_RewardController_v3_13.RewardsExecuted", "box_MissionMessageController_v3_4.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_14_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_17
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective010",
    item = "Objective",
    id = "578180"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_MissionMessageController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1422140710", "1422140710", "S01M016_Main", "box_Progression_Tag_Monitor_14.Has", "box_MissionMessageController_v3_17.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_14_HasNOT()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|174136502"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2112988612", "2112988612", "S01M016_Main", "box_Progression_Tag_Monitor_14.HasNOT", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_51_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1198539361"
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_box_SmartphoneAppController_52_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|916568902", "916568902", "S01M016_Main", "box_SmartphoneAppController_51.HiddenSet", "box_SmartphoneAppController_52.SetNew", clone, l0)
  l0:SetNew()
end
function export:f_box_SendTrackingEvent_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective011",
    item = "Objective",
    id = "617030"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1901076135", "1901076135", "S01M016_Main", "box_SendTrackingEvent_39.Out", "box_MissionMessageController_v3_16.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_SmartphoneAppController_58_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257066"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|616946495"
  l0.HiddenSet = self.f_box_SmartphoneAppController_59_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2076296356", "2076296356", "S01M016_Main", "box_SmartphoneAppController_58.NewSet", "box_SmartphoneAppController_59.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_RewardController_v3_20_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_RewardController_v3_20
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2008011189", "2008011189", "S01M016_Main", "box_RewardController_v3_20.RewardsExecuted", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TutorialController_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_13
  l0.ItemDB = "Items.9223372050612020187"
  l0 = self.box_TutorialController_3
  l1 = self.box_RewardController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|590425297", "590425297", "S01M016_Main", "box_TutorialController_3.Out", "box_RewardController_v3_13.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SmartphoneAppController_10_OverrideCleared()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454256970"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|716624216"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_2_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1714986410", "1714986410", "S01M016_Main", "box_SmartphoneAppController_10.OverrideCleared", "box_SmartphoneAppController_2.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_SmartphoneAppController_59_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257067"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|282103323"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_60_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1367470319", "1367470319", "S01M016_Main", "box_SmartphoneAppController_59.HiddenSet", "box_SmartphoneAppController_60.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1252541678", "1252541678", "S01M016_Main", "box_Simple_Node_26.Out", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetActionMap_v2_64_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_46()
  l0 = self.box_Player_Vehicle_Monitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1419282372", "1419282372", "S01M016_Main", "box_SetActionMap_v2_64.Popped", "box_Player_Vehicle_Monitor_v2_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Multiple_AND_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479833"
  l0 = self.box_Multiple_AND_19
  l1 = self.box_PhoneCommunicationController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1802641395", "1802641395", "S01M016_Main", "box_Multiple_AND_19.Out", "box_PhoneCommunicationController_12.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SmartphoneAppController_2_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372045762345270"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2111537664"
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_box_SmartphoneAppController_48_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1455675900", "1455675900", "S01M016_Main", "box_SmartphoneAppController_2.InstalledSet", "box_SmartphoneAppController_48.SetNew", clone, l0)
  l0:SetNew()
end
function export:f_box_SmartphoneAppController_53_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257059"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|220866478"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_54_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|533635963", "533635963", "S01M016_Main", "box_SmartphoneAppController_53.NewSet", "box_SmartphoneAppController_54.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_MissionMessageController_v3_41_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_41
  l1 = self.box_MissionController_v4_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1668295741", "1668295741", "S01M016_Main", "box_MissionMessageController_v3_41.Out", "box_MissionController_v4_9.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Progression_Tag_Monitor_18_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_Progression_Tag_Monitor_18
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1939218365", "1939218365", "S01M016_Main", "box_Progression_Tag_Monitor_18.Has", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_18_HasNOT()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ShopMonitor_v2_5()
  l0 = self.box_Progression_Tag_Monitor_18
  l1 = self.box_ShopMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2124905447", "2124905447", "S01M016_Main", "box_Progression_Tag_Monitor_18.HasNOT", "box_ShopMonitor_v2_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayerPhoneMonitor_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1245987851"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_22_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_22_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_22_Out_4
  l0 = self.box_PlayerPhoneMonitor_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1218942981", "1218942981", "S01M016_Main", "box_PlayerPhoneMonitor_6.Disabled", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerPhoneMonitor_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_32()
  l0 = self.box_PlayerPhoneMonitor_6
  l1 = self.box_PlayerPhoneMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1405028336", "1405028336", "S01M016_Main", "box_PlayerPhoneMonitor_6.Enabled", "box_PlayerPhoneMonitor_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayerPhoneMonitor_6_OnAppInstalled()
  local l0
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_6()
  l0 = self.box_PlayerPhoneMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|354123072", "354123072", "S01M016_Main", "box_PlayerPhoneMonitor_6.OnAppInstalled", "box_PlayerPhoneMonitor_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1519613363"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_MissionMessageController_v3_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1228966013", "1228966013", "S01M016_Main", "box_MissionMessageController_v3_17.Out", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_49_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257056"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1247087092"
  l0.HiddenSet = self.f_box_SmartphoneAppController_50_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|813880836", "813880836", "S01M016_Main", "box_SmartphoneAppController_49.InstalledSet", "box_SmartphoneAppController_50.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_21()
  l0 = self.box_MultipleOR_36
  l1 = self.box_TutorialController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|436663928", "436663928", "S01M016_Main", "box_MultipleOR_36.Out", "box_TutorialController_21.Display", l0, l1)
  l1:Display()
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_18
  l0.ProgressionTag = "ProgressionTag.9223372051918335306"
  l0 = self.box_MultipleOR_25
  l1 = self.box_Progression_Tag_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1457357305", "1457357305", "S01M016_Main", "box_MultipleOR_25.Out", "box_Progression_Tag_Monitor_18.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_SmartphoneAppController_63_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993015444"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1695926889"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_65_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|997454104", "997454104", "S01M016_Main", "box_SmartphoneAppController_63.InstalledSet", "box_SmartphoneAppController_65.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_PhoneCommunicationController_12_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_42
  l0.ItemDB = "Items.9223372045955692445"
  l0 = self.box_PhoneCommunicationController_12
  l1 = self.box_RewardController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1689430363", "1689430363", "S01M016_Main", "box_PhoneCommunicationController_12.StartCommunicationOut", "box_RewardController_v3_42.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  l0.TrackingEvent = "GetBackYourPhone"
  l0._graph = self
  l0._name = "box_SendTrackingEvent_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|484749577"
  l0.Out = self.f_box_SendTrackingEvent_39_Out
  l0 = self.box_MultipleOR_45
  l1 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1416124837", "1416124837", "S01M016_Main", "box_MultipleOR_45.Out", "box_SendTrackingEvent_39.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_52_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454256946"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|748068113"
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_box_SmartphoneAppController_53_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|229015664", "229015664", "S01M016_Main", "box_SmartphoneAppController_52.NewSet", "box_SmartphoneAppController_53.SetNew", clone, l0)
  l0:SetNew()
end
function export:f_box_FreeRoam_Beat_29_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_29
  self.PlayerEntity = l0.PlayerEntity
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|683565431"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_64_Popped
  l0 = self.box_FreeRoam_Beat_29
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|832060449", "832060449", "S01M016_Main", "box_FreeRoam_Beat_29.NewBeatStarted", "box_SetActionMap_v2_64.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_21()
  l0 = self.box_TutorialController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1360257740", "1360257740", "S01M016_Main", "box_Ordered_Output_22.Out", "box_TutorialController_21.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_35()
  l0 = self.box_TutorialController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1003861847", "1003861847", "S01M016_Main", "box_Ordered_Output_22.Out", "box_TutorialController_35.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_22_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_7()
  l0 = self.box_TutorialController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|408490738", "408490738", "S01M016_Main", "box_Ordered_Output_22.Out", "box_TutorialController_7.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_22_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlayerPhoneMonitor_32()
  l0 = self.box_PlayerPhoneMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|471250882", "471250882", "S01M016_Main", "box_Ordered_Output_22.Out", "box_PlayerPhoneMonitor_32.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_22_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_3
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Notification020",
    item = "Notification",
    id = "578182"
  }
  l0.Duration = 60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|615977038", "615977038", "S01M016_Main", "box_Ordered_Output_22.Out", "box_TutorialController_3.Display", clone, l0)
  l0:Display()
end
function export:f_box_SmartphoneAppController_50_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|452746612"
  l0.HiddenSet = self.f_box_SmartphoneAppController_51_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1172900743", "1172900743", "S01M016_Main", "box_SmartphoneAppController_50.HiddenSet", "box_SmartphoneAppController_51.SetHidden", clone, l0)
  l0:SetHidden()
end
function export:f_box_PhoneCommunicationController_11_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_40
  l0.SoundId = "soundbinary/2670290390.bnk"
  l0.Supersede = 1
  l0.Queue = 1
  l0 = self.box_PhoneCommunicationController_11
  l1 = self.box_PlayDialog_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1805899534", "1805899534", "S01M016_Main", "box_PhoneCommunicationController_11.OnCommunicationFinished", "box_PlayDialog_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_MultipleOR_15
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1142393636", "1142393636", "S01M016_Main", "box_MultipleOR_15.Out", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1168241472", "1168241472", "S01M016_Main", "box_Ordered_Output_27.Out", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|673736204"
  l0.Out = self.f_box_Simple_Node_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1022063277", "1022063277", "S01M016_Main", "box_Ordered_Output_27.Out", "box_Simple_Node_26.In", clone, l0)
  l0:In()
end
function export:f_box_SmartphoneAppController_61_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993014283"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2115239956"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_62_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|812261039", "812261039", "S01M016_Main", "box_SmartphoneAppController_61.HiddenSet", "box_SmartphoneAppController_62.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_SmartphoneAppController_57_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257065"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|497936592"
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_box_SmartphoneAppController_58_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1155009592", "1155009592", "S01M016_Main", "box_SmartphoneAppController_57.NewSet", "box_SmartphoneAppController_58.SetNew", clone, l0)
  l0:SetNew()
end
function export:f_box_PlayDialog_v2_40_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|515779196"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_box_SmartphoneAppController_10_OverrideCleared
  l0 = self.box_PlayDialog_v2_40
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1341828792", "1341828792", "S01M016_Main", "box_PlayDialog_v2_40.Started", "box_SmartphoneAppController_10.ClearOverride", l0, l1)
  l1:ClearOverride()
end
function export:f_box_FreeRoam_Beat_8_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective010",
    item = "Objective",
    id = "495562"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FreeRoam_Beat_8
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|34276948", "34276948", "S01M016_Main", "box_FreeRoam_Beat_8.NewBeatStarted", "box_MissionMessageController_v3_38.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TutorialController_23_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_6()
  l0 = self.box_TutorialController_23
  l1 = self.box_PlayerPhoneMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1690714242", "1690714242", "S01M016_Main", "box_TutorialController_23.Out", "box_PlayerPhoneMonitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SmartphoneAppController_65_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_44
  l0.ItemDB = "Items.9223372068308184302"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|646785811", "646785811", "S01M016_Main", "box_SmartphoneAppController_65.InstalledSet", "box_RewardController_v3_44.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_23
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
  l0 = self.box_MissionMessageController_v3_16
  l1 = self.box_TutorialController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2134256354", "2134256354", "S01M016_Main", "box_MissionMessageController_v3_16.Out", "box_TutorialController_23.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionMessageController_v3_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_43
  l0.MarkerEntity = "9223372065144196792"
  l0.Entity = "9223372047426345164"
  l0.IsManagingInteraction = 0
  l0 = self.box_MissionMessageController_v3_38
  l1 = self.box_InteractGameplayController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1132897411", "1132897411", "S01M016_Main", "box_MissionMessageController_v3_38.Out", "box_InteractGameplayController_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_SmartphoneAppController_66_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_11
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479832"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|569498735", "569498735", "S01M016_Main", "box_SmartphoneAppController_66.OverrideActivated", "box_PhoneCommunicationController_11.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Progression_Tag_Monitor_1_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_Progression_Tag_Monitor_1
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|639255310", "639255310", "S01M016_Main", "box_Progression_Tag_Monitor_1.Has", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_1_HasNOT()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372069651733436"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1940187786"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_66_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_Progression_Tag_Monitor_1
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|949234358", "949234358", "S01M016_Main", "box_Progression_Tag_Monitor_1.HasNOT", "box_SmartphoneAppController_66.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_ShopMonitor_v2_5_OnPartBought()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|16558059"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_ShopMonitor_v2_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|566649010", "566649010", "S01M016_Main", "box_ShopMonitor_v2_5.OnPartBought", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerPhoneMonitor_33_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_31
  l0.SurvivalGuideItemDB = "Items.9223372053993007750"
  l0 = self.box_PlayerPhoneMonitor_33
  l1 = self.box_TutorialController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1214654092", "1214654092", "S01M016_Main", "box_PlayerPhoneMonitor_33.Disabled", "box_TutorialController_31.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlayerPhoneMonitor_33_OnPhoneClosed()
  local l0
  self = self._graph
  self:OnEnter_box_PlayerPhoneMonitor_33()
  l0 = self.box_PlayerPhoneMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|718556045", "718556045", "S01M016_Main", "box_PlayerPhoneMonitor_33.OnPhoneClosed", "box_PlayerPhoneMonitor_33.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SmartphoneAppController_48_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257055"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1016559034"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_49_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|898972032", "898972032", "S01M016_Main", "box_SmartphoneAppController_48.NewSet", "box_SmartphoneAppController_49.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_SmartphoneAppController_62_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993014285"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|1188700996"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_63_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M016\\S01M016.domino|@S01M016_Main|2040307165", "2040307165", "S01M016_Main", "box_SmartphoneAppController_62.InstalledSet", "box_SmartphoneAppController_63.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:OnEnter_box_PlayerPhoneMonitor_32()
  local l0
  l0 = self.box_PlayerPhoneMonitor_32
  l0.App = "UIAppCatalogDB.9223372058140693657"
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_46()
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_Multiple_AND_19()
end
function export:OnEnter_box_PlayerPhoneMonitor_6()
  local l0
  l0 = self.box_PlayerPhoneMonitor_6
  l0.App = "UIAppCatalogDB.9223372046454257058"
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_TutorialController_21()
  local l0
  l0 = self.box_TutorialController_21
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Notification010",
    item = "Notification",
    id = "578181"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectAppShop",
    id = "699232"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_FreeRoam_Beat_29()
  local l0
  l0 = self.box_FreeRoam_Beat_29
  l0.ProgressionLayer = "ProgressionLayers.9223372065416514567"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_FreeRoam_Beat_8()
  local l0
  l0 = self.box_FreeRoam_Beat_8
  l0.ProgressionLayer = "ProgressionLayers.9223372065416514567"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_TutorialController_35()
  local l0
  l0 = self.box_TutorialController_35
  l0.Notification = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "NudleMap_Install_Notification_PC",
    id = "693869"
  }
  l0.Duration = -1
end
function export:OnEnter_box_ShopMonitor_v2_5()
  local l0
  l0 = self.box_ShopMonitor_v2_5
  l0.PartType = "GraphicKit_PartTypes.9223372045158288032"
end
function export:OnEnter_box_PlayerPhoneMonitor_33()
end
function export:OnEnter_box_TutorialController_7()
  local l0
  l0 = self.box_TutorialController_7
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
end
_compilerVersion = 4
