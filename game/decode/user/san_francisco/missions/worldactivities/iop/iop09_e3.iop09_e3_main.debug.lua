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
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1433769250.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2847170774.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2015265299.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2785530579.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/669646554.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3143645252.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP09_E3_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Alarm = 0
  self.ATM_Camera = "9223372050041339547"
  self.BarkSoundEntity_0 = "9223372050041339536"
  self.RolesList = {"Atm.Person"}
  self.Money = "9223372050041339540"
  self.CLO = nil
  self.GoodHack = "9223372050041339545"
  self.Money2 = "9223372050041339549"
  self.BadVar = 0
  self.MakeItRain = 0
  self.Money3 = "9223372050041339542"
  self.Npc = nil
  self.GoodVar = 0
  self.NPC_List = {}
  self.CLO_Sync = 6
  self.Light = "9223372050041339534"
  self.BadHack = "9223372050041339538"
  self.box_IndexedOutput_V2_108 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_108
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|29451060"
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_box_IndexedOutput_V2_108_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_108_Output_1
  l0.Output[2] = self.f_box_IndexedOutput_V2_108_Output_2
  l0.Output[3] = self.f_box_IndexedOutput_V2_108_Output_3
  l0.Output[4] = self.f_box_IndexedOutput_V2_108_Output_4
  l0.Output[5] = self.f_box_IndexedOutput_V2_108_Output_5
  l0.Output[6] = self.f_box_IndexedOutput_V2_108_Output_6
  l0.Output[7] = self.f_box_IndexedOutput_V2_108_Output_7
  l0.Output[8] = self.f_box_IndexedOutput_V2_108_Output_8
  l0.Output[9] = self.f_box_IndexedOutput_V2_108_Output_9
  l0.OutOfRange = DummyFunction
  self.box_SetBoolean_v2_64 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_64
  l0._graph = self
  l0._name = "box_SetBoolean_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|47249211"
  l0.Out = self.f_box_SetBoolean_v2_64_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_64_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_64_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_64_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_64_SetFromBool
  self.box_Timer_v2_119 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_119
  l0._graph = self
  l0._name = "box_Timer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|113491760"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|184683362"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_14_Finished
  self.box_Hackable_Controller_122 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_122
  l0._graph = self
  l0._name = "box_Hackable_Controller_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|219839118"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_Hackable_Controller_122_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Security_Camera_Monitor_6 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_6
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|267002353"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_6_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_6_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CLOController_72 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_72
  l0._graph = self
  l0._name = "box_CLOController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|416037532"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_72_OnUserInPlace
  self.box_ListWriter_56 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_56
  l0._graph = self
  l0._name = "box_ListWriter_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|476413434"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_56_Added
  l0.Removed = self.f_box_ListWriter_56_Removed
  l0.Out = self.f_box_ListWriter_56_Out
  self.box_Hackable_Controller_70 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_70
  l0._graph = self
  l0._name = "box_Hackable_Controller_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|511452865"
  l0.Enabled = self.f_box_Hackable_Controller_70_Enabled
  l0.Disabled = self.f_box_Hackable_Controller_70_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = self.f_box_Hackable_Controller_70_OverrideHackingTextSet
  self.box_Security_Camera_Monitor_11 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_11
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|523019633"
  l0.Enabled = self.f_box_Security_Camera_Monitor_11_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_AI_IOPController_133 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_133
  l0._graph = self
  l0._name = "box_AI_IOPController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|539187908"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_133_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|612931012"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_AI_IOPController_103 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_103
  l0._graph = self
  l0._name = "box_AI_IOPController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|620663075"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_2 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_2
  l0._graph = self
  l0._name = "box_AI_IOPController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|679351788"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_2_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_CinematicPrep_144 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_144
  l0._graph = self
  l0._name = "box_CinematicPrep_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|708720607"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_144_PostOut
  self.box_AI_IOPController_90 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_90
  l0._graph = self
  l0._name = "box_AI_IOPController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|727452153"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MissionController_v4_84 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_84
  l0._graph = self
  l0._name = "box_MissionController_v4_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|781628331"
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|809981979"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_46 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_46
  l0._graph = self
  l0._name = "box_PlaySound_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1017518226"
  l0.Out = self.f_box_PlaySound_v2_46_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_129 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_129
  l0._graph = self
  l0._name = "box_Hackable_Monitor_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1020764929"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_129_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Controller_54 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_54
  l0._graph = self
  l0._name = "box_Hackable_Controller_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1037923120"
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
  self.box_AI_IOPController_101 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_101
  l0._graph = self
  l0._name = "box_AI_IOPController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1041376720"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_101_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Hackable_Controller_39 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_39
  l0._graph = self
  l0._name = "box_Hackable_Controller_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1108417444"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_Hackable_Controller_39_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_121 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_121
  l0._graph = self
  l0._name = "box_AI_IOPController_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1166232545"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_121_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_75 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_75
  l0._graph = self
  l0._name = "box_SetBoolean_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1227082452"
  l0.Out = self.f_box_SetBoolean_v2_75_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_75_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_75_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_75_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_75_SetFromBool
  self.box_PlaySound_v2_8 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1397757843"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_8_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1405127901"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_12 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_12
  l0._graph = self
  l0._name = "box_AI_IOPController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1494978425"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MissionLayer_v2_116 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_116
  l0._graph = self
  l0._name = "box_MissionLayer_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1523511137"
  l0.Loaded = self.f_box_MissionLayer_v2_116_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1637271789"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_PlaySound_v2_9 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_9
  l0._graph = self
  l0._name = "box_PlaySound_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1643674776"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_55 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_55
  l0._graph = self
  l0._name = "box_MultipleOR_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1670662522"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_55_Out
  self.box_Hackable_Monitor_99 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_99
  l0._graph = self
  l0._name = "box_Hackable_Monitor_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1734920383"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_99_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_134 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_134
  l0._graph = self
  l0._name = "box_MissionLayer_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1758130176"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_134_Unloaded
  l0.Reseted = DummyFunction
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1828933872"
  l0.Out = self.f_box_Timer_v2_83_Out
  l0.Started = self.f_box_Timer_v2_83_Started
  l0.Stopped = self.f_box_Timer_v2_83_Stopped
  l0.Paused = self.f_box_Timer_v2_83_Paused
  l0.Resumed = self.f_box_Timer_v2_83_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_83_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_Hackable_Controller_118 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_118
  l0._graph = self
  l0._name = "box_Hackable_Controller_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1829302169"
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
  self.box_SetBoolean_v2_115 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_115
  l0._graph = self
  l0._name = "box_SetBoolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1851182977"
  l0.Out = self.f_box_SetBoolean_v2_115_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_115_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_115_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_115_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_115_SetFromBool
  self.box_Hackable_Controller_58 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_58
  l0._graph = self
  l0._name = "box_Hackable_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1958362773"
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
  self.box_PlaySound_v2_82 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_82
  l0._graph = self
  l0._name = "box_PlaySound_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1964078515"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_82_Started
  l0.Finished = DummyFunction
  self.box_CLOController_20 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_20
  l0._graph = self
  l0._name = "box_CLOController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1982172137"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_20_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_20_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_94 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_94
  l0._graph = self
  l0._name = "box_PlaySound_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2001469878"
  l0.Out = self.f_box_PlaySound_v2_94_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2049286024"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_1 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_1
  l0._graph = self
  l0._name = "box_Timer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2061066477"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_109 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_109
  l0._graph = self
  l0._name = "box_SetBoolean_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2068733431"
  l0.Out = self.f_box_SetBoolean_v2_109_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_109_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_109_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_109_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_109_SetFromBool
  self.box_PlaySound_v2_86 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_86
  l0._graph = self
  l0._name = "box_PlaySound_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2086873720"
  l0.Out = self.f_box_PlaySound_v2_86_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_17 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_17
  l0._graph = self
  l0._name = "box_IOPMonitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2094785121"
  l0.Enabled = self.f_box_IOPMonitor_17_Enabled
  l0.Disabled = self.f_box_IOPMonitor_17_Disabled
  l0.ActivateHackables = self.f_box_IOPMonitor_17_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_17_DeactivateHackables
  l0.IOPComplete = self.f_box_IOPMonitor_17_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
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
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1708147973", "1708147973", "IOP09_E3_Main", "CheckPoint_0", "box_MultipleOR_55.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_55()
  l0 = self.box_MultipleOR_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|681868075", "681868075", "IOP09_E3_Main", "In", "box_MultipleOR_55.Input", self, l0)
  l0:Input(0)
end
function export:f_box_IndexedOutput_V2_108_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|120911493", "120911493", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_108_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1576711973", "1576711973", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_108_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1618226053", "1618226053", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_108_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|144942704", "144942704", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_108_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1111842270", "1111842270", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_108_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1264191954", "1264191954", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_108_Output_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1283607105", "1283607105", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_108_Output_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1025252488", "1025252488", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_IndexedOutput_V2_108_Output_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1664244149", "1664244149", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_IndexedOutput_V2_108_Output_9()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_IndexedOutput_V2_108
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1579094136", "1579094136", "IOP09_E3_Main", "box_IndexedOutput_V2_108.Output", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_SetBoolean_v2_64_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_64_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.Alarm = l0.Target
  l0 = self.box_CLOController_72
  l0.CLO = "9223372050041339550"
  l0 = self.box_SetBoolean_v2_64
  l1 = self.box_CLOController_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1664334260", "1664334260", "IOP09_E3_Main", "box_SetBoolean_v2_64.SetFalse", "box_CLOController_72.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetBoolean_v2_64_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_64_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.Alarm = l0.Target
end
function export:f_box_SetBoolean_v2_64_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.Alarm = l0.Target
end
function export:f_box_Timer_v2_119_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_11
  l0.CameraEntity = self.ATM_Camera
  l0 = self.box_Timer_v2_119
  l1 = self.box_Security_Camera_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|587662188", "587662188", "IOP09_E3_Main", "box_Timer_v2_119.TimeElapsed", "box_Security_Camera_Monitor_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_14_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_100()
  l0 = self.box_PlaySound_v2_14
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1021758114", "1021758114", "IOP09_E3_Main", "box_PlaySound_v2_14.Finished", "box_SecurityCamController_100.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Hackable_Controller_122_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|981358067"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_130_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_130_Out_1
  l0 = self.box_Hackable_Controller_122
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1346035515", "1346035515", "IOP09_E3_Main", "box_Hackable_Controller_122.ProfilingEnabled", "box_Ordered_Output_130.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_6_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_90
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.EnableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_6
  l1 = self.box_AI_IOPController_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1999628955", "1999628955", "IOP09_E3_Main", "box_Security_Camera_Monitor_6.OnStartAccessCamera", "box_AI_IOPController_90.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_6_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_12
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.DisableFishEyeEffect"
  l0 = self.box_Security_Camera_Monitor_6
  l1 = self.box_AI_IOPController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|243707312", "243707312", "IOP09_E3_Main", "box_Security_Camera_Monitor_6.OnStartExitCamera", "box_AI_IOPController_12.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_CLOController_72_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_72
  self.Npc = l0.UserID
  l0 = self.box_Hackable_Controller_39
  l0.HackableEntity = self.Npc
  l0 = self.box_CLOController_72
  l1 = self.box_Hackable_Controller_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1492334298", "1492334298", "IOP09_E3_Main", "box_CLOController_72.OnUserInPlace", "box_Hackable_Controller_39.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Get_Player_ID_85_Out()
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
  l0._name = "box_LightController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1567427157"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_73_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2138409931", "2138409931", "IOP09_E3_Main", "box_Get_Player_ID_85.Out", "box_LightController_73.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ListWriter_56_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_56
  self.NPC_List = l0.Target
  l0 = self.box_AI_IOPController_101
  l0.IopID = "Atm"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPC_List
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0 = self.box_ListWriter_56
  l1 = self.box_AI_IOPController_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1134656332", "1134656332", "IOP09_E3_Main", "box_ListWriter_56.Added", "box_AI_IOPController_101.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_56_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.NPC_List = l0.Target
end
function export:f_box_ListWriter_56_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_56
  self.NPC_List = l0.Target
end
function export:f_box_SecurityCamController_47_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_47()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|967425762", "967425762", "IOP09_E3_Main", "box_SecurityCamController_47.CanExitSet", "box_SecurityCamController_47.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_47_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_144
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|481139208", "481139208", "IOP09_E3_Main", "box_SecurityCamController_47.EnterForced", "box_CinematicPrep_144.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Hackable_Controller_70_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_58()
  l0 = self.box_Hackable_Controller_70
  l1 = self.box_Hackable_Controller_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2037875292", "2037875292", "IOP09_E3_Main", "box_Hackable_Controller_70.Disabled", "box_Hackable_Controller_58.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Controller_70_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_58()
  l0 = self.box_Hackable_Controller_70
  l1 = self.box_Hackable_Controller_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|306084009", "306084009", "IOP09_E3_Main", "box_Hackable_Controller_70.Enabled", "box_Hackable_Controller_58.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Hackable_Controller_70_OverrideHackingTextSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_58()
  l0 = self.box_Hackable_Controller_70
  l1 = self.box_Hackable_Controller_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2129141731", "2129141731", "IOP09_E3_Main", "box_Hackable_Controller_70.OverrideHackingTextSet", "box_Hackable_Controller_58.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_LightController_120_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_9
  l0.SoundId = "soundbinary/2847170774.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1731791000", "1731791000", "IOP09_E3_Main", "box_LightController_120.Enabled", "box_PlaySound_v2_9.Play", clone, l0)
  l0:Play()
end
function export:f_box_Security_Camera_Monitor_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_47()
  l0 = self.box_Security_Camera_Monitor_11
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1016897199", "1016897199", "IOP09_E3_Main", "box_Security_Camera_Monitor_11.Enabled", "box_SecurityCamController_47.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_AI_IOPController_133_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1992020193"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_126_Out_1
  l0 = self.box_AI_IOPController_133
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1918015069", "1918015069", "IOP09_E3_Main", "box_AI_IOPController_133.SendEventCompleted", "box_Ordered_Output_126.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_35_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_115
  l0.Bool = self.GoodVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|74249243", "74249243", "IOP09_E3_Main", "box_Compare_Boolean_v2_35.A_is_False", "box_SetBoolean_v2_115.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_35_A_is_True()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|581102597", "581102597", "IOP09_E3_Main", "box_Compare_Boolean_v2_35.A_is_True", "box_AI_IOPController_60.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|518697429"
  l0.Enabled = self.f_box_LightController_120_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_29
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|9125531", "9125531", "IOP09_E3_Main", "box_MultipleOR_29.Out", "box_LightController_120.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LightController_41_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_8
  l0.SoundId = "soundbinary/3143645252.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1469230389", "1469230389", "IOP09_E3_Main", "box_LightController_41.Enabled", "box_PlaySound_v2_8.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_2_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_54
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Give_Money",
    id = "544814"
  }
  l0 = self.box_AI_IOPController_2
  l1 = self.box_Hackable_Controller_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|890158786", "890158786", "IOP09_E3_Main", "box_AI_IOPController_2.SendEventCompleted", "box_Hackable_Controller_54.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_CinematicPrep_144_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 3
  l0 = self.box_CinematicPrep_144
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1161880780", "1161880780", "IOP09_E3_Main", "box_CinematicPrep_144.PostOut", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2109146018"
  l0.Out = self.f_box_Simple_Node_140_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2036918835", "2036918835", "IOP09_E3_Main", "box_Ordered_Output_130.Out", "box_Simple_Node_140.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1135463411"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1565036610", "1565036610", "IOP09_E3_Main", "box_Ordered_Output_130.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GoodVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|576189869"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_35_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_35_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_46
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|800159703", "800159703", "IOP09_E3_Main", "box_PlaySound_v2_46.Out", "box_Compare_Boolean_v2_35.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_129_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_46
  l0.SoundId = "soundbinary/2785530579.bnk"
  l0 = self.box_Hackable_Monitor_129
  l1 = self.box_PlaySound_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1151292038", "1151292038", "IOP09_E3_Main", "box_Hackable_Monitor_129.HackSuccess", "box_PlaySound_v2_46.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_101_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1923103304"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_69_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_69_Out_1
  l0 = self.box_AI_IOPController_101
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1683479754", "1683479754", "IOP09_E3_Main", "box_AI_IOPController_101.StartCompleted", "box_Ordered_Output_69.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Controller_39_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Npc
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1296431112"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_Hackable_Controller_39
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|939780819", "939780819", "IOP09_E3_Main", "box_Hackable_Controller_39.ProfilingDisabled", "box_CollisionController_27.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_99
  l0.HackableEntity = self.BadHack
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1492033774", "1492033774", "IOP09_E3_Main", "box_Simple_Node_32.Out", "box_Hackable_Monitor_99.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_IOPController_121_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_118
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Pay_Alimony",
    id = "544820"
  }
  l0 = self.box_AI_IOPController_121
  l1 = self.box_Hackable_Controller_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1883074697", "1883074697", "IOP09_E3_Main", "box_AI_IOPController_121.SendEventCompleted", "box_Hackable_Controller_118.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SetBoolean_v2_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.BadVar = l0.Target
  l0 = self.box_AI_IOPController_121
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHack"
  l0 = self.box_SetBoolean_v2_75
  l1 = self.box_AI_IOPController_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|288725376", "288725376", "IOP09_E3_Main", "box_SetBoolean_v2_75.Out", "box_AI_IOPController_121.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_75_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_75_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_75_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.BadVar = l0.Target
end
function export:f_box_SetBoolean_v2_75_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.BadVar = l0.Target
end
function export:f_box_CollisionController_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_56
  l0.Input = self.NPC_List
  l0.Data[0] = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|768813133", "768813133", "IOP09_E3_Main", "box_CollisionController_27.CollisionsDisabled", "box_ListWriter_56.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlaySound_v2_8_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_1
  l0.Seconds = 4
  l0 = self.box_PlaySound_v2_8
  l1 = self.box_Timer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1109709312", "1109709312", "IOP09_E3_Main", "box_PlaySound_v2_8.Started", "box_Timer_v2_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|616951279"
  l0.Enabled = self.f_box_LightController_41_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_3
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|171737676", "171737676", "IOP09_E3_Main", "box_Timer_v2_3.TimeElapsed", "box_LightController_41.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_116_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|472145465"
  l0.Out = self.f_box_Get_Player_ID_85_Out
  l0 = self.box_MissionLayer_v2_116
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|517792855", "517792855", "IOP09_E3_Main", "box_MissionLayer_v2_116.Loaded", "box_Get_Player_ID_85.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_73_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_7
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|654738314", "654738314", "IOP09_E3_Main", "box_LightController_73.Disabled", "box_MissionCheckpointReach_7.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|127905046"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_67
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|640096895", "640096895", "IOP09_E3_Main", "box_MultipleOR_67.Out", "box_LightController_91.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_116
  l0.LayerName = "IOP09_E3_Main"
  l0 = self.box_MultipleOR_55
  l1 = self.box_MissionLayer_v2_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1068673783", "1068673783", "IOP09_E3_Main", "box_MultipleOR_55.Out", "box_MissionLayer_v2_116.Load", l0, l1)
  l1:Load()
end
function export:f_box_Hackable_Monitor_99_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_94
  l0.SoundId = "soundbinary/1433769250.bnk"
  l0 = self.box_Hackable_Monitor_99
  l1 = self.box_PlaySound_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1766955204", "1766955204", "IOP09_E3_Main", "box_Hackable_Monitor_99.HackSuccess", "box_PlaySound_v2_94.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_122
  l0.HackableEntity = self.Npc
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1965713170", "1965713170", "IOP09_E3_Main", "box_Simple_Node_30.Out", "box_Hackable_Controller_122.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_MissionLayer_v2_134_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_134
  l1 = self.box_MissionController_v4_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|639052408", "639052408", "IOP09_E3_Main", "box_MissionLayer_v2_134.Unloaded", "box_MissionController_v4_84.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_LightController_135_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_83
  l0.Seconds = 0.1
  l0.Loop = 1
  l0.nbLoop = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1587712790", "1587712790", "IOP09_E3_Main", "box_LightController_135.Disabled", "box_Timer_v2_83.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_83_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1755530391"
  l0.Out = self.f_box_Simple_Node_30_Out
  l0 = self.box_Timer_v2_83
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1615654836", "1615654836", "IOP09_E3_Main", "box_Timer_v2_83.LoopingEnded", "box_Simple_Node_30.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_83_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_83_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_83_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_83_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_83_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_IndexedOutput_V2_108
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1166677895", "1166677895", "IOP09_E3_Main", "box_Timer_v2_83.TimeElapsed", "box_IndexedOutput_V2_108.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_143_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_75
  l0.Bool = self.BadVar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|69073225", "69073225", "IOP09_E3_Main", "box_Compare_Boolean_v2_143.A_is_False", "box_SetBoolean_v2_75.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_143_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_103
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.BadHackEnding"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1279292268", "1279292268", "IOP09_E3_Main", "box_Compare_Boolean_v2_143.A_is_True", "box_AI_IOPController_103.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_SetBoolean_v2_115_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.GoodVar = l0.Target
  l0 = self.box_AI_IOPController_2
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.GoodHack"
  l0 = self.box_SetBoolean_v2_115
  l1 = self.box_AI_IOPController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|885441026", "885441026", "IOP09_E3_Main", "box_SetBoolean_v2_115.Out", "box_AI_IOPController_2.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_115_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.GoodVar = l0.Target
end
function export:f_box_SetBoolean_v2_115_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.GoodVar = l0.Target
end
function export:f_box_Ordered_Output_69_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_6
  l0.CameraEntity = self.ATM_Camera
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|9738284", "9738284", "IOP09_E3_Main", "box_Ordered_Output_69.Out", "box_Security_Camera_Monitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_69_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_133
  l0.IopID = "Atm"
  l0.IopEvent = "Atm.Character8"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2104228570", "2104228570", "IOP09_E3_Main", "box_Ordered_Output_69.Out", "box_AI_IOPController_133.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_SecurityCamController_4_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_86
  l0.SoundId = "soundbinary/2015265299.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2019986888", "2019986888", "IOP09_E3_Main", "box_SecurityCamController_4.DisconnectedAnimationPlayed", "box_PlaySound_v2_86.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_82_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_82
  l1 = self.box_SetBoolean_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|503150602", "503150602", "IOP09_E3_Main", "box_PlaySound_v2_82.Started", "box_SetBoolean_v2_109.False", l0, l1)
  l1:False()
end
function export:f_box_CLOController_20_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_134
  l0.LayerName = "IOP09_E3_Main"
  l0 = self.box_CLOController_20
  l1 = self.box_MissionLayer_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|197421017", "197421017", "IOP09_E3_Main", "box_CLOController_20.Deactivated", "box_MissionLayer_v2_134.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CLOController_20_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_20()
  l0 = self.box_CLOController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1823568069", "1823568069", "IOP09_E3_Main", "box_CLOController_20.UnspawnedUser", "box_CLOController_20.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_119
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1959001082", "1959001082", "IOP09_E3_Main", "box_Ordered_Output_126.Out", "box_Timer_v2_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_17()
  l0 = self.box_IOPMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1022978239", "1022978239", "IOP09_E3_Main", "box_Ordered_Output_126.Out", "box_IOPMonitor_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_94_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BadVar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1848053993"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_143_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_143_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_94
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1894842068", "1894842068", "IOP09_E3_Main", "box_PlaySound_v2_94.Out", "box_Compare_Boolean_v2_143.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_82
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_MissionCheckpointReach_7
  l1 = self.box_PlaySound_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|396589658", "396589658", "IOP09_E3_Main", "box_MissionCheckpointReach_7.Out", "box_PlaySound_v2_82.Play", l0, l1)
  l1:Play()
end
function export:f_box_SecurityCamController_100_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_100()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1717930022", "1717930022", "IOP09_E3_Main", "box_SecurityCamController_100.CanExitSet", "box_SecurityCamController_100.ForceUserOutOfCamera", clone, l0)
  l0:ForceUserOutOfCamera()
end
function export:f_box_SecurityCamController_100_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOController_20()
  l0 = self.box_CLOController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|830570186", "830570186", "IOP09_E3_Main", "box_SecurityCamController_100.UserForcedOutOfCamera", "box_CLOController_20.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Timer_v2_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1803676271"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_135_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_1
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2014469498", "2014469498", "IOP09_E3_Main", "box_Timer_v2_1.TimeElapsed", "box_LightController_135.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_109_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MakeItRain = l0.Target
  l1 = self.box_SetBoolean_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|884495932", "884495932", "IOP09_E3_Main", "box_SetBoolean_v2_109.SetFalse", "box_SetBoolean_v2_64.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_109_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MakeItRain = l0.Target
end
function export:f_box_SetBoolean_v2_109_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MakeItRain = l0.Target
end
function export:f_box_PlaySound_v2_86_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_14
  l0.SoundId = "soundbinary/669646554.bnk"
  l0 = self.box_PlaySound_v2_86
  l1 = self.box_PlaySound_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|361273036", "361273036", "IOP09_E3_Main", "box_PlaySound_v2_86.Out", "box_PlaySound_v2_14.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_17_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_70()
  l0 = self.box_IOPMonitor_17
  l1 = self.box_Hackable_Controller_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1463166371", "1463166371", "IOP09_E3_Main", "box_IOPMonitor_17.ActivateHackables", "box_Hackable_Controller_70.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_IOPMonitor_17_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_70()
  l0 = self.box_IOPMonitor_17
  l1 = self.box_Hackable_Controller_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1153091530", "1153091530", "IOP09_E3_Main", "box_IOPMonitor_17.DeactivateHackables", "box_Hackable_Controller_70.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_17_Disabled()
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
  l0._name = "box_SecurityCamController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1926296775"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = self.f_box_SecurityCamController_4_DisconnectedAnimationPlayed
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_IOPMonitor_17
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1731375141", "1731375141", "IOP09_E3_Main", "box_IOPMonitor_17.Disabled", "box_SecurityCamController_4.PlayDisconnectedAnimation", l0, l1)
  l1:PlayDisconnectedAnimation()
end
function export:f_box_IOPMonitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_70()
  l0 = self.box_IOPMonitor_17
  l1 = self.box_Hackable_Controller_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1609340706", "1609340706", "IOP09_E3_Main", "box_IOPMonitor_17.Enabled", "box_Hackable_Controller_70.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_IOPMonitor_17_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_17()
  l0 = self.box_IOPMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|1679610805", "1679610805", "IOP09_E3_Main", "box_IOPMonitor_17.IOPComplete", "box_IOPMonitor_17.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_129
  l0.HackableEntity = self.GoodHack
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|60794054", "60794054", "IOP09_E3_Main", "box_Simple_Node_140.Out", "box_Hackable_Monitor_129.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_SecurityCamController_47()
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
  l0._name = "box_SecurityCamController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|497116237"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_47_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_47_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Hackable_Controller_70()
  local l0
  l0 = self.box_Hackable_Controller_70
  l0.HackableEntity = self.GoodHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Good_Hack_1",
    id = "340525"
  }
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_MultipleOR_55()
end
function export:OnEnter_box_Hackable_Controller_58()
  local l0
  l0 = self.box_Hackable_Controller_58
  l0.HackableEntity = self.BadHack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.ATM_HACK.OBJECTS.Hackables",
    item = "Machine_Bad_Hack_1",
    id = "340527"
  }
end
function export:OnEnter_box_CLOController_20()
  local l0
  l0 = self.box_CLOController_20
  l0.CLO = "9223372050041339550"
  l0.User = self.Npc
end
function export:OnEnter_box_SecurityCamController_100()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.ATM_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP09_E3.domino|@IOP09_E3_Main|2057440178"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_100_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_100_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_IOPMonitor_17()
end
_compilerVersion = 4
