export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SendAICommandGoto.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L12M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main"
  self.PlayerEntity = nil
  self.Police_Station_Cryptogram_Hackable = "9223372048624506747"
  self.DebugAnnotationTextEntity_319 = "9223372048624506756"
  self.DebugAnnotationTextEntity_320 = "9223372048624506757"
  self.L12_StoryIcon_1 = "9223372049443181543"
  self.L12_StoryIcon_0 = "9223372049443181541"
  self.L12_StoryIcon_IOP_Inside = "9223372050612991718"
  self.L12_StoryIcon_IOP_Outside = "9223372049443181541"
  self.MissionStartTrigger_32 = "9223372050612991715"
  self.IOP_Cam = "9223372056705266998"
  self.PoliceStationHacked = 0
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_4 = "9223372052734144483"
  self.L12M010_CityLifeObject_Cryptogram_Email = "9223372055295050566"
  self.L12M010_CityLifeObject_Prime8_Intel = "9223372055295050568"
  self.Cam1 = "9223372056705266998"
  self.CLO = "9223372056641968797"
  self.Mover = nil
  self.L12M010_CLO_Computer1 = "9223372056705265327"
  self.L12M010_CLO_Computer2 = "9223372056705265326"
  self.Powerbar_Light = "9223372056641968770"
  self.ComLight_2 = "9223372056641968778"
  self.ComLight_1 = "9223372056641968776"
  self.L12M010_CLO_Powerbar = "9223372057655226040"
  self._40DG_6 = "9223372056641968786"
  self.IOP_ZodiacM10_40DG_3 = "9223372056705267000"
  self.AllCamsL12M010 = {
    "9223372056641968786",
    "9223372056705266998",
    "9223372056705267000"
  }
  self.box_FreeRoam_Hack_Gameplay_24 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_24
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|76647312"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_24_Hacked
  self.box_Security_Camera_Monitor_34 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_34
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|78050912"
  l0.Enabled = self.f_box_Security_Camera_Monitor_34_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_34_OnEndExitAll
  self.box_PhoneCommunicationController_38 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_38
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|143960156"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_38_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_29 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_29
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|191287706"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_29_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|232571549"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_25 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_25
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|262031793"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_25_Interacted
  self.box_Reward_Phone_Call_Monitor_7 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|263933491"
  l0.Enabled = self.f_box_Reward_Phone_Call_Monitor_7_Enabled
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|325368119"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_9_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|380001152"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|455252792"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_MultipleOR_39 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_39
  l0._graph = self
  l0._name = "box_MultipleOR_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|462606142"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_39_Out
  self.box_PhoneCommunicationController_33 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_33
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|478721572"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_33_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_33_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Beat_30 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_30
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|547359597"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_30_NewBeatStarted
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|586858696"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_RewardController_v3_58 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_58
  l0._graph = self
  l0._name = "box_RewardController_v3_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|689313508"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_58_RewardsExecuted
  self.box_CLOMonitor_4 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_4
  l0._graph = self
  l0._name = "box_CLOMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|766006131"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_4_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_4_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_4_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_RewardController_v3_5 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_5
  l0._graph = self
  l0._name = "box_RewardController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|773689677"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PhoneCommunicationController_37 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_37
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|945573408"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_1 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_1
  l0._graph = self
  l0._name = "box_AI_IOPController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|953529989"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_1_IOPKickOutComplete
  self.box_Timer_v2_18 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_18
  l0._graph = self
  l0._name = "box_Timer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1015580626"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_43 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_43
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1023897185"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Progression_Tag_Monitor_27 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_27
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1104311534"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_27_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_27_HasNOT
  self.box_FreeRoam_Mission_End_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_2
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1157291267"
  self.box_Progression_Tag_Monitor_54 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_54
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1187885839"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_54_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_54_HasNOT
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1289239476"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1384503451"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_PhoneCommunicationController_57 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_57
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1456466639"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_57_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_57_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Send_AI_Command_Goto_16 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_16
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1515049907"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_16_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = DummyFunction
  l0.Error = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1594412934"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1652465797"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_35 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_35
  l0._graph = self
  l0._name = "box_OnceOnly_v3_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1653238532"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_35_Out
  l0.ResetOut = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_41 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_41
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1736694041"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_41_Hacked
  self.box_PhoneCommunicationController_55 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_55
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1803822473"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Progression_Tag_Monitor_28 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_28
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1824316506"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_28_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_28_HasNOT
  self.box_Send_AI_Command_Goto_14 = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self.box_Send_AI_Command_Goto_14
  l0._graph = self
  l0._name = "box_Send_AI_Command_Goto_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1895118467"
  l0.InProgress = self.f_box_Send_AI_Command_Goto_14_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = DummyFunction
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
  self:OnEnter_box_FreeRoam_Beat_30()
  l0 = self.box_FreeRoam_Beat_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1365701801", "1365701801", "L12M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_30.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|461064756", "461064756", "L12M010_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_Timer_v2_36
  l0.Seconds = 60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|412067317", "412067317", "L12M010_Main", "In", "box_Timer_v2_36.Start", self, l0)
  l0:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_24_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_54
  l0.ProgressionTag = "ProgressionTag.9223372048624506742"
  l0 = self.box_FreeRoam_Hack_Gameplay_24
  l1 = self.box_Progression_Tag_Monitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1449690677", "1449690677", "L12M010_Main", "box_FreeRoam_Hack_Gameplay_24.Hacked", "box_Progression_Tag_Monitor_54.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Security_Camera_Monitor_34_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|625752739"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0 = self.box_Security_Camera_Monitor_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|2100342618", "2100342618", "L12M010_Main", "box_Security_Camera_Monitor_34.Enabled", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_34_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1033802137"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_42_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_42_Out_3
  l0 = self.box_Security_Camera_Monitor_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|416429500", "416429500", "L12M010_Main", "box_Security_Camera_Monitor_34.OnEndExitAll", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_38_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l0.ItemDb = "Items.9223372050357370621"
  l0 = self.box_PhoneCommunicationController_38
  l1 = self.box_Reward_Phone_Call_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|42470008", "42470008", "L12M010_Main", "box_PhoneCommunicationController_38.OnCommunicationFinished", "box_Reward_Phone_Call_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_29_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_55
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373367"
  l0 = self.box_PhoneCommunicationController_29
  l1 = self.box_PhoneCommunicationController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1094802713", "1094802713", "L12M010_Main", "box_PhoneCommunicationController_29.OnCommunicationFinished", "box_PhoneCommunicationController_55.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|697531853", "697531853", "L12M010_Main", "box_MissionMessageController_v3_3.Out", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_25_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|337975623"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1987306922", "1987306922", "L12M010_Main", "box_FreeRoam_IOP_Interact_Gameplay_25.Interacted", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_5
  l0.ItemDB = "Items.9223372050357370621"
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l1 = self.box_RewardController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1883802210", "1883802210", "L12M010_Main", "box_Reward_Phone_Call_Monitor_7.Enabled", "box_RewardController_v3_5.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Reward_Phone_Call_Monitor_7_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370921"
  l0 = self.box_Reward_Phone_Call_Monitor_7
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1849405798", "1849405798", "L12M010_Main", "box_Reward_Phone_Call_Monitor_7.OnPhoneCallEnded", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_9_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Beat_30()
  l0 = self.box_PhoneCommunicationController_9
  l1 = self.box_FreeRoam_Beat_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|288538344", "288538344", "L12M010_Main", "box_PhoneCommunicationController_9.OnCommunicationFinished", "box_FreeRoam_Beat_30.StartNewBeat", l0, l1)
  l1:StartNewBeat()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_34()
  l0 = self.box_Security_Camera_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1883224312", "1883224312", "L12M010_Main", "box_Ordered_Output_15.Out", "box_Security_Camera_Monitor_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1284014535", "1284014535", "L12M010_Main", "box_Ordered_Output_15.Out", "box_OnceOnly_v3_35.In", clone, l0)
  l0:In(0)
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_Timer_v2_17
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|241872534", "241872534", "L12M010_Main", "box_Timer_v2_17.TimeElapsed", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_2()
  l0 = self.box_MultipleOR_13
  l1 = self.box_FreeRoam_Mission_End_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1371052599", "1371052599", "L12M010_Main", "box_MultipleOR_13.Out", "box_FreeRoam_Mission_End_2.End", l0, l1)
  l1:End()
end
function export:f_box_MultipleOR_39_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1771442096"
  l0.Out = self.f_box_Get_Player_ID_22_Out
  l0 = self.box_MultipleOR_39
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1061228029", "1061228029", "L12M010_Main", "box_MultipleOR_39.Out", "box_Get_Player_ID_22.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_33_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_PhoneCommunicationController_33
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1872516567", "1872516567", "L12M010_Main", "box_PhoneCommunicationController_33.OnCommunicationFinished", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_33_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_PhoneCommunicationController_33
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|656787854", "656787854", "L12M010_Main", "box_PhoneCommunicationController_33.StartCommunicationOut", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_Beat_30_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_27
  l0.ProgressionTag = "ProgressionTag.9223372055295050569"
  l0 = self.box_FreeRoam_Beat_30
  l1 = self.box_Progression_Tag_Monitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1180911727", "1180911727", "L12M010_Main", "box_FreeRoam_Beat_30.NewBeatStarted", "box_Progression_Tag_Monitor_27.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_34()
  l0 = self.box_MultipleOR_31
  l1 = self.box_Security_Camera_Monitor_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|542254119", "542254119", "L12M010_Main", "box_MultipleOR_31.Out", "box_Security_Camera_Monitor_34.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_41()
  l0 = self.box_FreeRoam_Hack_Gameplay_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1638640983", "1638640983", "L12M010_Main", "box_Ordered_Output_32.Out", "box_FreeRoam_Hack_Gameplay_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_24()
  l0 = self.box_FreeRoam_Hack_Gameplay_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1675008919", "1675008919", "L12M010_Main", "box_Ordered_Output_32.Out", "box_FreeRoam_Hack_Gameplay_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_RewardController_v3_58_RewardsExecuted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_RewardController_v3_58
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|786528424", "786528424", "L12M010_Main", "box_RewardController_v3_58.RewardsExecuted", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOMonitor_4_GotUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_4
  self.Mover = l0.UserID
  self:OnEnter_box_MultipleOR_20()
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|852946570", "852946570", "L12M010_Main", "box_CLOMonitor_4.GotUser", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_4_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_4
  self.Mover = l0.UserID
end
function export:f_box_CLOMonitor_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_4
  self.Mover = l0.UserID
end
function export:f_box_AI_IOPController_1_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_AI_IOPController_1
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1871803461", "1871803461", "L12M010_Main", "box_AI_IOPController_1.IOPKickOutComplete", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_18_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Send_AI_Command_Goto_16
  l0.NPC = self.Mover
  l0.Destination = "9223372056641968799"
  l0 = self.box_Timer_v2_18
  l1 = self.box_Send_AI_Command_Goto_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1811532417", "1811532417", "L12M010_Main", "box_Timer_v2_18.TimeElapsed", "box_Send_AI_Command_Goto_16.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|572815300", "572815300", "L12M010_Main", "box_Ordered_Output_42.Out", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|443956930", "443956930", "L12M010_Main", "box_Ordered_Output_42.Out", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_42_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_41()
  l0 = self.box_FreeRoam_Hack_Gameplay_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1972173278", "1972173278", "L12M010_Main", "box_Ordered_Output_42.Out", "box_FreeRoam_Hack_Gameplay_41.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_42_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_24()
  l0 = self.box_FreeRoam_Hack_Gameplay_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1448099063", "1448099063", "L12M010_Main", "box_Ordered_Output_42.Out", "box_FreeRoam_Hack_Gameplay_24.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1225780720", "1225780720", "L12M010_Main", "box_Simple_Node_6.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Progression_Tag_Monitor_27_Has()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1605833181"
  l0.Out = self.f_box_Simple_Node_26_Out
  l0 = self.box_Progression_Tag_Monitor_27
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|464727494", "464727494", "L12M010_Main", "box_Progression_Tag_Monitor_27.Has", "box_Simple_Node_26.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_27_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M010.Objectives.Objective010",
    item = "Objective",
    id = "457695"
  }
  l0 = self.box_Progression_Tag_Monitor_27
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|936912509", "936912509", "L12M010_Main", "box_Progression_Tag_Monitor_27.HasNOT", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Progression_Tag_Monitor_54_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_57
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370924"
  l0 = self.box_Progression_Tag_Monitor_54
  l1 = self.box_PhoneCommunicationController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1807262873", "1807262873", "L12M010_Main", "box_Progression_Tag_Monitor_54.Has", "box_PhoneCommunicationController_57.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Progression_Tag_Monitor_54_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_29
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370924"
  l0 = self.box_Progression_Tag_Monitor_54
  l1 = self.box_PhoneCommunicationController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|534300877", "534300877", "L12M010_Main", "box_Progression_Tag_Monitor_54.HasNOT", "box_PhoneCommunicationController_29.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_25
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_4
  l0.MapPoint = self.L12_StoryIcon_IOP_Outside
  l0 = self.box_MultipleOR_21
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1392922057", "1392922057", "L12M010_Main", "box_MultipleOR_21.Out", "box_FreeRoam_IOP_Interact_Gameplay_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_58
  l0.ItemDB = "Items.9223372055295050570"
  l0 = self.box_MultipleOR_19
  l1 = self.box_RewardController_v3_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1537976522", "1537976522", "L12M010_Main", "box_MultipleOR_19.Out", "box_RewardController_v3_58.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_57_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_39()
  l0 = self.box_PhoneCommunicationController_57
  l1 = self.box_MultipleOR_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|2140970261", "2140970261", "L12M010_Main", "box_PhoneCommunicationController_57.OnCommunicationFinished", "box_MultipleOR_39.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_57_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_PhoneCommunicationController_57
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1753231437", "1753231437", "L12M010_Main", "box_PhoneCommunicationController_57.StartCommunicationOut", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Send_AI_Command_Goto_16_InProgress()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_17
  l0.Seconds = 6
  l0 = self.box_Send_AI_Command_Goto_16
  l1 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|92476700", "92476700", "L12M010_Main", "box_Send_AI_Command_Goto_16.InProgress", "box_Timer_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Send_AI_Command_Goto_14
  l0.NPC = self.Mover
  l0.Destination = "9223372056641968801"
  l0 = self.box_MultipleOR_20
  l1 = self.box_Send_AI_Command_Goto_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|621800064", "621800064", "L12M010_Main", "box_MultipleOR_20.Out", "box_Send_AI_Command_Goto_14.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1091707637"
  l0.Out = self.f_box_Simple_Node_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|2013665273", "2013665273", "L12M010_Main", "box_Simple_Node_26.Out", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_38
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370920"
  l0 = self.box_Timer_v2_36
  l1 = self.box_PhoneCommunicationController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1693855608", "1693855608", "L12M010_Main", "box_Timer_v2_36.TimeElapsed", "box_PhoneCommunicationController_38.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_35_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1806435437"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_8_Out_2
  l0 = self.box_OnceOnly_v3_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|2087949621", "2087949621", "L12M010_Main", "box_OnceOnly_v3_35.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_41_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_28
  l0.ProgressionTag = "ProgressionTag.9223372048624506743"
  l0 = self.box_FreeRoam_Hack_Gameplay_41
  l1 = self.box_Progression_Tag_Monitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1802790695", "1802790695", "L12M010_Main", "box_FreeRoam_Hack_Gameplay_41.Hacked", "box_Progression_Tag_Monitor_28.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Get_Player_ID_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_1
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1095580231", "1095580231", "L12M010_Main", "box_Get_Player_ID_22.Out", "box_AI_IOPController_1.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_43
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373366"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1557455162", "1557455162", "L12M010_Main", "box_Ordered_Output_8.Out", "box_PhoneCommunicationController_43.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.ComLight_1
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|469724845"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|344702600", "344702600", "L12M010_Main", "box_Ordered_Output_8.Out", "box_LightController_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_8_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_4
  l0.CLO = self.CLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|833709714", "833709714", "L12M010_Main", "box_Ordered_Output_8.Out", "box_CLOMonitor_4.GetUser", clone, l0)
  l0:GetUser()
end
function export:f_box_Progression_Tag_Monitor_28_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_33
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370923"
  l0 = self.box_Progression_Tag_Monitor_28
  l1 = self.box_PhoneCommunicationController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|1399375381", "1399375381", "L12M010_Main", "box_Progression_Tag_Monitor_28.Has", "box_PhoneCommunicationController_33.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Progression_Tag_Monitor_28_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_37
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357370922"
  l0 = self.box_Progression_Tag_Monitor_28
  l1 = self.box_PhoneCommunicationController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|365176738", "365176738", "L12M010_Main", "box_Progression_Tag_Monitor_28.HasNOT", "box_PhoneCommunicationController_37.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Send_AI_Command_Goto_14_InProgress()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_18
  l0.Seconds = 5
  l0 = self.box_Send_AI_Command_Goto_14
  l1 = self.box_Timer_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M010.domino|@L12M010_Main|2123931191", "2123931191", "L12M010_Main", "box_Send_AI_Command_Goto_14.InProgress", "box_Timer_v2_18.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_24()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_24
  l0.CLO = self.L12M010_CLO_Computer2
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048624506743"
end
function export:OnEnter_box_Security_Camera_Monitor_34()
  local l0
  l0 = self.box_Security_Camera_Monitor_34
  l0.CameraEntityList = self.AllCamsL12M010
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_39()
end
function export:OnEnter_box_FreeRoam_Beat_30()
  local l0
  l0 = self.box_FreeRoam_Beat_30
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506737"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_FreeRoam_Mission_End_2()
  local l0
  l0 = self.box_FreeRoam_Mission_End_2
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_41()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_41
  l0.CLO = self.L12M010_CLO_Computer1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048624506742"
end
_compilerVersion = 4
