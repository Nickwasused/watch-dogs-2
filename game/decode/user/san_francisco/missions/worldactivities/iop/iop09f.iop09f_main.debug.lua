export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1433769250.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2847170774.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2015265299.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2785530579.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/674218771.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3143645252.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP09F_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.BadVar = 0
  self.RolesList = {"Atm.Person"}
  self.Alarm = 0
  self.NPC_List = {}
  self.Npc = nil
  self.BadHack = "9223372066503482751"
  self.CLO = nil
  self.MakeItRain = 0
  self.ATM_Camera = "9223372053051119836"
  self.BarkSoundEntity_0 = "9223372053051119825"
  self.GoodHack = "9223372066503482749"
  self.CLO_Sync = 6
  self.Money = "9223372053051119831"
  self.GoodVar = 0
  self.Money2 = "9223372053051119838"
  self.Light = "9223372053051119823"
  self.Money3 = "9223372053051119829"
  self.Prop = nil
  self.box_PlaySound_v2_150 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_150
  l0._graph = self
  l0._name = "box_PlaySound_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|18476010"
  l0.Out = self.f_box_PlaySound_v2_150_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|96100344"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|106215507"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_159 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|110719352"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_107 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_107
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|138914487"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_107_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_107_HasNOT
  self.box_IOPMonitor_82 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_82
  l0._graph = self
  l0._name = "box_IOPMonitor_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|142166921"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_82_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_82_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_82_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_82_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_RewardController_v3_8 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_8
  l0._graph = self
  l0._name = "box_RewardController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|166434119"
  l0.Out = self.f_box_RewardController_v3_8_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|195034827"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_27_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_44 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_44
  l0._graph = self
  l0._name = "box_SetBoolean_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|215724900"
  l0.Out = self.f_box_SetBoolean_v2_44_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_44_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_44_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_44_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_44_SetFromBool
  self.box_PhoneCommunicationController_120 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_120
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|224355327"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_120_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_85 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_85
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|229853032"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_85_MessageCompleted
  self.box_CinematicPrep_123 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_123
  l0._graph = self
  l0._name = "box_CinematicPrep_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|288079708"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_139 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_139
  l0._graph = self
  l0._name = "box_PlaySound_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|289947755"
  l0.Out = self.f_box_PlaySound_v2_139_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_20 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_20
  l0._graph = self
  l0._name = "box_HackableController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|292195359"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_20_OverrideHackingTextSet
  self.box_RewardController_v3_77 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_77
  l0._graph = self
  l0._name = "box_RewardController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|358799518"
  l0.Out = self.f_box_RewardController_v3_77_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionMessageController_v3_128 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_128
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|373608240"
  l0.Out = self.f_box_MissionMessageController_v3_128_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_48 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_48
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|402683147"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_48_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_48_HasNOT
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|416966945"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|434487386"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_109 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_109
  l0._graph = self
  l0._name = "box_MultipleOR_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|461390361"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_109_Out
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|499902594"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_52 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_52
  l0._graph = self
  l0._name = "box_AI_IOPController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|547977348"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_52_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|564014210"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|593241492"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_SetBoolean_v2_131 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_131
  l0._graph = self
  l0._name = "box_SetBoolean_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|619423904"
  l0.Out = self.f_box_SetBoolean_v2_131_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_131_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_131_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_131_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_131_SetFromBool
  self.box_Hackable_Monitor_9 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_9
  l0._graph = self
  l0._name = "box_Hackable_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|626800740"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_9_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionController_v4_122 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_122
  l0._graph = self
  l0._name = "box_MissionController_v4_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|667499781"
  self.box_AI_IOPController_75 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_75
  l0._graph = self
  l0._name = "box_AI_IOPController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|670206377"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_75_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|726534970"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_IndexedOutput_V2_37 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_37
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|727890545"
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_box_IndexedOutput_V2_37_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_37_Output_1
  l0.Output[2] = self.f_box_IndexedOutput_V2_37_Output_2
  l0.Output[3] = self.f_box_IndexedOutput_V2_37_Output_3
  l0.Output[4] = self.f_box_IndexedOutput_V2_37_Output_4
  l0.Output[5] = self.f_box_IndexedOutput_V2_37_Output_5
  l0.Output[6] = self.f_box_IndexedOutput_V2_37_Output_6
  l0.Output[7] = self.f_box_IndexedOutput_V2_37_Output_7
  l0.Output[8] = self.f_box_IndexedOutput_V2_37_Output_8
  l0.Output[9] = self.f_box_IndexedOutput_V2_37_Output_9
  l0.OutOfRange = DummyFunction
  self.box_AI_IOPController_14 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_14
  l0._graph = self
  l0._name = "box_AI_IOPController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|730827563"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_14_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_65 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_65
  l0._graph = self
  l0._name = "box_SetBoolean_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|735514092"
  l0.Out = self.f_box_SetBoolean_v2_65_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_65_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_65_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_65_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_65_SetFromBool
  self.box_Progression_Tag_Monitor_133 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_133
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|818930767"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_133_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_133_HasNOT
  self.box_AI_IOPController_143 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_143
  l0._graph = self
  l0._name = "box_AI_IOPController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|830936649"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_143_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Security_Camera_Monitor_162 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_162
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|846058843"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_162_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_162_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|856927685"
  l0.Out = self.f_box_Timer_v2_15_Out
  l0.Started = self.f_box_Timer_v2_15_Started
  l0.Stopped = self.f_box_Timer_v2_15_Stopped
  l0.Paused = self.f_box_Timer_v2_15_Paused
  l0.Resumed = self.f_box_Timer_v2_15_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_15_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_64 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_64
  l0._graph = self
  l0._name = "box_AI_IOPController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|884546012"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_64_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_91 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_91
  l0._graph = self
  l0._name = "box_PlaySound_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|885624899"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_102 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_102
  l0._graph = self
  l0._name = "box_ListWriter_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|907787815"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_102_Added
  l0.Removed = self.f_box_ListWriter_102_Removed
  l0.Out = self.f_box_ListWriter_102_Out
  self.box_HackableController_v2_134 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_134
  l0._graph = self
  l0._name = "box_HackableController_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|928855307"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_134_OverrideHackingTextSet
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|943739257"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_81_Unloaded
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_56 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_56
  l0._graph = self
  l0._name = "box_HackableController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|953991894"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_RewardController_v3_86 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_86
  l0._graph = self
  l0._name = "box_RewardController_v3_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|971861197"
  l0.Out = self.f_box_RewardController_v3_86_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_23 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_23
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|972942977"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_23_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_23_HasNOT
  self.box_PlaySound_v2_100 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_100
  l0._graph = self
  l0._name = "box_PlaySound_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|974626365"
  l0.Out = self.f_box_PlaySound_v2_100_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_113 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_113
  l0._graph = self
  l0._name = "box_RewardController_v3_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|984210300"
  l0.Out = self.f_box_RewardController_v3_113_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_RewardController_v3_74 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_74
  l0._graph = self
  l0._name = "box_RewardController_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1005491657"
  l0.Out = self.f_box_RewardController_v3_74_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CLOController_148 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_148
  l0._graph = self
  l0._name = "box_CLOController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1033435017"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_148_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1060223751"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_HackableController_v2_68 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_68
  l0._graph = self
  l0._name = "box_HackableController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1080560197"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1098508885"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_12 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_12
  l0._graph = self
  l0._name = "box_AI_IOPController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1100954421"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_12_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1120021668"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_11_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1131505861"
  l0.Out = self.f_box_PlaySound_v2_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1142482990"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_132_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_137 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_137
  l0._graph = self
  l0._name = "box_HackableController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1153622383"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_137_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Security_Camera_Monitor_40 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_40
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1191797086"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_40_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_40_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1200200467"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_114 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_114
  l0._graph = self
  l0._name = "box_PlaySound_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1227122673"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_114_Started
  l0.Finished = DummyFunction
  self.box_HackableController_v2_142 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_142
  l0._graph = self
  l0._name = "box_HackableController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1251767535"
  l0.Enabled = self.f_box_HackableController_v2_142_Enabled
  l0.Disabled = self.f_box_HackableController_v2_142_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_142_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_142_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_51 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_51
  l0._graph = self
  l0._name = "box_Multiple_AND_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1278487158"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_51_Out
  self.box_RewardController_v3_124 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_124
  l0._graph = self
  l0._name = "box_RewardController_v3_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1322173016"
  l0.Out = self.f_box_RewardController_v3_124_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_119 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_119
  l0._graph = self
  l0._name = "box_HackableController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1338508544"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_136 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_136
  l0._graph = self
  l0._name = "box_AI_IOPController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1354678889"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_136_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_88 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_88
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1381136224"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_88_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_88_HasNOT
  self.box_HackableController_v2_154 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_154
  l0._graph = self
  l0._name = "box_HackableController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1400346296"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_154_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1463941455"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_1 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1490510940"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_RandomOutput_v2_24 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_24
  l0._graph = self
  l0._name = "box_RandomOutput_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1508828576"
  l0._DynamicAnchors = {Probability = 9, Output = 9}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_24_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_24_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_24_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_24_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_24_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_24_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_24_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_24_Output_7
  l0.Output[8] = self.f_box_RandomOutput_v2_24_Output_8
  self.box_IOP_StartUp_50 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_50
  l0._graph = self
  l0._name = "box_IOP_StartUp_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1548252041"
  l0.Out = self.f_box_IOP_StartUp_50_Out
  self.box_RewardController_v3_71 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_71
  l0._graph = self
  l0._name = "box_RewardController_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1573947154"
  l0.Out = self.f_box_RewardController_v3_71_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_97 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_97
  l0._graph = self
  l0._name = "box_HackableController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1585042954"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_97_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1606842341"
  l0.Enabled = self.f_box_HackableController_v2_46_Enabled
  l0.Disabled = self.f_box_HackableController_v2_46_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_96 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_96
  l0._graph = self
  l0._name = "box_HackableController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1622098566"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_101 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_101
  l0._graph = self
  l0._name = "box_HackableController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1641856126"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_72 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_72
  l0._graph = self
  l0._name = "box_HackableController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1642526190"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1645399157"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_Progression_Tag_Monitor_90 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_90
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1669585809"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_90_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_90_HasNOT
  self.box_HackableController_v2_151 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_151
  l0._graph = self
  l0._name = "box_HackableController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1674157175"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_151_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_RewardController_v3_93 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_93
  l0._graph = self
  l0._name = "box_RewardController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1677732071"
  l0.Out = self.f_box_RewardController_v3_93_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1704106028"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_106_OnUserInPlace
  self.box_Hackable_Monitor_80 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_80
  l0._graph = self
  l0._name = "box_Hackable_Monitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1705964044"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_80_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_80_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_153 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_153
  l0._graph = self
  l0._name = "box_MultipleOR_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1731236378"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_153_Out
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1776886952"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_67 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_67
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1793548418"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_67_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_67_HasNOT
  self.box_IOPPropMonitor_157 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_157
  l0._graph = self
  l0._name = "box_IOPPropMonitor_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1837272477"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_IOPPropMonitor_157_Enabled
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_157_PropSpawned
  self.box_Progression_Tag_Monitor_129 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_129
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1850516020"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_129_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_129_HasNOT
  self.box_AI_IOPController_62 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_62
  l0._graph = self
  l0._name = "box_AI_IOPController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1893919932"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_62_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1897287532"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_152_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1900599604"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_AI_IOPController_92 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_92
  l0._graph = self
  l0._name = "box_AI_IOPController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1942726375"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_92_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_59 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_59
  l0._graph = self
  l0._name = "box_HackableController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1944219897"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_59_OverrideHackingTextSet
  self.box_AI_IOPController_108 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_108
  l0._graph = self
  l0._name = "box_AI_IOPController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1948252796"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_108_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_43 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_43
  l0._graph = self
  l0._name = "box_SetBoolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1961197679"
  l0.Out = self.f_box_SetBoolean_v2_43_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_43_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_43_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_43_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_43_SetFromBool
  self.box_AI_IOPController_144 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_144
  l0._graph = self
  l0._name = "box_AI_IOPController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1967152099"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_17 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_17
  l0._graph = self
  l0._name = "box_AI_IOPController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2013382971"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_17_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_130 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_130
  l0._graph = self
  l0._name = "box_Timer_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2059113024"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_130_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2079972055"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_IOP_CleanUp_2 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_2
  l0._graph = self
  l0._name = "box_IOP_CleanUp_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2086884887"
  l0.Completed = self.f_box_IOP_CleanUp_2_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_2_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_HackableController_v2_125 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_125
  l0._graph = self
  l0._name = "box_HackableController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2098362391"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_125_OverrideHackingTextSet
  self.box_SetBoolean_v2_5 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_5
  l0._graph = self
  l0._name = "box_SetBoolean_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2105852304"
  l0.Out = self.f_box_SetBoolean_v2_5_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_5_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_5_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_5_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_5_SetFromBool
  self.box_AI_IOPController_89 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_89
  l0._graph = self
  l0._name = "box_AI_IOPController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2119399173"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_89_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_155 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_155
  l0._graph = self
  l0._name = "box_HackableController_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2120309551"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_155_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_155_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_161 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_161
  l0._graph = self
  l0._name = "box_Timer_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2121892257"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_111 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2132511091"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_111_Out
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
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2069504602", "2069504602", "IOP09F_Main", "CheckPoint_0", "box_MultipleOR_58.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1159525360", "1159525360", "IOP09F_Main", "In", "box_MultipleOR_58.Input", self, l0)
  l0:Input(0)
end
function export:f_box_PlaySound_v2_150_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|512871890"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_150
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|851258455", "851258455", "IOP09F_Main", "box_PlaySound_v2_150.Out", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_73
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|132792905", "132792905", "IOP09F_Main", "box_Ordered_Output_141.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_162()
  l0 = self.box_Security_Camera_Monitor_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|60290796", "60290796", "IOP09F_Main", "box_Ordered_Output_141.Out", "box_Security_Camera_Monitor_162.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|546004949"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_MultipleOR_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1700970078", "1700970078", "IOP09F_Main", "box_MultipleOR_84.Out", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1108394018"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_10_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_105
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|59408484", "59408484", "IOP09F_Main", "box_Timer_v2_105.TimeElapsed", "box_LightController_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1368820964"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_4_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_4_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_4_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_159
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|661695620", "661695620", "IOP09F_Main", "box_Timer_v2_159.TimeElapsed", "box_Compare_Integers_v2_4.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_156_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_80()
  l0 = self.box_Hackable_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|534329933", "534329933", "IOP09F_Main", "box_Ordered_Output_156.Out", "box_Hackable_Monitor_80.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_156_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = "IOP09F_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|873908432", "873908432", "IOP09F_Main", "box_Ordered_Output_156.Out", "box_MissionLayer_v2_81.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Progression_Tag_Monitor_107_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1461089409", "1461089409", "IOP09F_Main", "box_Progression_Tag_Monitor_107.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_107_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_74
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_RewardController_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1554393192", "1554393192", "IOP09F_Main", "box_Progression_Tag_Monitor_107.HasNOT", "box_RewardController_v3_74.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_IOPMonitor_82_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|269021013", "269021013", "IOP09F_Main", "box_IOPMonitor_82.ActivateHackables", "box_HackableController_v2_142.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_82_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2092535943", "2092535943", "IOP09F_Main", "box_IOPMonitor_82.DeactivateHackables", "box_HackableController_v2_142.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_82_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_82
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1001715674", "1001715674", "IOP09F_Main", "box_IOPMonitor_82.Disabled", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_82_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_82()
  l0 = self.box_IOPMonitor_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|948500879", "948500879", "IOP09F_Main", "box_IOPMonitor_82.IOPComplete", "box_IOPMonitor_82.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_RewardController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 8
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2070470485"
  l0.Out = self.f_box_SetInteger_v2_149_Out
  l0 = self.box_RewardController_v3_8
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1441929675", "1441929675", "IOP09F_Main", "box_RewardController_v3_8.Out", "box_SetInteger_v2_149.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_27_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l1 = self.box_Timer_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|80506377", "80506377", "IOP09F_Main", "box_AI_IOPController_27.SendEventCompleted", "box_Timer_v2_159.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_44_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_44_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.MakeItRain = l0.Target
  l1 = self.box_SetBoolean_v2_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|693039352", "693039352", "IOP09F_Main", "box_SetBoolean_v2_44.SetFalse", "box_SetBoolean_v2_131.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_44_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_44_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_44_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.MakeItRain = l0.Target
end
function export:f_box_Simple_Node_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_80()
  l0 = self.box_Hackable_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|460418381", "460418381", "IOP09F_Main", "box_Simple_Node_33.Out", "box_Hackable_Monitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_120_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_64
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_120
  l1 = self.box_AI_IOPController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2142430234", "2142430234", "IOP09F_Main", "box_PhoneCommunicationController_120.OnCommunicationFinished", "box_AI_IOPController_64.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_MissionMessageController_v3_85_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|115173896"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_MissionMessageController_v3_85
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2041797399", "2041797399", "IOP09F_Main", "box_MissionMessageController_v3_85.MessageCompleted", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1754198756"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_3_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|86465060", "86465060", "IOP09F_Main", "box_Get_Player_ID_126.Out", "box_LightController_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_LightController_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|378915222", "378915222", "IOP09F_Main", "box_LightController_18.Enabled", "box_Multiple_AND_51.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_PlaySound_v2_139_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_139
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1012437288", "1012437288", "IOP09F_Main", "box_PlaySound_v2_139.Out", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_20_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_20
  l1 = self.box_SetBoolean_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1761744919", "1761744919", "IOP09F_Main", "box_HackableController_v2_20.OverrideHackingTextSet", "box_SetBoolean_v2_65.True", l0, l1)
  l1:True()
end
function export:f_box_Compare_Boolean_v2_47_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_41
  l0.Entity = self.BarkSoundEntity_0
  l0.SoundId = "soundbinary/674218771.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1543159512", "1543159512", "IOP09F_Main", "box_Compare_Boolean_v2_47.A_is_True", "box_PlaySound_v2_41.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_153()
  l0 = self.box_MultipleOR_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1228190240", "1228190240", "IOP09F_Main", "box_Compare_Boolean_v2_47.Out", "box_MultipleOR_153.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_112_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_52
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character8"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|645759431", "645759431", "IOP09F_Main", "box_Compare_Integers_v2_112.A_eq_B", "box_AI_IOPController_52.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_112_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_136
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character7"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|559767359", "559767359", "IOP09F_Main", "box_Compare_Integers_v2_112.A_lt_B", "box_AI_IOPController_136.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_RewardController_v3_77_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1996888540"
  l0.Out = self.f_box_SetInteger_v2_49_Out
  l0 = self.box_RewardController_v3_77
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1777327654", "1777327654", "IOP09F_Main", "box_RewardController_v3_77.Out", "box_SetInteger_v2_49.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MissionMessageController_v3_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_120
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374189"
  l0 = self.box_MissionMessageController_v3_128
  l1 = self.box_PhoneCommunicationController_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1052754857", "1052754857", "IOP09F_Main", "box_MissionMessageController_v3_128.Out", "box_PhoneCommunicationController_120.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Progression_Tag_Monitor_48_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1303643659", "1303643659", "IOP09F_Main", "box_Progression_Tag_Monitor_48.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_48_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_71
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_RewardController_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2109248502", "2109248502", "IOP09F_Main", "box_Progression_Tag_Monitor_48.HasNOT", "box_RewardController_v3_71.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|235370777"
  l0.Out = self.f_box_Get_Player_ID_126_Out
  l0 = self.box_MultipleOR_58
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|713114726", "713114726", "IOP09F_Main", "box_MultipleOR_58.Out", "box_Get_Player_ID_126.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_60
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|458223456", "458223456", "IOP09F_Main", "box_AI_IOPController_60.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_114
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2107018370", "2107018370", "IOP09F_Main", "box_Ordered_Output_53.Out", "box_PlaySound_v2_114.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_128
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|585208418", "585208418", "IOP09F_Main", "box_Ordered_Output_53.Out", "box_MissionMessageController_v3_128.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_SetInteger_v2_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119844"
  l0._graph = self
  l0._name = "box_Set_Entity_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1211191368"
  l0.Out = self.f_box_Set_Entity_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|39002483", "39002483", "IOP09F_Main", "box_SetInteger_v2_26.Out", "box_Set_Entity_55.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MultipleOR_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_24
  l0.Probability[0] = 0
  l0.Probability[1] = 0
  l0.Probability[2] = 0
  l0.Probability[3] = 0
  l0.Probability[4] = 0
  l0.Probability[5] = 1
  l0.Probability[6] = 0
  l0.Probability[7] = 0
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_109
  l1 = self.box_RandomOutput_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|27967480", "27967480", "IOP09F_Main", "box_MultipleOR_109.Out", "box_RandomOutput_v2_24.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_145_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119843"
  l0._graph = self
  l0._name = "box_Set_Entity_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|570353386"
  l0.Out = self.f_box_Set_Entity_135_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1184122866", "1184122866", "IOP09F_Main", "box_SetInteger_v2_145.Out", "box_Set_Entity_135.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1842534551"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_66_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_66_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_66_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_160
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|255980034", "255980034", "IOP09F_Main", "box_Timer_v2_160.TimeElapsed", "box_Compare_Integers_v2_66.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_1
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|782383103", "782383103", "IOP09F_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_SetBoolean_v2_1.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_70_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_89
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1900967599", "1900967599", "IOP09F_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_AI_IOPController_89.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_40()
  l0 = self.box_Security_Camera_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1198142556", "1198142556", "IOP09F_Main", "box_Ordered_Output_45.Out", "box_Security_Camera_Monitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1298298009"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_110_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_110_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_110_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|31922759", "31922759", "IOP09F_Main", "box_Ordered_Output_45.Out", "box_Compare_Integers_v2_110.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_52_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_52
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1976740238", "1976740238", "IOP09F_Main", "box_AI_IOPController_52.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1345597057"
  l0.Enabled = self.f_box_LightController_39_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_36
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|681919150", "681919150", "IOP09F_Main", "box_MultipleOR_36.Out", "box_LightController_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CollisionController_140_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_102
  l0.Input = self.NPC_List
  l0.Data[0] = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|842369738", "842369738", "IOP09F_Main", "box_CollisionController_140.CollisionsDisabled", "box_ListWriter_102.Add", clone, l0)
  l0:Add()
end
function export:f_box_Set_Entity_135_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|537349161", "537349161", "IOP09F_Main", "box_Set_Entity_135.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_134
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_2",
    id = "340526"
  }
  l0 = self.box_MultipleOR_61
  l1 = self.box_HackableController_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|427087739", "427087739", "IOP09F_Main", "box_MultipleOR_61.Out", "box_HackableController_v2_134.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SetBoolean_v2_131_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_131
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_131_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_131
  self.Alarm = l0.Target
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = self.GoodHack
  l0 = self.box_SetBoolean_v2_131
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|873591811", "873591811", "IOP09F_Main", "box_SetBoolean_v2_131.SetFalse", "box_HackableController_v2_152.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetBoolean_v2_131_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_131
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_131_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_131
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_131_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_131
  self.Alarm = l0.Target
end
function export:f_box_Simple_Node_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_9()
  l0 = self.box_Hackable_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1823139252", "1823139252", "IOP09F_Main", "box_Simple_Node_127.Out", "box_Hackable_Monitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Monitor_9_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_150
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_9
  l1 = self.box_PlaySound_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|833850285", "833850285", "IOP09F_Main", "box_Hackable_Monitor_9.HackSuccess", "box_PlaySound_v2_150.Play", l0, l1)
  l1:Play()
end
function export:f_box_Set_Entity_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1039791268", "1039791268", "IOP09F_Main", "box_Set_Entity_22.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_IOPController_75_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_40()
  l0 = self.box_AI_IOPController_75
  l1 = self.box_Security_Camera_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1340541741", "1340541741", "IOP09F_Main", "box_AI_IOPController_75.SendEventCompleted", "box_Security_Camera_Monitor_40.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_106
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_34
  l1 = self.box_CLOController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1283694507", "1283694507", "IOP09F_Main", "box_MultipleOR_34.Out", "box_CLOController_106.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_IndexedOutput_V2_37_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1987404041", "1987404041", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1431560858", "1431560858", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|345722379", "345722379", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1083263213", "1083263213", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1218633749", "1218633749", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1302538775", "1302538775", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|843197680", "843197680", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1843300912", "1843300912", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1609760325", "1609760325", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_37_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1609863700", "1609863700", "IOP09F_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_AI_IOPController_14_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_14
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1399932392", "1399932392", "IOP09F_Main", "box_AI_IOPController_14.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_SetBoolean_v2_65_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_65_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_65_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_65
  self.Alarm = l0.Target
end
function export:f_box_Set_Entity_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|415627328", "415627328", "IOP09F_Main", "box_Set_Entity_147.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Compare_Integers_v2_118_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_72
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Pay_Alimony",
    id = "544820"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1948918582", "1948918582", "IOP09F_Main", "box_Compare_Integers_v2_118.A_eq_B", "box_HackableController_v2_72.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_118_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1257832105", "1257832105", "IOP09F_Main", "box_Compare_Integers_v2_118.A_lt_B", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_78_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|762923784", "762923784", "IOP09F_Main", "box_Compare_Integers_v2_78.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Integers_v2_78_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 6
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1505262091"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_94_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_94_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_94_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|617570489", "617570489", "IOP09F_Main", "box_Compare_Integers_v2_78.A_gt_B", "box_Compare_Integers_v2_94.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_78_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1259629726", "1259629726", "IOP09F_Main", "box_Compare_Integers_v2_78.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Progression_Tag_Monitor_133_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1249581013", "1249581013", "IOP09F_Main", "box_Progression_Tag_Monitor_133.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_133_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_93
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_RewardController_v3_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|560635101", "560635101", "IOP09F_Main", "box_Progression_Tag_Monitor_133.HasNOT", "box_RewardController_v3_93.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_143_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_143
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|640875577", "640875577", "IOP09F_Main", "box_AI_IOPController_143.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Security_Camera_Monitor_162_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_161
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_162
  l1 = self.box_Timer_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1590863272", "1590863272", "IOP09F_Main", "box_Security_Camera_Monitor_162.Disabled", "box_Timer_v2_161.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_162_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_162()
  l0 = self.box_Security_Camera_Monitor_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|530883032", "530883032", "IOP09F_Main", "box_Security_Camera_Monitor_162.OnEndAccessCamera", "box_Security_Camera_Monitor_162.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_15_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1907602978"
  l0.Out = self.f_box_Simple_Node_7_Out
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1046548585", "1046548585", "IOP09F_Main", "box_Timer_v2_15.LoopingEnded", "box_Simple_Node_7.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_15_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_15_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_15_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_15_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|67807308", "67807308", "IOP09F_Main", "box_Timer_v2_15.TimeElapsed", "box_IndexedOutput_V2_37.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_64_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_AI_IOPController_64
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1771164600", "1771164600", "IOP09F_Main", "box_AI_IOPController_64.SendEventCompleted", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_ListWriter_102_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_102
  self.NPC_List = l0.Target
  l0 = self.box_AI_IOPController_92
  l0.IopID = "Atm"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPC_List
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0 = self.box_ListWriter_102
  l1 = self.box_AI_IOPController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|330210526", "330210526", "IOP09F_Main", "box_ListWriter_102.Added", "box_AI_IOPController_92.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_102_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_102
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_102_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_102
  self.NPC_List = l0.Target
end
function export:f_box_HackableController_v2_134_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_134
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|519729335", "519729335", "IOP09F_Main", "box_HackableController_v2_134.OverrideHackingTextSet", "box_SetBoolean_v2_43.True", l0, l1)
  l1:True()
end
function export:f_box_SecurityCamController_42_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_42()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|882780603", "882780603", "IOP09F_Main", "box_SecurityCamController_42.CanExitSet", "box_SecurityCamController_42.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_42_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|39193026"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1903565974", "1903565974", "IOP09F_Main", "box_SecurityCamController_42.EnterForced", "box_Ordered_Output_141.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_81_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l1 = self.box_MissionController_v4_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1819432550", "1819432550", "IOP09F_Main", "box_MissionLayer_v2_81.Unloaded", "box_MissionController_v4_122.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_RewardController_v3_86_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 3
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|447151685"
  l0.Out = self.f_box_SetInteger_v2_26_Out
  l0 = self.box_RewardController_v3_86
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|804682765", "804682765", "IOP09F_Main", "box_RewardController_v3_86.Out", "box_SetInteger_v2_26.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Progression_Tag_Monitor_23_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1763709640", "1763709640", "IOP09F_Main", "box_Progression_Tag_Monitor_23.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_23_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_86
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_RewardController_v3_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|457743280", "457743280", "IOP09F_Main", "box_Progression_Tag_Monitor_23.HasNOT", "box_RewardController_v3_86.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PlaySound_v2_100_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1253449975"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_69_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_100
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|567104895", "567104895", "IOP09F_Main", "box_PlaySound_v2_100.Out", "box_Compare_Boolean_v2_69.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_113_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 7
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1851010916"
  l0.Out = self.f_box_SetInteger_v2_29_Out
  l0 = self.box_RewardController_v3_113
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|796106516", "796106516", "IOP09F_Main", "box_RewardController_v3_113.Out", "box_SetInteger_v2_29.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_RewardController_v3_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 4
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1571655628"
  l0.Out = self.f_box_SetInteger_v2_103_Out
  l0 = self.box_RewardController_v3_74
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1249046395", "1249046395", "IOP09F_Main", "box_RewardController_v3_74.Out", "box_SetInteger_v2_103.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_CLOController_148_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2127624929", "2127624929", "IOP09F_Main", "box_CLOController_148.UnspawnedUser", "box_CLOController_148.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Compare_Integers_v2_121_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_14
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character4"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1986753287", "1986753287", "IOP09F_Main", "box_Compare_Integers_v2_121.A_eq_B", "box_AI_IOPController_14.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_121_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 6
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1341182401"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_13_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_13_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_13_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|39199937", "39199937", "IOP09F_Main", "box_Compare_Integers_v2_121.A_gt_B", "box_Compare_Integers_v2_13.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_121_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_108
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character3"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|504808256", "504808256", "IOP09F_Main", "box_Compare_Integers_v2_121.A_lt_B", "box_AI_IOPController_108.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_20
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_2",
    id = "340528"
  }
  l0 = self.box_MultipleOR_104
  l1 = self.box_HackableController_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|474161546", "474161546", "IOP09F_Main", "box_MultipleOR_104.Out", "box_HackableController_v2_20.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_12_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_12
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|871565689", "871565689", "IOP09F_Main", "box_AI_IOPController_12.SendEventCompleted", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_LightController_10_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_15
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|569526973", "569526973", "IOP09F_Main", "box_LightController_10.Disabled", "box_Timer_v2_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_IOPController_11_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_11
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1944557369", "1944557369", "IOP09F_Main", "box_AI_IOPController_11.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l1 = self.box_IOP_CleanUp_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|56772342", "56772342", "IOP09F_Main", "box_PlaySound_v2_21.Out", "box_IOP_CleanUp_2.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_132_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1663409313"
  l0.Out = self.f_box_Simple_Node_38_Out
  l0 = self.box_AI_IOPController_132
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1210171421", "1210171421", "IOP09F_Main", "box_AI_IOPController_132.StartEmptyRoomCompleted", "box_Simple_Node_38.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_137_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|568699033"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_140_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_137
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1986243743", "1986243743", "IOP09F_Main", "box_HackableController_v2_137.ProfilingDisabled", "box_CollisionController_140.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Set_Entity_98_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1380018053", "1380018053", "IOP09F_Main", "box_Set_Entity_98.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_Security_Camera_Monitor_40_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_144
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_40
  l1 = self.box_AI_IOPController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1870326507", "1870326507", "IOP09F_Main", "box_Security_Camera_Monitor_40.OnStartAccessCamera", "box_AI_IOPController_144.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_40_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_75
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_40
  l1 = self.box_AI_IOPController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|655545503", "655545503", "IOP09F_Main", "box_Security_Camera_Monitor_40.OnStartExitCamera", "box_AI_IOPController_75.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|283905372"
  l0.Enabled = self.f_box_LightController_18_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_73
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|978507825", "978507825", "IOP09F_Main", "box_Timer_v2_73.TimeElapsed", "box_LightController_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_Entity_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2074237400", "2074237400", "IOP09F_Main", "box_Set_Entity_55.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_PlaySound_v2_114_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_114
  l1 = self.box_SetBoolean_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1069504589", "1069504589", "IOP09F_Main", "box_PlaySound_v2_114.Started", "box_SetBoolean_v2_44.False", l0, l1)
  l1:False()
end
function export:f_box_HackableController_v2_142_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|231396393", "231396393", "IOP09F_Main", "box_HackableController_v2_142.Disabled", "box_HackableController_v2_46.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_142_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|628322978", "628322978", "IOP09F_Main", "box_HackableController_v2_142.Enabled", "box_HackableController_v2_46.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_142_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|419072876", "419072876", "IOP09F_Main", "box_HackableController_v2_142.ProfilingDisabled", "box_HackableController_v2_46.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_142_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1000262119", "1000262119", "IOP09F_Main", "box_HackableController_v2_142.ProfilingEnabled", "box_HackableController_v2_46.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_Compare_Boolean_v2_69_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_5
  l0.Bool = self.GoodVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|214995319", "214995319", "IOP09F_Main", "box_Compare_Boolean_v2_69.A_is_False", "box_SetBoolean_v2_5.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_69_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_62
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1443788134", "1443788134", "IOP09F_Main", "box_Compare_Boolean_v2_69.A_is_True", "box_AI_IOPController_62.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_146_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_56
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_BuyCanadian",
    id = "698184"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|329971982", "329971982", "IOP09F_Main", "box_Compare_Integers_v2_146.A_eq_B", "box_HackableController_v2_56.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_146_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 8
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|795488509"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_118_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_118_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1564807523", "1564807523", "IOP09F_Main", "box_Compare_Integers_v2_146.A_gt_B", "box_Compare_Integers_v2_118.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_146_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_96
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Delete_Account",
    id = "544817"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|513803285", "513803285", "IOP09F_Main", "box_Compare_Integers_v2_146.A_lt_B", "box_HackableController_v2_96.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Multiple_AND_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_139
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_51
  l1 = self.box_PlaySound_v2_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1659723063", "1659723063", "IOP09F_Main", "box_Multiple_AND_51.Out", "box_PlaySound_v2_139.Play", l0, l1)
  l1:Play()
end
function export:f_box_Compare_Integers_v2_110_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_11
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1686111736", "1686111736", "IOP09F_Main", "box_Compare_Integers_v2_110.A_eq_B", "box_AI_IOPController_11.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_110_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 4
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1051084943"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_121_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_121_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_121_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1669155434", "1669155434", "IOP09F_Main", "box_Compare_Integers_v2_110.A_gt_B", "box_Compare_Integers_v2_121.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_110_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_60
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|442312177", "442312177", "IOP09F_Main", "box_Compare_Integers_v2_110.A_lt_B", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_RewardController_v3_124_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 5
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1774250674"
  l0.Out = self.f_box_SetInteger_v2_95_Out
  l0 = self.box_RewardController_v3_124
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|662406422", "662406422", "IOP09F_Main", "box_RewardController_v3_124.Out", "box_SetInteger_v2_95.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Set_Entity_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|260426946", "260426946", "IOP09F_Main", "box_Set_Entity_76.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Compare_Integers_v2_13_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_17
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character6"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|672597655", "672597655", "IOP09F_Main", "box_Compare_Integers_v2_13.A_eq_B", "box_AI_IOPController_17.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_13_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 8
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|352363375"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_112_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_112_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1807779427", "1807779427", "IOP09F_Main", "box_Compare_Integers_v2_13.A_gt_B", "box_Compare_Integers_v2_112.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_13_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_143
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character5"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|938751438", "938751438", "IOP09F_Main", "box_Compare_Integers_v2_13.A_lt_B", "box_AI_IOPController_143.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_LightController_39_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_91
  l0.SoundId = "soundbinary/2847170774.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|977461830", "977461830", "IOP09F_Main", "box_LightController_39.Enabled", "box_PlaySound_v2_91.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_136_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_136
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1877271975", "1877271975", "IOP09F_Main", "box_AI_IOPController_136.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Compare_Integers_v2_4_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|861782316", "861782316", "IOP09F_Main", "box_Compare_Integers_v2_4.A_eq_B", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_4_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 4
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1458901998"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_19_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_19_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_19_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1361227101", "1361227101", "IOP09F_Main", "box_Compare_Integers_v2_4.A_gt_B", "box_Compare_Integers_v2_19.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_4_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|876465243", "876465243", "IOP09F_Main", "box_Compare_Integers_v2_4.A_lt_B", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Progression_Tag_Monitor_88_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1689528526", "1689528526", "IOP09F_Main", "box_Progression_Tag_Monitor_88.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_88_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_77
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_RewardController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2042077800", "2042077800", "IOP09F_Main", "box_Progression_Tag_Monitor_88.HasNOT", "box_RewardController_v3_77.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_154_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_155()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_HackableController_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1047254248", "1047254248", "IOP09F_Main", "box_HackableController_v2_154.Disabled", "box_HackableController_v2_155.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_MaterialController_158_ByIndexReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPPropMonitor_157()
  l0 = self.box_IOPPropMonitor_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1892716901", "1892716901", "IOP09F_Main", "box_MaterialController_158.ByIndexReset", "box_IOPPropMonitor_157.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_99_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|223871218"
  l0.Out = self.f_box_Simple_Node_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|321380833", "321380833", "IOP09F_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_33.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_99_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|620562972"
  l0.Out = self.f_box_Simple_Node_127_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1971209100", "1971209100", "IOP09F_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_127.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_19_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1746314795", "1746314795", "IOP09F_Main", "box_Compare_Integers_v2_19.A_eq_B", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_19_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 6
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1269545339"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_146_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_146_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_146_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|81869521", "81869521", "IOP09F_Main", "box_Compare_Integers_v2_19.A_gt_B", "box_Compare_Integers_v2_146.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_19_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_101
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Call_Police",
    id = "544815"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2074272324", "2074272324", "IOP09F_Main", "box_Compare_Integers_v2_19.A_lt_B", "box_HackableController_v2_101.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Set_Entity_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|243611575", "243611575", "IOP09F_Main", "box_Set_Entity_32.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(7)
end
function export:f_box_SetBoolean_v2_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.BadVar = l0.Target
  l0 = self.box_AI_IOPController_27
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0 = self.box_SetBoolean_v2_1
  l1 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1788841446", "1788841446", "IOP09F_Main", "box_SetBoolean_v2_1.Out", "box_AI_IOPController_27.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_1_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.BadVar = l0.Target
end
function export:f_box_Compare_Integers_v2_94_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_68
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_PayTuition",
    id = "698182"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1861007811", "1861007811", "IOP09F_Main", "box_Compare_Integers_v2_94.A_eq_B", "box_HackableController_v2_68.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_94_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 8
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1834122755"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_117_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_117_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1687840178", "1687840178", "IOP09F_Main", "box_Compare_Integers_v2_94.A_gt_B", "box_Compare_Integers_v2_117.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_94_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_119
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Shares",
    id = "544818"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|319355923", "319355923", "IOP09F_Main", "box_Compare_Integers_v2_94.A_lt_B", "box_HackableController_v2_119.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_RandomOutput_v2_24_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_88
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2002728191", "2002728191", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_88.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_48
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|606999253", "606999253", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_48.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_23
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1908393202", "1908393202", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_23.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_107
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|123938574", "123938574", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_107.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_129
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1010588641", "1010588641", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_129.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_133
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|577346837", "577346837", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_133.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_67
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|67111260", "67111260", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_67.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_90
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|149129328", "149129328", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_90.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_8()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_132
  l0.EmptyRoomName = "AtmEmptyRoom"
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_AI_IOPController_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|373167759", "373167759", "IOP09F_Main", "box_RandomOutput_v2_24.Output", "box_AI_IOPController_132.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_IOP_StartUp_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|443796488"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_IOP_StartUp_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1464742825", "1464742825", "IOP09F_Main", "box_IOP_StartUp_50.Out", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_103_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119842"
  l0._graph = self
  l0._name = "box_Set_Entity_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|780960302"
  l0.Out = self.f_box_Set_Entity_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|886318733", "886318733", "IOP09F_Main", "box_SetInteger_v2_103.Out", "box_Set_Entity_147.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_RewardController_v3_71_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1900001677"
  l0.Out = self.f_box_SetInteger_v2_79_Out
  l0 = self.box_RewardController_v3_71
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1929195175", "1929195175", "IOP09F_Main", "box_RewardController_v3_71.Out", "box_SetInteger_v2_79.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Set_Entity_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1043429606", "1043429606", "IOP09F_Main", "box_Set_Entity_30.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_97_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_125
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_1",
    id = "340525"
  }
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|313383982", "313383982", "IOP09F_Main", "box_HackableController_v2_97.ProfilingEnabled", "box_HackableController_v2_125.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_46_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1813335645", "1813335645", "IOP09F_Main", "box_HackableController_v2_46.Disabled", "box_HackableController_v2_142.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_46_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1092444248", "1092444248", "IOP09F_Main", "box_HackableController_v2_46.Enabled", "box_HackableController_v2_142.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_6
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1123818042", "1123818042", "IOP09F_Main", "box_MultipleOR_6.Out", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Simple_Node_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1872249174", "1872249174", "IOP09F_Main", "box_Simple_Node_38.Out", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Progression_Tag_Monitor_90_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1055558853", "1055558853", "IOP09F_Main", "box_Progression_Tag_Monitor_90.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_90_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_8
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_RewardController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|500021848", "500021848", "IOP09F_Main", "box_Progression_Tag_Monitor_90.HasNOT", "box_RewardController_v3_8.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_151_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_IOPPropMonitor_157()
  l0 = self.box_HackableController_v2_151
  l1 = self.box_IOPPropMonitor_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|910953608", "910953608", "IOP09F_Main", "box_HackableController_v2_151.ProfilingDisabled", "box_IOPPropMonitor_157.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RewardController_v3_93_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 6
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|471116299"
  l0.Out = self.f_box_SetInteger_v2_145_Out
  l0 = self.box_RewardController_v3_93
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|808310148", "808310148", "IOP09F_Main", "box_RewardController_v3_93.Out", "box_SetInteger_v2_145.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_CLOController_106_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_106
  self.Npc = l0.UserID
  l0 = self.box_HackableController_v2_137
  l0.HackableEntity = self.Npc
  l0 = self.box_CLOController_106
  l1 = self.box_HackableController_v2_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1125902073", "1125902073", "IOP09F_Main", "box_CLOController_106.OnUserInPlace", "box_HackableController_v2_137.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Hackable_Monitor_80_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_9()
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_Hackable_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1469007573", "1469007573", "IOP09F_Main", "box_Hackable_Monitor_80.Disabled", "box_Hackable_Monitor_9.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_80_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_100
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_PlaySound_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1188720187", "1188720187", "IOP09F_Main", "box_Hackable_Monitor_80.HackSuccess", "box_PlaySound_v2_100.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_153_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_155()
  l0 = self.box_MultipleOR_153
  l1 = self.box_HackableController_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|535850484", "535850484", "IOP09F_Main", "box_MultipleOR_153.Out", "box_HackableController_v2_155.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_LightController_3_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_50
  l0.MainLayer = "IOP09F_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863927"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1713192743", "1713192743", "IOP09F_Main", "box_LightController_3.Disabled", "box_IOP_StartUp_50.In", clone, l0)
  l0:In()
end
function export:f_box_SetInteger_v2_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119840"
  l0._graph = self
  l0._name = "box_Set_Entity_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1331403023"
  l0.Out = self.f_box_Set_Entity_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2051779821", "2051779821", "IOP09F_Main", "box_SetInteger_v2_95.Out", "box_Set_Entity_76.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_85
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  l0 = self.box_Timer_v2_83
  l1 = self.box_MissionMessageController_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1333332932", "1333332932", "IOP09F_Main", "box_Timer_v2_83.TimeElapsed", "box_MissionMessageController_v3_85.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Progression_Tag_Monitor_67_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1459028369", "1459028369", "IOP09F_Main", "box_Progression_Tag_Monitor_67.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_67_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_113
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_RewardController_v3_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|764058238", "764058238", "IOP09F_Main", "box_Progression_Tag_Monitor_67.HasNOT", "box_RewardController_v3_113.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Compare_Integers_v2_117_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|280289851", "280289851", "IOP09F_Main", "box_Compare_Integers_v2_117.A_eq_B", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_117_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|675725619", "675725619", "IOP09F_Main", "box_Compare_Integers_v2_117.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_IOPPropMonitor_157_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_IOPPropMonitor_157
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|771251454", "771251454", "IOP09F_Main", "box_IOPPropMonitor_157.Enabled", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IOPPropMonitor_157_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_157
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  l1.Entity = l0.PropEntity
  l1.Index = 1
  l1.ParameterName = nil
  l1.R = nil
  l1.G = nil
  l1.B = nil
  l1.Time = nil
  l1._graph = self
  l1._name = "box_MaterialController_158"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1415285442"
  l1.ByIndexSet = DummyFunction
  l1.ByIndexReset = self.f_box_MaterialController_158_ByIndexReset
  l1.ParameterSet = DummyFunction
  l0 = self.box_IOPPropMonitor_157
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|360291013", "360291013", "IOP09F_Main", "box_IOPPropMonitor_157.PropSpawned", "box_MaterialController_158.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_Compare_Integers_v2_66_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1708157917", "1708157917", "IOP09F_Main", "box_Compare_Integers_v2_66.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_66_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 4
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|800907749"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_78_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_78_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_78_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1611493966", "1611493966", "IOP09F_Main", "box_Compare_Integers_v2_66.A_gt_B", "box_Compare_Integers_v2_78.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_66_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2115239800", "2115239800", "IOP09F_Main", "box_Compare_Integers_v2_66.A_lt_B", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Progression_Tag_Monitor_129_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|726088881", "726088881", "IOP09F_Main", "box_Progression_Tag_Monitor_129.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_129_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_124
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_RewardController_v3_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|182413545", "182413545", "IOP09F_Main", "box_Progression_Tag_Monitor_129.HasNOT", "box_RewardController_v3_124.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SetInteger_v2_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119845"
  l0._graph = self
  l0._name = "box_Set_Entity_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1157039910"
  l0.Out = self.f_box_Set_Entity_98_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1050113969", "1050113969", "IOP09F_Main", "box_SetInteger_v2_29.Out", "box_Set_Entity_98.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_62_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_153()
  l0 = self.box_AI_IOPController_62
  l1 = self.box_MultipleOR_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|686837858", "686837858", "IOP09F_Main", "box_AI_IOPController_62.SendEventCompleted", "box_MultipleOR_153.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_152_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_151
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_152
  l1 = self.box_HackableController_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|357279218", "357279218", "IOP09F_Main", "box_HackableController_v2_152.ProfilingDisabled", "box_HackableController_v2_151.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetInteger_v2_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119832"
  l0._graph = self
  l0._name = "box_Set_Entity_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|652451573"
  l0.Out = self.f_box_Set_Entity_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|903945057", "903945057", "IOP09F_Main", "box_SetInteger_v2_79.Out", "box_Set_Entity_22.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_130
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|644250090", "644250090", "IOP09F_Main", "box_Ordered_Output_54.Out", "box_Timer_v2_130.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_82()
  l0 = self.box_IOPMonitor_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1329016275", "1329016275", "IOP09F_Main", "box_Ordered_Output_54.Out", "box_IOPMonitor_82.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Seize_Card",
    id = "544819"
  }
  l0 = self.box_MultipleOR_16
  l1 = self.box_HackableController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|288484637", "288484637", "IOP09F_Main", "box_MultipleOR_16.Out", "box_HackableController_v2_25.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_97
  l0.HackableEntity = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|33650923", "33650923", "IOP09F_Main", "box_Simple_Node_7.Out", "box_HackableController_v2_97.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_AI_IOPController_92_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_AI_IOPController_92
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|284977413", "284977413", "IOP09F_Main", "box_AI_IOPController_92.StartCompleted", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_59_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1431382564"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_HackableController_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|193559709", "193559709", "IOP09F_Main", "box_HackableController_v2_59.OverrideHackingTextSet", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_108_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_108
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|414846833", "414846833", "IOP09F_Main", "box_AI_IOPController_108.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_43_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_43_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.MakeItRain = l0.Target
end
function export:f_box_SetInteger_v2_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119841"
  l0._graph = self
  l0._name = "box_Set_Entity_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1577421912"
  l0.Out = self.f_box_Set_Entity_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1197185712", "1197185712", "IOP09F_Main", "box_SetInteger_v2_49.Out", "box_Set_Entity_30.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_17_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_17
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|200363924", "200363924", "IOP09F_Main", "box_AI_IOPController_17.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Timer_v2_130_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_42()
  l0 = self.box_Timer_v2_130
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1793035937", "1793035937", "IOP09F_Main", "box_Timer_v2_130.TimeElapsed", "box_SecurityCamController_42.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_SetInteger_v2_149_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372053051119839"
  l0._graph = self
  l0._name = "box_Set_Entity_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1475275701"
  l0.Out = self.f_box_Set_Entity_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|903014884", "903014884", "IOP09F_Main", "box_SetInteger_v2_149.Out", "box_Set_Entity_32.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1900568667"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_MultipleOR_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1018729394", "1018729394", "IOP09F_Main", "box_MultipleOR_87.Out", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_IOP_CleanUp_2_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_2
  l1 = self.box_Timer_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|876199586", "876199586", "IOP09F_Main", "box_IOP_CleanUp_2.Completed", "box_Timer_v2_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_2_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_IOP_CleanUp_2
  l1 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1358513175", "1358513175", "IOP09F_Main", "box_IOP_CleanUp_2.DisconnectedAnimationPlayed", "box_CLOController_148.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_HackableController_v2_125_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_59
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_BuyPesos",
    id = "698183"
  }
  l0 = self.box_HackableController_v2_125
  l1 = self.box_HackableController_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|535878059", "535878059", "IOP09F_Main", "box_HackableController_v2_125.OverrideHackingTextSet", "box_HackableController_v2_59.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SetBoolean_v2_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.GoodVar = l0.Target
  l0 = self.box_AI_IOPController_12
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0 = self.box_SetBoolean_v2_5
  l1 = self.box_AI_IOPController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1470263733", "1470263733", "IOP09F_Main", "box_SetBoolean_v2_5.Out", "box_AI_IOPController_12.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_5_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_5_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.GoodVar = l0.Target
end
function export:f_box_AI_IOPController_89_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|297907871"
  l0.Out = self.f_box_Compare_Boolean_v2_47_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_47_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_89
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1515870981", "1515870981", "IOP09F_Main", "box_AI_IOPController_89.SendEventCompleted", "box_Compare_Boolean_v2_47.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_155_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_155
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1064164949", "1064164949", "IOP09F_Main", "box_HackableController_v2_155.Disabled", "box_HackableController_v2_154.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_155_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_155
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|2067814074", "2067814074", "IOP09F_Main", "box_HackableController_v2_155.ProfilingDisabled", "box_HackableController_v2_154.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Timer_v2_161_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_123
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_161
  l1 = self.box_CinematicPrep_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1426713560", "1426713560", "IOP09F_Main", "box_Timer_v2_161.TimeElapsed", "box_CinematicPrep_123.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|761344319"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_111
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|1229880261", "1229880261", "IOP09F_Main", "box_MultipleOR_111.Out", "box_LightController_28.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_IOPMonitor_82()
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_MultipleOR_109()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_Hackable_Monitor_9()
  local l0
  l0 = self.box_Hackable_Monitor_9
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_Security_Camera_Monitor_162()
  local l0
  l0 = self.box_Security_Camera_Monitor_162
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_SecurityCamController_42()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.ATM_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = self.ATM_Camera
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09F.domino|@IOP09F_Main|931875363"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_42_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_42_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_CLOController_148()
  local l0
  l0 = self.box_CLOController_148
  l0.CLO = self.CLO
  l0.User = self.Npc
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_Security_Camera_Monitor_40()
  local l0
  l0 = self.box_Security_Camera_Monitor_40
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_HackableController_v2_142()
  local l0
  l0 = self.box_HackableController_v2_142
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_Multiple_AND_51()
end
function export:OnEnter_box_HackableController_v2_154()
  local l0
  l0 = self.box_HackableController_v2_154
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_HackableController_v2_46()
  local l0
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_Hackable_Monitor_80()
  local l0
  l0 = self.box_Hackable_Monitor_80
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_MultipleOR_153()
end
function export:OnEnter_box_IOPPropMonitor_157()
  local l0
  l0 = self.box_IOPPropMonitor_157
  l0.PropName = "iop_atm_moneystack_01"
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_HackableController_v2_155()
  local l0
  l0 = self.box_HackableController_v2_155
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_MultipleOR_111()
end
_compilerVersion = 4
