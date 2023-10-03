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
  self._name = "IOP09G_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.BadVar = 0
  self.RolesList = {"Atm.Person"}
  self.Alarm = 0
  self.NPC_List = {}
  self.Npc = nil
  self.BadHack = "9223372066503482731"
  self.CLO = nil
  self.MakeItRain = 0
  self.ATM_Camera = "9223372053051119862"
  self.BarkSoundEntity_0 = "9223372053051119851"
  self.GoodHack = "9223372066503482729"
  self.CLO_Sync = 6
  self.Money = "9223372053051119857"
  self.GoodVar = 0
  self.Money2 = "9223372053051119864"
  self.Light = "9223372053051119849"
  self.Money3 = "9223372053051119855"
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|3418847"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_91 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_91
  l0._graph = self
  l0._name = "box_PlaySound_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|46742219"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_141 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_141
  l0._graph = self
  l0._name = "box_Timer_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|68506625"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_141_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_124 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_124
  l0._graph = self
  l0._name = "box_RewardController_v3_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|93719541"
  l0.Out = self.f_box_RewardController_v3_124_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_MissionMessageController_v3_85 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_85
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|122844845"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_85_MessageCompleted
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|127875262"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_44 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_44
  l0._graph = self
  l0._name = "box_SetBoolean_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|168739293"
  l0.Out = self.f_box_SetBoolean_v2_44_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_44_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_44_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_44_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_44_SetFromBool
  self.box_Progression_Tag_Monitor_23 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_23
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|220368159"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_23_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_23_HasNOT
  self.box_HackableController_v2_72 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_72
  l0._graph = self
  l0._name = "box_HackableController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|220420585"
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
  self.box_RewardController_v3_74 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_74
  l0._graph = self
  l0._name = "box_RewardController_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|237937504"
  l0.Out = self.f_box_RewardController_v3_74_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Hackable_Monitor_7 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_7
  l0._graph = self
  l0._name = "box_Hackable_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|246849414"
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
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|267443440"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RandomOutput_v2_24 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_24
  l0._graph = self
  l0._name = "box_RandomOutput_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|274079265"
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
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|274239326"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_IndexedOutput_V2_37 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_37
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|295441075"
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
  self.box_Security_Camera_Monitor_40 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_40
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|343605949"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_40_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_40_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_HackableController_v2_125 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_125
  l0._graph = self
  l0._name = "box_HackableController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|347776595"
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
  self.box_HackableController_v2_142 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_142
  l0._graph = self
  l0._name = "box_HackableController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|377601485"
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
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|426423345"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_11_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Progression_Tag_Monitor_90 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_90
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|444120214"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_90_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_90_HasNOT
  self.box_HackableController_v2_153 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_153
  l0._graph = self
  l0._name = "box_HackableController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|453241805"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_153_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|460637958"
  l0._DynamicAnchors = {Input = 8}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_Progression_Tag_Monitor_67 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_67
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|497960521"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_67_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_67_HasNOT
  self.box_AI_IOPController_143 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_143
  l0._graph = self
  l0._name = "box_AI_IOPController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|511678351"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_143_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_130 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_130
  l0._graph = self
  l0._name = "box_Timer_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|517762326"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_130_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|519656282"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_MissionMessageController_v3_128 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_128
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|560977222"
  l0.Out = self.f_box_MissionMessageController_v3_128_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_156 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_156
  l0._graph = self
  l0._name = "box_HackableController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|563502792"
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
  self.box_Progression_Tag_Monitor_48 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_48
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|568107097"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_48_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_48_HasNOT
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|614695531"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = self.f_box_AI_IOPController_132_StartEmptyRoomCompleted
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_100 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_100
  l0._graph = self
  l0._name = "box_PlaySound_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|614708463"
  l0.Out = self.f_box_PlaySound_v2_100_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Multiple_AND_50 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_50
  l0._graph = self
  l0._name = "box_Multiple_AND_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|629635839"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_50_Out
  self.box_AI_IOPController_10 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_10
  l0._graph = self
  l0._name = "box_AI_IOPController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|639534845"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_10_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|652051095"
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
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|695222716"
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
  self.box_SetBoolean_v2_1 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|705000363"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_Hackable_Monitor_80 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_80
  l0._graph = self
  l0._name = "box_Hackable_Monitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|706324000"
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
  self.box_HackableController_v2_97 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_97
  l0._graph = self
  l0._name = "box_HackableController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|724405012"
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
  self.box_MultipleOR_155 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_155
  l0._graph = self
  l0._name = "box_MultipleOR_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|762903741"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_155_Out
  self.box_Timer_v2_161 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_161
  l0._graph = self
  l0._name = "box_Timer_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|768718023"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_123 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_123
  l0._graph = self
  l0._name = "box_CinematicPrep_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|770426588"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_AI_IOPController_108 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_108
  l0._graph = self
  l0._name = "box_AI_IOPController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|777672698"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_108_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|791007202"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_81_Unloaded
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_134 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_134
  l0._graph = self
  l0._name = "box_HackableController_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|791054993"
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
  self.box_Progression_Tag_Monitor_88 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_88
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|802437143"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_88_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_88_HasNOT
  self.box_HackableController_v2_137 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_137
  l0._graph = self
  l0._name = "box_HackableController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|829367730"
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
  self.box_SetBoolean_v2_65 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_65
  l0._graph = self
  l0._name = "box_SetBoolean_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|833191860"
  l0.Out = self.f_box_SetBoolean_v2_65_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_65_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_65_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_65_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_65_SetFromBool
  self.box_SetBoolean_v2_43 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_43
  l0._graph = self
  l0._name = "box_SetBoolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|853849366"
  l0.Out = self.f_box_SetBoolean_v2_43_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_43_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_43_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_43_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_43_SetFromBool
  self.box_Timer_v2_159 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_159
  l0._graph = self
  l0._name = "box_Timer_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|861366015"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_159_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_51 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_51
  l0._graph = self
  l0._name = "box_AI_IOPController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|862557479"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_51_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|867143004"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_AI_IOPController_17 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_17
  l0._graph = self
  l0._name = "box_AI_IOPController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|870012705"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_17_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|871030474"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_HackableController_v2_20 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_20
  l0._graph = self
  l0._name = "box_HackableController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|897315322"
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
  self.box_IOPMonitor_82 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_82
  l0._graph = self
  l0._name = "box_IOPMonitor_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|963401144"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_82_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_82_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_82_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_82_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|972449994"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_60_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_139 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_139
  l0._graph = self
  l0._name = "box_PlaySound_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|984568631"
  l0.Out = self.f_box_PlaySound_v2_139_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_111 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1004922114"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_111_Out
  self.box_RewardController_v3_113 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_113
  l0._graph = self
  l0._name = "box_RewardController_v3_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1026182164"
  l0.Out = self.f_box_RewardController_v3_113_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_PlaySound_v2_150 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_150
  l0._graph = self
  l0._name = "box_PlaySound_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1078697345"
  l0.Out = self.f_box_PlaySound_v2_150_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_77 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_77
  l0._graph = self
  l0._name = "box_RewardController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1079686059"
  l0.Out = self.f_box_RewardController_v3_77_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_154 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_154
  l0._graph = self
  l0._name = "box_HackableController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1116871212"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_154_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_56 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_56
  l0._graph = self
  l0._name = "box_HackableController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1128572003"
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
  self.box_RewardController_v3_71 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_71
  l0._graph = self
  l0._name = "box_RewardController_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1171176230"
  l0.Out = self.f_box_RewardController_v3_71_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Progression_Tag_Monitor_107 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_107
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1186869695"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_107_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_107_HasNOT
  self.box_HackableController_v2_96 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_96
  l0._graph = self
  l0._name = "box_HackableController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1211051268"
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
  self.box_IOP_CleanUp_64 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_64
  l0._graph = self
  l0._name = "box_IOP_CleanUp_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1227086377"
  l0.Completed = self.f_box_IOP_CleanUp_64_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_64_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1254053646"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_Timer_v2_151 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_151
  l0._graph = self
  l0._name = "box_Timer_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1255774613"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_151_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_122 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_122
  l0._graph = self
  l0._name = "box_MissionController_v4_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1305381260"
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1311394939"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_AI_IOPController_52 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_52
  l0._graph = self
  l0._name = "box_AI_IOPController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1339544607"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_52_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_157 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_157
  l0._graph = self
  l0._name = "box_HackableController_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1377463436"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_157_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Progression_Tag_Monitor_133 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_133
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1401649814"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_133_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_133_HasNOT
  self.box_AI_IOPController_62 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_62
  l0._graph = self
  l0._name = "box_AI_IOPController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1440414395"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_62_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_2 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_2
  l0._graph = self
  l0._name = "box_SetBoolean_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1457618950"
  l0.Out = self.f_box_SetBoolean_v2_2_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_2_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_2_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_2_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_2_SetFromBool
  self.box_IOP_StartUp_83 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_83
  l0._graph = self
  l0._name = "box_IOP_StartUp_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1502104646"
  l0.Out = self.f_box_IOP_StartUp_83_Out
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1511797346"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_106_OnUserInPlace
  self.box_PlaySound_v2_116 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_116
  l0._graph = self
  l0._name = "box_PlaySound_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1522020925"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_116_Started
  l0.Finished = DummyFunction
  self.box_AI_IOPController_89 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_89
  l0._graph = self
  l0._name = "box_AI_IOPController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1524141751"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_89_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_5 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_5
  l0._graph = self
  l0._name = "box_AI_IOPController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1558319782"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_5_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1599913928"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_27_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_93 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_93
  l0._graph = self
  l0._name = "box_RewardController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1696867353"
  l0.Out = self.f_box_RewardController_v3_93_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_RewardController_v3_6 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_6
  l0._graph = self
  l0._name = "box_RewardController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1700212913"
  l0.Out = self.f_box_RewardController_v3_6_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CLOController_148 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_148
  l0._graph = self
  l0._name = "box_CLOController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1703410472"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_148_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_92 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_92
  l0._graph = self
  l0._name = "box_AI_IOPController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1728192298"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_92_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_114 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_114
  l0._graph = self
  l0._name = "box_PlaySound_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1740766912"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_114_Started
  l0.Finished = DummyFunction
  self.box_AI_IOPController_75 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_75
  l0._graph = self
  l0._name = "box_AI_IOPController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1743337115"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_75_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_119 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_119
  l0._graph = self
  l0._name = "box_HackableController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1749959333"
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
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1797862444"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_PlaySound_v2_21 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_21
  l0._graph = self
  l0._name = "box_PlaySound_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1830294309"
  l0.Out = self.f_box_PlaySound_v2_21_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_101 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_101
  l0._graph = self
  l0._name = "box_HackableController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1836920625"
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1844380571"
  l0.Out = self.f_box_SetBoolean_v2_131_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_131_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_131_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_131_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_131_SetFromBool
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1860067420"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_MultipleOR_109 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_109
  l0._graph = self
  l0._name = "box_MultipleOR_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1871811061"
  l0._DynamicAnchors = {Input = 9}
  l0.Out = self.f_box_MultipleOR_109_Out
  self.box_AI_IOPController_144 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_144
  l0._graph = self
  l0._name = "box_AI_IOPController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1883473319"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1900099906"
  l0.Out = self.f_box_Timer_v2_12_Out
  l0.Started = self.f_box_Timer_v2_12_Started
  l0.Stopped = self.f_box_Timer_v2_12_Stopped
  l0.Paused = self.f_box_Timer_v2_12_Paused
  l0.Resumed = self.f_box_Timer_v2_12_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_12_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_Progression_Tag_Monitor_129 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_129
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1988131546"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_129_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_129_HasNOT
  self.box_PhoneCommunicationController_120 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_120
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2007863193"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_120_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_68 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_68
  l0._graph = self
  l0._name = "box_HackableController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2016787276"
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
  self.box_HackableController_v2_59 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_59
  l0._graph = self
  l0._name = "box_HackableController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2035927420"
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
  self.box_AI_IOPController_136 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_136
  l0._graph = self
  l0._name = "box_AI_IOPController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2036869113"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_136_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_RewardController_v3_86 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_86
  l0._graph = self
  l0._name = "box_RewardController_v3_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2127220712"
  l0.Out = self.f_box_RewardController_v3_86_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_ListWriter_102 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_102
  l0._graph = self
  l0._name = "box_ListWriter_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2130640179"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_102_Added
  l0.Removed = self.f_box_ListWriter_102_Removed
  l0.Out = self.f_box_ListWriter_102_Out
  self.box_Security_Camera_Monitor_160 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_160
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2141768367"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_160_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_160_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
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
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2120927253", "2120927253", "IOP09G_Main", "CheckPoint_0", "box_MultipleOR_58.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1663736313", "1663736313", "IOP09G_Main", "In", "box_MultipleOR_58.Input", self, l0)
  l0:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|771948726", "771948726", "IOP09G_Main", "box_CollisionController_140.CollisionsDisabled", "box_ListWriter_102.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_141_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_85
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L07.L07M010.Objectives.Objective010",
    item = "Objective",
    id = "457822"
  }
  l0 = self.box_Timer_v2_141
  l1 = self.box_MissionMessageController_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|570637352", "570637352", "IOP09G_Main", "box_Timer_v2_141.TimeElapsed", "box_MissionMessageController_v3_85.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
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
  l0.Entity = "9223372053051119871"
  l0._graph = self
  l0._name = "box_Set_Entity_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1112263862"
  l0.Out = self.f_box_Set_Entity_98_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|668125431", "668125431", "IOP09G_Main", "box_SetInteger_v2_29.Out", "box_Set_Entity_98.FromEntity", clone, l0)
  l0:FromEntity()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1532436175"
  l0.Out = self.f_box_SetInteger_v2_95_Out
  l0 = self.box_RewardController_v3_124
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1030020453", "1030020453", "IOP09G_Main", "box_RewardController_v3_124.Out", "box_SetInteger_v2_95.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_MissionMessageController_v3_85_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|568459082"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_158_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_158_Out_1
  l0 = self.box_MissionMessageController_v3_85
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1799819330", "1799819330", "IOP09G_Main", "box_MissionMessageController_v3_85.MessageCompleted", "box_Ordered_Output_158.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|748388837"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_8_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_105
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|464868455", "464868455", "IOP09G_Main", "box_Timer_v2_105.TimeElapsed", "box_LightController_8.Disable", l0, l1)
  l1:Disable()
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
  l0.Entity = "9223372053051119858"
  l0._graph = self
  l0._name = "box_Set_Entity_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|579191772"
  l0.Out = self.f_box_Set_Entity_22_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1017184491", "1017184491", "IOP09G_Main", "box_SetInteger_v2_79.Out", "box_Set_Entity_22.FromEntity", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1670975394", "1670975394", "IOP09G_Main", "box_SetBoolean_v2_44.SetFalse", "box_SetBoolean_v2_131.False", l0, l1)
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
function export:f_box_Progression_Tag_Monitor_23_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|498967473", "498967473", "IOP09G_Main", "box_Progression_Tag_Monitor_23.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Progression_Tag_Monitor_23_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_86
  l0.ItemDB = "Items.9223372047346444991"
  l0 = self.box_Progression_Tag_Monitor_23
  l1 = self.box_RewardController_v3_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|348296123", "348296123", "IOP09G_Main", "box_Progression_Tag_Monitor_23.HasNOT", "box_RewardController_v3_86.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|129922836", "129922836", "IOP09G_Main", "box_Simple_Node_127.Out", "box_Hackable_Monitor_7.Enable", clone, l0)
  l0:Enable()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|777756527"
  l0.Out = self.f_box_SetInteger_v2_103_Out
  l0 = self.box_RewardController_v3_74
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|48676051", "48676051", "IOP09G_Main", "box_RewardController_v3_74.Out", "box_SetInteger_v2_103.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Hackable_Monitor_7_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_150
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_7
  l1 = self.box_PlaySound_v2_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1130607727", "1130607727", "IOP09G_Main", "box_Hackable_Monitor_7.HackSuccess", "box_PlaySound_v2_150.Play", l0, l1)
  l1:Play()
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
  l0.Entity = "9223372053051119869"
  l0._graph = self
  l0._name = "box_Set_Entity_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|435298566"
  l0.Out = self.f_box_Set_Entity_135_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1672151918", "1672151918", "IOP09G_Main", "box_SetInteger_v2_145.Out", "box_Set_Entity_135.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1766063579"
  l0.Enabled = self.f_box_LightController_18_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_73
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2023546991", "2023546991", "IOP09G_Main", "box_Timer_v2_73.TimeElapsed", "box_LightController_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_RandomOutput_v2_24_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_88
  l0.ProgressionTag = "ProgressionTag.9223372047346444947"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|628325574", "628325574", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_88.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_48
  l0.ProgressionTag = "ProgressionTag.9223372047346444949"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1330197305", "1330197305", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_48.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_23
  l0.ProgressionTag = "ProgressionTag.9223372047346444950"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|868797118", "868797118", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_23.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_107
  l0.ProgressionTag = "ProgressionTag.9223372047346444951"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|508168019", "508168019", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_107.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_4()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_129
  l0.ProgressionTag = "ProgressionTag.9223372047346444952"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1321451177", "1321451177", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_129.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_5()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_133
  l0.ProgressionTag = "ProgressionTag.9223372047346444953"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|56999153", "56999153", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_133.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_6()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_67
  l0.ProgressionTag = "ProgressionTag.9223372047346444954"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1994272020", "1994272020", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_67.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_RandomOutput_v2_24_Output_7()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_90
  l0.ProgressionTag = "ProgressionTag.9223372047346444955"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_Progression_Tag_Monitor_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1304422183", "1304422183", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_Progression_Tag_Monitor_90.HasProgressionTag", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|800611650", "800611650", "IOP09G_Main", "box_RandomOutput_v2_24.Output", "box_AI_IOPController_132.StartEmptyRoomIOP", l0, l1)
  l1:StartEmptyRoomIOP()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|501309910"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_MultipleOR_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1789152684", "1789152684", "IOP09G_Main", "box_MultipleOR_87.Out", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_IndexedOutput_V2_37_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|573119329", "573119329", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1464899833", "1464899833", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_37_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|644473149", "644473149", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1086914193", "1086914193", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_37_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1882034697", "1882034697", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1870693261", "1870693261", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_37_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|547014984", "547014984", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|73506115", "73506115", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_37_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|943350728", "943350728", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_37_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_IndexedOutput_V2_37
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1982777173", "1982777173", "IOP09G_Main", "box_IndexedOutput_V2_37.Output", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(4)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|404254278"
  l0.Started = self.f_box_ParticleFXController_v2_31_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|348496017", "348496017", "IOP09G_Main", "box_ParticleFXController_v2_63.Started", "box_ParticleFXController_v2_31.Start", clone, l0)
  l0:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|280441496", "280441496", "IOP09G_Main", "box_Compare_Integers_v2_15.A_eq_B", "box_MultipleOR_104.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|689128911"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_19_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_19_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_19_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|10445740", "10445740", "IOP09G_Main", "box_Compare_Integers_v2_15.A_gt_B", "box_Compare_Integers_v2_19.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1834506772", "1834506772", "IOP09G_Main", "box_Compare_Integers_v2_15.A_lt_B", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Security_Camera_Monitor_40_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_144
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_40
  l1 = self.box_AI_IOPController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1005139042", "1005139042", "IOP09G_Main", "box_Security_Camera_Monitor_40.OnStartAccessCamera", "box_AI_IOPController_144.SendEvent", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|175320890", "175320890", "IOP09G_Main", "box_Security_Camera_Monitor_40.OnStartExitCamera", "box_AI_IOPController_75.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_125_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_59
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_1",
    id = "340527"
  }
  l0 = self.box_HackableController_v2_125
  l1 = self.box_HackableController_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|201273570", "201273570", "IOP09G_Main", "box_HackableController_v2_125.OverrideHackingTextSet", "box_HackableController_v2_59.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_142_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|504789963", "504789963", "IOP09G_Main", "box_HackableController_v2_142.Disabled", "box_HackableController_v2_46.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_142_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1344371997", "1344371997", "IOP09G_Main", "box_HackableController_v2_142.Enabled", "box_HackableController_v2_46.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_142_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|334772670", "334772670", "IOP09G_Main", "box_HackableController_v2_142.ProfilingDisabled", "box_HackableController_v2_46.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_142_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|609202551", "609202551", "IOP09G_Main", "box_HackableController_v2_142.ProfilingEnabled", "box_HackableController_v2_46.EnableProfiling", l0, l1)
  l1:EnableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|301015319", "301015319", "IOP09G_Main", "box_Compare_Boolean_v2_47.A_is_True", "box_PlaySound_v2_41.Play", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1716418710", "1716418710", "IOP09G_Main", "box_Compare_Boolean_v2_47.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(1)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1180154024"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|290820933", "290820933", "IOP09G_Main", "box_ParticleFXController_v2_31.Started", "box_ParticleFXController_v2_138.Start", clone, l0)
  l0:Start()
end
function export:f_box_SecurityCamController_14_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_CleanUp_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2033560008", "2033560008", "IOP09G_Main", "box_SecurityCamController_14.DisconnectedAnimationPlayed", "box_IOP_CleanUp_64.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_11_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_11
  l1 = self.box_Timer_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2083939032", "2083939032", "IOP09G_Main", "box_AI_IOPController_11.SendEventCompleted", "box_Timer_v2_151.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|690199684", "690199684", "IOP09G_Main", "box_Set_Entity_135.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_Progression_Tag_Monitor_90_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1063672708", "1063672708", "IOP09G_Main", "box_Progression_Tag_Monitor_90.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(8)
end
function export:f_box_Progression_Tag_Monitor_90_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_6
  l0.ItemDB = "Items.9223372047346444996"
  l0 = self.box_Progression_Tag_Monitor_90
  l1 = self.box_RewardController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1656264927", "1656264927", "IOP09G_Main", "box_Progression_Tag_Monitor_90.HasNOT", "box_RewardController_v3_6.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_153_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_154
  l0.HackableEntity = self.BadHack
  l0 = self.box_HackableController_v2_153
  l1 = self.box_HackableController_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|50591029", "50591029", "IOP09G_Main", "box_HackableController_v2_153.ProfilingDisabled", "box_HackableController_v2_154.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_106
  l0.CLO = self.CLO
  l0 = self.box_MultipleOR_34
  l1 = self.box_CLOController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1330947176", "1330947176", "IOP09G_Main", "box_MultipleOR_34.Out", "box_CLOController_106.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Progression_Tag_Monitor_67_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|266043888", "266043888", "IOP09G_Main", "box_Progression_Tag_Monitor_67.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_Progression_Tag_Monitor_67_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_113
  l0.ItemDB = "Items.9223372047346444995"
  l0 = self.box_Progression_Tag_Monitor_67
  l1 = self.box_RewardController_v3_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1897901883", "1897901883", "IOP09G_Main", "box_Progression_Tag_Monitor_67.HasNOT", "box_RewardController_v3_113.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|521287024", "521287024", "IOP09G_Main", "box_Ordered_Output_54.Out", "box_Timer_v2_130.Start", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1433809457", "1433809457", "IOP09G_Main", "box_Ordered_Output_54.Out", "box_IOPMonitor_82.Enable", clone, l0)
  l0:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|933154496", "933154496", "IOP09G_Main", "box_Simple_Node_38.Out", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_IOPController_143_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_143
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1746165677", "1746165677", "IOP09G_Main", "box_AI_IOPController_143.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Timer_v2_130_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_42()
  l0 = self.box_Timer_v2_130
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|948423920", "948423920", "IOP09G_Main", "box_Timer_v2_130.TimeElapsed", "box_SecurityCamController_42.SetCanExit", l0, l1)
  l1:SetCanExit()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2049610051", "2049610051", "IOP09G_Main", "box_MultipleOR_104.Out", "box_HackableController_v2_20.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1320414534", "1320414534", "IOP09G_Main", "box_Compare_Boolean_v2_57.A_is_True", "box_PlaySound_v2_116.Play", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1182059778", "1182059778", "IOP09G_Main", "box_Compare_Boolean_v2_57.Out", "box_MultipleOR_155.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_120
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357374190"
  l0 = self.box_MissionMessageController_v3_128
  l1 = self.box_PhoneCommunicationController_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1913348408", "1913348408", "IOP09G_Main", "box_MissionMessageController_v3_128.Out", "box_PhoneCommunicationController_120.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_156_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_157()
  l0 = self.box_HackableController_v2_156
  l1 = self.box_HackableController_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|666805438", "666805438", "IOP09G_Main", "box_HackableController_v2_156.Disabled", "box_HackableController_v2_157.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_156_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_157()
  l0 = self.box_HackableController_v2_156
  l1 = self.box_HackableController_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1955684662", "1955684662", "IOP09G_Main", "box_HackableController_v2_156.ProfilingDisabled", "box_HackableController_v2_157.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Progression_Tag_Monitor_48_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|241067005", "241067005", "IOP09G_Main", "box_Progression_Tag_Monitor_48.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Progression_Tag_Monitor_48_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_71
  l0.ItemDB = "Items.9223372047346444990"
  l0 = self.box_Progression_Tag_Monitor_48
  l1 = self.box_RewardController_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1211613228", "1211613228", "IOP09G_Main", "box_Progression_Tag_Monitor_48.HasNOT", "box_RewardController_v3_71.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_158_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_80()
  l0 = self.box_Hackable_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1338987010", "1338987010", "IOP09G_Main", "box_Ordered_Output_158.Out", "box_Hackable_Monitor_80.Disable", clone, l0)
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
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = "IOP09G_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|717101205", "717101205", "IOP09G_Main", "box_Ordered_Output_158.Out", "box_MissionLayer_v2_81.Unload", clone, l0)
  l0:Unload()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1622226273", "1622226273", "IOP09G_Main", "box_Set_Entity_22.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_AI_IOPController_132_StartEmptyRoomCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|501603921"
  l0.Out = self.f_box_Simple_Node_38_Out
  l0 = self.box_AI_IOPController_132
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1731654208", "1731654208", "IOP09G_Main", "box_AI_IOPController_132.StartEmptyRoomCompleted", "box_Simple_Node_38.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_100_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|980418754"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_69_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_100
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2126913236", "2126913236", "IOP09G_Main", "box_PlaySound_v2_100.Out", "box_Compare_Boolean_v2_69.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_139
  l0.SoundId = "soundbinary/3143645252.bnk"
  l0 = self.box_Multiple_AND_50
  l1 = self.box_PlaySound_v2_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|63995875", "63995875", "IOP09G_Main", "box_Multiple_AND_50.Out", "box_PlaySound_v2_139.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_10_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_10
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|841240301", "841240301", "IOP09G_Main", "box_AI_IOPController_10.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_HackableController_v2_46_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1077995119", "1077995119", "IOP09G_Main", "box_HackableController_v2_46.Disabled", "box_HackableController_v2_142.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_46_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_46
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1891068645", "1891068645", "IOP09G_Main", "box_HackableController_v2_46.Enabled", "box_HackableController_v2_142.EnableProfiling", l0, l1)
  l1:EnableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1479487205", "1479487205", "IOP09G_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_SetBoolean_v2_2.True", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|811009238", "811009238", "IOP09G_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_AI_IOPController_89.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1789133217", "1789133217", "IOP09G_Main", "box_Compare_Integers_v2_19.A_eq_B", "box_MultipleOR_16.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1576234308"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_146_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_146_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_146_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1208163500", "1208163500", "IOP09G_Main", "box_Compare_Integers_v2_19.A_gt_B", "box_Compare_Integers_v2_146.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1153185408", "1153185408", "IOP09G_Main", "box_Compare_Integers_v2_19.A_lt_B", "box_HackableController_v2_101.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1589567095", "1589567095", "IOP09G_Main", "box_SetBoolean_v2_1.Out", "box_AI_IOPController_11.SendEvent", l0, l1)
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
function export:f_box_Hackable_Monitor_80_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1650988062", "1650988062", "IOP09G_Main", "box_Hackable_Monitor_80.Disabled", "box_Hackable_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_80_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_100
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_80
  l1 = self.box_PlaySound_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1828200125", "1828200125", "IOP09G_Main", "box_Hackable_Monitor_80.HackSuccess", "box_PlaySound_v2_100.Play", l0, l1)
  l1:Play()
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
  l0.Entity = "9223372053051119867"
  l0._graph = self
  l0._name = "box_Set_Entity_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1022175662"
  l0.Out = self.f_box_Set_Entity_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2033762322", "2033762322", "IOP09G_Main", "box_SetInteger_v2_49.Out", "box_Set_Entity_30.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1946591249", "1946591249", "IOP09G_Main", "box_HackableController_v2_97.ProfilingEnabled", "box_HackableController_v2_125.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|586199861", "586199861", "IOP09G_Main", "box_LightController_8.Disabled", "box_Timer_v2_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_155_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_156()
  l0 = self.box_MultipleOR_155
  l1 = self.box_HackableController_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1315127791", "1315127791", "IOP09G_Main", "box_MultipleOR_155.Out", "box_HackableController_v2_156.DisableHack", l0, l1)
  l1:DisableHack()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1021607842", "1021607842", "IOP09G_Main", "box_Timer_v2_161.TimeElapsed", "box_CinematicPrep_123.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_AI_IOPController_108_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_108
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1943466044", "1943466044", "IOP09G_Main", "box_AI_IOPController_108.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(2)
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
  l0.Entity = "9223372053051119868"
  l0._graph = self
  l0._name = "box_Set_Entity_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1821241486"
  l0.Out = self.f_box_Set_Entity_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|409031973", "409031973", "IOP09G_Main", "box_SetInteger_v2_103.Out", "box_Set_Entity_147.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MissionLayer_v2_81_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_81
  l1 = self.box_MissionController_v4_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1442287585", "1442287585", "IOP09G_Main", "box_MissionLayer_v2_81.Unloaded", "box_MissionController_v4_122.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_HackableController_v2_134_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_134
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|131521833", "131521833", "IOP09G_Main", "box_HackableController_v2_134.OverrideHackingTextSet", "box_SetBoolean_v2_43.True", l0, l1)
  l1:True()
end
function export:f_box_Progression_Tag_Monitor_88_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1374220852", "1374220852", "IOP09G_Main", "box_Progression_Tag_Monitor_88.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_88_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_77
  l0.ItemDB = "Items.9223372047346444989"
  l0 = self.box_Progression_Tag_Monitor_88
  l1 = self.box_RewardController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1632023509", "1632023509", "IOP09G_Main", "box_Progression_Tag_Monitor_88.HasNOT", "box_RewardController_v3_77.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_HackableController_v2_137_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|532924"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_140_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_137
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|860675427", "860675427", "IOP09G_Main", "box_HackableController_v2_137.ProfilingDisabled", "box_CollisionController_140.DisableCollisions", l0, l1)
  l1:DisableCollisions()
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
function export:f_box_Timer_v2_159_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|340141534"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_15_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_15_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_15_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_159
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|86423231", "86423231", "IOP09G_Main", "box_Timer_v2_159.TimeElapsed", "box_Compare_Integers_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_51_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_50()
  l0 = self.box_AI_IOPController_51
  l1 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|914043843", "914043843", "IOP09G_Main", "box_AI_IOPController_51.SendEventCompleted", "box_Multiple_AND_50.Condition", l0, l1)
  l1:Condition(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1758126477", "1758126477", "IOP09G_Main", "box_MultipleOR_4.Out", "box_HackableController_v2_68.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_17_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_17
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1187497815", "1187497815", "IOP09G_Main", "box_AI_IOPController_17.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1059026483"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_MultipleOR_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1938423987", "1938423987", "IOP09G_Main", "box_MultipleOR_84.Out", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
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
  l0.Entity = "9223372053051119870"
  l0._graph = self
  l0._name = "box_Set_Entity_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1941397775"
  l0.Out = self.f_box_Set_Entity_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1036242", "1036242", "IOP09G_Main", "box_SetInteger_v2_26.Out", "box_Set_Entity_55.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_HackableController_v2_20_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_20
  l1 = self.box_SetBoolean_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|163626860", "163626860", "IOP09G_Main", "box_HackableController_v2_20.OverrideHackingTextSet", "box_SetBoolean_v2_65.True", l0, l1)
  l1:True()
end
function export:f_box_IOPMonitor_82_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1248349517", "1248349517", "IOP09G_Main", "box_IOPMonitor_82.ActivateHackables", "box_HackableController_v2_142.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_82_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_IOPMonitor_82
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|819201553", "819201553", "IOP09G_Main", "box_IOPMonitor_82.DeactivateHackables", "box_HackableController_v2_142.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_82_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_21
  l0.SoundId = "soundbinary/2015265299.bnk"
  l0 = self.box_IOPMonitor_82
  l1 = self.box_PlaySound_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|266602974", "266602974", "IOP09G_Main", "box_IOPMonitor_82.Disabled", "box_PlaySound_v2_21.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_82_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_82()
  l0 = self.box_IOPMonitor_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|964486086", "964486086", "IOP09G_Main", "box_IOPMonitor_82.IOPComplete", "box_IOPMonitor_82.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AI_IOPController_60_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_60
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|815182100", "815182100", "IOP09G_Main", "box_AI_IOPController_60.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2112006412", "2112006412", "IOP09G_Main", "box_Compare_Boolean_v2_69.A_is_False", "box_SetBoolean_v2_1.True", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|493884084", "493884084", "IOP09G_Main", "box_Compare_Boolean_v2_69.A_is_True", "box_AI_IOPController_62.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_PlaySound_v2_139_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_139
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|457756518", "457756518", "IOP09G_Main", "box_PlaySound_v2_139.Out", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|828232871", "828232871", "IOP09G_Main", "box_Set_Entity_32.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(7)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1866421151", "1866421151", "IOP09G_Main", "box_Compare_Integers_v2_112.A_eq_B", "box_AI_IOPController_52.SendEvent", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|764043286", "764043286", "IOP09G_Main", "box_Compare_Integers_v2_112.A_lt_B", "box_AI_IOPController_136.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|652358221"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_111
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|566094707", "566094707", "IOP09G_Main", "box_MultipleOR_111.Out", "box_LightController_28.Disable", l0, l1)
  l1:Disable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|22120089", "22120089", "IOP09G_Main", "box_Simple_Node_3.Out", "box_HackableController_v2_97.EnableProfiling", clone, l0)
  l0:EnableProfiling()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|81930664", "81930664", "IOP09G_Main", "box_Set_Entity_30.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|89695794"
  l0.Out = self.f_box_SetInteger_v2_29_Out
  l0 = self.box_RewardController_v3_113
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2060565490", "2060565490", "IOP09G_Main", "box_RewardController_v3_113.Out", "box_SetInteger_v2_29.FromInteger", l0, l1)
  l1:FromInteger()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1751064392", "1751064392", "IOP09G_Main", "box_Ordered_Output_45.Out", "box_Security_Camera_Monitor_40.Enable", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1083461391"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_110_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_110_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_110_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|580845807", "580845807", "IOP09G_Main", "box_Ordered_Output_45.Out", "box_Compare_Integers_v2_110.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_150_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|671845082"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_150
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2120820533", "2120820533", "IOP09G_Main", "box_PlaySound_v2_150.Out", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|709716156"
  l0.Out = self.f_box_SetInteger_v2_49_Out
  l0 = self.box_RewardController_v3_77
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|966728644", "966728644", "IOP09G_Main", "box_RewardController_v3_77.Out", "box_SetInteger_v2_49.FromInteger", l0, l1)
  l1:FromInteger()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1616509610", "1616509610", "IOP09G_Main", "box_Compare_Integers_v2_110.A_eq_B", "box_AI_IOPController_5.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1625697610"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_121_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_121_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_121_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1670641987", "1670641987", "IOP09G_Main", "box_Compare_Integers_v2_110.A_gt_B", "box_Compare_Integers_v2_121.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1057118981", "1057118981", "IOP09G_Main", "box_Compare_Integers_v2_110.A_lt_B", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1179800991", "1179800991", "IOP09G_Main", "box_Compare_Integers_v2_9.A_eq_B", "box_AI_IOPController_17.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|995900979"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_112_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_112_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1268236517", "1268236517", "IOP09G_Main", "box_Compare_Integers_v2_9.A_gt_B", "box_Compare_Integers_v2_112.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|354372293", "354372293", "IOP09G_Main", "box_Compare_Integers_v2_9.A_lt_B", "box_AI_IOPController_143.SendEvent", clone, l0)
  l0:SendEvent()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|348547265", "348547265", "IOP09G_Main", "box_Set_Entity_98.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(6)
end
function export:f_box_LightController_13_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_83
  l0.MainLayer = "IOP09G_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059805863940"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1874482073", "1874482073", "IOP09G_Main", "box_LightController_13.Disabled", "box_IOP_StartUp_83.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_154_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_HackableController_v2_154
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1609794500", "1609794500", "IOP09G_Main", "box_HackableController_v2_154.ProfilingDisabled", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(0)
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
  l0.Entity = "9223372053051119865"
  l0._graph = self
  l0._name = "box_Set_Entity_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|992984395"
  l0.Out = self.f_box_Set_Entity_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|612184167", "612184167", "IOP09G_Main", "box_SetInteger_v2_149.Out", "box_Set_Entity_32.FromEntity", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|167882902"
  l0.Out = self.f_box_SetInteger_v2_79_Out
  l0 = self.box_RewardController_v3_71
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1389592078", "1389592078", "IOP09G_Main", "box_RewardController_v3_71.Out", "box_SetInteger_v2_79.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_Progression_Tag_Monitor_107_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|798270418", "798270418", "IOP09G_Main", "box_Progression_Tag_Monitor_107.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_Progression_Tag_Monitor_107_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_74
  l0.ItemDB = "Items.9223372047346444992"
  l0 = self.box_Progression_Tag_Monitor_107
  l1 = self.box_RewardController_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|562463444", "562463444", "IOP09G_Main", "box_Progression_Tag_Monitor_107.HasNOT", "box_RewardController_v3_74.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1865755873", "1865755873", "IOP09G_Main", "box_LightController_39.Enabled", "box_PlaySound_v2_91.Play", clone, l0)
  l0:Play()
end
function export:f_box_IOP_CleanUp_64_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_64
  l1 = self.box_Timer_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|947632643", "947632643", "IOP09G_Main", "box_IOP_CleanUp_64.Completed", "box_Timer_v2_141.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOP_CleanUp_64_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_IOP_CleanUp_64
  l1 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1522798603", "1522798603", "IOP09G_Main", "box_IOP_CleanUp_64.DisconnectedAnimationPlayed", "box_CLOController_148.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1224301424"
  l0.Enabled = self.f_box_LightController_39_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_36
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1613359425", "1613359425", "IOP09G_Main", "box_MultipleOR_36.Out", "box_LightController_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_151_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CLO_Sync
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2084460692"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_66_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_66_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_66_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_Timer_v2_151
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|285760345", "285760345", "IOP09G_Main", "box_Timer_v2_151.TimeElapsed", "box_Compare_Integers_v2_66.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1212093091", "1212093091", "IOP09G_Main", "box_Compare_Integers_v2_118.A_eq_B", "box_HackableController_v2_72.SetOverrideHackingText", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1453901725", "1453901725", "IOP09G_Main", "box_Compare_Integers_v2_118.A_lt_B", "box_MultipleOR_16.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1586027431", "1586027431", "IOP09G_Main", "box_MultipleOR_61.Out", "box_HackableController_v2_134.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_52_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_52
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|128149625", "128149625", "IOP09G_Main", "box_AI_IOPController_52.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(7)
end
function export:f_box_HackableController_v2_157_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_156()
  l0 = self.box_HackableController_v2_157
  l1 = self.box_HackableController_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1152827253", "1152827253", "IOP09G_Main", "box_HackableController_v2_157.Disabled", "box_HackableController_v2_156.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Progression_Tag_Monitor_133_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|858614189", "858614189", "IOP09G_Main", "box_Progression_Tag_Monitor_133.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(6)
end
function export:f_box_Progression_Tag_Monitor_133_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_93
  l0.ItemDB = "Items.9223372047346444994"
  l0 = self.box_Progression_Tag_Monitor_133
  l1 = self.box_RewardController_v3_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1743380200", "1743380200", "IOP09G_Main", "box_Progression_Tag_Monitor_133.HasNOT", "box_RewardController_v3_93.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AI_IOPController_62_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MakeItRain
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|524710792"
  l0.Out = self.f_box_Compare_Boolean_v2_57_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_57_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_62
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2111469527", "2111469527", "IOP09G_Main", "box_AI_IOPController_62.SendEventCompleted", "box_Compare_Boolean_v2_57.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2087896777", "2087896777", "IOP09G_Main", "box_SetBoolean_v2_2.Out", "box_AI_IOPController_27.SendEvent", l0, l1)
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
function export:f_box_IOP_StartUp_83_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1533993564"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_IOP_StartUp_83
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2124513971", "2124513971", "IOP09G_Main", "box_IOP_StartUp_83.Out", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1833906939", "1833906939", "IOP09G_Main", "box_CLOController_106.OnUserInPlace", "box_HackableController_v2_137.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_PlaySound_v2_116_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.Money
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|316965142"
  l0.Started = self.f_box_ParticleFXController_v2_63_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_PlaySound_v2_116
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1015831888", "1015831888", "IOP09G_Main", "box_PlaySound_v2_116.Started", "box_ParticleFXController_v2_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_89_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alarm
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|387959529"
  l0.Out = self.f_box_Compare_Boolean_v2_47_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_47_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOPController_89
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|633974008", "633974008", "IOP09G_Main", "box_AI_IOPController_89.SendEventCompleted", "box_Compare_Boolean_v2_47.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|618924837", "618924837", "IOP09G_Main", "box_SecurityCamController_42.CanExitSet", "box_SecurityCamController_42.ForceEnter", clone, l0)
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
  l0._name = "box_Ordered_Output_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1891764983"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_152_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_152_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|203065404", "203065404", "IOP09G_Main", "box_SecurityCamController_42.EnterForced", "box_Ordered_Output_152.In", clone, l0)
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
  l0.Entity = "9223372053051119866"
  l0._graph = self
  l0._name = "box_Set_Entity_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1813910687"
  l0.Out = self.f_box_Set_Entity_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|35397706", "35397706", "IOP09G_Main", "box_SetInteger_v2_95.Out", "box_Set_Entity_76.FromEntity", clone, l0)
  l0:FromEntity()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|511774256", "511774256", "IOP09G_Main", "box_Compare_Integers_v2_117.A_eq_B", "box_MultipleOR_4.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|383070054", "383070054", "IOP09G_Main", "box_Compare_Integers_v2_117.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(4)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|132301186", "132301186", "IOP09G_Main", "box_Ordered_Output_53.Out", "box_PlaySound_v2_114.Play", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|699857287", "699857287", "IOP09G_Main", "box_Ordered_Output_53.Out", "box_MissionMessageController_v3_128.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_AI_IOPController_5_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_5
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|383950502", "383950502", "IOP09G_Main", "box_AI_IOPController_5.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1224787427", "1224787427", "IOP09G_Main", "box_Compare_Integers_v2_146.A_eq_B", "box_HackableController_v2_25.SetOverrideHackingText", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1279190819"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_118_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_118_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|89026447", "89026447", "IOP09G_Main", "box_Compare_Integers_v2_146.A_gt_B", "box_Compare_Integers_v2_118.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1641529232", "1641529232", "IOP09G_Main", "box_Compare_Integers_v2_146.A_lt_B", "box_HackableController_v2_96.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_AI_IOPController_27_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_27
  l1 = self.box_Timer_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|36786700", "36786700", "IOP09G_Main", "box_AI_IOPController_27.SendEventCompleted", "box_Timer_v2_159.Start", l0, l1)
  l1:Start()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|817417503", "817417503", "IOP09G_Main", "box_Compare_Integers_v2_121.A_eq_B", "box_AI_IOPController_10.SendEvent", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1108725630"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_9_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_9_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_9_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1186037449", "1186037449", "IOP09G_Main", "box_Compare_Integers_v2_121.A_gt_B", "box_Compare_Integers_v2_9.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|324535334", "324535334", "IOP09G_Main", "box_Compare_Integers_v2_121.A_lt_B", "box_AI_IOPController_108.SendEvent", clone, l0)
  l0:SendEvent()
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
  l0._name = "box_LightController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1116166599"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_13_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2029964038", "2029964038", "IOP09G_Main", "box_Get_Player_ID_126.Out", "box_LightController_13.Disable", clone, l0)
  l0:Disable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1923169360", "1923169360", "IOP09G_Main", "box_Compare_Integers_v2_94.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1533250210"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_117_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_117_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|54962412", "54962412", "IOP09G_Main", "box_Compare_Integers_v2_94.A_gt_B", "box_Compare_Integers_v2_117.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|476784832", "476784832", "IOP09G_Main", "box_Compare_Integers_v2_94.A_lt_B", "box_HackableController_v2_119.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|261744774"
  l0.Out = self.f_box_SetInteger_v2_145_Out
  l0 = self.box_RewardController_v3_93
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1990574273", "1990574273", "IOP09G_Main", "box_RewardController_v3_93.Out", "box_SetInteger_v2_145.FromInteger", l0, l1)
  l1:FromInteger()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1145728550"
  l0.Out = self.f_box_SetInteger_v2_149_Out
  l0 = self.box_RewardController_v3_6
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|454729026", "454729026", "IOP09G_Main", "box_RewardController_v3_6.Out", "box_SetInteger_v2_149.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_CLOController_148_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_148()
  l0 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|273544897", "273544897", "IOP09G_Main", "box_CLOController_148.UnspawnedUser", "box_CLOController_148.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_AI_IOPController_92_StartCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_AI_IOPController_92
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1224113919", "1224113919", "IOP09G_Main", "box_AI_IOPController_92.StartCompleted", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1290446061", "1290446061", "IOP09G_Main", "box_Simple_Node_33.Out", "box_Hackable_Monitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_114_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_114
  l1 = self.box_SetBoolean_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|433739197", "433739197", "IOP09G_Main", "box_PlaySound_v2_114.Started", "box_SetBoolean_v2_44.False", l0, l1)
  l1:False()
end
function export:f_box_AI_IOPController_75_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_40()
  l0 = self.box_AI_IOPController_75
  l1 = self.box_Security_Camera_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|55500888", "55500888", "IOP09G_Main", "box_AI_IOPController_75.SendEventCompleted", "box_Security_Camera_Monitor_40.Disable", l0, l1)
  l1:Disable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1401531180", "1401531180", "IOP09G_Main", "box_LightController_18.Enabled", "box_Multiple_AND_50.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1651644886"
  l0.Out = self.f_box_Get_Player_ID_126_Out
  l0 = self.box_MultipleOR_58
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1444318929", "1444318929", "IOP09G_Main", "box_MultipleOR_58.Out", "box_Get_Player_ID_126.In", l0, l1)
  l1:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1682518147", "1682518147", "IOP09G_Main", "box_Compare_Integers_v2_78.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1694145557"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_94_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_94_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_94_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1607384338", "1607384338", "IOP09G_Main", "box_Compare_Integers_v2_78.A_gt_B", "box_Compare_Integers_v2_94.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|457728727", "457728727", "IOP09G_Main", "box_Compare_Integers_v2_78.A_lt_B", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1739236344", "1739236344", "IOP09G_Main", "box_Set_Entity_76.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(4)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1095201204", "1095201204", "IOP09G_Main", "box_Set_Entity_147.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_PlaySound_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.DisconnectedText = {
    section = "HACKING.Interface Messages",
    item = "HackingFailed",
    id = "5906"
  }
  l0._graph = self
  l0._name = "box_SecurityCamController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|422741971"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = self.f_box_SecurityCamController_14_DisconnectedAnimationPlayed
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_PlaySound_v2_21
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|755610088", "755610088", "IOP09G_Main", "box_PlaySound_v2_21.Out", "box_SecurityCamController_14.PlayDisconnectedAnimation", l0, l1)
  l1:PlayDisconnectedAnimation()
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
  l0 = self.box_HackableController_v2_153
  l0.HackableEntity = self.GoodHack
  l0 = self.box_SetBoolean_v2_131
  l1 = self.box_HackableController_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1903430249", "1903430249", "IOP09G_Main", "box_SetBoolean_v2_131.SetFalse", "box_HackableController_v2_153.DisableProfiling", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1078791737", "1078791737", "IOP09G_Main", "box_MultipleOR_16.Out", "box_HackableController_v2_56.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_MultipleOR_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_24
  l0.Probability[0] = 0
  l0.Probability[1] = 0
  l0.Probability[2] = 0
  l0.Probability[3] = 0
  l0.Probability[4] = 1
  l0.Probability[5] = 0
  l0.Probability[6] = 0
  l0.Probability[7] = 0
  l0.Probability[8] = 0
  l0 = self.box_MultipleOR_109
  l1 = self.box_RandomOutput_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|437454756", "437454756", "IOP09G_Main", "box_MultipleOR_109.Out", "box_RandomOutput_v2_24.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_152_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_73
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|985689824", "985689824", "IOP09G_Main", "box_Ordered_Output_152.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_152_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_160()
  l0 = self.box_Security_Camera_Monitor_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1894643965", "1894643965", "IOP09G_Main", "box_Ordered_Output_152.Out", "box_Security_Camera_Monitor_160.Enable", clone, l0)
  l0:Enable()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1007330078"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_Timer_v2_12
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1648288093", "1648288093", "IOP09G_Main", "box_Timer_v2_12.LoopingEnded", "box_Simple_Node_3.In", l0, l1)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1207289383", "1207289383", "IOP09G_Main", "box_Timer_v2_12.TimeElapsed", "box_IndexedOutput_V2_37.In", l0, l1)
  l1:In()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1732142381"
  l0.Out = self.f_box_Simple_Node_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2096099911", "2096099911", "IOP09G_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_33.In", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|226259230"
  l0.Out = self.f_box_Simple_Node_127_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|486467505", "486467505", "IOP09G_Main", "box_Ordered_Output_99.Out", "box_Simple_Node_127.In", clone, l0)
  l0:In()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|2092105621", "2092105621", "IOP09G_Main", "box_Set_Entity_55.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Progression_Tag_Monitor_129_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1445807359", "1445807359", "IOP09G_Main", "box_Progression_Tag_Monitor_129.Has", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_Progression_Tag_Monitor_129_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_124
  l0.ItemDB = "Items.9223372047346444993"
  l0 = self.box_Progression_Tag_Monitor_129
  l1 = self.box_RewardController_v3_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|497555399", "497555399", "IOP09G_Main", "box_Progression_Tag_Monitor_129.HasNOT", "box_RewardController_v3_124.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_120_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_51
  l0.IopID = "Atm"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_120
  l1 = self.box_AI_IOPController_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|837698562", "837698562", "IOP09G_Main", "box_PhoneCommunicationController_120.OnCommunicationFinished", "box_AI_IOPController_51.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_59_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1906577933"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_HackableController_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1086215478", "1086215478", "IOP09G_Main", "box_HackableController_v2_59.OverrideHackingTextSet", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_136_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_AI_IOPController_136
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|315318461", "315318461", "IOP09G_Main", "box_AI_IOPController_136.SendEventCompleted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(6)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1683472497", "1683472497", "IOP09G_Main", "box_Compare_Integers_v2_66.A_eq_B", "box_MultipleOR_61.Input", clone, l0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1806614436"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_78_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_78_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_78_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1256522556", "1256522556", "IOP09G_Main", "box_Compare_Integers_v2_66.A_gt_B", "box_Compare_Integers_v2_78.In", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|23945448", "23945448", "IOP09G_Main", "box_Compare_Integers_v2_66.A_lt_B", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|874833045"
  l0.Out = self.f_box_SetInteger_v2_26_Out
  l0 = self.box_RewardController_v3_86
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|909533319", "909533319", "IOP09G_Main", "box_RewardController_v3_86.Out", "box_SetInteger_v2_26.FromInteger", l0, l1)
  l1:FromInteger()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|805053302", "805053302", "IOP09G_Main", "box_ListWriter_102.Added", "box_AI_IOPController_92.Start", l0, l1)
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
function export:f_box_Security_Camera_Monitor_160_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_161
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_160
  l1 = self.box_Timer_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1151361142", "1151361142", "IOP09G_Main", "box_Security_Camera_Monitor_160.Disabled", "box_Timer_v2_161.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_160_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_160()
  l0 = self.box_Security_Camera_Monitor_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|222192455", "222192455", "IOP09G_Main", "box_Security_Camera_Monitor_160.OnEndAccessCamera", "box_Security_Camera_Monitor_160.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_Hackable_Monitor_7()
  local l0
  l0 = self.box_Hackable_Monitor_7
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_MultipleOR_87()
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
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_HackableController_v2_156()
  local l0
  l0 = self.box_HackableController_v2_156
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_Multiple_AND_50()
end
function export:OnEnter_box_HackableController_v2_46()
  local l0
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = self.BadHack
end
function export:OnEnter_box_Hackable_Monitor_80()
  local l0
  l0 = self.box_Hackable_Monitor_80
  l0.HackableEntity = self.GoodHack
end
function export:OnEnter_box_MultipleOR_155()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_IOPMonitor_82()
end
function export:OnEnter_box_MultipleOR_111()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_HackableController_v2_157()
  local l0
  l0 = self.box_HackableController_v2_157
  l0.HackableEntity = self.BadHack
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09G.domino|@IOP09G_Main|1524545579"
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
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MultipleOR_109()
end
function export:OnEnter_box_Security_Camera_Monitor_160()
  local l0
  l0 = self.box_Security_Camera_Monitor_160
  l0.CameraEntity = self.ATM_Camera
end
_compilerVersion = 4
