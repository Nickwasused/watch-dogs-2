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
  self._name = "IOP09A_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.CLO_Sync = 6
  self.BadVar = 0
  self.Money = "9223372049706323845"
  self.Money2 = "9223372049706323854"
  self.NPC_List = {}
  self.ATM_Camera = "9223372049706323852"
  self.Npc = nil
  self.BarkSoundEntity_0 = "9223372049706323841"
  self.Money3 = "9223372049706323847"
  self.MakeItRain = 0
  self.RolesList = {"Atm.Person"}
  self.GoodHack = "9223372065857608959"
  self.CLO = nil
  self.Alarm = 0
  self.GoodVar = 0
  self.BadHack = "9223372065857608961"
  self.Light = "9223372049706323839"
  self.box_Progression_Tag_Monitor_81 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_81
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1541737"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_81_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_81_HasNOT
  self.box_ListWriter_144 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_144
  l0._graph = self
  l0._name = "box_ListWriter_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|28931077"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_144_Added
  l0.Removed = self.f_box_ListWriter_144_Removed
  l0.Out = self.f_box_ListWriter_144_Out
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|33093479"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_RandomOutput_v2_90 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_90
  l0._graph = self
  l0._name = "box_RandomOutput_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|46436898"
  l0._DynamicAnchors = {Probability = 9, Output = 9}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_90_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_90_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_90_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_90_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_90_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_90_Output_5
  l0.Output[6] = self.f_box_RandomOutput_v2_90_Output_6
  l0.Output[7] = self.f_box_RandomOutput_v2_90_Output_7
  l0.Output[8] = self.f_box_RandomOutput_v2_90_Output_8
  self.box_RewardController_v3_59 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_59
  l0._graph = self
  l0._name = "box_RewardController_v3_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|65260437"
  l0.Out = self.f_box_RewardController_v3_59_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_93 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_93
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|105418537"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_93_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_93_HasNOT
  self.box_HackableController_v2_97 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_97
  l0._graph = self
  l0._name = "box_HackableController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|165901277"
  l0.Enabled = self.f_box_HackableController_v2_97_Enabled
  l0.Disabled = self.f_box_HackableController_v2_97_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_97_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_97_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_68 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_68
  l0._graph = self
  l0._name = "box_PlaySound_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|179058083"
  l0.Out = self.f_box_PlaySound_v2_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_117 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_117
  l0._graph = self
  l0._name = "box_HackableController_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|233115436"
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
  self.box_HackableController_v2_57 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_57
  l0._graph = self
  l0._name = "box_HackableController_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|243399162"
  l0.Enabled = self.f_box_HackableController_v2_57_Enabled
  l0.Disabled = self.f_box_HackableController_v2_57_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_64 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_64
  l0._graph = self
  l0._name = "box_MultipleOR_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|249040429"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_64_Out
  self.box_HackableController_v2_156 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_156
  l0._graph = self
  l0._name = "box_HackableController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|274236814"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_156_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_156_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_32 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_32
  l0._graph = self
  l0._name = "box_AI_IOPController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|298968806"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_32_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_12 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_12
  l0._graph = self
  l0._name = "box_PlaySound_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|300342864"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_12_Started
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_95 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_95
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|300810661"
  l0.Out = self.f_box_MissionMessageController_v3_95_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_84 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_84
  l0._graph = self
  l0._name = "box_RewardController_v3_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|310459209"
  l0.Out = self.f_box_RewardController_v3_84_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_80 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_80
  l0._graph = self
  l0._name = "box_AI_IOPController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|319173048"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_80_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_83 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_83
  l0._graph = self
  l0._name = "box_AI_IOPController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|345787280"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_83_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_56 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_56
  l0._graph = self
  l0._name = "box_RewardController_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|350633797"
  l0.Out = self.f_box_RewardController_v3_56_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CinematicPrep_71 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_71
  l0._graph = self
  l0._name = "box_CinematicPrep_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|401547908"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_154 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_154
  l0._graph = self
  l0._name = "box_HackableController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|410943580"
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
  self.box_SetBoolean_v2_92 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_92
  l0._graph = self
  l0._name = "box_SetBoolean_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|411402983"
  l0.Out = self.f_box_SetBoolean_v2_92_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_92_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_92_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_92_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_92_SetFromBool
  self.box_AI_IOPController_138 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_138
  l0._graph = self
  l0._name = "box_AI_IOPController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|447155851"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_138_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_106 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_106
  l0._graph = self
  l0._name = "box_Timer_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|487828290"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_106_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_21 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_21
  l0._graph = self
  l0._name = "box_Multiple_AND_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|503869591"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_21_Out
  self.box_HackableController_v2_49 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_49
  l0._graph = self
  l0._name = "box_HackableController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|511416393"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_49_OverrideHackingTextSet
  self.box_HackableController_v2_91 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_91
  l0._graph = self
  l0._name = "box_HackableController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|634461638"
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
  self.box_Timer_v2_66 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_66
  l0._graph = self
  l0._name = "box_Timer_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|644016283"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_66_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_86 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_86
  l0._graph = self
  l0._name = "box_MultipleOR_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|645287001"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_86_Out
  self.box_MissionLayer_v2_108 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_108
  l0._graph = self
  l0._name = "box_MissionLayer_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|652268401"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_108_Unloaded
  l0.Reseted = DummyFunction
  self.box_Progression_Tag_Monitor_13 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_13
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|672722515"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_13_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_13_HasNOT
  self.box_HackableController_v2_119 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_119
  l0._graph = self
  l0._name = "box_HackableController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|680003185"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_119_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_9 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_9
  l0._graph = self
  l0._name = "box_AI_IOPController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|688945725"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_9_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_63 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_63
  l0._graph = self
  l0._name = "box_HackableController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|700104179"
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
  self.box_HackableController_v2_149 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_149
  l0._graph = self
  l0._name = "box_HackableController_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|703344291"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_149_OverrideHackingTextSet
  self.box_Hackable_Monitor_33 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_33
  l0._graph = self
  l0._name = "box_Hackable_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|714967433"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_33_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_33_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_62 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_62
  l0._graph = self
  l0._name = "box_Timer_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|719945755"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_62_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_61 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_61
  l0._graph = self
  l0._name = "box_Hackable_Monitor_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|741393219"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_61_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_151 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_151
  l0._graph = self
  l0._name = "box_HackableController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|742152211"
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
  self.box_AI_IOPController_152 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_152
  l0._graph = self
  l0._name = "box_AI_IOPController_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|744446620"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_152_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_129 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_129
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|746668903"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_129_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_129_HasNOT
  self.box_AI_IOPController_123 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_123
  l0._graph = self
  l0._name = "box_AI_IOPController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|750850244"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_123_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_39 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_39
  l0._graph = self
  l0._name = "box_PlaySound_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|750872933"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_38 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_38
  l0._graph = self
  l0._name = "box_PlaySound_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|763993369"
  l0.Out = self.f_box_PlaySound_v2_38_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|787930353"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_PlaySound_v2_22 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_22
  l0._graph = self
  l0._name = "box_PlaySound_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|813327217"
  l0.Out = self.f_box_PlaySound_v2_22_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_19 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|825092929"
  l0.Out = self.f_box_PlaySound_v2_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_111 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|842548783"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_111_Out
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|860606991"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_162 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_162
  l0._graph = self
  l0._name = "box_Timer_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|872007413"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_162_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_109 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_109
  l0._graph = self
  l0._name = "box_PlaySound_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|894363876"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_124 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_124
  l0._graph = self
  l0._name = "box_AI_IOPController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|922369405"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_124_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_130 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_130
  l0._graph = self
  l0._name = "box_HackableController_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|922678394"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_130_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_IOPMonitor_24 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_24
  l0._graph = self
  l0._name = "box_IOPMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|928911439"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_24_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_24_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_24_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_24_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|949315164"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|989223944"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_58 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_58
  l0._graph = self
  l0._name = "box_CLOController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1003694726"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_58_OnUserInPlace
  self.box_AI_IOPController_25 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_25
  l0._graph = self
  l0._name = "box_AI_IOPController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1044274667"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_25_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_87 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_87
  l0._graph = self
  l0._name = "box_SetBoolean_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1060584039"
  l0.Out = self.f_box_SetBoolean_v2_87_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_87_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_87_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_87_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_87_SetFromBool
  self.box_SetBoolean_v2_125 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_125
  l0._graph = self
  l0._name = "box_SetBoolean_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1097585364"
  l0.Out = self.f_box_SetBoolean_v2_125_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_125_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_125_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_125_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_125_SetFromBool
  self.box_PhoneCommunicationController_26 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_26
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1101818827"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_26_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_55 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_55
  l0._graph = self
  l0._name = "box_AI_IOPController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1104146262"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_55_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_47 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_47
  l0._graph = self
  l0._name = "box_RewardController_v3_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1130575299"
  l0.Out = self.f_box_RewardController_v3_47_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MultipleOR_114 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_114
  l0._graph = self
  l0._name = "box_MultipleOR_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1142252542"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_114_Out
  self.box_HackableController_v2_14 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_14
  l0._graph = self
  l0._name = "box_HackableController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1198972777"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_14_OverrideHackingTextSet
  self.box_SetBoolean_v2_44 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_44
  l0._graph = self
  l0._name = "box_SetBoolean_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1267172108"
  l0.Out = self.f_box_SetBoolean_v2_44_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_44_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_44_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_44_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_44_SetFromBool
  self.box_AI_IOPController_105 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_105
  l0._graph = self
  l0._name = "box_AI_IOPController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1298272003"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_105_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_10 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_10
  l0._graph = self
  l0._name = "box_HackableController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1358386368"
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
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1377203862"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_AI_IOPController_140 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_140
  l0._graph = self
  l0._name = "box_AI_IOPController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1404710331"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_140_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOP_StartUp_35 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_35
  l0._graph = self
  l0._name = "box_IOP_StartUp_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1405735915"
  l0.Out = self.f_box_IOP_StartUp_35_Out
  self.box_Timer_v2_159 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1451313216"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_150 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_150
  l0._graph = self
  l0._name = "box_HackableController_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1473515658"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_150_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Progression_Tag_Monitor_82 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_82
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1496886303"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_82_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_82_HasNOT
  self.box_AI_IOPController_102 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_102
  l0._graph = self
  l0._name = "box_AI_IOPController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1630080832"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_102_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_96 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_96
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1633455119"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_96_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_96_HasNOT
  self.box_MultipleOR_157 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_157
  l0._graph = self
  l0._name = "box_MultipleOR_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1696191322"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_157_Out
  self.box_PhoneCommunicationController_148 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_148
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1724292613"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_148_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_IOP_CleanUp_1 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_1
  l0._graph = self
  l0._name = "box_IOP_CleanUp_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1756562481"
  l0.Completed = self.f_box_IOP_CleanUp_1_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_1_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_HackableController_v2_40 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_40
  l0._graph = self
  l0._name = "box_HackableController_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1785366366"
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
  self.box_MissionMessageController_v3_132 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_132
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1802143782"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_132_MessageCompleted
  self.box_HackableController_v2_104 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_104
  l0._graph = self
  l0._name = "box_HackableController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1819766596"
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
  self.box_Timer_v2_147 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_147
  l0._graph = self
  l0._name = "box_Timer_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1854982029"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_147_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_54 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_54
  l0._graph = self
  l0._name = "box_AI_IOPController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1864191389"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_54_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_107 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_107
  l0._graph = self
  l0._name = "box_Timer_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1869762958"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_107_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_53 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_53
  l0._graph = self
  l0._name = "box_HackableController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1875831272"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_HackableController_v2_53_OverrideHackingTextSet
  self.box_AI_IOPController_135 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_135
  l0._graph = self
  l0._name = "box_AI_IOPController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1908064640"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_155 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_155
  l0._graph = self
  l0._name = "box_MultipleOR_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1936576890"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_155_Out
  self.box_Timer_v2_161 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_161
  l0._graph = self
  l0._name = "box_Timer_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1951502869"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_17 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_17
  l0._graph = self
  l0._name = "box_RewardController_v3_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1983963869"
  l0.Out = self.f_box_RewardController_v3_17_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MultipleOR_121 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_121
  l0._graph = self
  l0._name = "box_MultipleOR_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1999753948"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_121_Out
  self.box_Progression_Tag_Monitor_69 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_69
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2002535596"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_69_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_69_HasNOT
  self.box_AI_IOPController_94 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_94
  l0._graph = self
  l0._name = "box_AI_IOPController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2014387531"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_94_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_115 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_115
  l0._graph = self
  l0._name = "box_MultipleOR_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2032085186"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_115_Out
  self.box_IndexedOutput_V2_78 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_78
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2037528991"
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_box_IndexedOutput_V2_78_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_78_Output_1
  l0.Output[2] = self.f_box_IndexedOutput_V2_78_Output_2
  l0.Output[3] = self.f_box_IndexedOutput_V2_78_Output_3
  l0.Output[4] = self.f_box_IndexedOutput_V2_78_Output_4
  l0.Output[5] = self.f_box_IndexedOutput_V2_78_Output_5
  l0.Output[6] = self.f_box_IndexedOutput_V2_78_Output_6
  l0.Output[7] = self.f_box_IndexedOutput_V2_78_Output_7
  l0.Output[8] = self.f_box_IndexedOutput_V2_78_Output_8
  l0.Output[9] = self.f_box_IndexedOutput_V2_78_Output_9
  l0.OutOfRange = DummyFunction
  self.box_Timer_v2_100 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_100
  l0._graph = self
  l0._name = "box_Timer_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2039394647"
  l0.Out = self.f_box_Timer_v2_100_Out
  l0.Started = self.f_box_Timer_v2_100_Started
  l0.Stopped = self.f_box_Timer_v2_100_Stopped
  l0.Paused = self.f_box_Timer_v2_100_Paused
  l0.Resumed = self.f_box_Timer_v2_100_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_100_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_100_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_75 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_75
  l0._graph = self
  l0._name = "box_MissionController_v4_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2039866924"
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2054975865"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_SetBoolean_v2_127 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_127
  l0._graph = self
  l0._name = "box_SetBoolean_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2070712473"
  l0.Out = self.f_box_SetBoolean_v2_127_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_127_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_127_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_127_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_127_SetFromBool
  self.box_RewardController_v3_50 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_50
  l0._graph = self
  l0._name = "box_RewardController_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2080339790"
  l0.Out = self.f_box_RewardController_v3_50_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CLOController_153 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_153
  l0._graph = self
  l0._name = "box_CLOController_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2102407400"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_153_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_RewardController_v3_120 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_120
  l0._graph = self
  l0._name = "box_RewardController_v3_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2105853490"
  l0.Out = self.f_box_RewardController_v3_120_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_SetBoolean_v2_89 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_89
  l0._graph = self
  l0._name = "box_SetBoolean_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2118264324"
  l0.Out = self.f_box_SetBoolean_v2_89_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_89_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_89_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_89_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_89_SetFromBool
  self.box_HackableController_v2_76 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_76
  l0._graph = self
  l0._name = "box_HackableController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2119871941"
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
  self.box_RewardController_v3_34 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_34
  l0._graph = self
  l0._name = "box_RewardController_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2123293803"
  l0.Out = self.f_box_RewardController_v3_34_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_113 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_113
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2125524538"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_113_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_113_HasNOT
  self.box_Security_Camera_Monitor_163 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_163
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2137575135"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_163_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_163_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Security_Camera_Monitor_20 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_20
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2141038887"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_20_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_20_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
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
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|893604957", "893604957", "IOP09A_Main", "CheckPoint_0", "box_MultipleOR_111.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2032232748", "2032232748", "IOP09A_Main", "In", "box_MultipleOR_111.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Progression_Tag_Monitor_81_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_81
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1087140097", "1087140097", "IOP09A_Main", "box_Progression_Tag_Monitor_81.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_81_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_120
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_81
  l1 = self.box_RewardController_v3_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1455259643", "1455259643", "IOP09A_Main", "box_Progression_Tag_Monitor_81.HasNOT", "box_RewardController_v3_120.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SecurityCamController_15_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_15()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1556102578", "1556102578", "IOP09A_Main", "box_SecurityCamController_15.CanExitSet", "box_SecurityCamController_15.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_15_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2116094980"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_116_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_116_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|421948377", "421948377", "IOP09A_Main", "box_SecurityCamController_15.EnterForced", "box_Ordered_Output_116.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_144_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_144
  self.NPC_List = l0.Target
  l0 = self.box_AI_IOPController_83
  l0.IopID = "Atm"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPC_List
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0 = self.box_ListWriter_144
  l1 = self.box_AI_IOPController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1944673350", "1944673350", "IOP09A_Main", "box_ListWriter_144.Added", "box_AI_IOPController_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_144_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_144
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_144_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_144
  self.NPC_List = l0.Target
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|835562877"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|99957842", "99957842", "IOP09A_Main", "box_MultipleOR_2.Out", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_RandomOutput_v2_90_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_69
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1529439774", "1529439774", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_69.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_113
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|211049963", "211049963", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_113.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_82
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1170916576", "1170916576", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_82.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_13
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|589727333", "589727333", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_13.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_129
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|308206519", "308206519", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_129.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_93
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|42934502", "42934502", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_93.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_81
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|180569725", "180569725", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_81.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_96
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_Progression_Tag_Monitor_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|376999343", "376999343", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_Progression_Tag_Monitor_96.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_90_Output_8()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_32
  l0.EmptyRoomName = "AtmEmptyRoom"
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_RandomOutput_v2_90
  l1 = self.box_AI_IOPController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1329557335", "1329557335", "IOP09A_Main", "box_RandomOutput_v2_90.Output", "box_AI_IOPController_32.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_RewardController_v3_59_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 3
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|563058652"
  l0.Out = self.f_box_SetInteger_v2_145_Out
  l0 = self.box_RewardController_v3_59
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1897426746", "1897426746", "IOP09A_Main", "box_RewardController_v3_59.Out", "box_SetInteger_v2_145.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Progression_Tag_Monitor_93_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_93
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|676133246", "676133246", "IOP09A_Main", "box_Progression_Tag_Monitor_93.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_93_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_56
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_93
  l1 = self.box_RewardController_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1323902409", "1323902409", "IOP09A_Main", "box_Progression_Tag_Monitor_93.HasNOT", "box_RewardController_v3_56.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SetInteger_v2_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323857"
  l0._graph = self
  l0._name = "box_Set_Entity_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1140989389"
  l0.Out = self.f_box_Set_Entity_43_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1184903056", "1184903056", "IOP09A_Main", "box_SetInteger_v2_6.Out", "box_Set_Entity_43.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Compare_Integers_v2_99_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_60
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character8"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1900514374", "1900514374", "IOP09A_Main", "box_Compare_Integers_v2_99.A_eq_B", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_99_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_102
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character7"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|894226924", "894226924", "IOP09A_Main", "box_Compare_Integers_v2_99.A_lt_B", "box_AI_IOPController_102.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_HackableController_v2_97_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_57()
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|990131975", "990131975", "IOP09A_Main", "box_HackableController_v2_97.Disabled", "box_HackableController_v2_57.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_97_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_57()
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1285495315", "1285495315", "IOP09A_Main", "box_HackableController_v2_97.Enabled", "box_HackableController_v2_57.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_97_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_57()
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|14693605", "14693605", "IOP09A_Main", "box_HackableController_v2_97.ProfilingDisabled", "box_HackableController_v2_57.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_97_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_57()
  l0 = self.box_HackableController_v2_97
  l1 = self.box_HackableController_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|891585528", "891585528", "IOP09A_Main", "box_HackableController_v2_97.ProfilingEnabled", "box_HackableController_v2_57.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_PlaySound_v2_68_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1716686865"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_112_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_112_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_68
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1449769526", "1449769526", "IOP09A_Main", "box_PlaySound_v2_68.Out", "box_Compare_Boolean_v2_112.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_126_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1680376098", "1680376098", "IOP09A_Main", "box_Compare_Integers_v2_126.A_eq_B", "box_MultipleOR_86.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_126_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1709212987"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_77_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_77_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_77_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1673131802", "1673131802", "IOP09A_Main", "box_Compare_Integers_v2_126.A_gt_B", "box_Compare_Integers_v2_77.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_126_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_91
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Call_Police",
    id = "544815"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1916342342", "1916342342", "IOP09A_Main", "box_Compare_Integers_v2_126.A_lt_B", "box_HackableController_v2_91.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_57_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_97()
  l0 = self.box_HackableController_v2_57
  l1 = self.box_HackableController_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|176726811", "176726811", "IOP09A_Main", "box_HackableController_v2_57.Disabled", "box_HackableController_v2_97.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_57_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_97()
  l0 = self.box_HackableController_v2_57
  l1 = self.box_HackableController_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1561831716", "1561831716", "IOP09A_Main", "box_HackableController_v2_57.Enabled", "box_HackableController_v2_97.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_MultipleOR_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_58
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_64
  l1 = self.box_CLOController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|281489653", "281489653", "IOP09A_Main", "box_MultipleOR_64.Out", "box_CLOController_58.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetInteger_v2_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323859"
  l0._graph = self
  l0._name = "box_Set_Entity_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1560011197"
  l0.Out = self.f_box_Set_Entity_52_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1509760458", "1509760458", "IOP09A_Main", "box_SetInteger_v2_73.Out", "box_Set_Entity_52.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_HackableController_v2_156_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_156
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|416176479", "416176479", "IOP09A_Main", "box_HackableController_v2_156.Disabled", "box_HackableController_v2_154.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_156_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_156
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1673045221", "1673045221", "IOP09A_Main", "box_HackableController_v2_156.ProfilingDisabled", "box_HackableController_v2_154.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_AI_IOPController_32_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|866053571"
  l0.Out = self.f_box_Simple_Node_128_Out
  l0 = self.box_AI_IOPController_32
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|544054090", "544054090", "IOP09A_Main", "box_AI_IOPController_32.StartEmptyRoomCompleted", "box_Simple_Node_128.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_12_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_12
  l1 = self.box_SetBoolean_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1260366044", "1260366044", "IOP09A_Main", "box_PlaySound_v2_12.Started", "box_SetBoolean_v2_125.False", l0, l1)
  l1:False()
end
function export:f_box_MissionMessageController_v3_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_26
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374187"
  l0 = self.box_MissionMessageController_v3_95
  l1 = self.box_PhoneCommunicationController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1571985745", "1571985745", "IOP09A_Main", "box_MissionMessageController_v3_95.Out", "box_PhoneCommunicationController_26.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RewardController_v3_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 5
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|953551826"
  l0.Out = self.f_box_SetInteger_v2_37_Out
  l0 = self.box_RewardController_v3_84
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1713263664", "1713263664", "IOP09A_Main", "box_RewardController_v3_84.Out", "box_SetInteger_v2_37.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_80_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_80
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2020076325", "2020076325", "IOP09A_Main", "box_AI_IOPController_80.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_AI_IOPController_83_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_AI_IOPController_83
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1197135917", "1197135917", "IOP09A_Main", "box_AI_IOPController_83.StartCompleted", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RewardController_v3_56_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 6
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|271867728"
  l0.Out = self.f_box_SetInteger_v2_73_Out
  l0 = self.box_RewardController_v3_56
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1774101336", "1774101336", "IOP09A_Main", "box_RewardController_v3_56.Out", "box_SetInteger_v2_73.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_HackableController_v2_154_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_156()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_HackableController_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|531939534", "531939534", "IOP09A_Main", "box_HackableController_v2_154.Disabled", "box_HackableController_v2_156.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetBoolean_v2_92_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.GoodVar = l0.Target
  l0 = self.box_AI_IOPController_152
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0 = self.box_SetBoolean_v2_92
  l1 = self.box_AI_IOPController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|347246414", "347246414", "IOP09A_Main", "box_SetBoolean_v2_92.Out", "box_AI_IOPController_152.SendEvent", l0, l1)
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
function export:f_box_Simple_Node_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_33()
  l0 = self.box_Hackable_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2053488928", "2053488928", "IOP09A_Main", "box_Simple_Node_85.Out", "box_Hackable_Monitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_IOPController_138_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_138
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|51715246", "51715246", "IOP09A_Main", "box_AI_IOPController_138.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Ordered_Output_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_12
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|269795897", "269795897", "IOP09A_Main", "box_Ordered_Output_131.Out", "box_PlaySound_v2_12.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_131_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_95
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1112460978", "1112460978", "IOP09A_Main", "box_Ordered_Output_131.Out", "box_MissionMessageController_v3_95.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Timer_v2_106_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1647424532"
  l0.Enabled = self.f_box_LightController_4_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_106
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1721005475", "1721005475", "IOP09A_Main", "box_Timer_v2_106.TimeElapsed", "box_LightController_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_22
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_21
  l1 = self.box_PlaySound_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|158730639", "158730639", "IOP09A_Main", "box_Multiple_AND_21.Out", "box_PlaySound_v2_22.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_49_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1058861033"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_133_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_133_Out_1
  l0 = self.box_HackableController_v2_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1828440048", "1828440048", "IOP09A_Main", "box_HackableController_v2_49.OverrideHackingTextSet", "box_Ordered_Output_133.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_101_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323861"
  l0._graph = self
  l0._name = "box_Set_Entity_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1759615947"
  l0.Out = self.f_box_Set_Entity_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1858007165", "1858007165", "IOP09A_Main", "box_SetInteger_v2_101.Out", "box_Set_Entity_31.FromEntity", clone, l0)
  l0:FromEntity()
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
  l0.Entity = "9223372049706323860"
  l0._graph = self
  l0._name = "box_Set_Entity_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|843842338"
  l0.Out = self.f_box_Set_Entity_41_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1483513232", "1483513232", "IOP09A_Main", "box_SetInteger_v2_145.Out", "box_Set_Entity_41.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Simple_Node_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_61()
  l0 = self.box_Hackable_Monitor_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|254784020", "254784020", "IOP09A_Main", "box_Simple_Node_70.Out", "box_Hackable_Monitor_61.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_66_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_15()
  l0 = self.box_Timer_v2_66
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|23494875", "23494875", "IOP09A_Main", "box_Timer_v2_66.TimeElapsed", "box_SecurityCamController_15.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_MultipleOR_86_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_10
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Empty_Account",
    id = "544816"
  }
  l0 = self.box_MultipleOR_86
  l1 = self.box_HackableController_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|896552253", "896552253", "IOP09A_Main", "box_MultipleOR_86.Out", "box_HackableController_v2_10.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_MissionLayer_v2_108_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_108
  l1 = self.box_MissionController_v4_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|844735427", "844735427", "IOP09A_Main", "box_MissionLayer_v2_108.Unloaded", "box_MissionController_v4_75.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Progression_Tag_Monitor_13_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_13
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2007635871", "2007635871", "IOP09A_Main", "box_Progression_Tag_Monitor_13.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_13_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_17
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_13
  l1 = self.box_RewardController_v3_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|965624589", "965624589", "IOP09A_Main", "box_Progression_Tag_Monitor_13.HasNOT", "box_RewardController_v3_17.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_119_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_151
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_119
  l1 = self.box_HackableController_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|950402274", "950402274", "IOP09A_Main", "box_HackableController_v2_119.ProfilingDisabled", "box_HackableController_v2_151.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_AI_IOPController_9_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_AI_IOPController_9
  l1 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|915319905", "915319905", "IOP09A_Main", "box_AI_IOPController_9.SendEventCompleted", "box_Multiple_AND_21.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_HackableController_v2_149_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_149
  l1 = self.box_SetBoolean_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|948487643", "948487643", "IOP09A_Main", "box_HackableController_v2_149.OverrideHackingTextSet", "box_SetBoolean_v2_87.True", l0, l1)
  l1:True()
end
function export:f_box_Hackable_Monitor_33_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_61()
  l0 = self.box_Hackable_Monitor_33
  l1 = self.box_Hackable_Monitor_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1324134902", "1324134902", "IOP09A_Main", "box_Hackable_Monitor_33.Disabled", "box_Hackable_Monitor_61.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_33_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_19
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_33
  l1 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|437353034", "437353034", "IOP09A_Main", "box_Hackable_Monitor_33.HackSuccess", "box_PlaySound_v2_19.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_62_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_148
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436211"
  l0 = self.box_Timer_v2_62
  l1 = self.box_PhoneCommunicationController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|212381417", "212381417", "IOP09A_Main", "box_Timer_v2_62.TimeElapsed", "box_PhoneCommunicationController_148.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Hackable_Monitor_61_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_61
  l1 = self.box_PlaySound_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|401264642", "401264642", "IOP09A_Main", "box_Hackable_Monitor_61.HackSuccess", "box_PlaySound_v2_68.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_151_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_HackableController_v2_151
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1619590209", "1619590209", "IOP09A_Main", "box_HackableController_v2_151.ProfilingDisabled", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_152_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_152
  l1 = self.box_Timer_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1807588735", "1807588735", "IOP09A_Main", "box_AI_IOPController_152.SendEventCompleted", "box_Timer_v2_161.Start", l0, l1)
  l1:Start()
end
function export:f_box_Progression_Tag_Monitor_129_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|993108725", "993108725", "IOP09A_Main", "box_Progression_Tag_Monitor_129.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_129_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_84
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_RewardController_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1273646611", "1273646611", "IOP09A_Main", "box_Progression_Tag_Monitor_129.HasNOT", "box_RewardController_v3_84.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_123_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_123
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1481699943", "1481699943", "IOP09A_Main", "box_AI_IOPController_123.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Compare_Integers_v2_141_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|549628923", "549628923", "IOP09A_Main", "box_Compare_Integers_v2_141.A_eq_B", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Integers_v2_141_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1390925437"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_136_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_136_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_136_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1475905569", "1475905569", "IOP09A_Main", "box_Compare_Integers_v2_141.A_gt_B", "box_Compare_Integers_v2_136.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_141_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2026754471", "2026754471", "IOP09A_Main", "box_Compare_Integers_v2_141.A_lt_B", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlaySound_v2_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_38
  l1 = self.box_IOP_CleanUp_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2128405382", "2128405382", "IOP09A_Main", "box_PlaySound_v2_38.Out", "box_IOP_CleanUp_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|876041445"
  l0.Enabled = self.f_box_LightController_51_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_29
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|563835322", "563835322", "IOP09A_Main", "box_MultipleOR_29.Out", "box_LightController_51.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_107
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_22
  l1 = self.box_Timer_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|530569571", "530569571", "IOP09A_Main", "box_PlaySound_v2_22.Out", "box_Timer_v2_107.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2135307481"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_74_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_74_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_19
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1743662587", "1743662587", "IOP09A_Main", "box_PlaySound_v2_19.Out", "box_Compare_Boolean_v2_74.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_66
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1254718914", "1254718914", "IOP09A_Main", "box_Ordered_Output_8.Out", "box_Timer_v2_66.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_24()
  l0 = self.box_IOPMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2114872603", "2114872603", "IOP09A_Main", "box_Ordered_Output_8.Out", "box_IOPMonitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1340974069"
  l0.Out = self.f_box_Get_Player_ID_5_Out
  l0 = self.box_MultipleOR_111
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2042327106", "2042327106", "IOP09A_Main", "box_MultipleOR_111.Out", "box_Get_Player_ID_5.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1393169186", "1393169186", "IOP09A_Main", "box_Set_Entity_41.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_150
  l0.HackableEntity = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|667127729", "667127729", "IOP09A_Main", "box_Simple_Node_88.Out", "box_HackableController_v2_150.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_60
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|637878916", "637878916", "IOP09A_Main", "box_AI_IOPController_60.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Simple_Node_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1451158988", "1451158988", "IOP09A_Main", "box_Simple_Node_128.Out", "box_MultipleOR_27.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Set_Entity_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|964805710", "964805710", "IOP09A_Main", "box_Set_Entity_46.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(7)
end
function export:f_box_Timer_v2_162_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_71
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_162
  l1 = self.box_CinematicPrep_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|895603607", "895603607", "IOP09A_Main", "box_Timer_v2_162.TimeElapsed", "box_CinematicPrep_71.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_LightController_51_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_18
  l0.SoundId = "soundbinary/2847170774.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1966903786", "1966903786", "IOP09A_Main", "box_LightController_51.Enabled", "box_PlaySound_v2_18.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_124_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_124
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|645504375", "645504375", "IOP09A_Main", "box_AI_IOPController_124.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_HackableController_v2_130_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1309931402"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_42_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_130
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1918057899", "1918057899", "IOP09A_Main", "box_HackableController_v2_130.ProfilingDisabled", "box_CollisionController_42.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_IOPMonitor_24_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_97()
  l0 = self.box_IOPMonitor_24
  l1 = self.box_HackableController_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1201462372", "1201462372", "IOP09A_Main", "box_IOPMonitor_24.ActivateHackables", "box_HackableController_v2_97.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_24_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_97()
  l0 = self.box_IOPMonitor_24
  l1 = self.box_HackableController_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1526113564", "1526113564", "IOP09A_Main", "box_IOPMonitor_24.DeactivateHackables", "box_HackableController_v2_97.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_38
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_24
  l1 = self.box_PlaySound_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|688165792", "688165792", "IOP09A_Main", "box_IOPMonitor_24.Disabled", "box_PlaySound_v2_38.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_24_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_24()
  l0 = self.box_IOPMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|350657228", "350657228", "IOP09A_Main", "box_IOPMonitor_24.IOPComplete", "box_IOPMonitor_24.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_LightController_110_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|457067651"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_131_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_131_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1441981570", "1441981570", "IOP09A_Main", "box_LightController_110.Disabled", "box_Ordered_Output_131.In", clone, l0)
  l0:In()
end
function export:f_box_SetInteger_v2_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323856"
  l0._graph = self
  l0._name = "box_Set_Entity_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1273058375"
  l0.Out = self.f_box_Set_Entity_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1063298942", "1063298942", "IOP09A_Main", "box_SetInteger_v2_37.Out", "box_Set_Entity_28.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1828083104"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_67_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_67_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_67_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_160
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1295192316", "1295192316", "IOP09A_Main", "box_Timer_v2_160.TimeElapsed", "box_Compare_Integers_v2_67.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323855"
  l0._graph = self
  l0._name = "box_Set_Entity_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|870311136"
  l0.Out = self.f_box_Set_Entity_46_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1508702205", "1508702205", "IOP09A_Main", "box_SetInteger_v2_36.Out", "box_Set_Entity_46.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_CLOController_58_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_58
  self.Npc = l0.UserID
  l0 = self.box_HackableController_v2_130
  l0.HackableEntity = self.Npc
  l0 = self.box_CLOController_58
  l1 = self.box_HackableController_v2_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1987497682", "1987497682", "IOP09A_Main", "box_CLOController_58.OnUserInPlace", "box_HackableController_v2_130.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Compare_Boolean_v2_72_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_109
  l0.Entity = self.BarkSoundEntity_0
  l0.SoundId = "soundbinary/674218771.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1645180587", "1645180587", "IOP09A_Main", "box_Compare_Boolean_v2_72.A_is_True", "box_PlaySound_v2_109.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1782269598", "1782269598", "IOP09A_Main", "box_Compare_Boolean_v2_72.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_IOPController_25_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_25
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|243143574", "243143574", "IOP09A_Main", "box_AI_IOPController_25.SendEventCompleted", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_133_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|422175033"
  l0.Out = self.f_box_Simple_Node_85_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|466919122", "466919122", "IOP09A_Main", "box_Ordered_Output_133.Out", "box_Simple_Node_85.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_133_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|572486631"
  l0.Out = self.f_box_Simple_Node_70_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|696051864", "696051864", "IOP09A_Main", "box_Ordered_Output_133.Out", "box_Simple_Node_70.In", clone, l0)
  l0:In()
end
function export:f_box_ParticleFXController_v2_79_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_159
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|336454755", "336454755", "IOP09A_Main", "box_ParticleFXController_v2_79.Started", "box_Timer_v2_159.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetBoolean_v2_87_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_87_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.MakeItRain = l0.Target
end
function export:f_box_ParticleFXController_v2_65_Started()
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
  l0._name = "box_ParticleFXController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1059287902"
  l0.Started = self.f_box_ParticleFXController_v2_79_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|89849996", "89849996", "IOP09A_Main", "box_ParticleFXController_v2_65.Started", "box_ParticleFXController_v2_79.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetBoolean_v2_125_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_125
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_125_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_125
  self.MakeItRain = l0.Target
  l1 = self.box_SetBoolean_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|801571905", "801571905", "IOP09A_Main", "box_SetBoolean_v2_125.SetFalse", "box_SetBoolean_v2_127.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_125_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_125
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_125_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_125
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_125_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_125
  self.MakeItRain = l0.Target
end
function export:f_box_PhoneCommunicationController_26_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_9
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_26
  l1 = self.box_AI_IOPController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1510691014", "1510691014", "IOP09A_Main", "box_PhoneCommunicationController_26.OnCommunicationFinished", "box_AI_IOPController_9.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_AI_IOPController_55_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MakeItRain
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1238009898"
  l0.Out = self.f_box_Compare_Boolean_v2_146_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_146_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_55
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|558367710", "558367710", "IOP09A_Main", "box_AI_IOPController_55.SendEventCompleted", "box_Compare_Boolean_v2_146.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_47_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1563658884"
  l0.Out = self.f_box_SetInteger_v2_142_Out
  l0 = self.box_RewardController_v3_47
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|152042259", "152042259", "IOP09A_Main", "box_RewardController_v3_47.Out", "box_SetInteger_v2_142.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Set_Entity_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1773963062", "1773963062", "IOP09A_Main", "box_Set_Entity_43.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_114_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_149
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_2",
    id = "340526"
  }
  l0 = self.box_MultipleOR_114
  l1 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1781828016", "1781828016", "IOP09A_Main", "box_MultipleOR_114.Out", "box_HackableController_v2_149.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_103_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_138
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character6"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|444672624", "444672624", "IOP09A_Main", "box_Compare_Integers_v2_103.A_eq_B", "box_AI_IOPController_138.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_103_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|126553102"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_99_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_99_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|527593570", "527593570", "IOP09A_Main", "box_Compare_Integers_v2_103.A_gt_B", "box_Compare_Integers_v2_99.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_103_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_80
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character5"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|455397407", "455397407", "IOP09A_Main", "box_Compare_Integers_v2_103.A_lt_B", "box_AI_IOPController_80.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_HackableController_v2_14_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_14
  l1 = self.box_SetBoolean_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|267544218", "267544218", "IOP09A_Main", "box_HackableController_v2_14.OverrideHackingTextSet", "box_SetBoolean_v2_44.True", l0, l1)
  l1:True()
end
function export:f_box_Compare_Boolean_v2_146_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_147
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|539728201", "539728201", "IOP09A_Main", "box_Compare_Boolean_v2_146.A_is_True", "box_Timer_v2_147.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_157()
  l0 = self.box_MultipleOR_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|995443298", "995443298", "IOP09A_Main", "box_Compare_Boolean_v2_146.Out", "box_MultipleOR_157.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Set_Entity_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|422245891", "422245891", "IOP09A_Main", "box_Set_Entity_11.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_20()
  l0 = self.box_Security_Camera_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|302306433", "302306433", "IOP09A_Main", "box_Ordered_Output_45.Out", "box_Security_Camera_Monitor_20.Enable", clone, l0)
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
  l0._name = "box_Compare_Integers_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1426956159"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_3_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_3_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_3_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1762834523", "1762834523", "IOP09A_Main", "box_Ordered_Output_45.Out", "box_Compare_Integers_v2_3.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_44_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_44_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_44_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_44_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_44_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_44
  self.Alarm = l0.Target
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
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1944936444", "1944936444", "IOP09A_Main", "box_Set_Entity_28.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Compare_Integers_v2_98_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_123
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character4"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1240538978", "1240538978", "IOP09A_Main", "box_Compare_Integers_v2_98.A_eq_B", "box_AI_IOPController_123.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_98_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1178383425"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_103_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_103_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_103_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|945045497", "945045497", "IOP09A_Main", "box_Compare_Integers_v2_98.A_gt_B", "box_Compare_Integers_v2_103.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_98_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_124
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character3"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1284412638", "1284412638", "IOP09A_Main", "box_Compare_Integers_v2_98.A_lt_B", "box_AI_IOPController_124.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_AI_IOPController_105_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1027399237"
  l0.Out = self.f_box_Compare_Boolean_v2_72_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_72_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_105
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|571856619", "571856619", "IOP09A_Main", "box_AI_IOPController_105.SendEventCompleted", "box_Compare_Boolean_v2_72.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_42_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_144
  l0.Input = self.NPC_List
  l0.Data[0] = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|466110375", "466110375", "IOP09A_Main", "box_CollisionController_42.CollisionsDisabled", "box_ListWriter_144.Add", clone, l0)
  l0:Add()
end
function export:f_box_Get_Player_ID_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_35
  l0.MainLayer = "IOP09A_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863772"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|766493692", "766493692", "IOP09A_Main", "box_Get_Player_ID_5.Out", "box_IOP_StartUp_35.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_118_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|966813800", "966813800", "IOP09A_Main", "box_Compare_Integers_v2_118.A_eq_B", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_118_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1194204930", "1194204930", "IOP09A_Main", "box_Compare_Integers_v2_118.A_lt_B", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1260106115"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_MultipleOR_27
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1042952068", "1042952068", "IOP09A_Main", "box_MultipleOR_27.Out", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_136_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1823296592", "1823296592", "IOP09A_Main", "box_Compare_Integers_v2_136.A_eq_B", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Compare_Integers_v2_136_A_gt_B()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1374547017"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_118_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_118_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|29680212", "29680212", "IOP09A_Main", "box_Compare_Integers_v2_136.A_gt_B", "box_Compare_Integers_v2_118.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_136_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_40
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Shares",
    id = "544818"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|581179886", "581179886", "IOP09A_Main", "box_Compare_Integers_v2_136.A_lt_B", "box_HackableController_v2_40.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_140_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_20()
  l0 = self.box_AI_IOPController_140
  l1 = self.box_Security_Camera_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|921392334", "921392334", "IOP09A_Main", "box_AI_IOPController_140.SendEventCompleted", "box_Security_Camera_Monitor_20.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_IOP_StartUp_35_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|933948385"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_110_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_IOP_StartUp_35
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1553052729", "1553052729", "IOP09A_Main", "box_IOP_StartUp_35.Out", "box_LightController_110.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Integers_v2_3_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_54
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1952143204", "1952143204", "IOP09A_Main", "box_Compare_Integers_v2_3.A_eq_B", "box_AI_IOPController_54.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Compare_Integers_v2_3_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1286141276"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_98_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_98_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_98_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1906380829", "1906380829", "IOP09A_Main", "box_Compare_Integers_v2_3.A_gt_B", "box_Compare_Integers_v2_98.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_3_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_94
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|93470675", "93470675", "IOP09A_Main", "box_Compare_Integers_v2_3.A_lt_B", "box_AI_IOPController_94.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_39
  l0.SoundId = "soundbinary/3692441989.bnk"
  l0 = self.box_Timer_v2_159
  l1 = self.box_PlaySound_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|861974787", "861974787", "IOP09A_Main", "box_Timer_v2_159.TimeElapsed", "box_PlaySound_v2_39.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_150_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_53
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_1",
    id = "340525"
  }
  l0 = self.box_HackableController_v2_150
  l1 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1813467795", "1813467795", "IOP09A_Main", "box_HackableController_v2_150.ProfilingEnabled", "box_HackableController_v2_53.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Progression_Tag_Monitor_82_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_82
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|687407616", "687407616", "IOP09A_Main", "box_Progression_Tag_Monitor_82.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_82_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_59
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_82
  l1 = self.box_RewardController_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|928975984", "928975984", "IOP09A_Main", "box_Progression_Tag_Monitor_82.HasNOT", "box_RewardController_v3_59.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Set_Entity_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2021878454", "2021878454", "IOP09A_Main", "box_Set_Entity_52.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_SetInteger_v2_142_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323848"
  l0._graph = self
  l0._name = "box_Set_Entity_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1243551357"
  l0.Out = self.f_box_Set_Entity_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1420753088", "1420753088", "IOP09A_Main", "box_SetInteger_v2_142.Out", "box_Set_Entity_11.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_SetInteger_v2_143_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CLO_Sync = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372049706323858"
  l0._graph = self
  l0._name = "box_Set_Entity_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1798820397"
  l0.Out = self.f_box_Set_Entity_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|349498478", "349498478", "IOP09A_Main", "box_SetInteger_v2_143.Out", "box_Set_Entity_23.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_102_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_102
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1149217082", "1149217082", "IOP09A_Main", "box_AI_IOPController_102.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_96_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_96
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1009139834", "1009139834", "IOP09A_Main", "box_Progression_Tag_Monitor_96.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_96_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_34
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_96
  l1 = self.box_RewardController_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2020043650", "2020043650", "IOP09A_Main", "box_Progression_Tag_Monitor_96.HasNOT", "box_RewardController_v3_34.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_LightController_4_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1956909326", "1956909326", "IOP09A_Main", "box_LightController_4.Enabled", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MultipleOR_157_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_156()
  l0 = self.box_MultipleOR_157
  l1 = self.box_HackableController_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1034439696", "1034439696", "IOP09A_Main", "box_MultipleOR_157.Out", "box_HackableController_v2_156.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Compare_Integers_v2_77_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_76
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Seize_Card",
    id = "544819"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|785700247", "785700247", "IOP09A_Main", "box_Compare_Integers_v2_77.A_eq_B", "box_HackableController_v2_76.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_77_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1873063042"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_7_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_7_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1592210470", "1592210470", "IOP09A_Main", "box_Compare_Integers_v2_77.A_gt_B", "box_Compare_Integers_v2_7.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_77_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_117
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Delete_Account",
    id = "544817"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1490434851", "1490434851", "IOP09A_Main", "box_Compare_Integers_v2_77.A_lt_B", "box_HackableController_v2_117.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Boolean_v2_112_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_89
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1991790783", "1991790783", "IOP09A_Main", "box_Compare_Boolean_v2_112.A_is_False", "box_SetBoolean_v2_89.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_112_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_105
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1973227674", "1973227674", "IOP09A_Main", "box_Compare_Boolean_v2_112.A_is_True", "box_AI_IOPController_105.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_PhoneCommunicationController_148_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_132
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  l0 = self.box_PhoneCommunicationController_148
  l1 = self.box_MissionMessageController_v3_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2000343987", "2000343987", "IOP09A_Main", "box_PhoneCommunicationController_148.OnCommunicationFinished", "box_MissionMessageController_v3_132.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_IOP_CleanUp_1_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_1
  l1 = self.box_Timer_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|83104032", "83104032", "IOP09A_Main", "box_IOP_CleanUp_1.Completed", "box_Timer_v2_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_1_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_153()
  l0 = self.box_IOP_CleanUp_1
  l1 = self.box_CLOController_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2020909531", "2020909531", "IOP09A_Main", "box_IOP_CleanUp_1.DisconnectedAnimationPlayed", "box_CLOController_153.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Set_Entity_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2098820464", "2098820464", "IOP09A_Main", "box_Set_Entity_31.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_Set_Entity_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|730013931", "730013931", "IOP09A_Main", "box_Set_Entity_23.Out", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_MissionMessageController_v3_132_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1899765617"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_158_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_158_Out_1
  l0 = self.box_MissionMessageController_v3_132
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|147102000", "147102000", "IOP09A_Main", "box_MissionMessageController_v3_132.MessageCompleted", "box_Ordered_Output_158.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_67_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1628519939", "1628519939", "IOP09A_Main", "box_Compare_Integers_v2_67.A_eq_B", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Integers_v2_67_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|234015745"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_126_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_126_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_126_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1607227592", "1607227592", "IOP09A_Main", "box_Compare_Integers_v2_67.A_gt_B", "box_Compare_Integers_v2_126.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_67_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1724171914", "1724171914", "IOP09A_Main", "box_Compare_Integers_v2_67.A_lt_B", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ParticleFXController_v2_48_Started()
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
  l0._name = "box_ParticleFXController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1076206411"
  l0.Started = self.f_box_ParticleFXController_v2_65_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1523794617", "1523794617", "IOP09A_Main", "box_ParticleFXController_v2_48.Started", "box_ParticleFXController_v2_65.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_147_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1830256029"
  l0.Started = self.f_box_ParticleFXController_v2_48_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_147
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1441642424", "1441642424", "IOP09A_Main", "box_Timer_v2_147.TimeElapsed", "box_ParticleFXController_v2_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_54_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_54
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|206133792", "206133792", "IOP09A_Main", "box_AI_IOPController_54.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_107_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2107032834"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_16_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_107
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|838307656", "838307656", "IOP09A_Main", "box_Timer_v2_107.TimeElapsed", "box_LightController_16.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Integers_v2_7_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_104
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Pay_Alimony",
    id = "544820"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1636840201", "1636840201", "IOP09A_Main", "box_Compare_Integers_v2_7.A_eq_B", "box_HackableController_v2_104.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_7_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_86()
  l0 = self.box_MultipleOR_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2080014687", "2080014687", "IOP09A_Main", "box_Compare_Integers_v2_7.A_lt_B", "box_MultipleOR_86.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_53_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_49
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Donate_Money",
    id = "698177"
  }
  l0 = self.box_HackableController_v2_53
  l1 = self.box_HackableController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|813464448", "813464448", "IOP09A_Main", "box_HackableController_v2_53.OverrideHackingTextSet", "box_HackableController_v2_49.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_137_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1122024927", "1122024927", "IOP09A_Main", "box_Compare_Integers_v2_137.A_eq_B", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Integers_v2_137_A_gt_B()
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
  l0._name = "box_Compare_Integers_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|752394398"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_141_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_141_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_141_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|123178475", "123178475", "IOP09A_Main", "box_Compare_Integers_v2_137.A_gt_B", "box_Compare_Integers_v2_141.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_137_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1507771773", "1507771773", "IOP09A_Main", "box_Compare_Integers_v2_137.A_lt_B", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_158_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_33()
  l0 = self.box_Hackable_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|171438007", "171438007", "IOP09A_Main", "box_Ordered_Output_158.Out", "box_Hackable_Monitor_33.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_158_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_108
  l0.LayerName = "IOP09A_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1413204967", "1413204967", "IOP09A_Main", "box_Ordered_Output_158.Out", "box_MissionLayer_v2_108.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MultipleOR_155_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_14
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_2",
    id = "340528"
  }
  l0 = self.box_MultipleOR_155
  l1 = self.box_HackableController_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1565336623", "1565336623", "IOP09A_Main", "box_MultipleOR_155.Out", "box_HackableController_v2_14.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_Timer_v2_161_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1879133563"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_137_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_137_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_137_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_161
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2089109549", "2089109549", "IOP09A_Main", "box_Timer_v2_161.TimeElapsed", "box_Compare_Integers_v2_137.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 4
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1564944235"
  l0.Out = self.f_box_SetInteger_v2_143_Out
  l0 = self.box_RewardController_v3_17
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1806107143", "1806107143", "IOP09A_Main", "box_RewardController_v3_17.Out", "box_SetInteger_v2_143.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MultipleOR_121_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_90
  l0.Probability[0] = 0
  l0.Probability[1] = 0
  l0.Probability[2] = 0
  l0.Probability[3] = 1
  l0.Probability[4] = 0
  l0.Probability[5] = 0
  l0.Probability[6] = 0
  l0.Probability[7] = 0
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_121
  l1 = self.box_RandomOutput_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1764858540", "1764858540", "IOP09A_Main", "box_MultipleOR_121.Out", "box_RandomOutput_v2_90.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_69_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_69
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1953058777", "1953058777", "IOP09A_Main", "box_Progression_Tag_Monitor_69.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_69_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_50
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_69
  l1 = self.box_RewardController_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1691571580", "1691571580", "IOP09A_Main", "box_Progression_Tag_Monitor_69.HasNOT", "box_RewardController_v3_50.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_94_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_94
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|73522571", "73522571", "IOP09A_Main", "box_AI_IOPController_94.SendEventCompleted", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_115_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|86901830"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_115
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1153981414", "1153981414", "IOP09A_Main", "box_MultipleOR_115.Out", "box_LightController_122.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_IndexedOutput_V2_78_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1611092758", "1611092758", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_78_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2098254956", "2098254956", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_115.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_78_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1377779756", "1377779756", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_78_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1392877262", "1392877262", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_115.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_78_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1076410260", "1076410260", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_78_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1178121395", "1178121395", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_115.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_78_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|627723793", "627723793", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_78_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|652092607", "652092607", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_115.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_78_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1432434541", "1432434541", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_78_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_IndexedOutput_V2_78
  l1 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|86535158", "86535158", "IOP09A_Main", "box_IndexedOutput_V2_78.Output", "box_MultipleOR_115.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Timer_v2_100_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|851866545"
  l0.Out = self.f_box_Simple_Node_88_Out
  l0 = self.box_Timer_v2_100
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|982880757", "982880757", "IOP09A_Main", "box_Timer_v2_100.LoopingEnded", "box_Simple_Node_88.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_100_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_100_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_100_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_100_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_100_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_100_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_100
  l1 = self.box_IndexedOutput_V2_78
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2022027133", "2022027133", "IOP09A_Main", "box_Timer_v2_100.TimeElapsed", "box_IndexedOutput_V2_78.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_63
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0 = self.box_MultipleOR_30
  l1 = self.box_HackableController_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1502910598", "1502910598", "IOP09A_Main", "box_MultipleOR_30.Out", "box_HackableController_v2_63.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SetBoolean_v2_127_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_127
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_127_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_127
  self.Alarm = l0.Target
  l0 = self.box_HackableController_v2_119
  l0.HackableEntity = self.GoodHack
  l0 = self.box_SetBoolean_v2_127
  l1 = self.box_HackableController_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|780219882", "780219882", "IOP09A_Main", "box_SetBoolean_v2_127.SetFalse", "box_HackableController_v2_119.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetBoolean_v2_127_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_127
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_127_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_127
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_127_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_127
  self.Alarm = l0.Target
end
function export:f_box_RewardController_v3_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|123378629"
  l0.Out = self.f_box_SetInteger_v2_6_Out
  l0 = self.box_RewardController_v3_50
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1467383391", "1467383391", "IOP09A_Main", "box_RewardController_v3_50.Out", "box_SetInteger_v2_6.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_CLOController_153_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_153()
  l0 = self.box_CLOController_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1207133511", "1207133511", "IOP09A_Main", "box_CLOController_153.UnspawnedUser", "box_CLOController_153.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_RewardController_v3_120_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 7
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|532944221"
  l0.Out = self.f_box_SetInteger_v2_101_Out
  l0 = self.box_RewardController_v3_120
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|2074756710", "2074756710", "IOP09A_Main", "box_RewardController_v3_120.Out", "box_SetInteger_v2_101.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_LightController_16_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_100
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|801287798", "801287798", "IOP09A_Main", "box_LightController_16.Disabled", "box_Timer_v2_100.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_106
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1558769661", "1558769661", "IOP09A_Main", "box_Ordered_Output_116.Out", "box_Timer_v2_106.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_116_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_163()
  l0 = self.box_Security_Camera_Monitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1253592279", "1253592279", "IOP09A_Main", "box_Ordered_Output_116.Out", "box_Security_Camera_Monitor_163.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_89_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.BadVar = l0.Target
  l0 = self.box_AI_IOPController_25
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0 = self.box_SetBoolean_v2_89
  l1 = self.box_AI_IOPController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|620667313", "620667313", "IOP09A_Main", "box_SetBoolean_v2_89.Out", "box_AI_IOPController_25.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_89_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_89_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.BadVar = l0.Target
end
function export:f_box_RewardController_v3_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 8
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|991619609"
  l0.Out = self.f_box_SetInteger_v2_36_Out
  l0 = self.box_RewardController_v3_34
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1596386796", "1596386796", "IOP09A_Main", "box_RewardController_v3_34.Out", "box_SetInteger_v2_36.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Progression_Tag_Monitor_113_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_Progression_Tag_Monitor_113
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1892331700", "1892331700", "IOP09A_Main", "box_Progression_Tag_Monitor_113.Has", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_113_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_47
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_113
  l1 = self.box_RewardController_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|917578595", "917578595", "IOP09A_Main", "box_Progression_Tag_Monitor_113.HasNOT", "box_RewardController_v3_47.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Compare_Boolean_v2_74_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_92
  l0.Bool = self.GoodVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|221264744", "221264744", "IOP09A_Main", "box_Compare_Boolean_v2_74.A_is_False", "box_SetBoolean_v2_92.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_74_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_55
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1957879134", "1957879134", "IOP09A_Main", "box_Compare_Boolean_v2_74.A_is_True", "box_AI_IOPController_55.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Security_Camera_Monitor_163_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_162
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_163
  l1 = self.box_Timer_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1150877195", "1150877195", "IOP09A_Main", "box_Security_Camera_Monitor_163.Disabled", "box_Timer_v2_162.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_163_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_163()
  l0 = self.box_Security_Camera_Monitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1683755423", "1683755423", "IOP09A_Main", "box_Security_Camera_Monitor_163.OnEndAccessCamera", "box_Security_Camera_Monitor_163.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Security_Camera_Monitor_20_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_135
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_20
  l1 = self.box_AI_IOPController_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|974548289", "974548289", "IOP09A_Main", "box_Security_Camera_Monitor_20.OnStartAccessCamera", "box_AI_IOPController_135.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_20_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_140
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_20
  l1 = self.box_AI_IOPController_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|1535046631", "1535046631", "IOP09A_Main", "box_Security_Camera_Monitor_20.OnStartExitCamera", "box_AI_IOPController_140.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:OnEnter_box_SecurityCamController_15()
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
  l0._name = "box_SecurityCamController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09A.domino|@IOP09A_Main|4411898"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_15_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_15_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_HackableController_v2_97()
  local l0
  l0 = self.box_HackableController_v2_97
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_HackableController_v2_57()
  local l0
  l0 = self.box_HackableController_v2_57
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_64()
end
function export:OnEnter_box_HackableController_v2_156()
  local l0
  l0 = self.box_HackableController_v2_156
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_HackableController_v2_154()
  local l0
  l0 = self.box_HackableController_v2_154
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_Multiple_AND_21()
end
function export:OnEnter_box_MultipleOR_86()
end
function export:OnEnter_box_Hackable_Monitor_33()
  local l0
  l0 = self.box_Hackable_Monitor_33
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_Hackable_Monitor_61()
  local l0
  l0 = self.box_Hackable_Monitor_61
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_MultipleOR_111()
end
function export:OnEnter_box_IOPMonitor_24()
end
function export:OnEnter_box_MultipleOR_114()
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_MultipleOR_157()
end
function export:OnEnter_box_MultipleOR_155()
end
function export:OnEnter_box_MultipleOR_121()
end
function export:OnEnter_box_MultipleOR_115()
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_CLOController_153()
  local l0
  l0 = self.box_CLOController_153
  l0.CLO = self.CLO
  l0.User = self.Npc
end
function export:OnEnter_box_Security_Camera_Monitor_163()
  local l0
  l0 = self.box_Security_Camera_Monitor_163
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_Security_Camera_Monitor_20()
  local l0
  l0 = self.box_Security_Camera_Monitor_20
  l0.CameraEntity = self.ATM_Camera
end
_compilerVersion = 4
