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
  self._name = "IOP09B_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.ATM_Camera = "9223372049706324004"
  self.GoodHack = "9223372066503482691"
  self.GoodVar = 0
  self.BarkSoundEntity_0 = "9223372049706323993"
  self.CLO_Sync = 6
  self.Npc = nil
  self.Money3 = "9223372049706323999"
  self.NPC_List = {}
  self.BadHack = "9223372066503482693"
  self.RolesList = {"Atm.Person"}
  self.BadVar = 0
  self.Money = "9223372049706323997"
  self.CLO = nil
  self.Light = "9223372049706323991"
  self.MakeItRain = 0
  self.Money2 = "9223372049706324006"
  self.Alarm = 0
  self.box_HackableController_v2_3 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_3
  l0._graph = self
  l0._name = "box_HackableController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|12100740"
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
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|47636026"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_135 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_135
  l0._graph = self
  l0._name = "box_MultipleOR_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|51264223"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_135_Out
  self.box_SetBoolean_v2_113 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_113
  l0._graph = self
  l0._name = "box_SetBoolean_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|60010632"
  l0.Out = self.f_box_SetBoolean_v2_113_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_113_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_113_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_113_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_113_SetFromBool
  self.box_IndexedOutput_V2_81 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_81
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|62891094"
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
  self.box_AI_IOPController_98 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_98
  l0._graph = self
  l0._name = "box_AI_IOPController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|70888386"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_98_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MissionMessageController_v3_151 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_151
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|80706852"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_151_MessageCompleted
  self.box_RewardController_v3_29 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_29
  l0._graph = self
  l0._name = "box_RewardController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|115768369"
  l0.Out = self.f_box_RewardController_v3_29_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|137150198"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_27_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_51 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_51
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|151389657"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_51_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_51_HasNOT
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|153136654"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_HackableController_v2_63 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_63
  l0._graph = self
  l0._name = "box_HackableController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|153481720"
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
  self.box_HackableController_v2_153 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_153
  l0._graph = self
  l0._name = "box_HackableController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|161407227"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_153_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_21 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_21
  l0._graph = self
  l0._name = "box_HackableController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|202259458"
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
  self.box_MultipleOR_99 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|206163748"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_MultipleOR_23 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|220264255"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_AI_IOPController_106 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_106
  l0._graph = self
  l0._name = "box_AI_IOPController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|224520854"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_106_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|263164425"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|289070562"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|290083741"
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
  self.box_PlaySound_v2_102 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_102
  l0._graph = self
  l0._name = "box_PlaySound_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|315350196"
  l0.Out = self.f_box_PlaySound_v2_102_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Progression_Tag_Monitor_48 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_48
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|327220029"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_48_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_48_HasNOT
  self.box_HackableController_v2_95 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_95
  l0._graph = self
  l0._name = "box_HackableController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|331076890"
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
  self.box_SetBoolean_v2_78 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_78
  l0._graph = self
  l0._name = "box_SetBoolean_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|336300392"
  l0.Out = self.f_box_SetBoolean_v2_78_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_78_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_78_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_78_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_78_SetFromBool
  self.box_Timer_v2_157 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_157
  l0._graph = self
  l0._name = "box_Timer_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|338248065"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_25 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_25
  l0._graph = self
  l0._name = "box_MissionLayer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|338590063"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_25_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_8 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_8
  l0._graph = self
  l0._name = "box_AI_IOPController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|346741182"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_8_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Security_Camera_Monitor_73 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_73
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|358376975"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_73_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_73_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|359231639"
  l0.Out = self.f_box_Timer_v2_10_Out
  l0.Started = self.f_box_Timer_v2_10_Started
  l0.Stopped = self.f_box_Timer_v2_10_Stopped
  l0.Paused = self.f_box_Timer_v2_10_Paused
  l0.Resumed = self.f_box_Timer_v2_10_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_10_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_33 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_33
  l0._graph = self
  l0._name = "box_AI_IOPController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|367044289"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_33_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_129 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_129
  l0._graph = self
  l0._name = "box_MultipleOR_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|373914379"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_129_Out
  self.box_PlaySound_v2_68 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_68
  l0._graph = self
  l0._name = "box_PlaySound_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|387714875"
  l0.Out = self.f_box_PlaySound_v2_68_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_159 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_159
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|401277000"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_159_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_159_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|406306112"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_PlaySound_v2_138 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_138
  l0._graph = self
  l0._name = "box_PlaySound_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|410958311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_111 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_111
  l0._graph = self
  l0._name = "box_AI_IOPController_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|428646411"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_111_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_11 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_11
  l0._graph = self
  l0._name = "box_RewardController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|435842497"
  l0.Out = self.f_box_RewardController_v3_11_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_103 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_103
  l0._graph = self
  l0._name = "box_AI_IOPController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|437508759"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_103_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_59 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|485822913"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|488767242"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_HackableController_v2_42 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_42
  l0._graph = self
  l0._name = "box_HackableController_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|509147420"
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
  self.box_AI_IOPController_119 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_119
  l0._graph = self
  l0._name = "box_AI_IOPController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|512438412"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_119_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|524084650"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_116_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_24 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_24
  l0._graph = self
  l0._name = "box_Multiple_AND_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|524587013"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_24_Out
  self.box_Progression_Tag_Monitor_89 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_89
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|573673286"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_89_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_89_HasNOT
  self.box_PlaySound_v2_136 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_136
  l0._graph = self
  l0._name = "box_PlaySound_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|574721637"
  l0.Out = self.f_box_PlaySound_v2_136_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|575743465"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_AI_IOPController_104 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_104
  l0._graph = self
  l0._name = "box_AI_IOPController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|579609456"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_104_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|591000838"
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
  self.box_SetBoolean_v2_92 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_92
  l0._graph = self
  l0._name = "box_SetBoolean_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|605745886"
  l0.Out = self.f_box_SetBoolean_v2_92_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_92_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_92_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_92_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_92_SetFromBool
  self.box_IOP_CleanUp_7 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_7
  l0._graph = self
  l0._name = "box_IOP_CleanUp_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|619295165"
  l0.Completed = self.f_box_IOP_CleanUp_7_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_7_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_IOPMonitor_41 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_41
  l0._graph = self
  l0._name = "box_IOPMonitor_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|655949159"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_41_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_41_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_41_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_41_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_96 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_96
  l0._graph = self
  l0._name = "box_AI_IOPController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|657267595"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_96_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_154 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_154
  l0._graph = self
  l0._name = "box_HackableController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|689910573"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_154_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_154_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_RewardController_v3_123 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_123
  l0._graph = self
  l0._name = "box_RewardController_v3_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|735552127"
  l0.Out = self.f_box_RewardController_v3_123_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_RewardController_v3_131 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_131
  l0._graph = self
  l0._name = "box_RewardController_v3_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|818807385"
  l0.Out = self.f_box_RewardController_v3_131_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|823290958"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_160_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RandomOutput_v2_142 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_142
  l0._graph = self
  l0._name = "box_RandomOutput_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|840761335"
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
  self.box_MultipleOR_155 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_155
  l0._graph = self
  l0._name = "box_MultipleOR_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|904062958"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_155_Out
  self.box_HackableController_v2_127 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_127
  l0._graph = self
  l0._name = "box_HackableController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|919915715"
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
  self.box_PlaySound_v2_107 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_107
  l0._graph = self
  l0._name = "box_PlaySound_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|925065991"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_107_Started
  l0.Finished = DummyFunction
  self.box_HackableController_v2_141 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_141
  l0._graph = self
  l0._name = "box_HackableController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|945730562"
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
  self.box_HackableController_v2_144 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_144
  l0._graph = self
  l0._name = "box_HackableController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|972552504"
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
  self.box_RewardController_v3_114 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_114
  l0._graph = self
  l0._name = "box_RewardController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1003915964"
  l0.Out = self.f_box_RewardController_v3_114_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionController_v4_72 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_72
  l0._graph = self
  l0._name = "box_MissionController_v4_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1070310688"
  self.box_HackableController_v2_79 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_79
  l0._graph = self
  l0._name = "box_HackableController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1075795455"
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
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1125364808"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1133765352"
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
  self.box_RewardController_v3_6 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_6
  l0._graph = self
  l0._name = "box_RewardController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1137400492"
  l0.Out = self.f_box_RewardController_v3_6_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_14 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_14
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1140627844"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_14_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_14_HasNOT
  self.box_CinematicPrep_115 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_115
  l0._graph = self
  l0._name = "box_CinematicPrep_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1163058209"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_IOP_StartUp_61 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_61
  l0._graph = self
  l0._name = "box_IOP_StartUp_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1184780936"
  l0.Out = self.f_box_IOP_StartUp_61_Out
  self.box_Timer_v2_65 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_65
  l0._graph = self
  l0._name = "box_Timer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1195561993"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_83 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_83
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1201133151"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_83_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_83_HasNOT
  self.box_MultipleOR_128 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_128
  l0._graph = self
  l0._name = "box_MultipleOR_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1248056570"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_128_Out
  self.box_HackableController_v2_85 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_85
  l0._graph = self
  l0._name = "box_HackableController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1287183765"
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
  self.box_CLOController_108 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_108
  l0._graph = self
  l0._name = "box_CLOController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1350778327"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_108_OnUserInPlace
  self.box_AI_IOPController_80 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_80
  l0._graph = self
  l0._name = "box_AI_IOPController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1416586742"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_88 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_88
  l0._graph = self
  l0._name = "box_HackableController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1436102901"
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
  self.box_RewardController_v3_67 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_67
  l0._graph = self
  l0._name = "box_RewardController_v3_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1447367721"
  l0.Out = self.f_box_RewardController_v3_67_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOPController_66 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_66
  l0._graph = self
  l0._name = "box_AI_IOPController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1493324653"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_66_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_118 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_118
  l0._graph = self
  l0._name = "box_PlaySound_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1609481326"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_58 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_58
  l0._graph = self
  l0._name = "box_Timer_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1622892164"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_137 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_137
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1638459310"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_137_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_137_HasNOT
  self.box_PhoneCommunicationController_148 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_148
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1668285709"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_148_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Progression_Tag_Monitor_130 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_130
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1712449360"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_130_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_130_HasNOT
  self.box_AI_IOPController_140 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_140
  l0._graph = self
  l0._name = "box_AI_IOPController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1732830659"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_140_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_2 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_2
  l0._graph = self
  l0._name = "box_AI_IOPController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1734642071"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_2_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Hackable_Monitor_121 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_121
  l0._graph = self
  l0._name = "box_Hackable_Monitor_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1747434169"
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
  self.box_ListWriter_53 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_53
  l0._graph = self
  l0._name = "box_ListWriter_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1775558321"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_53_Added
  l0.Removed = self.f_box_ListWriter_53_Removed
  l0.Out = self.f_box_ListWriter_53_Out
  self.box_RewardController_v3_19 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_19
  l0._graph = self
  l0._name = "box_RewardController_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1791456579"
  l0.Out = self.f_box_RewardController_v3_19_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1794138859"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_75 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_75
  l0._graph = self
  l0._name = "box_HackableController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1824265282"
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
  self.box_Hackable_Monitor_101 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_101
  l0._graph = self
  l0._name = "box_Hackable_Monitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1849605734"
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
  self.box_AI_IOPController_44 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_44
  l0._graph = self
  l0._name = "box_AI_IOPController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1851896348"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_44_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_4 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_4
  l0._graph = self
  l0._name = "box_SetBoolean_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1947622628"
  l0.Out = self.f_box_SetBoolean_v2_4_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_4_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_4_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_4_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_4_SetFromBool
  self.box_HackableController_v2_69 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_69
  l0._graph = self
  l0._name = "box_HackableController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1980358943"
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
  self.box_Timer_v2_158 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_158
  l0._graph = self
  l0._name = "box_Timer_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1995304451"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_158_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_22 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_22
  l0._graph = self
  l0._name = "box_AI_IOPController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1999072997"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_22_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_110 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_110
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1999906082"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_110_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_110_HasNOT
  self.box_SetBoolean_v2_86 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_86
  l0._graph = self
  l0._name = "box_SetBoolean_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2001090130"
  l0.Out = self.f_box_SetBoolean_v2_86_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_86_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_86_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_86_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_86_SetFromBool
  self.box_MissionMessageController_v3_146 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_146
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2017300394"
  l0.Out = self.f_box_MissionMessageController_v3_146_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_64 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_64
  l0._graph = self
  l0._name = "box_HackableController_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2057477196"
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
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2060563601"
  l0.Out = self.f_box_PlaySound_v2_15_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_5 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_5
  l0._graph = self
  l0._name = "box_PlaySound_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2094523530"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_5_Started
  l0.Finished = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|906353712", "906353712", "IOP09B_Main", "CheckPoint_0", "box_MultipleOR_129.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_129()
  l0 = self.box_MultipleOR_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|710442744", "710442744", "IOP09B_Main", "In", "box_MultipleOR_129.Input", self, l0)
  l0:Input(0)
end
function export:f_box_LightController_20_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|974142253"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_149_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_149_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1742313611", "1742313611", "IOP09B_Main", "box_LightController_20.Disabled", "box_Ordered_Output_149.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MakeItRain
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|383566744"
  l0.Out = self.f_box_Compare_Boolean_v2_112_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_112_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_60
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|214476601", "214476601", "IOP09B_Main", "box_AI_IOPController_60.SendEventCompleted", "box_Compare_Boolean_v2_112.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_135_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|369737602"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_MultipleOR_135
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|752450490", "752450490", "IOP09B_Main", "box_MultipleOR_135.Out", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|909015005", "909015005", "IOP09B_Main", "box_SetBoolean_v2_113.SetFalse", "box_SetBoolean_v2_59.False", l0, l1)
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
function export:f_box_IndexedOutput_V2_81_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1851479830", "1851479830", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_81_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|475826451", "475826451", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_81_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1149140294", "1149140294", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_81_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|977170139", "977170139", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_81_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|938542264", "938542264", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_81_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|905687874", "905687874", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_81_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|309095178", "309095178", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_81_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|668976905", "668976905", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_81_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|644441319", "644441319", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_81_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_IndexedOutput_V2_81
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1465093148", "1465093148", "IOP09B_Main", "box_IndexedOutput_V2_81.Output", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Compare_Integers_v2_76_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_22
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character6"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|523903204", "523903204", "IOP09B_Main", "box_Compare_Integers_v2_76.A_eq_B", "box_AI_IOPController_22.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1768608701"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_139_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_139_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1747444513", "1747444513", "IOP09B_Main", "box_Compare_Integers_v2_76.A_gt_B", "box_Compare_Integers_v2_139.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1480562452", "1480562452", "IOP09B_Main", "box_Compare_Integers_v2_76.A_lt_B", "box_AI_IOPController_98.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_AI_IOPController_98_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_98
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1033716234", "1033716234", "IOP09B_Main", "box_AI_IOPController_98.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_MissionMessageController_v3_151_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|228689198"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_MissionMessageController_v3_151
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|609487069", "609487069", "IOP09B_Main", "box_MissionMessageController_v3_151.MessageCompleted", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_17_CollisionsDisabled()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1976727420", "1976727420", "IOP09B_Main", "box_CollisionController_17.CollisionsDisabled", "box_ListWriter_53.Add", clone, l0)
  l0:Add()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|793627919"
  l0.Out = self.f_box_SetInteger_v2_71_Out
  l0 = self.box_RewardController_v3_29
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1561828964", "1561828964", "IOP09B_Main", "box_RewardController_v3_29.Out", "box_SetInteger_v2_71.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_27_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_AI_IOPController_27
  l1 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|982361154", "982361154", "IOP09B_Main", "box_AI_IOPController_27.SendEventCompleted", "box_Multiple_AND_24.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Progression_Tag_Monitor_51_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_51
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|17968923", "17968923", "IOP09B_Main", "box_Progression_Tag_Monitor_51.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_51_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_19
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_51
  l1 = self.box_RewardController_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|562050540", "562050540", "IOP09B_Main", "box_Progression_Tag_Monitor_51.HasNOT", "box_RewardController_v3_19.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_142
  l0.Probability[0] = 1
  l0.Probability[1] = 0
  l0.Probability[2] = 0
  l0.Probability[3] = 0
  l0.Probability[4] = 0
  l0.Probability[5] = 0
  l0.Probability[6] = 0
  l0.Probability[7] = 0
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_40
  l1 = self.box_RandomOutput_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2084642490", "2084642490", "IOP09B_Main", "box_MultipleOR_40.Out", "box_RandomOutput_v2_142.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1212799850", "1212799850", "IOP09B_Main", "box_HackableController_v2_63.ProfilingEnabled", "box_HackableController_v2_52.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2100872443"
  l0.Started = self.f_box_ParticleFXController_v2_50_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|887828807", "887828807", "IOP09B_Main", "box_ParticleFXController_v2_45.Started", "box_ParticleFXController_v2_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_153_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1041428457", "1041428457", "IOP09B_Main", "box_HackableController_v2_153.Disabled", "box_HackableController_v2_154.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2129091419"
  l0.Out = self.f_box_Simple_Node_54_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1675865476", "1675865476", "IOP09B_Main", "box_Ordered_Output_143.Out", "box_Simple_Node_54.In", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1416170543"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|350913548", "350913548", "IOP09B_Main", "box_Ordered_Output_143.Out", "box_Simple_Node_1.In", clone, l0)
  l0:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1814548245", "1814548245", "IOP09B_Main", "box_MultipleOR_99.Out", "box_HackableController_v2_85.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1426819904"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_97_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_97_Out_1
  l0 = self.box_MultipleOR_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|219282550", "219282550", "IOP09B_Main", "box_MultipleOR_23.Out", "box_Ordered_Output_97.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_106_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_106
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1128910286", "1128910286", "IOP09B_Main", "box_AI_IOPController_106.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(2)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1769745054", "1769745054", "IOP09B_Main", "box_Ordered_Output_156.Out", "box_Hackable_Monitor_101.Disable", clone, l0)
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
  l0 = self.box_MissionLayer_v2_25
  l0.LayerName = "IOP09B_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1451911480", "1451911480", "IOP09B_Main", "box_Ordered_Output_156.Out", "box_MissionLayer_v2_25.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_105()
  l0 = self.box_Timer_v2_9
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|820929472", "820929472", "IOP09B_Main", "box_Timer_v2_9.TimeElapsed", "box_SecurityCamController_105.SetCanExit", l0, l1)
  l1:SetCanExit()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|812526697", "812526697", "IOP09B_Main", "box_Simple_Node_132.Out", "box_MultipleOR_135.Input", clone, l0)
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
  l0.Entity = "9223372049706324008"
  l0._graph = self
  l0._name = "box_Set_Entity_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1916704840"
  l0.Out = self.f_box_Set_Entity_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1553073354", "1553073354", "IOP09B_Main", "box_SetInteger_v2_134.Out", "box_Set_Entity_55.FromEntity", clone, l0)
  l0:FromEntity()
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
  l0.MainLayer = "IOP09B_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863887"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|757999440", "757999440", "IOP09B_Main", "box_Get_Player_ID_34.Out", "box_IOP_StartUp_61.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2133804187"
  l0.Enabled = self.f_box_LightController_117_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_32
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1920280380", "1920280380", "IOP09B_Main", "box_MultipleOR_32.Out", "box_LightController_117.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_26_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|194950546"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_143_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_143_Out_1
  l0 = self.box_HackableController_v2_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|899795088", "899795088", "IOP09B_Main", "box_HackableController_v2_26.OverrideHackingTextSet", "box_Ordered_Output_143.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|987498801", "987498801", "IOP09B_Main", "box_Compare_Integers_v2_100.A_eq_B", "box_MultipleOR_128.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1190968783"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_39_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_39_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_39_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1427315222", "1427315222", "IOP09B_Main", "box_Compare_Integers_v2_100.A_gt_B", "box_Compare_Integers_v2_39.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1794374003", "1794374003", "IOP09B_Main", "box_Compare_Integers_v2_100.A_lt_B", "box_MultipleOR_128.Input", clone, l0)
  l0:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1273194496", "1273194496", "IOP09B_Main", "box_Ordered_Output_82.Out", "box_Timer_v2_30.Start", clone, l0)
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
  self:OnEnter_box_Security_Camera_Monitor_159()
  l0 = self.box_Security_Camera_Monitor_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1358018429", "1358018429", "IOP09B_Main", "box_Ordered_Output_82.Out", "box_Security_Camera_Monitor_159.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_102_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2091400003"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_102
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1303610866", "1303610866", "IOP09B_Main", "box_PlaySound_v2_102.Out", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_48_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1272784499", "1272784499", "IOP09B_Main", "box_Progression_Tag_Monitor_48.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_48_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_6
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_RewardController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1218407958", "1218407958", "IOP09B_Main", "box_Progression_Tag_Monitor_48.HasNOT", "box_RewardController_v3_6.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_95_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1938868385", "1938868385", "IOP09B_Main", "box_HackableController_v2_95.Disabled", "box_HackableController_v2_141.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_95_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|399048132", "399048132", "IOP09B_Main", "box_HackableController_v2_95.Enabled", "box_HackableController_v2_141.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_95_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1628240771", "1628240771", "IOP09B_Main", "box_HackableController_v2_95.ProfilingDisabled", "box_HackableController_v2_141.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_95_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_95
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|978258704", "978258704", "IOP09B_Main", "box_HackableController_v2_95.ProfilingEnabled", "box_HackableController_v2_141.EnableProfiling", l0, l1)
  l1:EnableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1847534766", "1847534766", "IOP09B_Main", "box_SetBoolean_v2_78.Out", "box_AI_IOPController_44.SendEvent", l0, l1)
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
function export:f_box_Timer_v2_157_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1043047732"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_74_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_74_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_74_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_157
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1179146730", "1179146730", "IOP09B_Main", "box_Timer_v2_157.TimeElapsed", "box_Compare_Integers_v2_74.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_25_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_25
  l1 = self.box_MissionController_v4_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|191774691", "191774691", "IOP09B_Main", "box_MissionLayer_v2_25.Unloaded", "box_MissionController_v4_72.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_IOPController_8_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_73()
  l0 = self.box_AI_IOPController_8
  l1 = self.box_Security_Camera_Monitor_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|788767853", "788767853", "IOP09B_Main", "box_AI_IOPController_8.SendEventCompleted", "box_Security_Camera_Monitor_73.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Security_Camera_Monitor_73_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_80
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_73
  l1 = self.box_AI_IOPController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1485246093", "1485246093", "IOP09B_Main", "box_Security_Camera_Monitor_73.OnStartAccessCamera", "box_AI_IOPController_80.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_73_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_8
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_73
  l1 = self.box_AI_IOPController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2136659617", "2136659617", "IOP09B_Main", "box_Security_Camera_Monitor_73.OnStartExitCamera", "box_AI_IOPController_8.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_10_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1248777759"
  l0.Out = self.f_box_Simple_Node_122_Out
  l0 = self.box_Timer_v2_10
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1629866081", "1629866081", "IOP09B_Main", "box_Timer_v2_10.LoopingEnded", "box_Simple_Node_122.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_10_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_10_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_10_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_10_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_10
  l1 = self.box_IndexedOutput_V2_81
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1339184853", "1339184853", "IOP09B_Main", "box_Timer_v2_10.TimeElapsed", "box_IndexedOutput_V2_81.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_33_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|264527223"
  l0.Out = self.f_box_Simple_Node_132_Out
  l0 = self.box_AI_IOPController_33
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|269859093", "269859093", "IOP09B_Main", "box_AI_IOPController_33.StartEmptyRoomCompleted", "box_Simple_Node_132.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|149483255", "149483255", "IOP09B_Main", "box_Ordered_Output_46.Out", "box_Security_Camera_Monitor_73.Enable", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2008644754"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_56_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_56_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_56_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1824303689", "1824303689", "IOP09B_Main", "box_Ordered_Output_46.Out", "box_Compare_Integers_v2_56.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_129_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|286721502"
  l0.Out = self.f_box_Get_Player_ID_34_Out
  l0 = self.box_MultipleOR_129
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|228830497", "228830497", "IOP09B_Main", "box_MultipleOR_129.Out", "box_Get_Player_ID_34.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_112_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_5
  l0.SoundId = "soundbinary/3692441989.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|777488345", "777488345", "IOP09B_Main", "box_Compare_Boolean_v2_112.A_is_True", "box_PlaySound_v2_5.Play", clone, l0)
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
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|516908765", "516908765", "IOP09B_Main", "box_Compare_Boolean_v2_112.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PlaySound_v2_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l1 = self.box_IOP_CleanUp_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|651575071", "651575071", "IOP09B_Main", "box_PlaySound_v2_68.Out", "box_IOP_CleanUp_7.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_159_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_160
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_159
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|192465184", "192465184", "IOP09B_Main", "box_Security_Camera_Monitor_159.Disabled", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_159_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_159()
  l0 = self.box_Security_Camera_Monitor_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1986727697", "1986727697", "IOP09B_Main", "box_Security_Camera_Monitor_159.OnEndAccessCamera", "box_Security_Camera_Monitor_159.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2122429728"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_38
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1450304173", "1450304173", "IOP09B_Main", "box_MultipleOR_38.Out", "box_LightController_49.Disable", l0, l1)
  l1:Disable()
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|458898449", "458898449", "IOP09B_Main", "box_Set_Entity_145.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Set_Entity_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|394591262", "394591262", "IOP09B_Main", "box_Set_Entity_16.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(6)
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
  l0.Entity = "9223372049706324007"
  l0._graph = self
  l0._name = "box_Set_Entity_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1871930990"
  l0.Out = self.f_box_Set_Entity_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|191233225", "191233225", "IOP09B_Main", "box_SetInteger_v2_125.Out", "box_Set_Entity_18.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_AI_IOPController_111_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_111
  l1 = self.box_Timer_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1555757169", "1555757169", "IOP09B_Main", "box_AI_IOPController_111.SendEventCompleted", "box_Timer_v2_157.Start", l0, l1)
  l1:Start()
end
function export:f_box_RewardController_v3_11_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|943307540"
  l0.Out = self.f_box_SetInteger_v2_126_Out
  l0 = self.box_RewardController_v3_11
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1308848342", "1308848342", "IOP09B_Main", "box_RewardController_v3_11.Out", "box_SetInteger_v2_126.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_103_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_103
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|735850076", "735850076", "IOP09B_Main", "box_AI_IOPController_103.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(3)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|88786557", "88786557", "IOP09B_Main", "box_Compare_Integers_v2_36.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(2)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2048130897"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_124_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_124_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_124_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|804968692", "804968692", "IOP09B_Main", "box_Compare_Integers_v2_36.A_gt_B", "box_Compare_Integers_v2_124.In", clone, l0)
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
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1275485187", "1275485187", "IOP09B_Main", "box_Compare_Integers_v2_36.A_lt_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1781099688", "1781099688", "IOP09B_Main", "box_SetBoolean_v2_59.SetFalse", "box_HackableController_v2_88.DisableProfiling", l0, l1)
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
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_108
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_13
  l1 = self.box_CLOController_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1779058372", "1779058372", "IOP09B_Main", "box_MultipleOR_13.Out", "box_CLOController_108.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_AI_IOPController_119_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_135()
  l0 = self.box_AI_IOPController_119
  l1 = self.box_MultipleOR_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1280904246", "1280904246", "IOP09B_Main", "box_AI_IOPController_119.StartCompleted", "box_MultipleOR_135.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_116_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_116()
  l0 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1646308021", "1646308021", "IOP09B_Main", "box_CLOController_116.UnspawnedUser", "box_CLOController_116.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Multiple_AND_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_136
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_24
  l1 = self.box_PlaySound_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1166086588", "1166086588", "IOP09B_Main", "box_Multiple_AND_24.Out", "box_PlaySound_v2_136.Play", l0, l1)
  l1:Play()
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|371313867", "371313867", "IOP09B_Main", "box_Set_Entity_94.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|81883011", "81883011", "IOP09B_Main", "box_Compare_Integers_v2_37.A_eq_B", "box_HackableController_v2_42.SetOverrideHackingText", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1714508427", "1714508427", "IOP09B_Main", "box_Compare_Integers_v2_37.A_lt_B", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Progression_Tag_Monitor_89_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_89
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2022374666", "2022374666", "IOP09B_Main", "box_Progression_Tag_Monitor_89.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_89_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_11
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_89
  l1 = self.box_RewardController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1982839384", "1982839384", "IOP09B_Main", "box_Progression_Tag_Monitor_89.HasNOT", "box_RewardController_v3_11.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PlaySound_v2_136_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_58
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_136
  l1 = self.box_Timer_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|265286755", "265286755", "IOP09B_Main", "box_PlaySound_v2_136.Out", "box_Timer_v2_58.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2056272197", "2056272197", "IOP09B_Main", "box_MultipleOR_84.Out", "box_HackableController_v2_69.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_104_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_104
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2066477580", "2066477580", "IOP09B_Main", "box_AI_IOPController_104.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_52_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Donate_Money",
    id = "698177"
  }
  l0 = self.box_HackableController_v2_52
  l1 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1522695160", "1522695160", "IOP09B_Main", "box_HackableController_v2_52.OverrideHackingTextSet", "box_HackableController_v2_26.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|897360696", "897360696", "IOP09B_Main", "box_SetBoolean_v2_92.Out", "box_AI_IOPController_111.SendEvent", l0, l1)
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
function export:f_box_IOP_CleanUp_7_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_7
  l1 = self.box_Timer_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|453076092", "453076092", "IOP09B_Main", "box_IOP_CleanUp_7.Completed", "box_Timer_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_7_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_116()
  l0 = self.box_IOP_CleanUp_7
  l1 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1477882496", "1477882496", "IOP09B_Main", "box_IOP_CleanUp_7.DisconnectedAnimationPlayed", "box_CLOController_116.UnspawnUser", l0, l1)
  l1:UnspawnUser()
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|971239383", "971239383", "IOP09B_Main", "box_Set_Entity_87.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(3)
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
  l0.Entity = "9223372049706324011"
  l0._graph = self
  l0._name = "box_Set_Entity_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1367686900"
  l0.Out = self.f_box_Set_Entity_62_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|525285726", "525285726", "IOP09B_Main", "box_SetInteger_v2_31.Out", "box_Set_Entity_62.FromEntity", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|433219340", "433219340", "IOP09B_Main", "box_Compare_Integers_v2_90.A_eq_B", "box_AI_IOPController_103.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|69149401"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_76_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_76_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_76_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|714005714", "714005714", "IOP09B_Main", "box_Compare_Integers_v2_90.A_gt_B", "box_Compare_Integers_v2_76.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2022570744", "2022570744", "IOP09B_Main", "box_Compare_Integers_v2_90.A_lt_B", "box_AI_IOPController_106.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_IOPMonitor_41_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_IOPMonitor_41
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|33987486", "33987486", "IOP09B_Main", "box_IOPMonitor_41.ActivateHackables", "box_HackableController_v2_95.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_41_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_IOPMonitor_41
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1813467795", "1813467795", "IOP09B_Main", "box_IOPMonitor_41.DeactivateHackables", "box_HackableController_v2_95.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_41_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_68
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_41
  l1 = self.box_PlaySound_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|423132810", "423132810", "IOP09B_Main", "box_IOPMonitor_41.Disabled", "box_PlaySound_v2_68.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_41_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_41()
  l0 = self.box_IOPMonitor_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1908728311", "1908728311", "IOP09B_Main", "box_IOPMonitor_41.IOPComplete", "box_IOPMonitor_41.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AI_IOPController_96_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_96
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|73814934", "73814934", "IOP09B_Main", "box_AI_IOPController_96.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(6)
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|641951847", "641951847", "IOP09B_Main", "box_Set_Entity_28.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_154_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|934543196", "934543196", "IOP09B_Main", "box_HackableController_v2_154.Disabled", "box_HackableController_v2_153.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_154_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_153()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2076170149", "2076170149", "IOP09B_Main", "box_HackableController_v2_154.ProfilingDisabled", "box_HackableController_v2_153.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  l0.Entity = "9223372049706324009"
  l0._graph = self
  l0._name = "box_Set_Entity_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|527467144"
  l0.Out = self.f_box_Set_Entity_94_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1430021286", "1430021286", "IOP09B_Main", "box_SetInteger_v2_93.Out", "box_Set_Entity_94.FromEntity", clone, l0)
  l0:FromEntity()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|285485338"
  l0.Out = self.f_box_SetInteger_v2_134_Out
  l0 = self.box_RewardController_v3_123
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|761173798", "761173798", "IOP09B_Main", "box_RewardController_v3_123.Out", "box_SetInteger_v2_134.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_LightController_43_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_10
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1598513345", "1598513345", "IOP09B_Main", "box_LightController_43.Disabled", "box_Timer_v2_10.Start", clone, l0)
  l0:Start()
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
  l0.Entity = "9223372049706324013"
  l0._graph = self
  l0._name = "box_Set_Entity_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|418421302"
  l0.Out = self.f_box_Set_Entity_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1952543629", "1952543629", "IOP09B_Main", "box_SetInteger_v2_71.Out", "box_Set_Entity_16.FromEntity", clone, l0)
  l0:FromEntity()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|643423930"
  l0.Out = self.f_box_SetInteger_v2_31_Out
  l0 = self.box_RewardController_v3_131
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1596465450", "1596465450", "IOP09B_Main", "box_RewardController_v3_131.Out", "box_SetInteger_v2_31.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Timer_v2_160_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_115
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_160
  l1 = self.box_CinematicPrep_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1581486263", "1581486263", "IOP09B_Main", "box_Timer_v2_160.TimeElapsed", "box_CinematicPrep_115.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_RandomOutput_v2_142_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_137
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|129166939", "129166939", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_137.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_89
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1513049623", "1513049623", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_89.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_48
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1116158507", "1116158507", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_48.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_51
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1046693604", "1046693604", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_51.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_14
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|723885342", "723885342", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_14.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_83
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1234105325", "1234105325", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_83.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_110
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1008313675", "1008313675", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_110.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_142_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_130
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_142
  l1 = self.box_Progression_Tag_Monitor_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|581946343", "581946343", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_Progression_Tag_Monitor_130.HasProgressionTag", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|939917058", "939917058", "IOP09B_Main", "box_RandomOutput_v2_142.Output", "box_AI_IOPController_33.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
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
  l0.Entity = "9223372049706324010"
  l0._graph = self
  l0._name = "box_Set_Entity_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|630119464"
  l0.Out = self.f_box_Set_Entity_87_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1369543676", "1369543676", "IOP09B_Main", "box_SetInteger_v2_133.Out", "box_Set_Entity_87.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2124746058", "2124746058", "IOP09B_Main", "box_SecurityCamController_105.CanExitSet", "box_SecurityCamController_105.ForceEnter", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|303467164"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1819085693", "1819085693", "IOP09B_Main", "box_SecurityCamController_105.EnterForced", "box_Ordered_Output_82.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_155_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_154()
  l0 = self.box_MultipleOR_155
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2074271310", "2074271310", "IOP09B_Main", "box_MultipleOR_155.Out", "box_HackableController_v2_154.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_107_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_107
  l1 = self.box_SetBoolean_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|415037038", "415037038", "IOP09B_Main", "box_PlaySound_v2_107.Started", "box_SetBoolean_v2_113.False", l0, l1)
  l1:False()
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
  l0.Entity = "9223372049706324000"
  l0._graph = self
  l0._name = "box_Set_Entity_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|678068277"
  l0.Out = self.f_box_Set_Entity_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1692848536", "1692848536", "IOP09B_Main", "box_SetInteger_v2_126.Out", "box_Set_Entity_28.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_HackableController_v2_141_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1677877302", "1677877302", "IOP09B_Main", "box_HackableController_v2_141.Disabled", "box_HackableController_v2_95.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_141_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_95()
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|189583161", "189583161", "IOP09B_Main", "box_HackableController_v2_141.Enabled", "box_HackableController_v2_95.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_Ordered_Output_149_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_107
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1041926399", "1041926399", "IOP09B_Main", "box_Ordered_Output_149.Out", "box_PlaySound_v2_107.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_149_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_146
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1238239285", "1238239285", "IOP09B_Main", "box_Ordered_Output_149.Out", "box_MissionMessageController_v3_146.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|418878423"
  l0.Out = self.f_box_SetInteger_v2_125_Out
  l0 = self.box_RewardController_v3_114
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|309333426", "309333426", "IOP09B_Main", "box_RewardController_v3_114.Out", "box_SetInteger_v2_125.FromInteger", l0, l1)
  l1:FromInteger()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1236375440", "1236375440", "IOP09B_Main", "box_Compare_Integers_v2_74.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|473295665"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_36_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_36_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_36_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1703919004", "1703919004", "IOP09B_Main", "box_Compare_Integers_v2_74.A_gt_B", "box_Compare_Integers_v2_36.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1830753233", "1830753233", "IOP09B_Main", "box_Compare_Integers_v2_74.A_lt_B", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_79_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|81384685"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_17_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_79
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|951746946", "951746946", "IOP09B_Main", "box_HackableController_v2_79.ProfilingDisabled", "box_CollisionController_17.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_21
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0 = self.box_MultipleOR_57
  l1 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1565336623", "1565336623", "IOP09B_Main", "box_MultipleOR_57.Out", "box_HackableController_v2_21.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1691487897", "1691487897", "IOP09B_Main", "box_Compare_Integers_v2_120.A_eq_B", "box_MultipleOR_57.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1395076653", "1395076653", "IOP09B_Main", "box_Compare_Integers_v2_120.A_lt_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_HackableController_v2_152_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_HackableController_v2_152
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|648143187", "648143187", "IOP09B_Main", "box_HackableController_v2_152.ProfilingDisabled", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_RewardController_v3_6_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1516752073"
  l0.Out = self.f_box_SetInteger_v2_35_Out
  l0 = self.box_RewardController_v3_6
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1964271723", "1964271723", "IOP09B_Main", "box_RewardController_v3_6.Out", "box_SetInteger_v2_35.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Progression_Tag_Monitor_14_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|855235972", "855235972", "IOP09B_Main", "box_Progression_Tag_Monitor_14.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_14_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_123
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_14
  l1 = self.box_RewardController_v3_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1525696035", "1525696035", "IOP09B_Main", "box_Progression_Tag_Monitor_14.HasNOT", "box_RewardController_v3_123.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_IOP_StartUp_61_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|47350621"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_20_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_IOP_StartUp_61
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|708362909", "708362909", "IOP09B_Main", "box_IOP_StartUp_61.Out", "box_LightController_20.Disable", l0, l1)
  l1:Disable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2028365367", "2028365367", "IOP09B_Main", "box_Compare_Integers_v2_39.A_eq_B", "box_MultipleOR_99.Input", clone, l0)
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
  l0._name = "box_Compare_Integers_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1344961126"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_12_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_12_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_12_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1708275248", "1708275248", "IOP09B_Main", "box_Compare_Integers_v2_39.A_gt_B", "box_Compare_Integers_v2_12.In", clone, l0)
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
  l0 = self.box_HackableController_v2_144
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Call_Police",
    id = "544815"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1194297204", "1194297204", "IOP09B_Main", "box_Compare_Integers_v2_39.A_lt_B", "box_HackableController_v2_144.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Timer_v2_65_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_65
  l1 = self.box_MissionMessageController_v3_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|202040383", "202040383", "IOP09B_Main", "box_Timer_v2_65.TimeElapsed", "box_MissionMessageController_v3_151.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_LightController_91_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_24()
  l0 = self.box_Multiple_AND_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|152617695", "152617695", "IOP09B_Main", "box_LightController_91.Enabled", "box_Multiple_AND_24.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Progression_Tag_Monitor_83_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_83
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1485967546", "1485967546", "IOP09B_Main", "box_Progression_Tag_Monitor_83.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_83_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_131
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_83
  l1 = self.box_RewardController_v3_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|616844805", "616844805", "IOP09B_Main", "box_Progression_Tag_Monitor_83.HasNOT", "box_RewardController_v3_131.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|785700247", "785700247", "IOP09B_Main", "box_MultipleOR_128.Out", "box_HackableController_v2_64.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|214366270", "214366270", "IOP09B_Main", "box_Simple_Node_122.Out", "box_HackableController_v2_63.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Compare_Integers_v2_12_A_eq_B()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|243664110", "243664110", "IOP09B_Main", "box_Compare_Integers_v2_12.A_eq_B", "box_HackableController_v2_127.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Integers_v2_12_A_gt_B()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|529154048"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_37_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_37_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1087875900", "1087875900", "IOP09B_Main", "box_Compare_Integers_v2_12.A_gt_B", "box_Compare_Integers_v2_37.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_12_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_3
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Delete_Account",
    id = "544817"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|896552253", "896552253", "IOP09B_Main", "box_Compare_Integers_v2_12.A_lt_B", "box_HackableController_v2_3.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1649031683", "1649031683", "IOP09B_Main", "box_CLOController_108.OnUserInPlace", "box_HackableController_v2_79.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2133151057", "2133151057", "IOP09B_Main", "box_Set_Entity_62.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(5)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1705781010", "1705781010", "IOP09B_Main", "box_Simple_Node_1.Out", "box_Hackable_Monitor_121.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_97_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1427413829", "1427413829", "IOP09B_Main", "box_Ordered_Output_97.Out", "box_Timer_v2_9.Start", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|111289201", "111289201", "IOP09B_Main", "box_Ordered_Output_97.Out", "box_IOPMonitor_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_88_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_88
  l1 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2067644504", "2067644504", "IOP09B_Main", "box_HackableController_v2_88.ProfilingDisabled", "box_HackableController_v2_152.DisableProfiling", l0, l1)
  l1:DisableProfiling()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|713376436"
  l0.Out = self.f_box_SetInteger_v2_93_Out
  l0 = self.box_RewardController_v3_67
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|203464147", "203464147", "IOP09B_Main", "box_RewardController_v3_67.Out", "box_SetInteger_v2_93.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_AI_IOPController_66_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_66
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|540442887", "540442887", "IOP09B_Main", "box_AI_IOPController_66.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(7)
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
  l0.Entity = "9223372049706324012"
  l0._graph = self
  l0._name = "box_Set_Entity_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|418242041"
  l0.Out = self.f_box_Set_Entity_145_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|958384879", "958384879", "IOP09B_Main", "box_SetInteger_v2_35.Out", "box_Set_Entity_145.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|382422546", "382422546", "IOP09B_Main", "box_Compare_Boolean_v2_47.A_is_False", "box_SetBoolean_v2_92.True", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1828567570", "1828567570", "IOP09B_Main", "box_Compare_Boolean_v2_47.A_is_True", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Timer_v2_58_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|766506513"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_43_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_58
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|981231951", "981231951", "IOP09B_Main", "box_Timer_v2_58.TimeElapsed", "box_LightController_43.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Progression_Tag_Monitor_137_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_137
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2009911540", "2009911540", "IOP09B_Main", "box_Progression_Tag_Monitor_137.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_137_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_67
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_137
  l1 = self.box_RewardController_v3_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1086716633", "1086716633", "IOP09B_Main", "box_Progression_Tag_Monitor_137.HasNOT", "box_RewardController_v3_67.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_148_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_148
  l1 = self.box_AI_IOPController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|489066305", "489066305", "IOP09B_Main", "box_PhoneCommunicationController_148.OnCommunicationFinished", "box_AI_IOPController_27.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Progression_Tag_Monitor_130_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_130
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1721585487", "1721585487", "IOP09B_Main", "box_Progression_Tag_Monitor_130.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_130_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_114
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_130
  l1 = self.box_RewardController_v3_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|483707811", "483707811", "IOP09B_Main", "box_Progression_Tag_Monitor_130.HasNOT", "box_RewardController_v3_114.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_140_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_140
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1256473601", "1256473601", "IOP09B_Main", "box_AI_IOPController_140.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_2_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2102459744"
  l0.Out = self.f_box_Compare_Boolean_v2_77_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_77_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_2
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|998204226", "998204226", "IOP09B_Main", "box_AI_IOPController_2.SendEventCompleted", "box_Compare_Boolean_v2_77.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_121_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_102
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_121
  l1 = self.box_PlaySound_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|762033162", "762033162", "IOP09B_Main", "box_Hackable_Monitor_121.HackSuccess", "box_PlaySound_v2_102.Play", l0, l1)
  l1:Play()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1903588928", "1903588928", "IOP09B_Main", "box_Compare_Integers_v2_139.A_eq_B", "box_AI_IOPController_66.SendEvent", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|594230569", "594230569", "IOP09B_Main", "box_Compare_Integers_v2_139.A_lt_B", "box_AI_IOPController_96.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|222633821", "222633821", "IOP09B_Main", "box_ListWriter_53.Added", "box_AI_IOPController_119.Start", l0, l1)
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
function export:f_box_RewardController_v3_19_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|860497718"
  l0.Out = self.f_box_SetInteger_v2_133_Out
  l0 = self.box_RewardController_v3_19
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1363388056", "1363388056", "IOP09B_Main", "box_RewardController_v3_19.Out", "box_SetInteger_v2_133.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1197480576"
  l0.Enabled = self.f_box_LightController_91_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_30
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1828156683", "1828156683", "IOP09B_Main", "box_Timer_v2_30.TimeElapsed", "box_LightController_91.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_101_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_121()
  l0 = self.box_Hackable_Monitor_101
  l1 = self.box_Hackable_Monitor_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1900556607", "1900556607", "IOP09B_Main", "box_Hackable_Monitor_101.Disabled", "box_Hackable_Monitor_121.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_101_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_15
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_101
  l1 = self.box_PlaySound_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|880943788", "880943788", "IOP09B_Main", "box_Hackable_Monitor_101.HackSuccess", "box_PlaySound_v2_15.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_44_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_44
  l1 = self.box_Timer_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|776289065", "776289065", "IOP09B_Main", "box_AI_IOPController_44.SendEventCompleted", "box_Timer_v2_158.Start", l0, l1)
  l1:Start()
end
function export:f_box_Set_Entity_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CLO = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2023943646", "2023943646", "IOP09B_Main", "box_Set_Entity_18.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(7)
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
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1238556500", "1238556500", "IOP09B_Main", "box_Set_Entity_55.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_SetBoolean_v2_4_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_4_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.MakeItRain = l0.Target
end
function export:f_box_HackableController_v2_69_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_69
  l1 = self.box_SetBoolean_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|966251614", "966251614", "IOP09B_Main", "box_HackableController_v2_69.OverrideHackingTextSet", "box_SetBoolean_v2_4.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_158_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|290879959"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_100_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_100_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_100_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_158
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1737213931", "1737213931", "IOP09B_Main", "box_Timer_v2_158.TimeElapsed", "box_Compare_Integers_v2_100.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_22_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_AI_IOPController_22
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1320615967", "1320615967", "IOP09B_Main", "box_AI_IOPController_22.SendEventCompleted", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_110_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Progression_Tag_Monitor_110
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|154987605", "154987605", "IOP09B_Main", "box_Progression_Tag_Monitor_110.Has", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_110_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_29
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_110
  l1 = self.box_RewardController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1951889284", "1951889284", "IOP09B_Main", "box_Progression_Tag_Monitor_110.HasNOT", "box_RewardController_v3_29.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1772059844", "1772059844", "IOP09B_Main", "box_Compare_Integers_v2_56.A_eq_B", "box_AI_IOPController_104.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|653536410"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_90_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_90_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_90_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1630930767", "1630930767", "IOP09B_Main", "box_Compare_Integers_v2_56.A_gt_B", "box_Compare_Integers_v2_90.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|881363557", "881363557", "IOP09B_Main", "box_Compare_Integers_v2_56.A_lt_B", "box_AI_IOPController_140.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_MissionMessageController_v3_146_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_148
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374185"
  l0 = self.box_MissionMessageController_v3_146
  l1 = self.box_PhoneCommunicationController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|246515800", "246515800", "IOP09B_Main", "box_MissionMessageController_v3_146.Out", "box_PhoneCommunicationController_148.StartCommunication", l0, l1)
  l1:StartCommunication()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1198161668", "1198161668", "IOP09B_Main", "box_Compare_Integers_v2_124.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(3)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1133595539"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_120_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_120_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1493725225", "1493725225", "IOP09B_Main", "box_Compare_Integers_v2_124.A_gt_B", "box_Compare_Integers_v2_120.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|866398982", "866398982", "IOP09B_Main", "box_Compare_Integers_v2_124.A_lt_B", "box_HackableController_v2_75.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_64_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_64
  l1 = self.box_SetBoolean_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1916342342", "1916342342", "IOP09B_Main", "box_HackableController_v2_64.OverrideHackingTextSet", "box_SetBoolean_v2_86.True", l0, l1)
  l1:True()
end
function export:f_box_PlaySound_v2_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1617946851"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_47_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_47_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_15
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|2120836409", "2120836409", "IOP09B_Main", "box_PlaySound_v2_15.Out", "box_Compare_Boolean_v2_47.In", l0, l1)
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
  l0 = self.box_SetBoolean_v2_78
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1499815110", "1499815110", "IOP09B_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_SetBoolean_v2_78.True", clone, l0)
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
  l0 = self.box_AI_IOPController_2
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1346219150", "1346219150", "IOP09B_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_AI_IOPController_2.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_PlaySound_v2_5_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|156305815"
  l0.Started = self.f_box_ParticleFXController_v2_45_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_PlaySound_v2_5
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|538475564", "538475564", "IOP09B_Main", "box_PlaySound_v2_5.Started", "box_ParticleFXController_v2_45.Start", l0, l1)
  l1:Start()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|720375582"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|726366444", "726366444", "IOP09B_Main", "box_ParticleFXController_v2_50.Started", "box_ParticleFXController_v2_109.Start", clone, l0)
  l0:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|221879239", "221879239", "IOP09B_Main", "box_Compare_Boolean_v2_77.A_is_True", "box_PlaySound_v2_118.Play", clone, l0)
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
  self:OnEnter_box_MultipleOR_155()
  l0 = self.box_MultipleOR_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|403453837", "403453837", "IOP09B_Main", "box_Compare_Boolean_v2_77.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|1090473503", "1090473503", "IOP09B_Main", "box_Simple_Node_54.Out", "box_Hackable_Monitor_101.Enable", clone, l0)
  l0:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|155273849", "155273849", "IOP09B_Main", "box_LightController_117.Enabled", "box_PlaySound_v2_138.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_MultipleOR_135()
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_HackableController_v2_153()
  local l0
  l0 = self.box_HackableController_v2_153
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_HackableController_v2_95()
  local l0
  l0 = self.box_HackableController_v2_95
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_Security_Camera_Monitor_73()
  local l0
  l0 = self.box_Security_Camera_Monitor_73
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_MultipleOR_129()
end
function export:OnEnter_box_Security_Camera_Monitor_159()
  local l0
  l0 = self.box_Security_Camera_Monitor_159
  l0.CameraEntity = self.ATM_Camera
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_CLOController_116()
  local l0
  l0 = self.box_CLOController_116
  l0.CLO = self.CLO
  l0.User = self.Npc
end
function export:OnEnter_box_Multiple_AND_24()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_IOPMonitor_41()
end
function export:OnEnter_box_HackableController_v2_154()
  local l0
  l0 = self.box_HackableController_v2_154
  l0.HackableEntity = self.GoodHack
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09B.domino|@IOP09B_Main|899534607"
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
function export:OnEnter_box_MultipleOR_155()
end
function export:OnEnter_box_HackableController_v2_141()
  local l0
  l0 = self.box_HackableController_v2_141
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_MultipleOR_128()
end
function export:OnEnter_box_Hackable_Monitor_121()
  local l0
  l0 = self.box_Hackable_Monitor_121
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_Hackable_Monitor_101()
  local l0
  l0 = self.box_Hackable_Monitor_101
  l0.HackableEntity = self.GoodHack
end
_compilerVersion = 4
