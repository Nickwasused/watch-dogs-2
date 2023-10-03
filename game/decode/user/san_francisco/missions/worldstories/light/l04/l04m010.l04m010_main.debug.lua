export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SendAICommandGoto.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L04M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main"
  self.PlayerEntity = nil
  self.L04_StoryIcon_0 = "9223372047605793878"
  self.L04M010_DebugAnnotationTextEntity_176 = "9223372047605827076"
  self.L04M010_DebugAnnotationTextEntity_178 = "9223372047605859681"
  self.L04M010_DebugAnnotationTextEntity_177 = "9223372047605859673"
  self.DebugAnnotationTextEntity_183 = "9223372047605926503"
  self.DebugAnnotationTextEntity_184 = "9223372047605926505"
  self.ToReplaceWithProgressionTags = 0
  self.IoP_Branch = 0
  self.IoP1_MapIcon_NotActivatedByDefault_0 = "9223372047605793878"
  self.IoP2_MapIcon_NotActivatedByDefault_1 = "9223372047605794210"
  self.IoP3_MapIcon_NotActivatedByDefault_2 = "9223372047605794212"
  self.IoP1_DebugAnnotationTextEntity_175 = "9223372047605827072"
  self.IoP1Done_ReplaceWithProgressionTags = 0
  self.IoP3Done_ReplaceWithProgressionTags = 0
  self.IoP2Done_ReplaceWithProgressionTags = 0
  self.IoP1_Temp_HackableEntity_0 = "9223372047605794221"
  self.IoP1_Temp_HackableEntity_1 = "9223372047605827074"
  self.IoP2_Temp_HackableEntity_2 = "9223372047605859675"
  self.IoP2_Temp_HackableEntity_4 = "9223372047605859679"
  self.IoP3_Temp_HackableEntity_3 = "9223372047605859677"
  self.IoP3_Temp_HackableEntity_5 = "9223372047605892729"
  self.IoP1_MissionStartTrigger_28 = "9223372047605962675"
  self.IoP2_MissionStartTrigger_29 = "9223372047605962677"
  self.IoP3_MissionStartTrigger_30 = "9223372047605962679"
  self.MissionStartTrigger_30 = "9223372050580584323"
  self.NotActivatedByDefault_2 = "9223372050580584329"
  self.Camera_30DG_1 = "9223372050580584321"
  self.MissionStartTrigger_31 = "9223372050580586073"
  self.NotActivatedByDefault_3 = "9223372050580586075"
  self.Camera_30DG_2 = "9223372050580586071"
  self.IoP_01_ObjectiveCompleted = 0
  self.IoP_02_ObjectiveCompleted = 0
  self.L04M010_HouseIntro_ProximityTrigger_3582 = "9223372055048324322"
  self.L04M010_BankIntro_ProximityTrigger_3583 = "9223372055048324323"
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP01_HOME = "9223372052530503164"
  self.L12M010_CityLifeObject_IoP01_HOME = "9223372055771201407"
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP03_BANK = "9223372052530503158"
  self.L12M010_CityLifeObject_IoP03_BANK = "9223372056705099443"
  self.Security_Cam1 = "9223372056554850305"
  self.L04M010_A_IOP_NannyCam = "9223372056554850309"
  self.L04M10_CLO_Laptop = "9223372056705086378"
  self.L04M010_CLO_TV = "9223372057381803855"
  self.L04M010_CLO_Phone = "9223372057381803856"
  self.L04M010_CLO_SmokeAlarm = "9223372057381803857"
  self.L04M010_IOP_BuggedObject = 0
  self.BuggedObject = 0
  self.Smoke_Hack_Bool = 0
  self.SmokeAlarm_Hack = "9223372056554850313"
  self.TV_Hack = "9223372056705086702"
  self.Phone_Hack_Bool = 0
  self.Phone_Hack = "9223372056554850311"
  self.TV_Hack_Bool = 0
  self.L04M010_CLO_IoP03_Bank_B = "9223372057381811375"
  self.Walker = nil
  self.AllCamsL04M010_Home = {
    "9223372068436386592",
    "9223372068436386470"
  }
  self.AllCamsL04M010_Office = {
    "9223372056554851423",
    "9223372056554851425",
    "9223372056554851429",
    "9223372056705085698"
  }
  self.box_Timer_v2_56 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_56
  l0._graph = self
  l0._name = "box_Timer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|13069522"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ObjectiveMonitor_v2_77 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_77
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|31778780"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_77_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|101741315"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|146432960"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_36 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_36
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|167452403"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_36_Hacked
  self.box_OnceOnly_v3_17 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_17
  l0._graph = self
  l0._name = "box_OnceOnly_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|352134374"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_17_Out
  l0.ResetOut = DummyFunction
  self.box_RewardController_v3_6 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_6
  l0._graph = self
  l0._name = "box_RewardController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|517132777"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_6_RewardsExecuted
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|655142820"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_PhoneCommunicationController_35 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_35
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|693752348"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_35_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_28 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_28
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|704272508"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_PhoneCommunicationMonitor_63 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_63
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|707533927"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_63_OnCommunicationFinished
  self.box_PhoneCommunicationController_13 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_13
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|761248143"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_10 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_10
  l0._graph = self
  l0._name = "box_AI_IOPController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|791911120"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_10_IOPKickOutComplete
  self.box_Progression_Tag_Monitor_45 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_45
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|799597034"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_45_HasNOT
  self.box_MissionController_v4_5 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_5
  l0._graph = self
  l0._name = "box_MissionController_v4_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|813162643"
  self.box_Timer_v2_41 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_41
  l0._graph = self
  l0._name = "box_Timer_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|870409733"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_41_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_1 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_1
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|886750680"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_1_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|934736138"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_PhoneCommunicationMonitor_9 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1013676019"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_9_OnCommunicationFinished
  self.box_FreeRoam_Hack_Gameplay_23 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1028127939"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_23_Hacked
  self.box_MissionMessageController_v3_46 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_46
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1029134518"
  l0.Out = self.f_box_MissionMessageController_v3_46_Out
  l0.MessageCompleted = DummyFunction
  self.box_Send_AI_Command_Goto_42 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_42
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1063119751"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_42_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_box_Send_AI_Command_Goto_42_Aborted
  l0.Error = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_32 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_32
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1113848688"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_32_Interacted
  self.box_Timer_v2_50 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_50
  l0._graph = self
  l0._name = "box_Timer_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1230293140"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_50_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_50_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1235004011"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_48 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_48
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1286679149"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_12 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_12
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1305809613"
  l0.Out = self.f_box_MissionCheckpointReach_12_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOMonitor_54 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_54
  l0._graph = self
  l0._name = "box_CLOMonitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1311010442"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_54_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_54_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_54_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Progression_Tag_Monitor_52 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_52
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1314706348"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_52_HasNOT
  self.box_MissionMessageController_v3_78 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_78
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1441997008"
  l0.Out = self.f_box_MissionMessageController_v3_78_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_47 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_47
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1474623469"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_25 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_25
  l0._graph = self
  l0._name = "box_RewardController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1481897646"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_25_RewardsExecuted
  self.box_MissionMessageController_v3_55 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_55
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1583343860"
  l0.Out = self.f_box_MissionMessageController_v3_55_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_27 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_27
  l0._graph = self
  l0._name = "box_RewardController_v3_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1588921137"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_27_RewardsExecuted
  self.box_Send_AI_Command_Goto_53 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_53
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1590326988"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_53_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_box_Send_AI_Command_Goto_53_Aborted
  l0.Error = DummyFunction
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1592479213"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_OnceOnly_v3_40 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_40
  l0._graph = self
  l0._name = "box_OnceOnly_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1601566938"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_40_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_39 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_39
  l0._graph = self
  l0._name = "box_Timer_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1606130780"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_39_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Send_AI_Command_Goto_43 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_43
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1670454713"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_43_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_box_Send_AI_Command_Goto_43_Aborted
  l0.Error = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1685876017"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_Reward_Phone_Call_Monitor_33 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_33
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1745857532"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_33_OnPhoneCallEnded
  self.box_MultipleOR_80 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_80
  l0._graph = self
  l0._name = "box_MultipleOR_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1758393031"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_80_Out
  self.box_FreeRoam_Beat_29 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_29
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1801778920"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_29_NewBeatStarted
  self.box_PhoneCommunicationController_18 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_18
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1835269185"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_58 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_58
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1885603985"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_58_Interacted
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1894107685"
  l0.Out = self.f_box_AI_IOPController_11_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_11_IOPKickOutComplete
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1898036772"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_Security_Camera_Monitor_7 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_7
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2003644891"
  l0.Enabled = self.f_box_Security_Camera_Monitor_7_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_7_OnEndExitAll
  self.box_PhoneCommunicationController_51 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_51
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2035933542"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_83 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_83
  l0._graph = self
  l0._name = "box_CLOController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2086714232"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Security_Camera_Monitor_19 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_19
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2120755360"
  l0.Enabled = self.f_box_Security_Camera_Monitor_19_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_19_OnEndExitAll
  self.box_Send_AI_Command_Goto_49 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_49
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2132227521"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_49_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_box_Send_AI_Command_Goto_49_Aborted
  l0.Error = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|475627611", "475627611", "L04M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_29.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|403717764", "403717764", "L04M010_Main", "CheckPoint_1", "box_MultipleOR_15.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self.box_PhoneCommunicationController_1
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463251"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|252351337", "252351337", "L04M010_Main", "In", "box_PhoneCommunicationController_1.StartCommunication", self, l0)
  l0:StartCommunication()
end
function export:f_box_Timer_v2_56_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_80()
  l0 = self.box_Timer_v2_56
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|363722849", "363722849", "L04M010_Main", "box_Timer_v2_56.TimeElapsed", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ObjectiveMonitor_v2_77_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_12
  l0.CheckpointList = "CheckPoint_1"
  l0 = self.box_ObjectiveMonitor_v2_77
  l1 = self.box_MissionCheckpointReach_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|98094323", "98094323", "L04M010_Main", "box_ObjectiveMonitor_v2_77.ObjectiveCompleted", "box_MissionCheckpointReach_12.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_11
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1674412430", "1674412430", "L04M010_Main", "box_Get_Player_ID_16.Out", "box_AI_IOPController_11.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_7()
  l0 = self.box_MultipleOR_37
  l1 = self.box_Security_Camera_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|468988036", "468988036", "L04M010_Main", "box_MultipleOR_37.Out", "box_Security_Camera_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_29()
  l0 = self.box_PhoneCommunicationController_4
  l1 = self.box_FreeRoam_Beat_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|715002229", "715002229", "L04M010_Main", "box_PhoneCommunicationController_4.OnCommunicationStarted", "box_FreeRoam_Beat_29.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_36_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1067285772"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_57_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_57_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1121119229", "1121119229", "L04M010_Main", "box_FreeRoam_Hack_Gameplay_36.Hacked", "box_Ordered_Output_57.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_10
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|573941440", "573941440", "L04M010_Main", "box_Get_Player_ID_8.Out", "box_AI_IOPController_10.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_OnceOnly_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_18
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495845106"
  l0 = self.box_OnceOnly_v3_17
  l1 = self.box_PhoneCommunicationController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1995370788", "1995370788", "L04M010_Main", "box_OnceOnly_v3_17.Out", "box_PhoneCommunicationController_18.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|61097166"
  l0.Out = self.f_box_Get_Player_ID_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2004122227", "2004122227", "L04M010_Main", "box_Ordered_Output_86.Out", "box_Get_Player_ID_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Send_AI_Command_Goto_49()
  l0 = self.box_Send_AI_Command_Goto_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|551326205", "551326205", "L04M010_Main", "box_Ordered_Output_86.Out", "box_Send_AI_Command_Goto_49.Cancel", clone, l0)
  l0:Cancel()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1235198333", "1235198333", "L04M010_Main", "box_Ordered_Output_31.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|18722507", "18722507", "L04M010_Main", "box_Ordered_Output_31.Out", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_23()
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|307321183", "307321183", "L04M010_Main", "box_Ordered_Output_31.Out", "box_FreeRoam_Hack_Gameplay_23.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_RewardController_v3_6_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_46
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "473633"
  }
  l0 = self.box_RewardController_v3_6
  l1 = self.box_MissionMessageController_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1465596464", "1465596464", "L04M010_Main", "box_RewardController_v3_6.RewardsExecuted", "box_MissionMessageController_v3_46.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_19()
  l0 = self.box_MultipleOR_22
  l1 = self.box_Security_Camera_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1477635049", "1477635049", "L04M010_Main", "box_MultipleOR_22.Out", "box_Security_Camera_Monitor_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_35_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|381715579"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0 = self.box_PhoneCommunicationController_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1568353129", "1568353129", "L04M010_Main", "box_PhoneCommunicationController_35.OnCommunicationFinished", "box_Ordered_Output_86.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationMonitor_63_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_PhoneCommunicationMonitor_63
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1256126426", "1256126426", "L04M010_Main", "box_PhoneCommunicationMonitor_63.OnCommunicationFinished", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_13_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|240143862"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  l0 = self.box_PhoneCommunicationController_13
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2011808060", "2011808060", "L04M010_Main", "box_PhoneCommunicationController_13.OnCommunicationFinished", "box_Get_Player_ID_8.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_10_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_45
  l0.ProgressionTag = "ProgressionTag.9223372057381809183"
  l0 = self.box_AI_IOPController_10
  l1 = self.box_Progression_Tag_Monitor_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1613715067", "1613715067", "L04M010_Main", "box_AI_IOPController_10.IOPKickOutComplete", "box_Progression_Tag_Monitor_45.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Progression_Tag_Monitor_45_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_47
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367234"
  l0 = self.box_Progression_Tag_Monitor_45
  l1 = self.box_PhoneCommunicationController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|35109942", "35109942", "L04M010_Main", "box_Progression_Tag_Monitor_45.HasNOT", "box_PhoneCommunicationController_47.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_41_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_53()
  l0 = self.box_Timer_v2_41
  l1 = self.box_Send_AI_Command_Goto_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1610296231", "1610296231", "L04M010_Main", "box_Timer_v2_41.Stopped", "box_Send_AI_Command_Goto_53.Cancel", l0, l1)
  l1:Cancel()
end
function export:f_box_Timer_v2_41_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_53()
  l0 = self.box_Timer_v2_41
  l1 = self.box_Send_AI_Command_Goto_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|391179277", "391179277", "L04M010_Main", "box_Timer_v2_41.TimeElapsed", "box_Send_AI_Command_Goto_53.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_1_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_25
  l0.ItemDB = "Items.9223372059404075524"
  l0 = self.box_PhoneCommunicationController_1
  l1 = self.box_RewardController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1614296501", "1614296501", "L04M010_Main", "box_PhoneCommunicationController_1.OnCommunicationFinished", "box_RewardController_v3_25.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_58
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP03_BANK
  l0.MapPoint = self.NotActivatedByDefault_3
  l0.ProgressionTag = "ProgressionTag.9223372065128812054"
  l0 = self.box_MultipleOR_38
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|427649776", "427649776", "L04M010_Main", "box_MultipleOR_38.Out", "box_FreeRoam_IOP_Interact_Gameplay_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationMonitor_9_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_PhoneCommunicationMonitor_9
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|262872079", "262872079", "L04M010_Main", "box_PhoneCommunicationMonitor_9.OnCommunicationFinished", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FreeRoam_Hack_Gameplay_23_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1396492890"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|197364951", "197364951", "L04M010_Main", "box_FreeRoam_Hack_Gameplay_23.Hacked", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_13
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367232"
  l0 = self.box_MissionMessageController_v3_46
  l1 = self.box_PhoneCommunicationController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2147234075", "2147234075", "L04M010_Main", "box_MissionMessageController_v3_46.Out", "box_PhoneCommunicationController_13.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Send_AI_Command_Goto_42_Aborted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_56()
  l0 = self.box_Send_AI_Command_Goto_42
  l1 = self.box_Timer_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|873373725", "873373725", "L04M010_Main", "box_Send_AI_Command_Goto_42.Aborted", "box_Timer_v2_56.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Send_AI_Command_Goto_42_InProgress()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_56()
  l0 = self.box_Send_AI_Command_Goto_42
  l1 = self.box_Timer_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1935666356", "1935666356", "L04M010_Main", "box_Send_AI_Command_Goto_42.InProgress", "box_Timer_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_27
  l0.ItemDB = "Items.9223372065128812055"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|293547186", "293547186", "L04M010_Main", "box_Ordered_Output_57.Out", "box_RewardController_v3_27.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1817262524", "1817262524", "L04M010_Main", "box_Ordered_Output_57.Out", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_32_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1202815976"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|3081106", "3081106", "L04M010_Main", "box_FreeRoam_IOP_Interact_Gameplay_32.Interacted", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_19()
  l0 = self.box_Security_Camera_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|579653667", "579653667", "L04M010_Main", "box_Ordered_Output_24.Out", "box_Security_Camera_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1065934838", "1065934838", "L04M010_Main", "box_Ordered_Output_24.Out", "box_OnceOnly_v3_17.In", clone, l0)
  l0:In(0)
end
function export:f_box_Timer_v2_50_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_43()
  l0 = self.box_Timer_v2_50
  l1 = self.box_Send_AI_Command_Goto_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1577749062", "1577749062", "L04M010_Main", "box_Timer_v2_50.Stopped", "box_Send_AI_Command_Goto_43.Cancel", l0, l1)
  l1:Cancel()
end
function export:f_box_Timer_v2_50_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_43()
  l0 = self.box_Timer_v2_50
  l1 = self.box_Send_AI_Command_Goto_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|633596515", "633596515", "L04M010_Main", "box_Timer_v2_50.TimeElapsed", "box_Send_AI_Command_Goto_43.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_35
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367231"
  l0 = self.box_Timer_v2_26
  l1 = self.box_PhoneCommunicationController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|525910711", "525910711", "L04M010_Main", "box_Timer_v2_26.TimeElapsed", "box_PhoneCommunicationController_35.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1818713016"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MissionCheckpointReach_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2103162282", "2103162282", "L04M010_Main", "box_MissionCheckpointReach_12.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_54_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.Walker = l0.UserID
  self:OnEnter_box_MultipleOR_80()
  l1 = self.box_MultipleOR_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2108995990", "2108995990", "L04M010_Main", "box_CLOMonitor_54.GotUser", "box_MultipleOR_80.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_54_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.Walker = l0.UserID
end
function export:f_box_CLOMonitor_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_54
  self.Walker = l0.UserID
end
function export:f_box_Progression_Tag_Monitor_52_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_51
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367235"
  l0 = self.box_Progression_Tag_Monitor_52
  l1 = self.box_PhoneCommunicationController_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|21308632", "21308632", "L04M010_Main", "box_Progression_Tag_Monitor_52.HasNOT", "box_PhoneCommunicationController_51.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_6
  l0.ItemDB = "Items.9223372065128812052"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1229746432", "1229746432", "L04M010_Main", "box_Ordered_Output_30.Out", "box_RewardController_v3_6.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1094751970", "1094751970", "L04M010_Main", "box_Ordered_Output_30.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_26
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|907762840", "907762840", "L04M010_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_26.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_28
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|199995056", "199995056", "L04M010_Main", "box_Ordered_Output_59.Out", "box_DistanceBasedProgressBarController_v2_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|802530380", "802530380", "L04M010_Main", "box_Ordered_Output_34.Out", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1495963483", "1495963483", "L04M010_Main", "box_Ordered_Output_34.Out", "box_MultipleOR_38.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_34_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_36()
  l0 = self.box_FreeRoam_Hack_Gameplay_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1875948041", "1875948041", "L04M010_Main", "box_Ordered_Output_34.Out", "box_FreeRoam_Hack_Gameplay_36.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MissionMessageController_v3_78_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1487387575"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0 = self.box_MissionMessageController_v3_78
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2146030078", "2146030078", "L04M010_Main", "box_MissionMessageController_v3_78.Out", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_25_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_33
  l0.ItemDb = "Items.9223372059404075524"
  l0 = self.box_RewardController_v3_25
  l1 = self.box_Reward_Phone_Call_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|264387061", "264387061", "L04M010_Main", "box_RewardController_v3_25.RewardsExecuted", "box_Reward_Phone_Call_Monitor_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|77305683", "77305683", "L04M010_Main", "box_Ordered_Output_21.Out", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1923991475", "1923991475", "L04M010_Main", "box_Ordered_Output_21.Out", "box_MultipleOR_38.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ObjectiveMonitor_v2_77
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "Objective",
    id = "457783"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|434246022", "434246022", "L04M010_Main", "box_Ordered_Output_21.Out", "box_ObjectiveMonitor_v2_77.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_55_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1407035646"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_MissionMessageController_v3_55
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|68995568", "68995568", "L04M010_Main", "box_MissionMessageController_v3_55.Out", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_27_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_55
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "473635"
  }
  l0 = self.box_RewardController_v3_27
  l1 = self.box_MissionMessageController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1194619404", "1194619404", "L04M010_Main", "box_RewardController_v3_27.RewardsExecuted", "box_MissionMessageController_v3_55.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Send_AI_Command_Goto_53_Aborted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_39()
  l0 = self.box_Send_AI_Command_Goto_53
  l1 = self.box_Timer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|280910112", "280910112", "L04M010_Main", "box_Send_AI_Command_Goto_53.Aborted", "box_Timer_v2_39.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Send_AI_Command_Goto_53_InProgress()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_39()
  l0 = self.box_Send_AI_Command_Goto_53
  l1 = self.box_Timer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1764960237", "1764960237", "L04M010_Main", "box_Send_AI_Command_Goto_53.InProgress", "box_Timer_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_14
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1044719229", "1044719229", "L04M010_Main", "box_MultipleOR_14.Out", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_48
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367230"
  l0 = self.box_OnceOnly_v3_40
  l1 = self.box_PhoneCommunicationController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|63860929", "63860929", "L04M010_Main", "box_OnceOnly_v3_40.Out", "box_PhoneCommunicationController_48.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_39_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_42()
  l0 = self.box_Timer_v2_39
  l1 = self.box_Send_AI_Command_Goto_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1143620169", "1143620169", "L04M010_Main", "box_Timer_v2_39.Stopped", "box_Send_AI_Command_Goto_42.Cancel", l0, l1)
  l1:Cancel()
end
function export:f_box_Timer_v2_39_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_42()
  l0 = self.box_Timer_v2_39
  l1 = self.box_Send_AI_Command_Goto_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|98334518", "98334518", "L04M010_Main", "box_Timer_v2_39.TimeElapsed", "box_Send_AI_Command_Goto_42.In", l0, l1)
  l1:In()
end
function export:f_box_Send_AI_Command_Goto_43_Aborted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_41()
  l0 = self.box_Send_AI_Command_Goto_43
  l1 = self.box_Timer_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|103636787", "103636787", "L04M010_Main", "box_Send_AI_Command_Goto_43.Aborted", "box_Timer_v2_41.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Send_AI_Command_Goto_43_InProgress()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_41()
  l0 = self.box_Send_AI_Command_Goto_43
  l1 = self.box_Timer_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1081907274", "1081907274", "L04M010_Main", "box_Send_AI_Command_Goto_43.InProgress", "box_Timer_v2_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_15
  l1 = self.box_MissionController_v4_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1908695616", "1908695616", "L04M010_Main", "box_MultipleOR_15.Out", "box_MissionController_v4_5.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Reward_Phone_Call_Monitor_33_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367233"
  l0 = self.box_Reward_Phone_Call_Monitor_33
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1224253674", "1224253674", "L04M010_Main", "box_Reward_Phone_Call_Monitor_33.OnPhoneCallEnded", "box_PhoneCommunicationController_4.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_80_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Send_AI_Command_Goto_49()
  l0 = self.box_MultipleOR_80
  l1 = self.box_Send_AI_Command_Goto_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1109322307", "1109322307", "L04M010_Main", "box_MultipleOR_80.Out", "box_Send_AI_Command_Goto_49.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_29_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_78
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "Objective",
    id = "457783"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "473633"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "473635"
  }
  l0 = self.box_FreeRoam_Beat_29
  l1 = self.box_MissionMessageController_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1499629459", "1499629459", "L04M010_Main", "box_FreeRoam_Beat_29.NewBeatStarted", "box_MissionMessageController_v3_78.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationMonitor_63
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367232"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1889068706", "1889068706", "L04M010_Main", "box_Ordered_Output_2.Out", "box_PhoneCommunicationMonitor_63.Enable", clone, l0)
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
  l0 = self.box_PhoneCommunicationMonitor_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367231"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1434458004", "1434458004", "L04M010_Main", "box_Ordered_Output_2.Out", "box_PhoneCommunicationMonitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_58_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2134071099"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_58
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|84047064", "84047064", "L04M010_Main", "box_FreeRoam_IOP_Interact_Gameplay_58.Interacted", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_11_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_52
  l0.ProgressionTag = "ProgressionTag.9223372047605827066"
  l0 = self.box_AI_IOPController_11
  l1 = self.box_Progression_Tag_Monitor_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1419483927", "1419483927", "L04M010_Main", "box_AI_IOPController_11.IOPKickOutComplete", "box_Progression_Tag_Monitor_52.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_AI_IOPController_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_83
  l0.CLO = "9223372056554851417"
  l0.User = self.Walker
  l0 = self.box_AI_IOPController_11
  l1 = self.box_CLOController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1809809115", "1809809115", "L04M010_Main", "box_AI_IOPController_11.Out", "box_CLOController_83.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_32
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP01_HOME
  l0.MapPoint = self.NotActivatedByDefault_2
  l0.ProgressionTag = "ProgressionTag.9223372065128812053"
  l0 = self.box_MultipleOR_20
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1019962545", "1019962545", "L04M010_Main", "box_MultipleOR_20.Out", "box_FreeRoam_IOP_Interact_Gameplay_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_36()
  l0 = self.box_Security_Camera_Monitor_7
  l1 = self.box_FreeRoam_Hack_Gameplay_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1558373306", "1558373306", "L04M010_Main", "box_Security_Camera_Monitor_7.Enabled", "box_FreeRoam_Hack_Gameplay_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_7_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1421365735"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_34_Out_2
  l0 = self.box_Security_Camera_Monitor_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1023012983", "1023012983", "L04M010_Main", "box_Security_Camera_Monitor_7.OnEndExitAll", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_19_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_23()
  l0 = self.box_Security_Camera_Monitor_19
  l1 = self.box_FreeRoam_Hack_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|91623595", "91623595", "L04M010_Main", "box_Security_Camera_Monitor_19.Enabled", "box_FreeRoam_Hack_Gameplay_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_19_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|504142983"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_31_Out_2
  l0 = self.box_Security_Camera_Monitor_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|878584810", "878584810", "L04M010_Main", "box_Security_Camera_Monitor_19.OnEndExitAll", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_Send_AI_Command_Goto_49_Aborted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_50()
  l0 = self.box_Send_AI_Command_Goto_49
  l1 = self.box_Timer_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1710360283", "1710360283", "L04M010_Main", "box_Send_AI_Command_Goto_49.Aborted", "box_Timer_v2_50.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Send_AI_Command_Goto_49_InProgress()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_50()
  l0 = self.box_Send_AI_Command_Goto_49
  l1 = self.box_Timer_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1210869584", "1210869584", "L04M010_Main", "box_Send_AI_Command_Goto_49.InProgress", "box_Timer_v2_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_7()
  l0 = self.box_Security_Camera_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1434892977", "1434892977", "L04M010_Main", "box_Ordered_Output_44.Out", "box_Security_Camera_Monitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|2015136574", "2015136574", "L04M010_Main", "box_Ordered_Output_44.Out", "box_OnceOnly_v3_40.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_54
  l0.CLO = "9223372056554851417"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M010.domino|@L04M010_Main|1829542107", "1829542107", "L04M010_Main", "box_Ordered_Output_44.Out", "box_CLOMonitor_54.GetUser", clone, l0)
  l0:GetUser()
end
function export:OnEnter_box_Timer_v2_56()
  local l0
  l0 = self.box_Timer_v2_56
  l0.Seconds = 12
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_36()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_36
  l0.CLO = self.L04M010_CLO_IoP03_Bank_B
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372057381809183"
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_Timer_v2_41()
  local l0
  l0 = self.box_Timer_v2_41
  l0.Seconds = 7
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_23()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_23
  l0.CLO = self.L04M10_CLO_Laptop
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047605827066"
end
function export:OnEnter_box_Send_AI_Command_Goto_42()
  local l0
  l0 = self.box_Send_AI_Command_Goto_42
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851416"
end
function export:OnEnter_box_Timer_v2_50()
  local l0
  l0 = self.box_Timer_v2_50
  l0.Seconds = 7
end
function export:OnEnter_box_Send_AI_Command_Goto_53()
  local l0
  l0 = self.box_Send_AI_Command_Goto_53
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851419"
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_Timer_v2_39()
  local l0
  l0 = self.box_Timer_v2_39
  l0.Seconds = 7
end
function export:OnEnter_box_Send_AI_Command_Goto_43()
  local l0
  l0 = self.box_Send_AI_Command_Goto_43
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851421"
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_80()
end
function export:OnEnter_box_FreeRoam_Beat_29()
  local l0
  l0 = self.box_FreeRoam_Beat_29
  l0.ProgressionLayer = "ProgressionLayers.9223372047605997520"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_Security_Camera_Monitor_7()
  local l0
  l0 = self.box_Security_Camera_Monitor_7
  l0.CameraEntityList = self.AllCamsL04M010_Office
end
function export:OnEnter_box_Security_Camera_Monitor_19()
  local l0
  l0 = self.box_Security_Camera_Monitor_19
  l0.CameraEntityList = self.AllCamsL04M010_Home
end
function export:OnEnter_box_Send_AI_Command_Goto_49()
  local l0
  l0 = self.box_Send_AI_Command_Goto_49
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851419"
end
_compilerVersion = 4
