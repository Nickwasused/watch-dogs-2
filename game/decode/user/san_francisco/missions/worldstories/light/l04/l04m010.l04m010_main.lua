export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
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
  self[56] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[77] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_77_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[36] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_36_Hacked
  self[17] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_17_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_6_RewardsExecuted
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[35] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[35]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_35_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[63] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[63]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_63_OnCommunicationFinished
  self[13] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_10_IOPKickOutComplete
  self[45] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_45_HasNOT
  self[5] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
  self[41] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_41_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[1]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_1_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[9] = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_9_OnCommunicationFinished
  self[23] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_23_Hacked
  self[46] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.MessageCompleted = DummyFunction
  self[42] = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self[42]
  l0._graph = self
  l0.InProgress = self.f_42_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_42_Aborted
  l0.Error = DummyFunction
  self[32] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_32_Interacted
  self[50] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_50_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_50_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[48] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[48]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[54] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_54_GotUser
  l0.NotGotUser = self.f_54_NotGotUser
  l0.OnUserInPlace = self.f_54_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[52] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_52_HasNOT
  self[78] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = self.f_78_Out
  l0.MessageCompleted = DummyFunction
  self[47] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[47]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[25] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_25_RewardsExecuted
  self[55] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.MessageCompleted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_27_RewardsExecuted
  self[53] = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self[53]
  l0._graph = self
  l0.InProgress = self.f_53_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_53_Aborted
  l0.Error = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[40] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[40]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_40_Out
  l0.ResetOut = DummyFunction
  self[39] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_39_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[43] = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self[43]
  l0._graph = self
  l0.InProgress = self.f_43_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_43_Aborted
  l0.Error = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[33] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_33_OnPhoneCallEnded
  self[80] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_80_Out
  self[29] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[29]
  l0._graph = self
  l0.NewBeatStarted = self.f_29_NewBeatStarted
  self[18] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[18]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[58] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[58]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_58_Interacted
  self[11] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_11_IOPKickOutComplete
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
  self[7] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_7_OnEndExitAll
  self[51] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[51]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[83] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[83]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[19] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = self.f_19_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_19_OnEndExitAll
  self[49] = cbox:CreateBox("domino/System/SendAICommandGoto.lua")
  l0 = self[49]
  l0._graph = self
  l0.InProgress = self.f_49_InProgress
  l0.Succeeded = DummyFunction
  l0.Failed = DummyFunction
  l0.Aborted = self.f_49_Aborted
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
  self:en_29()
  l0 = self[29]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[15]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[1]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357463251"
  l0:StartCommunication()
end
function export:f_56_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[80]
  l0:Input(1)
end
function export:f_77_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[11]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_37_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_4_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:StartNewBeat()
end
function export:f_36_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_57_Out_0
  l0.Out[1] = self.f_57_Out_1
  l0:In()
end
function export:f_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[10]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495845106"
  l0:StartCommunication()
end
function export:f_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_86_Out_1()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Cancel()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_31_Out_2()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Stop()
end
function export:f_6_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[46]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective1",
    id = "473633"
  }
  l0:IncrementObjective()
end
function export:f_22_Out()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_35_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_86_Out_0
  l0.Out[1] = self.f_86_Out_1
  l0:In()
end
function export:f_63_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_13_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_10_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[45]
  l0.ProgressionTag = "ProgressionTag.9223372057381809183"
  l0:HasProgressionTag()
end
function export:f_45_HasNOT()
  local l0
  self = self._graph
  l0 = self[47]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367234"
  l0:StartCommunication()
end
function export:f_41_Stopped()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Cancel()
end
function export:f_41_TimeElapsed()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:In()
end
function export:f_1_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[25]
  l0.ItemDB = "Items.9223372059404075524"
  l0:ExecuteRewards()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP03_BANK
  l0.MapPoint = self.NotActivatedByDefault_3
  l0.ProgressionTag = "ProgressionTag.9223372065128812054"
  l0:Start()
end
function export:f_9_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_23_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0:In()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367232"
  l0:StartCommunication()
end
function export:f_42_Aborted()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Stop()
end
function export:f_42_InProgress()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:Start()
end
function export:f_57_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0.ItemDB = "Items.9223372065128812055"
  l0:ExecuteRewards()
end
function export:f_57_Out_1()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_32_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:In(0)
end
function export:f_50_Stopped()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:Cancel()
end
function export:f_50_TimeElapsed()
  local l0
  self = self._graph
  self:en_43()
  l0 = self[43]
  l0:In()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[35]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367231"
  l0:StartCommunication()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_54_GotUser()
  local l0
  self = self._graph
  l0 = self[54]
  self.Walker = l0.UserID
  l0 = self[80]
  l0:Input(0)
end
function export:f_54_NotGotUser()
  local l0
  self = self._graph
  l0 = self[54]
  self.Walker = l0.UserID
end
function export:f_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[54]
  self.Walker = l0.UserID
end
function export:f_52_HasNOT()
  local l0
  self = self._graph
  l0 = self[51]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367235"
  l0:StartCommunication()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ItemDB = "Items.9223372065128812052"
  l0:ExecuteRewards()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 15
  l0:Start()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "Downloading",
    id = "550990"
  }
  l0.TotalTime = 15
  l0:Start()
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_34_Out_2()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Stop()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0:In()
end
function export:f_25_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[33]
  l0.ItemDb = "Items.9223372059404075524"
  l0:Enable()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(0)
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "Objective",
    id = "457783"
  }
  l0:Enable()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_27_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[55]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L04.L04M010.Objectives.Objective010",
    item = "SubObjective3",
    id = "473635"
  }
  l0:IncrementObjective()
end
function export:f_53_Aborted()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Stop()
end
function export:f_53_InProgress()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:Start()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367230"
  l0:StartCommunication()
end
function export:f_39_Stopped()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Cancel()
end
function export:f_39_TimeElapsed()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:In()
end
function export:f_43_Aborted()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Stop()
end
function export:f_43_InProgress()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Start()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Succeed()
end
function export:f_33_OnPhoneCallEnded()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367233"
  l0:StartCommunication()
end
function export:f_80_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:In()
end
function export:f_29_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[78]
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
  l0:ShowNewObjective()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[63]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367232"
  l0:Enable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367231"
  l0:Enable()
end
function export:f_58_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0.Out[2] = self.f_44_Out_2
  l0:In()
end
function export:f_11_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[52]
  l0.ProgressionTag = "ProgressionTag.9223372047605827066"
  l0:HasProgressionTag()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[83]
  l0.CLO = "9223372056554851417"
  l0.User = self.Walker
  l0:UnspawnUser()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_IoP01_HOME
  l0.MapPoint = self.NotActivatedByDefault_2
  l0.ProgressionTag = "ProgressionTag.9223372065128812053"
  l0:Start()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Start()
end
function export:f_7_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0.Out[2] = self.f_34_Out_2
  l0:In()
end
function export:f_19_Enabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Start()
end
function export:f_19_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0.Out[2] = self.f_31_Out_2
  l0:In()
end
function export:f_49_Aborted()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Stop()
end
function export:f_49_InProgress()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Start()
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0:In(0)
end
function export:f_44_Out_2()
  local l0
  self = self._graph
  l0 = self[54]
  l0.CLO = "9223372056554851417"
  l0:GetUser()
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.Seconds = 12
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.CLO = self.L04M010_CLO_IoP03_Bank_B
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372057381809183"
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Seconds = 7
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.CLO = self.L04M10_CLO_Laptop
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372047605827066"
end
function export:en_42()
  local l0
  l0 = self[42]
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851416"
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.Seconds = 7
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851419"
end
function export:en_39()
  local l0
  l0 = self[39]
  l0.Seconds = 7
end
function export:en_43()
  local l0
  l0 = self[43]
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851421"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.ProgressionLayer = "ProgressionLayers.9223372047605997520"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.CameraEntityList = self.AllCamsL04M010_Office
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.CameraEntityList = self.AllCamsL04M010_Home
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.NPC = self.Walker
  l0.Destination = "9223372056554851419"
end
_compilerVersion = 4
