export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01AM020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main"
  self.PlayerEntity = nil
  self.L36M000_Talker = nil
  self.box_MissionMonitor_16 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_16
  l0._graph = self
  l0._name = "box_MissionMonitor_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1496570"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_16_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_FreeRoam_Beat_38 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_38
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|55901141"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_38_NewBeatStarted
  self.box_TutorialController_33 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_33
  l0._graph = self
  l0._name = "box_TutorialController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|112897254"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_33_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_33_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|118525487"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_49_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_FreeRoam_Beat_27 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_27
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|124720515"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_27_NewBeatStarted
  self.box_MissionMonitor_28 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_28
  l0._graph = self
  l0._name = "box_MissionMonitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|242570025"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_28_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|316308771"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_RewardController_v3_40 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_40
  l0._graph = self
  l0._name = "box_RewardController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|399630625"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_40_RewardsExecuted
  self.box_Progression_Tag_Monitor_41 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_41
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|527182372"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_41_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self.box_CLOMonitor_1 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_1
  l0._graph = self
  l0._name = "box_CLOMonitor_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|560647445"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_1_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_1_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOMonitor_46 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_46
  l0._graph = self
  l0._name = "box_CLOMonitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|568887341"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_46_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_46_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_46_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_MissionMonitor_26 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_26
  l0._graph = self
  l0._name = "box_MissionMonitor_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|752500244"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_26_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionMonitor_23 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_23
  l0._graph = self
  l0._name = "box_MissionMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|802888690"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_23_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_TriggerMonitor_v2_21 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_21
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|810296851"
  l0.Enabled = self.f_box_TriggerMonitor_v2_21_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_21_Leave
  l0.Use = DummyFunction
  self.box_Player_Proximity_Monitor_25 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_25
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|889396715"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_25_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_25_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionMessageController_v3_32 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_32
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|932311383"
  l0.Out = self.f_box_MissionMessageController_v3_32_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMonitor_22 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_22
  l0._graph = self
  l0._name = "box_MissionMonitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|936430674"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_22_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_UnspawnController_43 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_43
  l0._graph = self
  l0._name = "box_UnspawnController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|968471029"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_MissionMonitor_14 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_14
  l0._graph = self
  l0._name = "box_MissionMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1016800730"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_14_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1025772311"
  l0._DynamicAnchors = {Input = 13}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MultipleOR_45 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1075456760"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_TriggerMonitor_v2_47 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_47
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1105712316"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_47_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_47_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_34 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_34
  l0._graph = self
  l0._name = "box_MissionController_v4_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1139097566"
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1174296354"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_29 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_29
  l0._graph = self
  l0._name = "box_RewardController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1243134946"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionMonitor_24 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_24
  l0._graph = self
  l0._name = "box_MissionMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1244550389"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_24_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_TriggerMonitor_v2_44 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_44
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1296279762"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_44_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_44_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMonitor_7 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_7
  l0._graph = self
  l0._name = "box_MissionMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1328634027"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_7_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionMonitor_15 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_15
  l0._graph = self
  l0._name = "box_MissionMonitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1335728223"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_15_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_Progression_Tag_Monitor_31 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_31
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1393077618"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_31_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_31_HasNOT
  self.box_LayerMonitor_20 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_20
  l0._graph = self
  l0._name = "box_LayerMonitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1437424967"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_20_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_39 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_39
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1526583032"
  l0.Out = self.f_box_MissionMessageController_v3_39_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Reach_Gameplay_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Reach_Gameplay_3
  l0._graph = self
  l0._name = "box_FreeRoam_Reach_Gameplay_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1567775433"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_FreeRoam_Reach_Gameplay_3_Reached
  self.box_CLOController_42 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1590511090"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_42_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMonitor_8 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_8
  l0._graph = self
  l0._name = "box_MissionMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1654880389"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_8_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionMonitor_19 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_19
  l0._graph = self
  l0._name = "box_MissionMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1695524753"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_19_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_TutorialController_17 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_17
  l0._graph = self
  l0._name = "box_TutorialController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1753960628"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_17_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1827979489"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMonitor_30 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_30
  l0._graph = self
  l0._name = "box_MissionMonitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1938832086"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_30_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionMonitor_18 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_18
  l0._graph = self
  l0._name = "box_MissionMonitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2008729075"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_box_MissionMonitor_18_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2050677681"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_11 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_11
  l0._graph = self
  l0._name = "box_MissionController_v4_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2129306827"
  self.box_UnspawnController_9 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_9
  l0._graph = self
  l0._name = "box_UnspawnController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2139795624"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_38()
  l0 = self.box_FreeRoam_Beat_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|304281588", "304281588", "S01AM020_Main", "CheckPoint_0", "box_FreeRoam_Beat_38.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_27()
  l0 = self.box_FreeRoam_Beat_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1507829492", "1507829492", "S01AM020_Main", "CheckPoint_1", "box_FreeRoam_Beat_27.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_38()
  l0 = self.box_FreeRoam_Beat_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1972105146", "1972105146", "S01AM020_Main", "In", "box_FreeRoam_Beat_38.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMonitor_16_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_16
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|412503421", "412503421", "S01AM020_Main", "box_MissionMonitor_16.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_FreeRoam_Beat_38_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_38
  self.PlayerEntity = l0.PlayerEntity
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1937817941"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_35_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_FreeRoam_Beat_38
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|754019263", "754019263", "S01AM020_Main", "box_FreeRoam_Beat_38.NewBeatStarted", "box_SmartphoneAppController_35.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_TutorialController_33_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMessageController_v3_5()
  l0 = self.box_TutorialController_33
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1884854886", "1884854886", "S01AM020_Main", "box_TutorialController_33.DisplayRequested", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TutorialController_33_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMessageController_v3_5()
  l0 = self.box_TutorialController_33
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|533137715", "533137715", "S01AM020_Main", "box_TutorialController_33.NotificationHidden", "box_MissionMessageController_v3_5.HideObjective", l0, l1)
  l1:HideObjective()
end
function export:f_box_CLOController_49_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  l1 = self.box_UnspawnController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1425468268", "1425468268", "S01AM020_Main", "box_CLOController_49.Deactivated", "box_UnspawnController_43.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_FreeRoam_Beat_27_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_27
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_Progression_Tag_Monitor_31
  l0.ProgressionTag = "ProgressionTag.9223372049814636041"
  l0 = self.box_FreeRoam_Beat_27
  l1 = self.box_Progression_Tag_Monitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1957440356", "1957440356", "S01AM020_Main", "box_FreeRoam_Beat_27.NewBeatStarted", "box_Progression_Tag_Monitor_31.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_MissionMonitor_28_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_28
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|626753017", "626753017", "S01AM020_Main", "box_MissionMonitor_28.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(11)
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Reach_Gameplay_3
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372049978419127"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.MarkerEntity = "9223372067860548851"
  l0 = self.box_MultipleOR_37
  l1 = self.box_FreeRoam_Reach_Gameplay_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1138197749", "1138197749", "S01AM020_Main", "box_MultipleOR_37.Out", "box_FreeRoam_Reach_Gameplay_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_RewardController_v3_40_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_40
  l1 = self.box_MissionController_v4_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|533388210", "533388210", "S01AM020_Main", "box_RewardController_v3_40.RewardsExecuted", "box_MissionController_v4_11.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Progression_Tag_Monitor_41_TagIsOwned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_Progression_Tag_Monitor_41
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|323994062", "323994062", "S01AM020_Main", "box_Progression_Tag_Monitor_41.TagIsOwned", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_1_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  l1 = self.box_UnspawnController_43
  l1.Entity = l0.UserID
  l0 = self.box_CLOController_49
  l0.CLO = "9223372067694577644"
  l0 = self.box_CLOMonitor_1
  l1 = self.box_CLOController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|569366237", "569366237", "S01AM020_Main", "box_CLOMonitor_1.GotUser", "box_CLOController_49.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOMonitor_1_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  l1 = self.box_UnspawnController_43
  l1.Entity = l0.UserID
end
function export:f_box_CLOMonitor_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_1
  l1 = self.box_UnspawnController_43
  l1.Entity = l0.UserID
end
function export:f_box_CLOMonitor_46_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_46
  l1 = self.box_UnspawnController_9
  l1.Entity = l0.UserID
  l0 = self.box_CLOController_42
  l0.CLO = "9223372062859881706"
  l0 = self.box_CLOMonitor_46
  l1 = self.box_CLOController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|935307419", "935307419", "S01AM020_Main", "box_CLOMonitor_46.GotUser", "box_CLOController_42.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOMonitor_46_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_46
  l1 = self.box_UnspawnController_9
  l1.Entity = l0.UserID
end
function export:f_box_CLOMonitor_46_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_46
  l1 = self.box_UnspawnController_9
  l1.Entity = l0.UserID
end
function export:f_box_MissionMonitor_26_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_26
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1280968096", "1280968096", "S01AM020_Main", "box_MissionMonitor_26.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(10)
end
function export:f_box_MissionMonitor_23_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_23
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|782229816", "782229816", "S01AM020_Main", "box_MissionMonitor_23.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_TriggerMonitor_v2_21_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_33()
  l0 = self.box_TriggerMonitor_v2_21
  l1 = self.box_TutorialController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1852972326", "1852972326", "S01AM020_Main", "box_TriggerMonitor_v2_21.Enabled", "box_TutorialController_33.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_21_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1795415905"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_TriggerMonitor_v2_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|612650510", "612650510", "S01AM020_Main", "box_TriggerMonitor_v2_21.Leave", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Proximity_Monitor_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_29
  l0.ItemDB = "Items.9223372066268170148"
  l0 = self.box_Player_Proximity_Monitor_25
  l1 = self.box_RewardController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2047387929", "2047387929", "S01AM020_Main", "box_Player_Proximity_Monitor_25.Disabled", "box_RewardController_v3_29.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Player_Proximity_Monitor_25_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|3143093", "3143093", "S01AM020_Main", "box_Player_Proximity_Monitor_25.ExitRadius", "box_Player_Proximity_Monitor_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_32_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MissionMessageController_v3_32
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1815218032", "1815218032", "S01AM020_Main", "box_MissionMessageController_v3_32.Out", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMonitor_22_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_22
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|593158394", "593158394", "S01AM020_Main", "box_MissionMonitor_22.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_MissionMonitor_14_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_14
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|9913019", "9913019", "S01AM020_Main", "box_MissionMonitor_14.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|246433293", "246433293", "S01AM020_Main", "box_MultipleOR_12.Out", "box_MissionMessageController_v3_10.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_33()
  l0 = self.box_MultipleOR_45
  l1 = self.box_TutorialController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1317227836", "1317227836", "S01AM020_Main", "box_MultipleOR_45.Out", "box_TutorialController_33.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_TriggerMonitor_v2_47_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_LayerMonitor_20
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0 = self.box_TriggerMonitor_v2_47
  l1 = self.box_LayerMonitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1688105202", "1688105202", "S01AM020_Main", "box_TriggerMonitor_v2_47.Disabled", "box_LayerMonitor_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_47_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_47()
  l0 = self.box_TriggerMonitor_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|450381170", "450381170", "S01AM020_Main", "box_TriggerMonitor_v2_47.Enter", "box_TriggerMonitor_v2_47.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_44()
  l0 = self.box_TriggerMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|573317677", "573317677", "S01AM020_Main", "box_Ordered_Output_4.Out", "box_TriggerMonitor_v2_44.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|15107426", "15107426", "S01AM020_Main", "box_Ordered_Output_4.Out", "box_Player_Proximity_Monitor_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_39
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective010",
    item = "Objective",
    id = "578183"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1751666898", "1751666898", "S01AM020_Main", "box_Ordered_Output_4.Out", "box_MissionMessageController_v3_39.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_4_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_41
  l0.ProgressionTag = "ProgressionTag.9223372067860549099"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1453034389", "1453034389", "S01AM020_Main", "box_Ordered_Output_4.Out", "box_Progression_Tag_Monitor_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1326242529"
  l0._DynamicAnchors = {Out = 13}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_6_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_6_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_6_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_6_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_6_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_6_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_6_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_6_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_6_Out_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1255546518", "1255546518", "S01AM020_Main", "box_Ordered_Output_4.Out", "box_Ordered_Output_6.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMonitor_24_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_24
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2079068766", "2079068766", "S01AM020_Main", "box_MissionMonitor_24.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(9)
end
function export:f_box_TriggerMonitor_v2_44_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_17
  l0.SurvivalGuideItemDB = "Items.9223372053993007723"
  l0 = self.box_TriggerMonitor_v2_44
  l1 = self.box_TutorialController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1616740414", "1616740414", "S01AM020_Main", "box_TriggerMonitor_v2_44.Disabled", "box_TutorialController_17.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_44_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_44()
  l0 = self.box_TriggerMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1155252092", "1155252092", "S01AM020_Main", "box_TriggerMonitor_v2_44.Enter", "box_TriggerMonitor_v2_44.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_8
  l0.Mission = "MissionList.9223372046384707489"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2096770457", "2096770457", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_8.Enable", clone, l0)
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
  l0 = self.box_MissionMonitor_7
  l0.Mission = "MissionList.9223372047161492039"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1712218119", "1712218119", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_14
  l0.Mission = "MissionList.9223372047486643318"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1158109639", "1158109639", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_15
  l0.Mission = "MissionList.9223372047486643321"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1669180542", "1669180542", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_16
  l0.Mission = "MissionList.9223372050041486955"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|162471523", "162471523", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_16.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_18
  l0.Mission = "MissionList.9223372049813514927"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1511854500", "1511854500", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_18.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_19
  l0.Mission = "MissionList.9223372052610095779"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1451952277", "1451952277", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_22
  l0.Mission = "MissionList.9223372049270893440"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|403819709", "403819709", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_23
  l0.Mission = "MissionList.9223372049691693759"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|831866347", "831866347", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_24
  l0.Mission = "MissionList.9223372049634201749"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1302508158", "1302508158", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_26
  l0.Mission = "MissionList.9223372049068555681"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|549020017", "549020017", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_26.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_28
  l0.Mission = "MissionList.9223372049643736629"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1985561121", "1985561121", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_30
  l0.Mission = "MissionList.9223372049593485557"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|321842898", "321842898", "S01AM020_Main", "box_Ordered_Output_6.Out", "box_MissionMonitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMonitor_7_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_7
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1053587912", "1053587912", "S01AM020_Main", "box_MissionMonitor_7.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMonitor_15_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_15
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|362075900", "362075900", "S01AM020_Main", "box_MissionMonitor_15.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_31_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_31
  l1 = self.box_MissionController_v4_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1976322993", "1976322993", "S01AM020_Main", "box_Progression_Tag_Monitor_31.Has", "box_MissionController_v4_34.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Progression_Tag_Monitor_31_HasNOT()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1110346410"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_4_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_4_Out_4
  l0 = self.box_Progression_Tag_Monitor_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1048218952", "1048218952", "S01AM020_Main", "box_Progression_Tag_Monitor_31.HasNOT", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_20_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1599229367"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_LayerMonitor_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|233906583", "233906583", "S01AM020_Main", "box_LayerMonitor_20.Loaded", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_48_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1693079629"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|580812516", "580812516", "S01AM020_Main", "box_SmartphoneAppController_48.InstalledSet", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_39_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MissionMessageController_v3_39
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1202807136", "1202807136", "S01AM020_Main", "box_MissionMessageController_v3_39.Out", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_Reach_Gameplay_3_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_21
  l0.Trigger = "9223372060752493650"
  l0.AutoDisable = 1
  l0 = self.box_FreeRoam_Reach_Gameplay_3
  l1 = self.box_TriggerMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1904954659", "1904954659", "S01AM020_Main", "box_FreeRoam_Reach_Gameplay_3.Reached", "box_TriggerMonitor_v2_21.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_42_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  l1 = self.box_UnspawnController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1871887017", "1871887017", "S01AM020_Main", "box_CLOController_42.Deactivated", "box_UnspawnController_9.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_46
  l0.CLO = "9223372062859881706"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|2018385404", "2018385404", "S01AM020_Main", "box_Ordered_Output_50.Out", "box_CLOMonitor_46.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_1
  l0.CLO = "9223372067694577644"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|350699407", "350699407", "S01AM020_Main", "box_Ordered_Output_50.Out", "box_CLOMonitor_1.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_MissionMonitor_8_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_8
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|673651166", "673651166", "S01AM020_Main", "box_MissionMonitor_8.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_47()
  l0 = self.box_TriggerMonitor_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1341707738", "1341707738", "S01AM020_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_47.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Beat_27()
  l0 = self.box_FreeRoam_Beat_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|501926349", "501926349", "S01AM020_Main", "box_Ordered_Output_2.Out", "box_FreeRoam_Beat_27.StartNewBeat", clone, l0)
  l0:StartNewBeat()
end
function export:f_box_MissionMonitor_19_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_19
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1297010004", "1297010004", "S01AM020_Main", "box_MissionMonitor_19.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_TutorialController_17_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479834"
  l0 = self.box_TutorialController_17
  l1 = self.box_PhoneCommunicationController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1819366904", "1819366904", "S01AM020_Main", "box_TutorialController_17.DisplayRequested", "box_PhoneCommunicationController_13.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|724084869", "724084869", "S01AM020_Main", "box_Ordered_Output_36.Out", "box_MultipleOR_45.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_32
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective010",
    item = "Objective",
    id = "578183"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|997170079", "997170079", "S01AM020_Main", "box_Ordered_Output_36.Out", "box_MissionMessageController_v3_32.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_SmartphoneAppController_35_InstalledSet()
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
  l0._name = "box_SmartphoneAppController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1507743476"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_48_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1417552128", "1417552128", "S01AM020_Main", "box_SmartphoneAppController_35.InstalledSet", "box_SmartphoneAppController_48.SetInstalled", clone, l0)
  l0:SetInstalled()
end
function export:f_box_MissionMonitor_30_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_30
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1148040037", "1148040037", "S01AM020_Main", "box_MissionMonitor_30.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(12)
end
function export:f_box_MissionMonitor_18_OnMissionSucceeded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MissionMonitor_18
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1799407994", "1799407994", "S01AM020_Main", "box_MissionMonitor_18.OnMissionSucceeded", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_40
  l0.ItemDB = "Items.9223372066268170148"
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_RewardController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01AM020\\S01AM020.domino|@S01AM020_Main|1175270666", "1175270666", "S01AM020_Main", "box_MissionMessageController_v3_10.Out", "box_RewardController_v3_40.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:OnEnter_box_FreeRoam_Beat_38()
  local l0
  l0 = self.box_FreeRoam_Beat_38
  l0.ProgressionLayer = "ProgressionLayers.9223372049988224407"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_TutorialController_33()
  local l0
  l0 = self.box_TutorialController_33
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackDiscovery",
    item = "Description",
    id = "697700"
  }
  l0.Duration = -1
end
function export:OnEnter_box_FreeRoam_Beat_27()
  local l0
  l0 = self.box_FreeRoam_Beat_27
  l0.ProgressionLayer = "ProgressionLayers.9223372049988224407"
  l0.Checkpoint = "CheckPoint_1"
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_Player_Proximity_Monitor_25()
  local l0
  l0 = self.box_Player_Proximity_Monitor_25
  l0.TargetEntity = "9223372049978419127"
  l0.Radius = 250
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_TriggerMonitor_v2_47()
  local l0
  l0 = self.box_TriggerMonitor_v2_47
  l0.Trigger = "9223372047131548062"
  l0.CheckNow = 1
end
function export:OnEnter_box_MissionMessageController_v3_5()
  local l0
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective022",
    item = "Objective",
    id = "694082"
  }
  l0.HasObjectiveMarker = 0
end
function export:OnEnter_box_TriggerMonitor_v2_44()
  local l0
  l0 = self.box_TriggerMonitor_v2_44
  l0.Trigger = "9223372066541786105"
end
_compilerVersion = 4
