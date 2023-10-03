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
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
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
  cbox:LoadResource("soundbinary/3692441989.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2015265299.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2785530579.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/674218771.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3143645252.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP09C_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.ATM_Camera = "9223372049706324071"
  self.GoodHack = "9223372066503482709"
  self.GoodVar = 0
  self.BarkSoundEntity_0 = "9223372049706324060"
  self.CLO_Sync = 6
  self.Npc = nil
  self.Money3 = "9223372049706324066"
  self.NPC_List = {}
  self.BadHack = "9223372066503482711"
  self.RolesList = {"Atm.Person"}
  self.BadVar = 0
  self.Money = "9223372049706324064"
  self.CLO = nil
  self.Light = "9223372049706324058"
  self.MakeItRain = 0
  self.Money2 = "9223372049706324073"
  self.Alarm = 0
  self.box_MissionMessageController_v3_146 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_146
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|23585920"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_146_MessageCompleted
  self.box_HackableController_v2_75 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_75
  l0._graph = self
  l0._name = "box_HackableController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|27469176"
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
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|34674316"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_Timer_v2_65 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_65
  l0._graph = self
  l0._name = "box_Timer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|44447078"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_127 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_127
  l0._graph = self
  l0._name = "box_HackableController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|127014006"
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
  self.box_RewardController_v3_123 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_123
  l0._graph = self
  l0._name = "box_RewardController_v3_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|146437993"
  l0.Out = self.f_box_RewardController_v3_123_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PlaySound_v2_118 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_118
  l0._graph = self
  l0._name = "box_PlaySound_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|159807206"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|164733390"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_HackableController_v2_141 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_141
  l0._graph = self
  l0._name = "box_HackableController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|167138914"
  l0.Enabled = self.f_box_HackableController_v2_141_Enabled
  l0.Disabled = self.f_box_HackableController_v2_141_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_66 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_66
  l0._graph = self
  l0._name = "box_AI_IOPController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|182307445"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_66_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_17 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_17
  l0._graph = self
  l0._name = "box_AI_IOPController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|255689326"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_17_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_48 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_48
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|263867562"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_48_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_48_HasNOT
  self.box_RandomOutput_v2_142 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_142
  l0._graph = self
  l0._name = "box_RandomOutput_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|268566015"
  l0._DynamicAnchors = {Probability = 9, Output = 9}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_142_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_142_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_142_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_142_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_142_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_142_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_142_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_142_Output_7
  l0.Output[8] = self.f_box_RandomOutput_v2_142_Output_8
  self.box_PlaySound_v2_102 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_102
  l0._graph = self
  l0._name = "box_PlaySound_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|290627180"
  l0.Out = self.f_box_PlaySound_v2_102_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_98 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_98
  l0._graph = self
  l0._name = "box_AI_IOPController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|376317307"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_98_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_119 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_119
  l0._graph = self
  l0._name = "box_AI_IOPController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|379245877"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_119_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IndexedOutput_V2_81 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_81
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|385392137"
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_box_IndexedOutput_V2_81_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_81_Output_1
  l0.Output[2] = self.f_box_IndexedOutput_V2_81_Output_2
  l0.Output[3] = self.f_box_IndexedOutput_V2_81_Output_3
  l0.Output[4] = self.f_box_IndexedOutput_V2_81_Output_4
  l0.Output[5] = self.f_box_IndexedOutput_V2_81_Output_5
  l0.Output[6] = self.f_box_IndexedOutput_V2_81_Output_6
  l0.Output[7] = self.f_box_IndexedOutput_V2_81_Output_7
  l0.Output[8] = self.f_box_IndexedOutput_V2_81_Output_8
  l0.Output[9] = self.f_box_IndexedOutput_V2_81_Output_9
  l0.OutOfRange = DummyFunction
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|431108704"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_24_Out
  self.box_Hackable_Monitor_121 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_121
  l0._graph = self
  l0._name = "box_Hackable_Monitor_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|451780758"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_121_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_42 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_42
  l0._graph = self
  l0._name = "box_HackableController_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|474558532"
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
  self.box_Progression_Tag_Monitor_130 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_130
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|475080925"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_130_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_130_HasNOT
  self.box_SetBoolean_v2_92 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_92
  l0._graph = self
  l0._name = "box_SetBoolean_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|478972232"
  l0.Out = self.f_box_SetBoolean_v2_92_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_92_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_92_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_92_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_92_SetFromBool
  self.box_RewardController_v3_131 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_131
  l0._graph = self
  l0._name = "box_RewardController_v3_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|485931293"
  l0.Out = self.f_box_RewardController_v3_131_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_157 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_157
  l0._graph = self
  l0._name = "box_Timer_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|533347849"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|558336775"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_27_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_29 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_29
  l0._graph = self
  l0._name = "box_RewardController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|577674455"
  l0.Out = self.f_box_RewardController_v3_29_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MultipleOR_129 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_129
  l0._graph = self
  l0._name = "box_MultipleOR_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|663875628"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_129_Out
  self.box_Progression_Tag_Monitor_137 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_137
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|690856346"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_137_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_137_HasNOT
  self.box_Hackable_Monitor_101 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_101
  l0._graph = self
  l0._name = "box_Hackable_Monitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|712810657"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_101_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_101_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|716185687"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_116_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|846634367"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_Progression_Tag_Monitor_51 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_51
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|861316944"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_51_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_51_HasNOT
  self.box_IOPMonitor_41 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_41
  l0._graph = self
  l0._name = "box_IOPMonitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|895772245"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_41_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_41_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_41_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_41_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_107 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_107
  l0._graph = self
  l0._name = "box_PlaySound_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|918861483"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_107_Started
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_150 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_150
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|919765198"
  l0.Out = self.f_box_MissionMessageController_v3_150_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_159 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|940056361"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_72 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_72
  l0._graph = self
  l0._name = "box_MissionController_v4_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|958134096"
  self.box_AI_IOPController_80 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_80
  l0._graph = self
  l0._name = "box_AI_IOPController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|960188332"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_63 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_63
  l0._graph = self
  l0._name = "box_HackableController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|971730092"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_63_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|975062097"
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
  self.box_Progression_Tag_Monitor_83 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_83
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|987986638"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_83_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_83_HasNOT
  self.box_AI_IOPController_96 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_96
  l0._graph = self
  l0._name = "box_AI_IOPController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|993121712"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_96_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_4 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_4
  l0._graph = self
  l0._name = "box_AI_IOPController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1008060559"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_4_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_7 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_7
  l0._graph = self
  l0._name = "box_RewardController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1015370143"
  l0.Out = self.f_box_RewardController_v3_7_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PlaySound_v2_68 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_68
  l0._graph = self
  l0._name = "box_PlaySound_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1092773354"
  l0.Out = self.f_box_PlaySound_v2_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_114 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_114
  l0._graph = self
  l0._name = "box_RewardController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1094549739"
  l0.Out = self.f_box_RewardController_v3_114_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1123726389"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_RewardController_v3_67 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_67
  l0._graph = self
  l0._name = "box_RewardController_v3_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1160059422"
  l0.Out = self.f_box_RewardController_v3_67_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1167441229"
  l0.Out = self.f_box_Timer_v2_22_Out
  l0.Started = self.f_box_Timer_v2_22_Started
  l0.Stopped = self.f_box_Timer_v2_22_Stopped
  l0.Paused = self.f_box_Timer_v2_22_Paused
  l0.Resumed = self.f_box_Timer_v2_22_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_22_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_CLOController_108 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_108
  l0._graph = self
  l0._name = "box_CLOController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1173736516"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_108_OnUserInPlace
  self.box_AI_IOPController_44 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_44
  l0._graph = self
  l0._name = "box_AI_IOPController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1204297413"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_44_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_16 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_16
  l0._graph = self
  l0._name = "box_HackableController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1217360679"
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
  self.box_SetBoolean_v2_78 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_78
  l0._graph = self
  l0._name = "box_SetBoolean_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1243226030"
  l0.Out = self.f_box_SetBoolean_v2_78_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_78_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_78_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_78_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_78_SetFromBool
  self.box_HackableController_v2_69 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_69
  l0._graph = self
  l0._name = "box_HackableController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1254717009"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_69_OverrideHackingTextSet
  self.box_HackableController_v2_88 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_88
  l0._graph = self
  l0._name = "box_HackableController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1275854576"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_88_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_5 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_5
  l0._graph = self
  l0._name = "box_HackableController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1290424366"
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
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1317091077"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_26_OverrideHackingTextSet
  self.box_AI_IOPController_111 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_111
  l0._graph = self
  l0._name = "box_AI_IOPController_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1364613984"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_111_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_138 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_138
  l0._graph = self
  l0._name = "box_PlaySound_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1366243888"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_103 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_103
  l0._graph = self
  l0._name = "box_AI_IOPController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1370098463"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_103_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1451587369"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1461162987"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_15_Started
  l0.Finished = DummyFunction
  self.box_RewardController_v3_8 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_8
  l0._graph = self
  l0._name = "box_RewardController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1487903163"
  l0.Out = self.f_box_RewardController_v3_8_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1495061622"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_52_OverrideHackingTextSet
  self.box_Multiple_AND_19 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_19
  l0._graph = self
  l0._name = "box_Multiple_AND_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1530928002"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_19_Out
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1554411911"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_Timer_v2_58 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_58
  l0._graph = self
  l0._name = "box_Timer_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1568781043"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_158 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_158
  l0._graph = self
  l0._name = "box_Timer_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1577960499"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_158_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1581297377"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_11_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1591150176"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOP_StartUp_61 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_61
  l0._graph = self
  l0._name = "box_IOP_StartUp_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1600548695"
  l0.Out = self.f_box_IOP_StartUp_61_Out
  self.box_HackableController_v2_79 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_79
  l0._graph = self
  l0._name = "box_HackableController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1613762046"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_79_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_99 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1623017608"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_SetBoolean_v2_113 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_113
  l0._graph = self
  l0._name = "box_SetBoolean_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1691977082"
  l0.Out = self.f_box_SetBoolean_v2_113_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_113_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_113_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_113_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_113_SetFromBool
  self.box_PlaySound_v2_13 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_13
  l0._graph = self
  l0._name = "box_PlaySound_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1715741151"
  l0.Out = self.f_box_PlaySound_v2_13_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_104 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_104
  l0._graph = self
  l0._name = "box_AI_IOPController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1726813873"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_104_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_59 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1729725647"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MultipleOR_135 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_135
  l0._graph = self
  l0._name = "box_MultipleOR_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1736573033"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_135_Out
  self.box_Progression_Tag_Monitor_110 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_110
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1763326552"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_110_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_110_HasNOT
  self.box_AI_IOPController_23 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_23
  l0._graph = self
  l0._name = "box_AI_IOPController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1765241725"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_23_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_95 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_95
  l0._graph = self
  l0._name = "box_HackableController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1776004470"
  l0.Enabled = self.f_box_HackableController_v2_95_Enabled
  l0.Disabled = self.f_box_HackableController_v2_95_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_95_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_95_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_153 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_153
  l0._graph = self
  l0._name = "box_HackableController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1784613975"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_153_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_153_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_RewardController_v3_9 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_9
  l0._graph = self
  l0._name = "box_RewardController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1789856240"
  l0.Out = self.f_box_RewardController_v3_9_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Security_Camera_Monitor_160 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_160
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1790433795"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_160_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_160_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_HackableController_v2_85 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_85
  l0._graph = self
  l0._name = "box_HackableController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1825652984"
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
  self.box_HackableController_v2_64 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_64
  l0._graph = self
  l0._name = "box_HackableController_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1900964196"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_64_OverrideHackingTextSet
  self.box_HackableController_v2_155 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_155
  l0._graph = self
  l0._name = "box_HackableController_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1905199228"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_155_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1937066802"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOP_CleanUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_14
  l0._graph = self
  l0._name = "box_IOP_CleanUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1959742135"
  l0.Completed = self.f_box_IOP_CleanUp_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_MultipleOR_154 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_154
  l0._graph = self
  l0._name = "box_MultipleOR_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1998902963"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_154_Out
  self.box_Security_Camera_Monitor_73 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_73
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1999139619"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_73_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_73_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_AI_IOPController_106 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_106
  l0._graph = self
  l0._name = "box_AI_IOPController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2049797730"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_106_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_ListWriter_53 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_53
  l0._graph = self
  l0._name = "box_ListWriter_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2054454151"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_53_Added
  l0.Removed = self.f_box_ListWriter_53_Removed
  l0.Out = self.f_box_ListWriter_53_Out
  self.box_PhoneCommunicationController_148 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_148
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2062413855"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_148_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_136 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_136
  l0._graph = self
  l0._name = "box_PlaySound_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2064072039"
  l0.Out = self.f_box_PlaySound_v2_136_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_86 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_86
  l0._graph = self
  l0._name = "box_SetBoolean_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2074272274"
  l0.Out = self.f_box_SetBoolean_v2_86_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_86_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_86_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_86_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_86_SetFromBool
  self.box_CinematicPrep_115 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_115
  l0._graph = self
  l0._name = "box_CinematicPrep_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2077566716"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_SetBoolean_v2_3 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_3
  l0._graph = self
  l0._name = "box_SetBoolean_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2083265238"
  l0.Out = self.f_box_SetBoolean_v2_3_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_3_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_3_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_3_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_3_SetFromBool
  self.box_Progression_Tag_Monitor_89 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_89
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2110144433"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_89_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_89_HasNOT
  self.box_Progression_Tag_Monitor_12 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_12
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2118941723"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_12_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_12_HasNOT
  self.box_Timer_v2_18 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_18
  l0._graph = self
  l0._name = "box_Timer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2120164842"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_128 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_128
  l0._graph = self
  l0._name = "box_MultipleOR_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2124787541"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_128_Out
  self.box_AI_IOPController_140 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_140
  l0._graph = self
  l0._name = "box_AI_IOPController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2137071411"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_140_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_33 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_33
  l0._graph = self
  l0._name = "box_AI_IOPController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2137168220"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_33_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
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
  self:OnEnter_box_MultipleOR_129()
  l0 = self.box_MultipleOR_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2096205189", "2096205189", "IOP09C_Main", "CheckPoint_0", "box_MultipleOR_129.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_129()
  l0 = self.box_MultipleOR_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|641371228", "641371228", "IOP09C_Main", "In", "box_MultipleOR_129.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_146_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1283378173"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_MissionMessageController_v3_146
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1329774668", "1329774668", "IOP09C_Main", "box_MissionMessageController_v3_146.MessageCompleted", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|708956842"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_97_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_97_Out_1
  l0 = self.box_MultipleOR_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|208483469", "208483469", "IOP09C_Main", "box_MultipleOR_21.Out", "box_Ordered_Output_97.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_65_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_65
  l1 = self.box_MissionMessageController_v3_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1254345589", "1254345589", "IOP09C_Main", "box_Timer_v2_65.TimeElapsed", "box_MissionMessageController_v3_146.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
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
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1539896688", "1539896688", "IOP09C_Main", "box_Set_Entity_55.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Compare_Integers_v2_100_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1000774700", "1000774700", "IOP09C_Main", "box_Compare_Integers_v2_100.A_eq_B", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_100_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1088017134"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_39_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_39_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_39_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1576393225", "1576393225", "IOP09C_Main", "box_Compare_Integers_v2_100.A_gt_B", "box_Compare_Integers_v2_39.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_100_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1392276544", "1392276544", "IOP09C_Main", "box_Compare_Integers_v2_100.A_lt_B", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_RewardController_v3_123_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 5
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1080398542"
  l0.Out = self.f_box_SetInteger_v2_134_Out
  l0 = self.box_RewardController_v3_123
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1072659956", "1072659956", "IOP09C_Main", "box_RewardController_v3_123.Out", "box_SetInteger_v2_134.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_69
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_2",
    id = "340526"
  }
  l0 = self.box_MultipleOR_84
  l1 = self.box_HackableController_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2056272197", "2056272197", "IOP09C_Main", "box_MultipleOR_84.Out", "box_HackableController_v2_69.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_141_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|103166449", "103166449", "IOP09C_Main", "box_HackableController_v2_141.Disabled", "box_HackableController_v2_95.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_141_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1853825111", "1853825111", "IOP09C_Main", "box_HackableController_v2_141.Enabled", "box_HackableController_v2_95.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_AI_IOPController_66_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_66
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|127856750", "127856750", "IOP09C_Main", "box_AI_IOPController_66.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Set_Entity_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|942236063", "942236063", "IOP09C_Main", "box_Set_Entity_87.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_30
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2111642286", "2111642286", "IOP09C_Main", "box_Ordered_Output_82.Out", "box_Timer_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_160()
  l0 = self.box_Security_Camera_Monitor_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|725211865", "725211865", "IOP09C_Main", "box_Ordered_Output_82.Out", "box_Security_Camera_Monitor_160.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Set_Entity_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|450909193", "450909193", "IOP09C_Main", "box_Set_Entity_94.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AI_IOPController_17_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_73()
  l0 = self.box_AI_IOPController_17
  l1 = self.box_Security_Camera_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|146428674", "146428674", "IOP09C_Main", "box_AI_IOPController_17.SendEventCompleted", "box_Security_Camera_Monitor_73.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_48_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1246746152", "1246746152", "IOP09C_Main", "box_Progression_Tag_Monitor_48.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_48_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_7
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_RewardController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|817596453", "817596453", "IOP09C_Main", "box_Progression_Tag_Monitor_48.HasNOT", "box_RewardController_v3_7.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_RandomOutput_v2_142_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_137
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|27715991", "27715991", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_137.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_89
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1943830188", "1943830188", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_89.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_48
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1078809012", "1078809012", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_48.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_51
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|760004692", "760004692", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_51.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_12
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1007804148", "1007804148", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_12.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_83
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|257958207", "257958207", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_83.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_110
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|142157466", "142157466", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_110.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_130
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|560041634", "560041634", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_130.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_8()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_33
  l0.EmptyRoomName = "AtmEmptyRoom"
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_AI_IOPController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1151525885", "1151525885", "IOP09C_Main", "box_RandomOutput_v2_142.Output", "box_AI_IOPController_33.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_PlaySound_v2_102_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|620359595"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_102
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|28810274", "28810274", "IOP09C_Main", "box_PlaySound_v2_102.Out", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_91_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1547927918", "1547927918", "IOP09C_Main", "box_LightController_91.Enabled", "box_Multiple_AND_19.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_AI_IOPController_98_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_98
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1451233687", "1451233687", "IOP09C_Main", "box_AI_IOPController_98.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_AI_IOPController_119_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_135()
  l0 = self.box_AI_IOPController_119
  l1 = self.box_MultipleOR_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|920145733", "920145733", "IOP09C_Main", "box_AI_IOPController_119.StartCompleted", "box_MultipleOR_135.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LightController_117_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_138
  l0.SoundId = "soundbinary/2847170774.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1316533708", "1316533708", "IOP09C_Main", "box_LightController_117.Enabled", "box_PlaySound_v2_138.Play", clone, l0)
  l0:Play()
end
function export:f_box_IndexedOutput_V2_81_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|140142213", "140142213", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_81_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1803296821", "1803296821", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_81_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1916827893", "1916827893", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_81_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|923832929", "923832929", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_81_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1448604971", "1448604971", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_81_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1965808505", "1965808505", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_81_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|216724667", "216724667", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_81_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|472604786", "472604786", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_81_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1822327914", "1822327914", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_81_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|912867343", "912867343", "IOP09C_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_CollisionController_10_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_53
  l0.Input = self.NPC_List
  l0.Data[0] = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|338717012", "338717012", "IOP09C_Main", "box_CollisionController_10.CollisionsDisabled", "box_ListWriter_53.Add", clone, l0)
  l0:Add()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_108
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_24
  l1 = self.box_CLOController_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|495181966", "495181966", "IOP09C_Main", "box_MultipleOR_24.Out", "box_CLOController_108.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_121_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_102
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_121
  l1 = self.box_PlaySound_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1231561101", "1231561101", "IOP09C_Main", "box_Hackable_Monitor_121.HackSuccess", "box_PlaySound_v2_102.Play", l0, l1)
  l1:Play()
end
function export:f_box_Progression_Tag_Monitor_130_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_130
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|262560547", "262560547", "IOP09C_Main", "box_Progression_Tag_Monitor_130.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_130_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_114
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_130
  l1 = self.box_RewardController_v3_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1793946466", "1793946466", "IOP09C_Main", "box_Progression_Tag_Monitor_130.HasNOT", "box_RewardController_v3_114.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SetBoolean_v2_92_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
  l0 = self.box_AI_IOPController_111
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0 = self.box_SetBoolean_v2_92
  l1 = self.box_AI_IOPController_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1214547156", "1214547156", "IOP09C_Main", "box_SetBoolean_v2_92.Out", "box_AI_IOPController_111.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_92_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_92_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
end
function export:f_box_RewardController_v3_131_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 6
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|735914653"
  l0.Out = self.f_box_SetInteger_v2_31_Out
  l0 = self.box_RewardController_v3_131
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|236746531", "236746531", "IOP09C_Main", "box_RewardController_v3_131.Out", "box_SetInteger_v2_31.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Timer_v2_157_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1235518635"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_74_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_74_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_74_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_157
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1399232916", "1399232916", "IOP09C_Main", "box_Timer_v2_157.TimeElapsed", "box_Compare_Integers_v2_74.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_36_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1696785406", "1696785406", "IOP09C_Main", "box_Compare_Integers_v2_36.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_36_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1097811692"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_124_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_124_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_124_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2026307216", "2026307216", "IOP09C_Main", "box_Compare_Integers_v2_36.A_gt_B", "box_Compare_Integers_v2_124.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_36_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2037150190", "2037150190", "IOP09C_Main", "box_Compare_Integers_v2_36.A_lt_B", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_47_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_92
  l0.Bool = self.GoodVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1603157816", "1603157816", "IOP09C_Main", "box_Compare_Boolean_v2_47.A_is_False", "box_SetBoolean_v2_92.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_47_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_60
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|558970375", "558970375", "IOP09C_Main", "box_Compare_Boolean_v2_47.A_is_True", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_AI_IOPController_27_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_19()
  l0 = self.box_AI_IOPController_27
  l1 = self.box_Multiple_AND_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|847397624", "847397624", "IOP09C_Main", "box_AI_IOPController_27.SendEventCompleted", "box_Multiple_AND_19.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_RewardController_v3_29_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 7
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1137080754"
  l0.Out = self.f_box_SetInteger_v2_71_Out
  l0 = self.box_RewardController_v3_29
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2015018713", "2015018713", "IOP09C_Main", "box_RewardController_v3_29.Out", "box_SetInteger_v2_71.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Set_Entity_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1397347113", "1397347113", "IOP09C_Main", "box_Set_Entity_20.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_78
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1900672962", "1900672962", "IOP09C_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_SetBoolean_v2_78.True", clone, l0)
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
  l0 = self.box_AI_IOPController_4
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1453310008", "1453310008", "IOP09C_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_AI_IOPController_4.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_73()
  l0 = self.box_Security_Camera_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|12929079", "12929079", "IOP09C_Main", "box_Ordered_Output_46.Out", "box_Security_Camera_Monitor_73.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_46_Out_1()
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
  l0._name = "box_Compare_Integers_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|678504509"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_56_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_56_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_56_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1902364009", "1902364009", "IOP09C_Main", "box_Ordered_Output_46.Out", "box_Compare_Integers_v2_56.In", clone, l0)
  l0:In()
end
function export:f_box_ParticleFXController_v2_45_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money2
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|671595892"
  l0.Started = self.f_box_ParticleFXController_v2_50_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|222647219", "222647219", "IOP09C_Main", "box_ParticleFXController_v2_45.Started", "box_ParticleFXController_v2_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_129_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1714819477"
  l0.Out = self.f_box_Get_Player_ID_34_Out
  l0 = self.box_MultipleOR_129
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1234945363", "1234945363", "IOP09C_Main", "box_MultipleOR_129.Out", "box_Get_Player_ID_34.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money3
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|339657679"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|820254510", "820254510", "IOP09C_Main", "box_ParticleFXController_v2_50.Started", "box_ParticleFXController_v2_109.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_56_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_104
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2115284651", "2115284651", "IOP09C_Main", "box_Compare_Integers_v2_56.A_eq_B", "box_AI_IOPController_104.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_56_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1839612251"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_90_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_90_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_90_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|579154977", "579154977", "IOP09C_Main", "box_Compare_Integers_v2_56.A_gt_B", "box_Compare_Integers_v2_90.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_56_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_140
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|62778603", "62778603", "IOP09C_Main", "box_Compare_Integers_v2_56.A_lt_B", "box_AI_IOPController_140.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Progression_Tag_Monitor_137_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_137
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1674144614", "1674144614", "IOP09C_Main", "box_Progression_Tag_Monitor_137.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_137_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_67
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_137
  l1 = self.box_RewardController_v3_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|525772593", "525772593", "IOP09C_Main", "box_Progression_Tag_Monitor_137.HasNOT", "box_RewardController_v3_67.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_97_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_18
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|815919168", "815919168", "IOP09C_Main", "box_Ordered_Output_97.Out", "box_Timer_v2_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_97_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_41()
  l0 = self.box_IOPMonitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1792074724", "1792074724", "IOP09C_Main", "box_Ordered_Output_97.Out", "box_IOPMonitor_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Monitor_101_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_121()
  l0 = self.box_Hackable_Monitor_101
  l1 = self.box_Hackable_Monitor_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|915975173", "915975173", "IOP09C_Main", "box_Hackable_Monitor_101.Disabled", "box_Hackable_Monitor_121.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_101_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_13
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_101
  l1 = self.box_PlaySound_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1647987141", "1647987141", "IOP09C_Main", "box_Hackable_Monitor_101.HackSuccess", "box_PlaySound_v2_13.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_116_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_116()
  l0 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|316009768", "316009768", "IOP09C_Main", "box_CLOController_116.UnspawnedUser", "box_CLOController_116.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_SetInteger_v2_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324078"
  l0._graph = self
  l0._name = "box_Set_Entity_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|763031999"
  l0.Out = self.f_box_Set_Entity_62_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1040828286", "1040828286", "IOP09C_Main", "box_SetInteger_v2_31.Out", "box_Set_Entity_62.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Set_Entity_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1992652325", "1992652325", "IOP09C_Main", "box_Set_Entity_62.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Compare_Boolean_v2_112_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_15
  l0.SoundId = "soundbinary/3692441989.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1182122443", "1182122443", "IOP09C_Main", "box_Compare_Boolean_v2_112.A_is_True", "box_PlaySound_v2_15.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_154()
  l0 = self.box_MultipleOR_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|270575353", "270575353", "IOP09C_Main", "box_Compare_Boolean_v2_112.Out", "box_MultipleOR_154.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_16
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0 = self.box_MultipleOR_57
  l1 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1565336623", "1565336623", "IOP09C_Main", "box_MultipleOR_57.Out", "box_HackableController_v2_16.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Progression_Tag_Monitor_51_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_51
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|673216275", "673216275", "IOP09C_Main", "box_Progression_Tag_Monitor_51.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_51_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_9
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_51
  l1 = self.box_RewardController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1470883600", "1470883600", "IOP09C_Main", "box_Progression_Tag_Monitor_51.HasNOT", "box_RewardController_v3_9.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Simple_Node_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_63
  l0.HackableEntity = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1064743704", "1064743704", "IOP09C_Main", "box_Simple_Node_122.Out", "box_HackableController_v2_63.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_IOPMonitor_41_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_IOPMonitor_41
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|33987486", "33987486", "IOP09C_Main", "box_IOPMonitor_41.ActivateHackables", "box_HackableController_v2_95.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_41_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_IOPMonitor_41
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1813467795", "1813467795", "IOP09C_Main", "box_IOPMonitor_41.DeactivateHackables", "box_HackableController_v2_95.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_41_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_41
  l1 = self.box_PlaySound_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1053160964", "1053160964", "IOP09C_Main", "box_IOPMonitor_41.Disabled", "box_PlaySound_v2_68.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_41_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_41()
  l0 = self.box_IOPMonitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|946801520", "946801520", "IOP09C_Main", "box_IOPMonitor_41.IOPComplete", "box_IOPMonitor_41.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_107_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_107
  l1 = self.box_SetBoolean_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|646718061", "646718061", "IOP09C_Main", "box_PlaySound_v2_107.Started", "box_SetBoolean_v2_113.False", l0, l1)
  l1:False()
end
function export:f_box_MissionMessageController_v3_150_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_148
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374186"
  l0 = self.box_MissionMessageController_v3_150
  l1 = self.box_PhoneCommunicationController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1019951224", "1019951224", "IOP09C_Main", "box_MissionMessageController_v3_150.Out", "box_PhoneCommunicationController_148.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SetInteger_v2_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324074"
  l0._graph = self
  l0._name = "box_Set_Entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1920468588"
  l0.Out = self.f_box_Set_Entity_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1600847308", "1600847308", "IOP09C_Main", "box_SetInteger_v2_125.Out", "box_Set_Entity_6.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_115
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_159
  l1 = self.box_CinematicPrep_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|110417200", "110417200", "IOP09C_Main", "box_Timer_v2_159.TimeElapsed", "box_CinematicPrep_115.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_HackableController_v2_63_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_1",
    id = "340525"
  }
  l0 = self.box_HackableController_v2_63
  l1 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1212799850", "1212799850", "IOP09C_Main", "box_HackableController_v2_63.ProfilingEnabled", "box_HackableController_v2_52.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_152_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_HackableController_v2_152
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2004627896", "2004627896", "IOP09C_Main", "box_HackableController_v2_152.ProfilingDisabled", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_83_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_83
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1303462999", "1303462999", "IOP09C_Main", "box_Progression_Tag_Monitor_83.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_83_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_131
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_83
  l1 = self.box_RewardController_v3_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1431464735", "1431464735", "IOP09C_Main", "box_Progression_Tag_Monitor_83.HasNOT", "box_RewardController_v3_131.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_96_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_96
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2144221694", "2144221694", "IOP09C_Main", "box_AI_IOPController_96.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_AI_IOPController_4_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1388447166"
  l0.Out = self.f_box_Compare_Boolean_v2_77_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_77_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_4
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1432240402", "1432240402", "IOP09C_Main", "box_AI_IOPController_4.SendEventCompleted", "box_Compare_Boolean_v2_77.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 3
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1595610190"
  l0.Out = self.f_box_SetInteger_v2_35_Out
  l0 = self.box_RewardController_v3_7
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|781953309", "781953309", "IOP09C_Main", "box_RewardController_v3_7.Out", "box_SetInteger_v2_35.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Compare_Integers_v2_2_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_127
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Seize_Card",
    id = "544819"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|243664110", "243664110", "IOP09C_Main", "box_Compare_Integers_v2_2.A_eq_B", "box_HackableController_v2_127.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_2_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1072452492"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_37_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_37_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|303506560", "303506560", "IOP09C_Main", "box_Compare_Integers_v2_2.A_gt_B", "box_Compare_Integers_v2_37.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_2_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_5
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Delete_Account",
    id = "544817"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|896552253", "896552253", "IOP09C_Main", "box_Compare_Integers_v2_2.A_lt_B", "box_HackableController_v2_5.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_37_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_42
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Pay_Alimony",
    id = "544820"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|81883011", "81883011", "IOP09C_Main", "box_Compare_Integers_v2_37.A_eq_B", "box_HackableController_v2_42.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_37_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|628013033", "628013033", "IOP09C_Main", "box_Compare_Integers_v2_37.A_lt_B", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetInteger_v2_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324075"
  l0._graph = self
  l0._name = "box_Set_Entity_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|57285941"
  l0.Out = self.f_box_Set_Entity_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|453543208", "453543208", "IOP09C_Main", "box_SetInteger_v2_134.Out", "box_Set_Entity_55.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Compare_Integers_v2_39_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|577278881", "577278881", "IOP09C_Main", "box_Compare_Integers_v2_39.A_eq_B", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_39_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1024907850"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_2_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_2_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_2_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|525602437", "525602437", "IOP09C_Main", "box_Compare_Integers_v2_39.A_gt_B", "box_Compare_Integers_v2_2.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_39_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_128()
  l0 = self.box_MultipleOR_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1015930921", "1015930921", "IOP09C_Main", "box_Compare_Integers_v2_39.A_lt_B", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_PlaySound_v2_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l1 = self.box_IOP_CleanUp_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|47841257", "47841257", "IOP09C_Main", "box_PlaySound_v2_68.Out", "box_IOP_CleanUp_14.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_114_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 8
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|925540046"
  l0.Out = self.f_box_SetInteger_v2_125_Out
  l0 = self.box_RewardController_v3_114
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1263108343", "1263108343", "IOP09C_Main", "box_RewardController_v3_114.Out", "box_SetInteger_v2_125.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Set_Entity_145_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2126289324", "2126289324", "IOP09C_Main", "box_Set_Entity_145.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Integers_v2_124_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|644736664", "644736664", "IOP09C_Main", "box_Compare_Integers_v2_124.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Integers_v2_124_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1346920296"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_120_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_120_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1541065052", "1541065052", "IOP09C_Main", "box_Compare_Integers_v2_124.A_gt_B", "box_Compare_Integers_v2_120.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_124_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_75
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Shares",
    id = "544818"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|866398982", "866398982", "IOP09C_Main", "box_Compare_Integers_v2_124.A_lt_B", "box_HackableController_v2_75.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_142
  l0.Probability[0] = 0
  l0.Probability[1] = 0
  l0.Probability[2] = 1
  l0.Probability[3] = 0
  l0.Probability[4] = 0
  l0.Probability[5] = 0
  l0.Probability[6] = 0
  l0.Probability[7] = 0
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_40
  l1 = self.box_RandomOutput_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1331997836", "1331997836", "IOP09C_Main", "box_MultipleOR_40.Out", "box_RandomOutput_v2_142.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324080"
  l0._graph = self
  l0._name = "box_Set_Entity_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|603441484"
  l0.Out = self.f_box_Set_Entity_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|575348857", "575348857", "IOP09C_Main", "box_SetInteger_v2_71.Out", "box_Set_Entity_20.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_143_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1157831821"
  l0.Out = self.f_box_Simple_Node_54_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2067037864", "2067037864", "IOP09C_Main", "box_Ordered_Output_143.Out", "box_Simple_Node_54.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_143_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1851996702"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1391807763", "1391807763", "IOP09C_Main", "box_Ordered_Output_143.Out", "box_Simple_Node_1.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_101()
  l0 = self.box_Hackable_Monitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|764615790", "764615790", "IOP09C_Main", "box_Simple_Node_54.Out", "box_Hackable_Monitor_101.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_RewardController_v3_67_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1825881703"
  l0.Out = self.f_box_SetInteger_v2_93_Out
  l0 = self.box_RewardController_v3_67
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|99116670", "99116670", "IOP09C_Main", "box_RewardController_v3_67.Out", "box_SetInteger_v2_93.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Compare_Integers_v2_76_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_23
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character6"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|550441815", "550441815", "IOP09C_Main", "box_Compare_Integers_v2_76.A_eq_B", "box_AI_IOPController_23.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_76_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1361486589"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_139_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_139_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1265558128", "1265558128", "IOP09C_Main", "box_Compare_Integers_v2_76.A_gt_B", "box_Compare_Integers_v2_139.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_76_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_98
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character5"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1429544134", "1429544134", "IOP09C_Main", "box_Compare_Integers_v2_76.A_lt_B", "box_AI_IOPController_98.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Timer_v2_22_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|869677059"
  l0.Out = self.f_box_Simple_Node_122_Out
  l0 = self.box_Timer_v2_22
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|340503023", "340503023", "IOP09C_Main", "box_Timer_v2_22.LoopingEnded", "box_Simple_Node_122.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_22_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_22_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_22_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_22_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1599449908", "1599449908", "IOP09C_Main", "box_Timer_v2_22.TimeElapsed", "box_IndexedOutput_V2_81.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_108_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_108
  self.Npc = l0.UserID
  l0 = self.box_HackableController_v2_79
  l0.HackableEntity = self.Npc
  l0 = self.box_CLOController_108
  l1 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1649031683", "1649031683", "IOP09C_Main", "box_CLOController_108.OnUserInPlace", "box_HackableController_v2_79.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_AI_IOPController_44_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_44
  l1 = self.box_Timer_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|386822276", "386822276", "IOP09C_Main", "box_AI_IOPController_44.SendEventCompleted", "box_Timer_v2_158.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_74_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1196161437", "1196161437", "IOP09C_Main", "box_Compare_Integers_v2_74.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_74_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|535137768"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_36_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_36_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_36_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1189303526", "1189303526", "IOP09C_Main", "box_Compare_Integers_v2_74.A_gt_B", "box_Compare_Integers_v2_36.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_74_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1753202970", "1753202970", "IOP09C_Main", "box_Compare_Integers_v2_74.A_lt_B", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetBoolean_v2_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_78
  self.BadVar = l0.Target
  l0 = self.box_AI_IOPController_44
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0 = self.box_SetBoolean_v2_78
  l1 = self.box_AI_IOPController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|307872806", "307872806", "IOP09C_Main", "box_SetBoolean_v2_78.Out", "box_AI_IOPController_44.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_78_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_78
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_78_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_78
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_78_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_78
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_78_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_78
  self.BadVar = l0.Target
end
function export:f_box_HackableController_v2_69_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_69
  l1 = self.box_SetBoolean_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|966251614", "966251614", "IOP09C_Main", "box_HackableController_v2_69.OverrideHackingTextSet", "box_SetBoolean_v2_3.True", l0, l1)
  l1:True()
end
function export:f_box_Set_Entity_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2107155960", "2107155960", "IOP09C_Main", "box_Set_Entity_28.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_88_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_88
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|445424425", "445424425", "IOP09C_Main", "box_HackableController_v2_88.ProfilingDisabled", "box_HackableController_v2_152.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Ordered_Output_156_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_101()
  l0 = self.box_Hackable_Monitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|676950382", "676950382", "IOP09C_Main", "box_Ordered_Output_156.Out", "box_Hackable_Monitor_101.Disable", clone, l0)
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
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "IOP09C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1090808291", "1090808291", "IOP09C_Main", "box_Ordered_Output_156.Out", "box_MissionLayer_v2_11.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_HackableController_v2_26_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1146597464"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_143_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_143_Out_1
  l0 = self.box_HackableController_v2_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1632751845", "1632751845", "IOP09C_Main", "box_HackableController_v2_26.OverrideHackingTextSet", "box_Ordered_Output_143.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_120_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|227510770", "227510770", "IOP09C_Main", "box_Compare_Integers_v2_120.A_eq_B", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_120_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|77729287", "77729287", "IOP09C_Main", "box_Compare_Integers_v2_120.A_lt_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Compare_Integers_v2_139_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_66
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character8"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1087266553", "1087266553", "IOP09C_Main", "box_Compare_Integers_v2_139.A_eq_B", "box_AI_IOPController_66.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_139_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_96
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character7"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1534869412", "1534869412", "IOP09C_Main", "box_Compare_Integers_v2_139.A_lt_B", "box_AI_IOPController_96.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_AI_IOPController_111_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_111
  l1 = self.box_Timer_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2000636705", "2000636705", "IOP09C_Main", "box_AI_IOPController_111.SendEventCompleted", "box_Timer_v2_157.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_103_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_103
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1760394830", "1760394830", "IOP09C_Main", "box_AI_IOPController_103.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Compare_Boolean_v2_77_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_118
  l0.Entity = self.BarkSoundEntity_0
  l0.SoundId = "soundbinary/674218771.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1973699358", "1973699358", "IOP09C_Main", "box_Compare_Boolean_v2_77.A_is_True", "box_PlaySound_v2_118.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_154()
  l0 = self.box_MultipleOR_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1699508448", "1699508448", "IOP09C_Main", "box_Compare_Boolean_v2_77.Out", "box_MultipleOR_154.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|381485317"
  l0.Enabled = self.f_box_LightController_117_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_32
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|276344599", "276344599", "IOP09C_Main", "box_MultipleOR_32.Out", "box_LightController_117.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_15_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|658894588"
  l0.Started = self.f_box_ParticleFXController_v2_45_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_PlaySound_v2_15
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1821837745", "1821837745", "IOP09C_Main", "box_PlaySound_v2_15.Started", "box_ParticleFXController_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_RewardController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2129880482"
  l0.Out = self.f_box_SetInteger_v2_126_Out
  l0 = self.box_RewardController_v3_8
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|887490238", "887490238", "IOP09C_Main", "box_RewardController_v3_8.Out", "box_SetInteger_v2_126.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_SecurityCamController_105_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_105()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|963071287", "963071287", "IOP09C_Main", "box_SecurityCamController_105.CanExitSet", "box_SecurityCamController_105.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_105_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|214142956"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1384586668", "1384586668", "IOP09C_Main", "box_SecurityCamController_105.EnterForced", "box_Ordered_Output_82.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_52_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_1",
    id = "340527"
  }
  l0 = self.box_HackableController_v2_52
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1522695160", "1522695160", "IOP09C_Main", "box_HackableController_v2_52.OverrideHackingTextSet", "box_HackableController_v2_26.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Multiple_AND_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_136
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_19
  l1 = self.box_PlaySound_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|247914209", "247914209", "IOP09C_Main", "box_Multiple_AND_19.Out", "box_PlaySound_v2_136.Play", l0, l1)
  l1:Play()
end
function export:f_box_LightController_43_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_22
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1425852224", "1425852224", "IOP09C_Main", "box_LightController_43.Disabled", "box_Timer_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1844294870"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_38
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1806007294", "1806007294", "IOP09C_Main", "box_MultipleOR_38.Out", "box_LightController_49.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_58_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1551192403"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_43_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_58
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1205530927", "1205530927", "IOP09C_Main", "box_Timer_v2_58.TimeElapsed", "box_LightController_43.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_158_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|121224477"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_100_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_100_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_100_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_158
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1619051839", "1619051839", "IOP09C_Main", "box_Timer_v2_158.TimeElapsed", "box_Compare_Integers_v2_100.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_11_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_11
  l1 = self.box_MissionController_v4_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|548694311", "548694311", "IOP09C_Main", "box_MissionLayer_v2_11.Unloaded", "box_MissionController_v4_72.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MakeItRain
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|789200978"
  l0.Out = self.f_box_Compare_Boolean_v2_112_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_112_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_60
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|571918211", "571918211", "IOP09C_Main", "box_AI_IOPController_60.SendEventCompleted", "box_Compare_Boolean_v2_112.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324079"
  l0._graph = self
  l0._name = "box_Set_Entity_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1096581054"
  l0.Out = self.f_box_Set_Entity_145_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1255845779", "1255845779", "IOP09C_Main", "box_SetInteger_v2_35.Out", "box_Set_Entity_145.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_IOP_StartUp_61_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1907098201"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_25_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_IOP_StartUp_61
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1361256641", "1361256641", "IOP09C_Main", "box_IOP_StartUp_61.Out", "box_LightController_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_79_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|402566780"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_10_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_79
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|951746946", "951746946", "IOP09C_Main", "box_HackableController_v2_79.ProfilingDisabled", "box_CollisionController_10.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_MultipleOR_99_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_85
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Empty_Account",
    id = "544816"
  }
  l0 = self.box_MultipleOR_99
  l1 = self.box_HackableController_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1814548245", "1814548245", "IOP09C_Main", "box_MultipleOR_99.Out", "box_HackableController_v2_85.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_151_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_107
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|345811905", "345811905", "IOP09C_Main", "box_Ordered_Output_151.Out", "box_PlaySound_v2_107.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_151_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_150
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1118189076", "1118189076", "IOP09C_Main", "box_Ordered_Output_151.Out", "box_MissionMessageController_v3_150.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_SetBoolean_v2_113_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_113
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_113_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_113
  self.MakeItRain = l0.Target
  l1 = self.box_SetBoolean_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2135293232", "2135293232", "IOP09C_Main", "box_SetBoolean_v2_113.SetFalse", "box_SetBoolean_v2_59.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_113_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_113
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_113_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_113
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_113_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_113
  self.MakeItRain = l0.Target
end
function export:f_box_Simple_Node_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_135()
  l0 = self.box_MultipleOR_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1434774057", "1434774057", "IOP09C_Main", "box_Simple_Node_132.Out", "box_MultipleOR_135.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_61
  l0.MainLayer = "IOP09C_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863900"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1460529703", "1460529703", "IOP09C_Main", "box_Get_Player_ID_34.Out", "box_IOP_StartUp_61.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|535375996"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_47_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_47_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_13
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|185099901", "185099901", "IOP09C_Main", "box_PlaySound_v2_13.Out", "box_Compare_Boolean_v2_47.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_104_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_104
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|840717757", "840717757", "IOP09C_Main", "box_AI_IOPController_104.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_59_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.Alarm = l0.Target
  l0 = self.box_HackableController_v2_88
  l0.HackableEntity = self.GoodHack
  l0 = self.box_SetBoolean_v2_59
  l1 = self.box_HackableController_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|921307926", "921307926", "IOP09C_Main", "box_SetBoolean_v2_59.SetFalse", "box_HackableController_v2_88.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetBoolean_v2_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.Alarm = l0.Target
end
function export:f_box_MultipleOR_135_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|626878542"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_MultipleOR_135
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1549883078", "1549883078", "IOP09C_Main", "box_MultipleOR_135.Out", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_110_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_110
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|103560865", "103560865", "IOP09C_Main", "box_Progression_Tag_Monitor_110.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_110_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_29
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_110
  l1 = self.box_RewardController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|600570435", "600570435", "IOP09C_Main", "box_Progression_Tag_Monitor_110.HasNOT", "box_RewardController_v3_29.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_23_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_23
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|664924104", "664924104", "IOP09C_Main", "box_AI_IOPController_23.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_HackableController_v2_95_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1938868385", "1938868385", "IOP09C_Main", "box_HackableController_v2_95.Disabled", "box_HackableController_v2_141.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_95_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|399048132", "399048132", "IOP09C_Main", "box_HackableController_v2_95.Enabled", "box_HackableController_v2_141.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_95_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1222999337", "1222999337", "IOP09C_Main", "box_HackableController_v2_95.ProfilingDisabled", "box_HackableController_v2_141.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_95_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|487926074", "487926074", "IOP09C_Main", "box_HackableController_v2_95.ProfilingEnabled", "box_HackableController_v2_141.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_HackableController_v2_153_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_155()
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1189282258", "1189282258", "IOP09C_Main", "box_HackableController_v2_153.Disabled", "box_HackableController_v2_155.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_153_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_155()
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|238620623", "238620623", "IOP09C_Main", "box_HackableController_v2_153.ProfilingDisabled", "box_HackableController_v2_155.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_RewardController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 4
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2132802118"
  l0.Out = self.f_box_SetInteger_v2_133_Out
  l0 = self.box_RewardController_v3_9
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1109305465", "1109305465", "IOP09C_Main", "box_RewardController_v3_9.Out", "box_SetInteger_v2_133.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Security_Camera_Monitor_160_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_159
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_160
  l1 = self.box_Timer_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1100764051", "1100764051", "IOP09C_Main", "box_Security_Camera_Monitor_160.Disabled", "box_Timer_v2_159.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_160_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_160()
  l0 = self.box_Security_Camera_Monitor_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1703226093", "1703226093", "IOP09C_Main", "box_Security_Camera_Monitor_160.OnEndAccessCamera", "box_Security_Camera_Monitor_160.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetInteger_v2_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324076"
  l0._graph = self
  l0._name = "box_Set_Entity_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|237075492"
  l0.Out = self.f_box_Set_Entity_94_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1292982980", "1292982980", "IOP09C_Main", "box_SetInteger_v2_93.Out", "box_Set_Entity_94.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Compare_Integers_v2_90_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_103
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character4"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1912764289", "1912764289", "IOP09C_Main", "box_Compare_Integers_v2_90.A_eq_B", "box_AI_IOPController_103.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_90_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1166426339"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_76_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_76_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_76_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|951151734", "951151734", "IOP09C_Main", "box_Compare_Integers_v2_90.A_gt_B", "box_Compare_Integers_v2_76.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_90_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_106
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character3"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1735994589", "1735994589", "IOP09C_Main", "box_Compare_Integers_v2_90.A_lt_B", "box_AI_IOPController_106.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_121()
  l0 = self.box_Hackable_Monitor_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1234387024", "1234387024", "IOP09C_Main", "box_Simple_Node_1.Out", "box_Hackable_Monitor_121.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_64_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_64
  l1 = self.box_SetBoolean_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1916342342", "1916342342", "IOP09C_Main", "box_HackableController_v2_64.OverrideHackingTextSet", "box_SetBoolean_v2_86.True", l0, l1)
  l1:True()
end
function export:f_box_HackableController_v2_155_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_HackableController_v2_155
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2143163305", "2143163305", "IOP09C_Main", "box_HackableController_v2_155.Disabled", "box_HackableController_v2_153.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_LightController_25_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1654983478"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_151_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_151_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1127523115", "1127523115", "IOP09C_Main", "box_LightController_25.Disabled", "box_Ordered_Output_151.In", clone, l0)
  l0:In()
end
function export:f_box_Set_Entity_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1442238470", "1442238470", "IOP09C_Main", "box_Set_Entity_6.Out", "box_MultipleOR_24.Input", clone, l0)
  l0:Input(7)
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|374419297"
  l0.Enabled = self.f_box_LightController_91_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_30
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|768278766", "768278766", "IOP09C_Main", "box_Timer_v2_30.TimeElapsed", "box_LightController_91.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOP_CleanUp_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_Timer_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|940162790", "940162790", "IOP09C_Main", "box_IOP_CleanUp_14.Completed", "box_Timer_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_116()
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1863896464", "1863896464", "IOP09C_Main", "box_IOP_CleanUp_14.DisconnectedAnimationPlayed", "box_CLOController_116.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MultipleOR_154_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_MultipleOR_154
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|964746275", "964746275", "IOP09C_Main", "box_MultipleOR_154.Out", "box_HackableController_v2_153.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Security_Camera_Monitor_73_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_80
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_73
  l1 = self.box_AI_IOPController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|751425524", "751425524", "IOP09C_Main", "box_Security_Camera_Monitor_73.OnStartAccessCamera", "box_AI_IOPController_80.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_73_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_17
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_73
  l1 = self.box_AI_IOPController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|451783548", "451783548", "IOP09C_Main", "box_Security_Camera_Monitor_73.OnStartExitCamera", "box_AI_IOPController_17.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_AI_IOPController_106_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_106
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|148243332", "148243332", "IOP09C_Main", "box_AI_IOPController_106.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_ListWriter_53_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_53
  self.NPC_List = l0.Target
  l0 = self.box_AI_IOPController_119
  l0.IopID = "Atm"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPC_List
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0 = self.box_ListWriter_53
  l1 = self.box_AI_IOPController_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1557009934", "1557009934", "IOP09C_Main", "box_ListWriter_53.Added", "box_AI_IOPController_119.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_53_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_53
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_53_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_53
  self.NPC_List = l0.Target
end
function export:f_box_PhoneCommunicationController_148_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_148
  l1 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|194361504", "194361504", "IOP09C_Main", "box_PhoneCommunicationController_148.OnCommunicationFinished", "box_AI_IOPController_27.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PlaySound_v2_136_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_58
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_136
  l1 = self.box_Timer_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2073403497", "2073403497", "IOP09C_Main", "box_PlaySound_v2_136.Out", "box_Timer_v2_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_86_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_86
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_86_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_86
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_86_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_86
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_86_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_86
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_86_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_86
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_3_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_3_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_3_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_3
  self.MakeItRain = l0.Target
end
function export:f_box_Progression_Tag_Monitor_89_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_89
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1280147684", "1280147684", "IOP09C_Main", "box_Progression_Tag_Monitor_89.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_89_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_8
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_89
  l1 = self.box_RewardController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|113039459", "113039459", "IOP09C_Main", "box_Progression_Tag_Monitor_89.HasNOT", "box_RewardController_v3_8.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Progression_Tag_Monitor_12_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_12
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|751589542", "751589542", "IOP09C_Main", "box_Progression_Tag_Monitor_12.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_12_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_123
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_12
  l1 = self.box_RewardController_v3_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2091237306", "2091237306", "IOP09C_Main", "box_Progression_Tag_Monitor_12.HasNOT", "box_RewardController_v3_123.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Timer_v2_18_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_105()
  l0 = self.box_Timer_v2_18
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|2109548063", "2109548063", "IOP09C_Main", "box_Timer_v2_18.TimeElapsed", "box_SecurityCamController_105.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_MultipleOR_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_64
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_2",
    id = "340528"
  }
  l0 = self.box_MultipleOR_128
  l1 = self.box_HackableController_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|785700247", "785700247", "IOP09C_Main", "box_MultipleOR_128.Out", "box_HackableController_v2_64.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SetInteger_v2_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324067"
  l0._graph = self
  l0._name = "box_Set_Entity_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1263678253"
  l0.Out = self.f_box_Set_Entity_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|510049688", "510049688", "IOP09C_Main", "box_SetInteger_v2_126.Out", "box_Set_Entity_28.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_SetInteger_v2_133_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706324077"
  l0._graph = self
  l0._name = "box_Set_Entity_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|184998246"
  l0.Out = self.f_box_Set_Entity_87_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|749917561", "749917561", "IOP09C_Main", "box_SetInteger_v2_133.Out", "box_Set_Entity_87.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_140_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_140
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1912035860", "1912035860", "IOP09C_Main", "box_AI_IOPController_140.SendEventCompleted", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_33_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1708931443"
  l0.Out = self.f_box_Simple_Node_132_Out
  l0 = self.box_AI_IOPController_33
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|300439026", "300439026", "IOP09C_Main", "box_AI_IOPController_33.StartEmptyRoomCompleted", "box_Simple_Node_132.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_HackableController_v2_141()
  local l0
  l0 = self.box_HackableController_v2_141
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_24()
end
function export:OnEnter_box_Hackable_Monitor_121()
  local l0
  l0 = self.box_Hackable_Monitor_121
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_129()
end
function export:OnEnter_box_Hackable_Monitor_101()
  local l0
  l0 = self.box_Hackable_Monitor_101
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_CLOController_116()
  local l0
  l0 = self.box_CLOController_116
  l0.CLO = self.CLO
  l0.User = self.Npc
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_IOPMonitor_41()
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_SecurityCamController_105()
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
  l0._name = "box_SecurityCamController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09C.domino|@IOP09C_Main|1490334255"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_105_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_105_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_19()
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MultipleOR_135()
end
function export:OnEnter_box_HackableController_v2_95()
  local l0
  l0 = self.box_HackableController_v2_95
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_HackableController_v2_153()
  local l0
  l0 = self.box_HackableController_v2_153
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_Security_Camera_Monitor_160()
  local l0
  l0 = self.box_Security_Camera_Monitor_160
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_HackableController_v2_155()
  local l0
  l0 = self.box_HackableController_v2_155
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_154()
end
function export:OnEnter_box_Security_Camera_Monitor_73()
  local l0
  l0 = self.box_Security_Camera_Monitor_73
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_MultipleOR_128()
end
_compilerVersion = 4
