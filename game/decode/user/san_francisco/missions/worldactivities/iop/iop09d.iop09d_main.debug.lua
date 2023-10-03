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
  self._name = "IOP09D_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.BadVar = 0
  self.RolesList = {"Atm.Person"}
  self.Alarm = 0
  self.NPC_List = {}
  self.Npc = nil
  self.BadHack = "9223372066503482772"
  self.CLO = nil
  self.MakeItRain = 0
  self.ATM_Camera = "9223372053051119765"
  self.BarkSoundEntity_0 = "9223372053051119754"
  self.GoodHack = "9223372066503482770"
  self.CLO_Sync = 6
  self.Money = "9223372053051119760"
  self.GoodVar = 0
  self.Money2 = "9223372053051119767"
  self.Light = "9223372053051119752"
  self.Money3 = "9223372053051119758"
  self.box_RewardController_v3_74 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_74
  l0._graph = self
  l0._name = "box_RewardController_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|616821"
  l0.Out = self.f_box_RewardController_v3_74_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|55496933"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_132_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|76287281"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_SetBoolean_v2_44 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_44
  l0._graph = self
  l0._name = "box_SetBoolean_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|123938535"
  l0.Out = self.f_box_SetBoolean_v2_44_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_44_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_44_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_44_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_44_SetFromBool
  self.box_SetBoolean_v2_1 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|142076467"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_IndexedOutput_V2_37 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_37
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|142703252"
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
  self.box_HackableController_v2_125 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_125
  l0._graph = self
  l0._name = "box_HackableController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|168037525"
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
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|186846464"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|219261558"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Multiple_AND_50 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_50
  l0._graph = self
  l0._name = "box_Multiple_AND_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|233892036"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_50_Out
  self.box_AI_IOPController_143 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_143
  l0._graph = self
  l0._name = "box_AI_IOPController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|237736197"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_143_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_154 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_154
  l0._graph = self
  l0._name = "box_HackableController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|241057691"
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
  self.box_HackableController_v2_97 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_97
  l0._graph = self
  l0._name = "box_HackableController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|245486537"
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
  self.box_PlaySound_v2_91 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_91
  l0._graph = self
  l0._name = "box_PlaySound_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|250609391"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|281037968"
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
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|286469008"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_Progression_Tag_Monitor_129 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_129
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|321580663"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_129_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_129_HasNOT
  self.box_PhoneCommunicationController_120 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_120
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|321783530"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_120_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|386564777"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_43 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_43
  l0._graph = self
  l0._name = "box_SetBoolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|396057024"
  l0.Out = self.f_box_SetBoolean_v2_43_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_43_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_43_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_43_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_43_SetFromBool
  self.box_Timer_v2_130 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_130
  l0._graph = self
  l0._name = "box_Timer_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|409647396"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_130_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_137 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_137
  l0._graph = self
  l0._name = "box_HackableController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|410085574"
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
  self.box_SetBoolean_v2_2 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_2
  l0._graph = self
  l0._name = "box_SetBoolean_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|434539948"
  l0.Out = self.f_box_SetBoolean_v2_2_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_2_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_2_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_2_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_2_SetFromBool
  self.box_MultipleOR_111 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|441913717"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_111_Out
  self.box_PlaySound_v2_139 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_139
  l0._graph = self
  l0._name = "box_PlaySound_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|467014676"
  l0.Out = self.f_box_PlaySound_v2_139_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOP_CleanUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_14
  l0._graph = self
  l0._name = "box_IOP_CleanUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|478325408"
  l0.Completed = self.f_box_IOP_CleanUp_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_HackableController_v2_151 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_151
  l0._graph = self
  l0._name = "box_HackableController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|504058257"
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
  self.box_Progression_Tag_Monitor_88 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_88
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|504120538"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_88_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_88_HasNOT
  self.box_HackableController_v2_56 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_56
  l0._graph = self
  l0._name = "box_HackableController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|511659221"
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
  self.box_HackableController_v2_153 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_153
  l0._graph = self
  l0._name = "box_HackableController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|551429178"
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
  self.box_Timer_v2_158 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_158
  l0._graph = self
  l0._name = "box_Timer_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|586429018"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_158_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|605507490"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_PlaySound_v2_116 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_116
  l0._graph = self
  l0._name = "box_PlaySound_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|629918453"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_116_Started
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|663407647"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_81_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_17 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_17
  l0._graph = self
  l0._name = "box_AI_IOPController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|702695827"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_17_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_90 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_90
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|800721056"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_90_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_90_HasNOT
  self.box_PlaySound_v2_114 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_114
  l0._graph = self
  l0._name = "box_PlaySound_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|803874893"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_114_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|851068370"
  l0.Out = self.f_box_Timer_v2_12_Out
  l0.Started = self.f_box_Timer_v2_12_Started
  l0.Stopped = self.f_box_Timer_v2_12_Stopped
  l0.Paused = self.f_box_Timer_v2_12_Paused
  l0.Resumed = self.f_box_Timer_v2_12_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_12_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_6 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_6
  l0._graph = self
  l0._name = "box_RewardController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|851898826"
  l0.Out = self.f_box_RewardController_v3_6_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|858547688"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_11_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_CinematicPrep_123 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_123
  l0._graph = self
  l0._name = "box_CinematicPrep_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|863688874"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_RandomOutput_v2_24 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_24
  l0._graph = self
  l0._name = "box_RandomOutput_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|869761501"
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
  self.box_AI_IOPController_144 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_144
  l0._graph = self
  l0._name = "box_AI_IOPController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|877484361"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_59 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_59
  l0._graph = self
  l0._name = "box_HackableController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|882081526"
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
  self.box_ListWriter_102 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_102
  l0._graph = self
  l0._name = "box_ListWriter_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|898577897"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_102_Added
  l0.Removed = self.f_box_ListWriter_102_Removed
  l0.Out = self.f_box_ListWriter_102_Out
  self.box_Hackable_Monitor_7 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_7
  l0._graph = self
  l0._name = "box_Hackable_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|924985448"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_7_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Progression_Tag_Monitor_133 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_133
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|953988797"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_133_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_133_HasNOT
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|964975445"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|975608091"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1010916491"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_27_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1022735764"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1031227000"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1050923494"
  l0.Out = self.f_box_PlaySound_v2_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Progression_Tag_Monitor_67 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_67
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1056391878"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_67_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_67_HasNOT
  self.box_PlaySound_v2_150 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_150
  l0._graph = self
  l0._name = "box_PlaySound_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1064020405"
  l0.Out = self.f_box_PlaySound_v2_150_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOP_StartUp_51 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_51
  l0._graph = self
  l0._name = "box_IOP_StartUp_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1084240271"
  l0.Out = self.f_box_IOP_StartUp_51_Out
  self.box_MissionController_v4_122 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_122
  l0._graph = self
  l0._name = "box_MissionController_v4_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1117269349"
  self.box_Progression_Tag_Monitor_23 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_23
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1131652464"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_23_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_23_HasNOT
  self.box_AI_IOPController_141 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_141
  l0._graph = self
  l0._name = "box_AI_IOPController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1218284788"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_141_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_20 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_20
  l0._graph = self
  l0._name = "box_HackableController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1308179358"
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
  self.box_MultipleOR_155 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_155
  l0._graph = self
  l0._name = "box_MultipleOR_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1316056889"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_155_Out
  self.box_AI_IOPController_89 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_89
  l0._graph = self
  l0._name = "box_AI_IOPController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1317537028"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_89_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_75 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_75
  l0._graph = self
  l0._name = "box_AI_IOPController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1336747625"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_75_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_96 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_96
  l0._graph = self
  l0._name = "box_HackableController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1350940793"
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
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1364906814"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1365923159"
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
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1370444119"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_AI_IOPController_92 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_92
  l0._graph = self
  l0._name = "box_AI_IOPController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1375706976"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_92_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_93 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_93
  l0._graph = self
  l0._name = "box_RewardController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1395449662"
  l0.Out = self.f_box_RewardController_v3_93_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_119 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_119
  l0._graph = self
  l0._name = "box_HackableController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1408898386"
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
  self.box_SetBoolean_v2_131 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_131
  l0._graph = self
  l0._name = "box_SetBoolean_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1463535026"
  l0.Out = self.f_box_SetBoolean_v2_131_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_131_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_131_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_131_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_131_SetFromBool
  self.box_SetBoolean_v2_65 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_65
  l0._graph = self
  l0._name = "box_SetBoolean_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1479560870"
  l0.Out = self.f_box_SetBoolean_v2_65_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_65_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_65_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_65_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_65_SetFromBool
  self.box_AI_IOPController_10 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_10
  l0._graph = self
  l0._name = "box_AI_IOPController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1487393204"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_10_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MissionMessageController_v3_85 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_85
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1520299504"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_85_MessageCompleted
  self.box_HackableController_v2_68 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_68
  l0._graph = self
  l0._name = "box_HackableController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1537091920"
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
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1556589851"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_106_OnUserInPlace
  self.box_MissionMessageController_v3_128 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_128
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1565518736"
  l0.Out = self.f_box_MissionMessageController_v3_128_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_148 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_148
  l0._graph = self
  l0._name = "box_CLOController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1578602332"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_148_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_100 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_100
  l0._graph = self
  l0._name = "box_PlaySound_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1622235074"
  l0.Out = self.f_box_PlaySound_v2_100_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_82 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_82
  l0._graph = self
  l0._name = "box_IOPMonitor_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1623708759"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_82_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_82_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_82_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_82_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_136 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_136
  l0._graph = self
  l0._name = "box_AI_IOPController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1658927124"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_136_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_72 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_72
  l0._graph = self
  l0._name = "box_HackableController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1712226694"
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
  self.box_Progression_Tag_Monitor_107 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_107
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1725219195"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_107_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_107_HasNOT
  self.box_AI_IOPController_108 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_108
  l0._graph = self
  l0._name = "box_AI_IOPController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1757569035"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_108_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_48 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_48
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1779870042"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_48_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_48_HasNOT
  self.box_RewardController_v3_113 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_113
  l0._graph = self
  l0._name = "box_RewardController_v3_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1796027400"
  l0.Out = self.f_box_RewardController_v3_113_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_134 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_134
  l0._graph = self
  l0._name = "box_HackableController_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1805678487"
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
  self.box_AI_IOPController_62 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_62
  l0._graph = self
  l0._name = "box_AI_IOPController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1814284052"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_62_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1828875529"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_RewardController_v3_77 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_77
  l0._graph = self
  l0._name = "box_RewardController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1866389859"
  l0.Out = self.f_box_RewardController_v3_77_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1881107211"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_MultipleOR_109 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_109
  l0._graph = self
  l0._name = "box_MultipleOR_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1909060883"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_109_Out
  self.box_AI_IOPController_52 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_52
  l0._graph = self
  l0._name = "box_AI_IOPController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1945426746"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_52_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_86 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_86
  l0._graph = self
  l0._name = "box_RewardController_v3_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1961398337"
  l0.Out = self.f_box_RewardController_v3_86_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_5 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_5
  l0._graph = self
  l0._name = "box_AI_IOPController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1972335870"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_5_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Security_Camera_Monitor_159 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_159
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1973340990"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_159_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_159_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_157 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_157
  l0._graph = self
  l0._name = "box_Timer_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1992881771"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_80 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_80
  l0._graph = self
  l0._name = "box_Hackable_Monitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2000140760"
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
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2034778246"
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
  self.box_Security_Camera_Monitor_40 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_40
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2048183444"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_40_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_40_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_HackableController_v2_142 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_142
  l0._graph = self
  l0._name = "box_HackableController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2076666199"
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
  self.box_RewardController_v3_71 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_71
  l0._graph = self
  l0._name = "box_RewardController_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2114491679"
  l0.Out = self.f_box_RewardController_v3_71_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_101 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_101
  l0._graph = self
  l0._name = "box_HackableController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2121528875"
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
  self.box_Timer_v2_64 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_64
  l0._graph = self
  l0._name = "box_Timer_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2139375899"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_64_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_124 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_124
  l0._graph = self
  l0._name = "box_RewardController_v3_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2143910654"
  l0.Out = self.f_box_RewardController_v3_124_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1467302779", "1467302779", "IOP09D_Main", "CheckPoint_0", "box_MultipleOR_58.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|4662972", "4662972", "IOP09D_Main", "In", "box_MultipleOR_58.Input", self, l0)
  l0:Input(0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|212995368"
  l0.Out = self.f_box_SetInteger_v2_103_Out
  l0 = self.box_RewardController_v3_74
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|500704400", "500704400", "IOP09D_Main", "box_RewardController_v3_74.Out", "box_SetInteger_v2_103.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_132_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1370499175"
  l0.Out = self.f_box_Simple_Node_38_Out
  l0 = self.box_AI_IOPController_132
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|528825813", "528825813", "IOP09D_Main", "box_AI_IOPController_132.StartEmptyRoomCompleted", "box_Simple_Node_38.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|604653552"
  l0.Enabled = self.f_box_LightController_39_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_36
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1780022670", "1780022670", "IOP09D_Main", "box_MultipleOR_36.Out", "box_LightController_39.Enable", l0, l1)
  l1:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|851453841", "851453841", "IOP09D_Main", "box_SecurityCamController_42.CanExitSet", "box_SecurityCamController_42.ForceEnter", clone, l0)
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
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1413558087"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|318732155", "318732155", "IOP09D_Main", "box_SecurityCamController_42.EnterForced", "box_Ordered_Output_83.In", clone, l0)
  l0:In()
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
  l0.Entity = "9223372053051119761"
  l0._graph = self
  l0._name = "box_Set_Entity_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1845788008"
  l0.Out = self.f_box_Set_Entity_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1209128841", "1209128841", "IOP09D_Main", "box_SetInteger_v2_79.Out", "box_Set_Entity_22.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1194916386", "1194916386", "IOP09D_Main", "box_SetBoolean_v2_44.SetFalse", "box_SetBoolean_v2_131.False", l0, l1)
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
function export:f_box_SetBoolean_v2_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.GoodVar = l0.Target
  l0 = self.box_AI_IOPController_11
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0 = self.box_SetBoolean_v2_1
  l1 = self.box_AI_IOPController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|429579778", "429579778", "IOP09D_Main", "box_SetBoolean_v2_1.Out", "box_AI_IOPController_11.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_1_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_1_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self.GoodVar = l0.Target
end
function export:f_box_IndexedOutput_V2_37_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1472895750", "1472895750", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2144265174", "2144265174", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|611628863", "611628863", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|124104907", "124104907", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1492413993", "1492413993", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|382313859", "382313859", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1281147212", "1281147212", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1460425556", "1460425556", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|748316109", "748316109", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_37_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|171265231", "171265231", "IOP09D_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_HackableController_v2_125_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_59
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_PayAlimony2",
    id = "698175"
  }
  l0 = self.box_HackableController_v2_125
  l1 = self.box_HackableController_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|484820789", "484820789", "IOP09D_Main", "box_HackableController_v2_125.OverrideHackingTextSet", "box_HackableController_v2_59.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_56
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Empty_Account",
    id = "544816"
  }
  l0 = self.box_MultipleOR_16
  l1 = self.box_HackableController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|225300321", "225300321", "IOP09D_Main", "box_MultipleOR_16.Out", "box_HackableController_v2_56.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_2
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|916770433", "916770433", "IOP09D_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_SetBoolean_v2_2.True", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|898758749", "898758749", "IOP09D_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_AI_IOPController_89.SendEvent", clone, l0)
  l0:SendEvent()
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
  l0.Entity = "9223372053051119771"
  l0._graph = self
  l0._name = "box_Set_Entity_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1862167918"
  l0.Out = self.f_box_Set_Entity_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|629853719", "629853719", "IOP09D_Main", "box_SetInteger_v2_103.Out", "box_Set_Entity_147.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_60
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|223064683", "223064683", "IOP09D_Main", "box_AI_IOPController_60.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
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
  l0 = self.box_IOP_StartUp_51
  l0.MainLayer = "IOP09D_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372055061261483"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|982048914", "982048914", "IOP09D_Main", "box_Get_Player_ID_126.Out", "box_IOP_StartUp_51.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_139
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_50
  l1 = self.box_PlaySound_v2_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1204121112", "1204121112", "IOP09D_Main", "box_Multiple_AND_50.Out", "box_PlaySound_v2_139.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_143_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_143
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|658764977", "658764977", "IOP09D_Main", "box_AI_IOPController_143.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_HackableController_v2_154_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2050190186", "2050190186", "IOP09D_Main", "box_HackableController_v2_154.Disabled", "box_HackableController_v2_153.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|300470130", "300470130", "IOP09D_Main", "box_Compare_Integers_v2_19.A_eq_B", "box_MultipleOR_16.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|637153349"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_146_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_146_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_146_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1344956077", "1344956077", "IOP09D_Main", "box_Compare_Integers_v2_19.A_gt_B", "box_Compare_Integers_v2_146.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|262831050", "262831050", "IOP09D_Main", "box_Compare_Integers_v2_19.A_lt_B", "box_HackableController_v2_101.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2027879960", "2027879960", "IOP09D_Main", "box_HackableController_v2_97.ProfilingEnabled", "box_HackableController_v2_125.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  l0.Entity = "9223372053051119774"
  l0._graph = self
  l0._name = "box_Set_Entity_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1178075455"
  l0.Out = self.f_box_Set_Entity_98_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1447393375", "1447393375", "IOP09D_Main", "box_SetInteger_v2_29.Out", "box_Set_Entity_98.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_HackableController_v2_152_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_HackableController_v2_152
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|921842452", "921842452", "IOP09D_Main", "box_HackableController_v2_152.ProfilingDisabled", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|350810316", "350810316", "IOP09D_Main", "box_MultipleOR_61.Out", "box_HackableController_v2_134.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1853243471", "1853243471", "IOP09D_Main", "box_Ordered_Output_156.Out", "box_Hackable_Monitor_80.Disable", clone, l0)
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
  l0.LayerName = "IOP09D_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1584261692", "1584261692", "IOP09D_Main", "box_Ordered_Output_156.Out", "box_MissionLayer_v2_81.Unload", clone, l0)
  l0:Unload()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1346881853", "1346881853", "IOP09D_Main", "box_Set_Entity_55.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Progression_Tag_Monitor_129_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1573286951", "1573286951", "IOP09D_Main", "box_Progression_Tag_Monitor_129.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_129_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_124
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_RewardController_v3_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1703324028", "1703324028", "IOP09D_Main", "box_Progression_Tag_Monitor_129.HasNOT", "box_RewardController_v3_124.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_120_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_141
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_120
  l1 = self.box_AI_IOPController_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|128950328", "128950328", "IOP09D_Main", "box_PhoneCommunicationController_120.OnCommunicationFinished", "box_AI_IOPController_141.SendEvent", l0, l1)
  l1:SendEvent()
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
  l0.Entity = "9223372053051119773"
  l0._graph = self
  l0._name = "box_Set_Entity_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|316825833"
  l0.Out = self.f_box_Set_Entity_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2139182555", "2139182555", "IOP09D_Main", "box_SetInteger_v2_26.Out", "box_Set_Entity_55.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1238824936", "1238824936", "IOP09D_Main", "box_CollisionController_140.CollisionsDisabled", "box_ListWriter_102.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_123
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_160
  l1 = self.box_CinematicPrep_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1632708943", "1632708943", "IOP09D_Main", "box_Timer_v2_160.TimeElapsed", "box_CinematicPrep_123.PostCinematic", l0, l1)
  l1:PostCinematic()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1721731524", "1721731524", "IOP09D_Main", "box_Ordered_Output_54.Out", "box_Timer_v2_130.Start", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|344850769", "344850769", "IOP09D_Main", "box_Ordered_Output_54.Out", "box_IOPMonitor_82.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_130_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_42()
  l0 = self.box_Timer_v2_130
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|436355138", "436355138", "IOP09D_Main", "box_Timer_v2_130.TimeElapsed", "box_SecurityCamController_42.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_HackableController_v2_137_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|342515232"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_140_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_137
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|172895173", "172895173", "IOP09D_Main", "box_HackableController_v2_137.ProfilingDisabled", "box_CollisionController_140.DisableCollisions", l0, l1)
  l1:DisableCollisions()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1574050334", "1574050334", "IOP09D_Main", "box_Simple_Node_33.Out", "box_Hackable_Monitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.BadVar = l0.Target
  l0 = self.box_AI_IOPController_27
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0 = self.box_SetBoolean_v2_2
  l1 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|424652709", "424652709", "IOP09D_Main", "box_SetBoolean_v2_2.Out", "box_AI_IOPController_27.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_2_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_2_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_2_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_2
  self.BadVar = l0.Target
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1121201879"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_111
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|706327481", "706327481", "IOP09D_Main", "box_MultipleOR_111.Out", "box_LightController_28.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlaySound_v2_139_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_139
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|707025971", "707025971", "IOP09D_Main", "box_PlaySound_v2_139.Out", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_Timer_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1571451917", "1571451917", "IOP09D_Main", "box_IOP_CleanUp_14.Completed", "box_Timer_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|714303155", "714303155", "IOP09D_Main", "box_IOP_CleanUp_14.DisconnectedAnimationPlayed", "box_CLOController_148.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_ParticleFXController_v2_31_Started()
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
  l0._name = "box_ParticleFXController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2066938947"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1004391466", "1004391466", "IOP09D_Main", "box_ParticleFXController_v2_31.Started", "box_ParticleFXController_v2_138.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_151_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_151
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1839213042", "1839213042", "IOP09D_Main", "box_HackableController_v2_151.ProfilingDisabled", "box_HackableController_v2_152.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Progression_Tag_Monitor_88_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1519440309", "1519440309", "IOP09D_Main", "box_Progression_Tag_Monitor_88.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_88_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_77
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_RewardController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1346838016", "1346838016", "IOP09D_Main", "box_Progression_Tag_Monitor_88.HasNOT", "box_RewardController_v3_77.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1866176297", "1866176297", "IOP09D_Main", "box_Compare_Integers_v2_78.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1180108825"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_94_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_94_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_94_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|9546512", "9546512", "IOP09D_Main", "box_Compare_Integers_v2_78.A_gt_B", "box_Compare_Integers_v2_94.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|891918349", "891918349", "IOP09D_Main", "box_Compare_Integers_v2_78.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_153_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1335480445", "1335480445", "IOP09D_Main", "box_HackableController_v2_153.Disabled", "box_HackableController_v2_154.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_153_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1987430042", "1987430042", "IOP09D_Main", "box_HackableController_v2_153.ProfilingDisabled", "box_HackableController_v2_154.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Timer_v2_158_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1213572199"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_15_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_15_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_15_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_158
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1382727655", "1382727655", "IOP09D_Main", "box_Timer_v2_158.TimeElapsed", "box_Compare_Integers_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_12
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1971866379", "1971866379", "IOP09D_Main", "box_LightController_8.Disabled", "box_Timer_v2_12.Start", clone, l0)
  l0:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|572606380", "572606380", "IOP09D_Main", "box_Compare_Boolean_v2_47.A_is_True", "box_PlaySound_v2_41.Play", clone, l0)
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
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1039353838", "1039353838", "IOP09D_Main", "box_Compare_Boolean_v2_47.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1382618862", "1382618862", "IOP09D_Main", "box_LightController_39.Enabled", "box_PlaySound_v2_91.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|406992770"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_MultipleOR_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2095512268", "2095512268", "IOP09D_Main", "box_MultipleOR_87.Out", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_116_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|956120844"
  l0.Started = self.f_box_ParticleFXController_v2_63_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_PlaySound_v2_116
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|356664029", "356664029", "IOP09D_Main", "box_PlaySound_v2_116.Started", "box_ParticleFXController_v2_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_146_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Seize_Card",
    id = "544819"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1524449364", "1524449364", "IOP09D_Main", "box_Compare_Integers_v2_146.A_eq_B", "box_HackableController_v2_25.SetOverrideHackingText", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|929385747"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_118_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_118_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|628516281", "628516281", "IOP09D_Main", "box_Compare_Integers_v2_146.A_gt_B", "box_Compare_Integers_v2_118.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1591246332", "1591246332", "IOP09D_Main", "box_Compare_Integers_v2_146.A_lt_B", "box_HackableController_v2_96.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_MissionLayer_v2_81_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l1 = self.box_MissionController_v4_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|954666361", "954666361", "IOP09D_Main", "box_MissionLayer_v2_81.Unloaded", "box_MissionController_v4_122.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_IOPController_17_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_17
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1039788821", "1039788821", "IOP09D_Main", "box_AI_IOPController_17.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_90_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|870821855", "870821855", "IOP09D_Main", "box_Progression_Tag_Monitor_90.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_90_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_6
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_RewardController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1418325133", "1418325133", "IOP09D_Main", "box_Progression_Tag_Monitor_90.HasNOT", "box_RewardController_v3_6.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PlaySound_v2_114_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_114
  l1 = self.box_SetBoolean_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|121970195", "121970195", "IOP09D_Main", "box_PlaySound_v2_114.Started", "box_SetBoolean_v2_44.False", l0, l1)
  l1:False()
end
function export:f_box_Timer_v2_12_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1565396705"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_Timer_v2_12
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1929809881", "1929809881", "IOP09D_Main", "box_Timer_v2_12.LoopingEnded", "box_Simple_Node_3.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_12_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_12_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_12_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_12_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_IndexedOutput_V2_37
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|19573156", "19573156", "IOP09D_Main", "box_Timer_v2_12.TimeElapsed", "box_IndexedOutput_V2_37.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_6_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1635603211"
  l0.Out = self.f_box_SetInteger_v2_149_Out
  l0 = self.box_RewardController_v3_6
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|400862657", "400862657", "IOP09D_Main", "box_RewardController_v3_6.Out", "box_SetInteger_v2_149.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_11_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_11
  l1 = self.box_Timer_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|954364179", "954364179", "IOP09D_Main", "box_AI_IOPController_11.SendEventCompleted", "box_Timer_v2_157.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_88
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|671318447", "671318447", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_88.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_48
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1285683144", "1285683144", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_48.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_23
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|223409090", "223409090", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_23.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_107
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|185015551", "185015551", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_107.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_129
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1193672179", "1193672179", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_129.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_133
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1554587694", "1554587694", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_133.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_67
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|74445057", "74445057", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_67.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_90
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|690619336", "690619336", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_90.HasProgressionTag", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1673833265", "1673833265", "IOP09D_Main", "box_RandomOutput_v2_24.Output", "box_AI_IOPController_132.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_Compare_Integers_v2_117_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|939794191", "939794191", "IOP09D_Main", "box_Compare_Integers_v2_117.A_eq_B", "box_MultipleOR_4.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|701982627", "701982627", "IOP09D_Main", "box_Compare_Integers_v2_117.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_HackableController_v2_59_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1561132107"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_HackableController_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|880321957", "880321957", "IOP09D_Main", "box_HackableController_v2_59.OverrideHackingTextSet", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1030116079", "1030116079", "IOP09D_Main", "box_ListWriter_102.Added", "box_AI_IOPController_92.Start", l0, l1)
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
function export:f_box_Hackable_Monitor_7_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_150
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_7
  l1 = self.box_PlaySound_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|613222047", "613222047", "IOP09D_Main", "box_Hackable_Monitor_7.HackSuccess", "box_PlaySound_v2_150.Play", l0, l1)
  l1:Play()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|43206030", "43206030", "IOP09D_Main", "box_Compare_Integers_v2_118.A_eq_B", "box_HackableController_v2_72.SetOverrideHackingText", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|593272828", "593272828", "IOP09D_Main", "box_Compare_Integers_v2_118.A_lt_B", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Progression_Tag_Monitor_133_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1355729822", "1355729822", "IOP09D_Main", "box_Progression_Tag_Monitor_133.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_133_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_93
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_RewardController_v3_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|818676551", "818676551", "IOP09D_Main", "box_Progression_Tag_Monitor_133.HasNOT", "box_RewardController_v3_93.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_ParticleFXController_v2_63_Started()
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
  l0._name = "box_ParticleFXController_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|482274498"
  l0.Started = self.f_box_ParticleFXController_v2_31_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|55797734", "55797734", "IOP09D_Main", "box_ParticleFXController_v2_63.Started", "box_ParticleFXController_v2_31.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1620674988"
  l0.Enabled = self.f_box_LightController_18_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_73
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1873044473", "1873044473", "IOP09D_Main", "box_Timer_v2_73.TimeElapsed", "box_LightController_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|595708496"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_8_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_105
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2032657892", "2032657892", "IOP09D_Main", "box_Timer_v2_105.TimeElapsed", "box_LightController_8.Disable", l0, l1)
  l1:Disable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1802183147", "1802183147", "IOP09D_Main", "box_Ordered_Output_53.Out", "box_PlaySound_v2_114.Play", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1640795782", "1640795782", "IOP09D_Main", "box_Ordered_Output_53.Out", "box_MissionMessageController_v3_128.UpdateObjective", clone, l0)
  l0:UpdateObjective()
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
  l0.Entity = "9223372053051119772"
  l0._graph = self
  l0._name = "box_Set_Entity_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1717441914"
  l0.Out = self.f_box_Set_Entity_135_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|497217680", "497217680", "IOP09D_Main", "box_SetInteger_v2_145.Out", "box_Set_Entity_135.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_27_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l1 = self.box_Timer_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1145819370", "1145819370", "IOP09D_Main", "box_AI_IOPController_27.SendEventCompleted", "box_Timer_v2_158.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|231827109"
  l0.Out = self.f_box_Get_Player_ID_126_Out
  l0 = self.box_MultipleOR_58
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|381446914", "381446914", "IOP09D_Main", "box_MultipleOR_58.Out", "box_Get_Player_ID_126.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l1 = self.box_IOP_CleanUp_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|490390768", "490390768", "IOP09D_Main", "box_PlaySound_v2_21.Out", "box_IOP_CleanUp_14.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_67_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1498339499", "1498339499", "IOP09D_Main", "box_Progression_Tag_Monitor_67.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_67_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_113
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_RewardController_v3_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|880265576", "880265576", "IOP09D_Main", "box_Progression_Tag_Monitor_67.HasNOT", "box_RewardController_v3_113.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PlaySound_v2_150_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|191294290"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_150
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|158479487", "158479487", "IOP09D_Main", "box_PlaySound_v2_150.Out", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_121_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_10
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character4"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1645405972", "1645405972", "IOP09D_Main", "box_Compare_Integers_v2_121.A_eq_B", "box_AI_IOPController_10.SendEvent", clone, l0)
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
  l0._name = "box_Compare_Integers_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1247298440"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_9_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_9_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_9_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1209845355", "1209845355", "IOP09D_Main", "box_Compare_Integers_v2_121.A_gt_B", "box_Compare_Integers_v2_9.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1628327301", "1628327301", "IOP09D_Main", "box_Compare_Integers_v2_121.A_lt_B", "box_AI_IOPController_108.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_IOP_StartUp_51_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1921782798"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_13_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_IOP_StartUp_51
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2093732616", "2093732616", "IOP09D_Main", "box_IOP_StartUp_51.Out", "box_LightController_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_23_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1867524030", "1867524030", "IOP09D_Main", "box_Progression_Tag_Monitor_23.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_23_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_86
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_RewardController_v3_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1449515838", "1449515838", "IOP09D_Main", "box_Progression_Tag_Monitor_23.HasNOT", "box_RewardController_v3_86.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|30724354", "30724354", "IOP09D_Main", "box_Set_Entity_98.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_Compare_Integers_v2_94_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1346998631", "1346998631", "IOP09D_Main", "box_Compare_Integers_v2_94.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(3)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|871223264"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_117_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_117_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|244271838", "244271838", "IOP09D_Main", "box_Compare_Integers_v2_94.A_gt_B", "box_Compare_Integers_v2_117.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1854396710", "1854396710", "IOP09D_Main", "box_Compare_Integers_v2_94.A_lt_B", "box_HackableController_v2_119.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_15_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1862160256", "1862160256", "IOP09D_Main", "box_Compare_Integers_v2_15.A_eq_B", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_15_A_gt_B()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|243771475"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_19_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_19_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_19_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|602494894", "602494894", "IOP09D_Main", "box_Compare_Integers_v2_15.A_gt_B", "box_Compare_Integers_v2_19.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_15_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1587060583", "1587060583", "IOP09D_Main", "box_Compare_Integers_v2_15.A_lt_B", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AI_IOPController_141_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_50()
  l0 = self.box_AI_IOPController_141
  l1 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|870839476", "870839476", "IOP09D_Main", "box_AI_IOPController_141.SendEventCompleted", "box_Multiple_AND_50.Condition", l0, l1)
  l1:Condition(0)
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
  l0.Entity = "9223372053051119770"
  l0._graph = self
  l0._name = "box_Set_Entity_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1996829322"
  l0.Out = self.f_box_Set_Entity_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|42593264", "42593264", "IOP09D_Main", "box_SetInteger_v2_49.Out", "box_Set_Entity_30.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Compare_Integers_v2_9_A_eq_B()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1193085000", "1193085000", "IOP09D_Main", "box_Compare_Integers_v2_9.A_eq_B", "box_AI_IOPController_17.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_9_A_gt_B()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1267959291"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_112_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_112_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1707131677", "1707131677", "IOP09D_Main", "box_Compare_Integers_v2_9.A_gt_B", "box_Compare_Integers_v2_112.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_9_A_lt_B()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2052504906", "2052504906", "IOP09D_Main", "box_Compare_Integers_v2_9.A_lt_B", "box_AI_IOPController_143.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1807120724", "1807120724", "IOP09D_Main", "box_Compare_Integers_v2_112.A_eq_B", "box_AI_IOPController_52.SendEvent", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|544235021", "544235021", "IOP09D_Main", "box_Compare_Integers_v2_112.A_lt_B", "box_AI_IOPController_136.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_HackableController_v2_20_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_20
  l1 = self.box_SetBoolean_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|39758708", "39758708", "IOP09D_Main", "box_HackableController_v2_20.OverrideHackingTextSet", "box_SetBoolean_v2_65.True", l0, l1)
  l1:True()
end
function export:f_box_MultipleOR_155_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_MultipleOR_155
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1155210872", "1155210872", "IOP09D_Main", "box_MultipleOR_155.Out", "box_HackableController_v2_153.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_AI_IOPController_89_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|599169693"
  l0.Out = self.f_box_Compare_Boolean_v2_47_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_47_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_89
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1596301165", "1596301165", "IOP09D_Main", "box_AI_IOPController_89.SendEventCompleted", "box_Compare_Boolean_v2_47.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_75_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_40()
  l0 = self.box_AI_IOPController_75
  l1 = self.box_Security_Camera_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1817494294", "1817494294", "IOP09D_Main", "box_AI_IOPController_75.SendEventCompleted", "box_Security_Camera_Monitor_40.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_68
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0 = self.box_MultipleOR_4
  l1 = self.box_HackableController_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|576806498", "576806498", "IOP09D_Main", "box_MultipleOR_4.Out", "box_HackableController_v2_68.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_46_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1222732074", "1222732074", "IOP09D_Main", "box_HackableController_v2_46.Disabled", "box_HackableController_v2_142.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_46_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1040484322", "1040484322", "IOP09D_Main", "box_HackableController_v2_46.Enabled", "box_HackableController_v2_142.EnableProfiling", l0, l1)
  l1:EnableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1897306133", "1897306133", "IOP09D_Main", "box_MultipleOR_104.Out", "box_HackableController_v2_20.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1286227251", "1286227251", "IOP09D_Main", "box_Simple_Node_38.Out", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_IOPController_92_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_AI_IOPController_92
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|580591061", "580591061", "IOP09D_Main", "box_AI_IOPController_92.StartCompleted", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1001811582"
  l0.Out = self.f_box_SetInteger_v2_145_Out
  l0 = self.box_RewardController_v3_93
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|37735634", "37735634", "IOP09D_Main", "box_RewardController_v3_93.Out", "box_SetInteger_v2_145.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_73
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1215145685", "1215145685", "IOP09D_Main", "box_Ordered_Output_83.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_159()
  l0 = self.box_Security_Camera_Monitor_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1956033940", "1956033940", "IOP09D_Main", "box_Ordered_Output_83.Out", "box_Security_Camera_Monitor_159.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_57_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_116
  l0.SoundId = "soundbinary/3692441989.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|866365653", "866365653", "IOP09D_Main", "box_Compare_Boolean_v2_57.A_is_True", "box_PlaySound_v2_116.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2086584817", "2086584817", "IOP09D_Main", "box_Compare_Boolean_v2_57.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(0)
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
  l0 = self.box_HackableController_v2_151
  l0.HackableEntity = self.GoodHack
  l0 = self.box_SetBoolean_v2_131
  l1 = self.box_HackableController_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|514801350", "514801350", "IOP09D_Main", "box_SetBoolean_v2_131.SetFalse", "box_HackableController_v2_151.DisableProfiling", l0, l1)
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
function export:f_box_AI_IOPController_10_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_10
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|585145189", "585145189", "IOP09D_Main", "box_AI_IOPController_10.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(3)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1230366196", "1230366196", "IOP09D_Main", "box_Ordered_Output_45.Out", "box_Security_Camera_Monitor_40.Enable", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1951589147"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_110_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_110_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_110_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|197452945", "197452945", "IOP09D_Main", "box_Ordered_Output_45.Out", "box_Compare_Integers_v2_110.In", clone, l0)
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
  l0.Entity = "9223372053051119769"
  l0._graph = self
  l0._name = "box_Set_Entity_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1771638981"
  l0.Out = self.f_box_Set_Entity_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|123424777", "123424777", "IOP09D_Main", "box_SetInteger_v2_95.Out", "box_Set_Entity_76.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MissionMessageController_v3_85_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|312187615"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_MissionMessageController_v3_85
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|600699732", "600699732", "IOP09D_Main", "box_MissionMessageController_v3_85.MessageCompleted", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|546095203", "546095203", "IOP09D_Main", "box_Set_Entity_32.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(7)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|423994507", "423994507", "IOP09D_Main", "box_CLOController_106.OnUserInPlace", "box_HackableController_v2_137.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|431190751"
  l0.Out = self.f_box_Simple_Node_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|494022875", "494022875", "IOP09D_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_33.In", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1565035190"
  l0.Out = self.f_box_Simple_Node_127_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|744757992", "744757992", "IOP09D_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_127.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|532920008", "532920008", "IOP09D_Main", "box_Simple_Node_127.Out", "box_Hackable_Monitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_97
  l0.HackableEntity = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2041699679", "2041699679", "IOP09D_Main", "box_Simple_Node_3.Out", "box_HackableController_v2_97.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_MissionMessageController_v3_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_120
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374184"
  l0 = self.box_MissionMessageController_v3_128
  l1 = self.box_PhoneCommunicationController_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1749259070", "1749259070", "IOP09D_Main", "box_MissionMessageController_v3_128.Out", "box_PhoneCommunicationController_120.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_69_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_1
  l0.Bool = self.GoodVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1706339322", "1706339322", "IOP09D_Main", "box_Compare_Boolean_v2_69.A_is_False", "box_SetBoolean_v2_1.True", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|445981891", "445981891", "IOP09D_Main", "box_Compare_Boolean_v2_69.A_is_True", "box_AI_IOPController_62.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|626975803", "626975803", "IOP09D_Main", "box_Compare_Integers_v2_66.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|532955574"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_78_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_78_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_78_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1845231394", "1845231394", "IOP09D_Main", "box_Compare_Integers_v2_66.A_gt_B", "box_Compare_Integers_v2_78.In", clone, l0)
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
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|514176322", "514176322", "IOP09D_Main", "box_Compare_Integers_v2_66.A_lt_B", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_148_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1294605556", "1294605556", "IOP09D_Main", "box_CLOController_148.UnspawnedUser", "box_CLOController_148.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_LightController_18_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_50()
  l0 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1275030442", "1275030442", "IOP09D_Main", "box_LightController_18.Enabled", "box_Multiple_AND_50.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_PlaySound_v2_100_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1567731420"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_69_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_100
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1186272358", "1186272358", "IOP09D_Main", "box_PlaySound_v2_100.Out", "box_Compare_Boolean_v2_69.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_82_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1823225564", "1823225564", "IOP09D_Main", "box_IOPMonitor_82.ActivateHackables", "box_HackableController_v2_142.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_82_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1163184275", "1163184275", "IOP09D_Main", "box_IOPMonitor_82.DeactivateHackables", "box_HackableController_v2_142.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_82_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_82
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|455203366", "455203366", "IOP09D_Main", "box_IOPMonitor_82.Disabled", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_82_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_82()
  l0 = self.box_IOPMonitor_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|2083802215", "2083802215", "IOP09D_Main", "box_IOPMonitor_82.IOPComplete", "box_IOPMonitor_82.Disable", l0, l0)
  l0:Disable()
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
  l0.Entity = "9223372053051119768"
  l0._graph = self
  l0._name = "box_Set_Entity_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1555685853"
  l0.Out = self.f_box_Set_Entity_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1412652221", "1412652221", "IOP09D_Main", "box_SetInteger_v2_149.Out", "box_Set_Entity_32.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_136_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_136
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1734756853", "1734756853", "IOP09D_Main", "box_AI_IOPController_136.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(6)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1903253943", "1903253943", "IOP09D_Main", "box_Set_Entity_135.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Progression_Tag_Monitor_107_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1871123378", "1871123378", "IOP09D_Main", "box_Progression_Tag_Monitor_107.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_107_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_74
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_RewardController_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|893936361", "893936361", "IOP09D_Main", "box_Progression_Tag_Monitor_107.HasNOT", "box_RewardController_v3_74.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_108_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_108
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1595159238", "1595159238", "IOP09D_Main", "box_AI_IOPController_108.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(2)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|617863703", "617863703", "IOP09D_Main", "box_Set_Entity_76.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Progression_Tag_Monitor_48_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|106954766", "106954766", "IOP09D_Main", "box_Progression_Tag_Monitor_48.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_48_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_71
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_RewardController_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|732712780", "732712780", "IOP09D_Main", "box_Progression_Tag_Monitor_48.HasNOT", "box_RewardController_v3_71.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|274240613"
  l0.Out = self.f_box_SetInteger_v2_29_Out
  l0 = self.box_RewardController_v3_113
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|968677789", "968677789", "IOP09D_Main", "box_RewardController_v3_113.Out", "box_SetInteger_v2_29.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_HackableController_v2_134_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_134
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|922624824", "922624824", "IOP09D_Main", "box_HackableController_v2_134.OverrideHackingTextSet", "box_SetBoolean_v2_43.True", l0, l1)
  l1:True()
end
function export:f_box_AI_IOPController_62_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MakeItRain
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1433621263"
  l0.Out = self.f_box_Compare_Boolean_v2_57_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_57_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_62
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|524560493", "524560493", "IOP09D_Main", "box_AI_IOPController_62.SendEventCompleted", "box_Compare_Boolean_v2_57.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1496235108"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_MultipleOR_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|305726673", "305726673", "IOP09D_Main", "box_MultipleOR_84.Out", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|111351986", "111351986", "IOP09D_Main", "box_Set_Entity_22.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1453482694", "1453482694", "IOP09D_Main", "box_Set_Entity_147.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(3)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1223686318"
  l0.Out = self.f_box_SetInteger_v2_49_Out
  l0 = self.box_RewardController_v3_77
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|544597050", "544597050", "IOP09D_Main", "box_RewardController_v3_77.Out", "box_SetInteger_v2_49.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_106
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_34
  l1 = self.box_CLOController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|91977984", "91977984", "IOP09D_Main", "box_MultipleOR_34.Out", "box_CLOController_106.Activate", l0, l1)
  l1:Activate()
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
  l0.Probability[5] = 0
  l0.Probability[6] = 0
  l0.Probability[7] = 1
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_109
  l1 = self.box_RandomOutput_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|840326976", "840326976", "IOP09D_Main", "box_MultipleOR_109.Out", "box_RandomOutput_v2_24.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|998777811"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|878335951", "878335951", "IOP09D_Main", "box_LightController_13.Disabled", "box_Ordered_Output_53.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_52_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_52
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1746098030", "1746098030", "IOP09D_Main", "box_AI_IOPController_52.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Compare_Integers_v2_110_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_5
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1987129069", "1987129069", "IOP09D_Main", "box_Compare_Integers_v2_110.A_eq_B", "box_AI_IOPController_5.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1067679421"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_121_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_121_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_121_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|635276895", "635276895", "IOP09D_Main", "box_Compare_Integers_v2_110.A_gt_B", "box_Compare_Integers_v2_121.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1816316135", "1816316135", "IOP09D_Main", "box_Compare_Integers_v2_110.A_lt_B", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|321830230"
  l0.Out = self.f_box_SetInteger_v2_26_Out
  l0 = self.box_RewardController_v3_86
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1986881006", "1986881006", "IOP09D_Main", "box_RewardController_v3_86.Out", "box_SetInteger_v2_26.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_5_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_5
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1728152424", "1728152424", "IOP09D_Main", "box_AI_IOPController_5.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Security_Camera_Monitor_159_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_160
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_159
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1994346526", "1994346526", "IOP09D_Main", "box_Security_Camera_Monitor_159.Disabled", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_159_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_159()
  l0 = self.box_Security_Camera_Monitor_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1423422975", "1423422975", "IOP09D_Main", "box_Security_Camera_Monitor_159.OnEndAccessCamera", "box_Security_Camera_Monitor_159.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_157_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1577874870"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_66_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_66_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_66_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_157
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1451520479", "1451520479", "IOP09D_Main", "box_Timer_v2_157.TimeElapsed", "box_Compare_Integers_v2_66.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1773604018", "1773604018", "IOP09D_Main", "box_Set_Entity_30.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Hackable_Monitor_80_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|364949330", "364949330", "IOP09D_Main", "box_Hackable_Monitor_80.Disabled", "box_Hackable_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_80_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_100
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_PlaySound_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|725550950", "725550950", "IOP09D_Main", "box_Hackable_Monitor_80.HackSuccess", "box_PlaySound_v2_100.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_40_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_144
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_40
  l1 = self.box_AI_IOPController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1176975009", "1176975009", "IOP09D_Main", "box_Security_Camera_Monitor_40.OnStartAccessCamera", "box_AI_IOPController_144.SendEvent", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1909839113", "1909839113", "IOP09D_Main", "box_Security_Camera_Monitor_40.OnStartExitCamera", "box_AI_IOPController_75.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_142_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|664847052", "664847052", "IOP09D_Main", "box_HackableController_v2_142.Disabled", "box_HackableController_v2_46.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_142_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1568009571", "1568009571", "IOP09D_Main", "box_HackableController_v2_142.Enabled", "box_HackableController_v2_46.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_142_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|458236826", "458236826", "IOP09D_Main", "box_HackableController_v2_142.ProfilingDisabled", "box_HackableController_v2_46.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_142_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|95808253", "95808253", "IOP09D_Main", "box_HackableController_v2_142.ProfilingEnabled", "box_HackableController_v2_46.EnableProfiling", l0, l1)
  l1:EnableProfiling()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|110107459"
  l0.Out = self.f_box_SetInteger_v2_79_Out
  l0 = self.box_RewardController_v3_71
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|874429451", "874429451", "IOP09D_Main", "box_RewardController_v3_71.Out", "box_SetInteger_v2_79.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Timer_v2_64_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_64
  l1 = self.box_MissionMessageController_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1936864026", "1936864026", "IOP09D_Main", "box_Timer_v2_64.TimeElapsed", "box_MissionMessageController_v3_85.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1500850515"
  l0.Out = self.f_box_SetInteger_v2_95_Out
  l0 = self.box_RewardController_v3_124
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|1793330084", "1793330084", "IOP09D_Main", "box_RewardController_v3_124.Out", "box_SetInteger_v2_95.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:OnEnter_box_MultipleOR_36()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09D.domino|@IOP09D_Main|83700508"
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
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_Multiple_AND_50()
end
function export:OnEnter_box_HackableController_v2_154()
  local l0
  l0 = self.box_HackableController_v2_154
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_MultipleOR_111()
end
function export:OnEnter_box_HackableController_v2_153()
  local l0
  l0 = self.box_HackableController_v2_153
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_Hackable_Monitor_7()
  local l0
  l0 = self.box_Hackable_Monitor_7
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_MultipleOR_155()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_HackableController_v2_46()
  local l0
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_CLOController_148()
  local l0
  l0 = self.box_CLOController_148
  l0.CLO = self.CLO
  l0.User = self.Npc
end
function export:OnEnter_box_IOPMonitor_82()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_MultipleOR_109()
end
function export:OnEnter_box_Security_Camera_Monitor_159()
  local l0
  l0 = self.box_Security_Camera_Monitor_159
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_Hackable_Monitor_80()
  local l0
  l0 = self.box_Hackable_Monitor_80
  l0.HackableEntity = self.GoodHack
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
_compilerVersion = 4
