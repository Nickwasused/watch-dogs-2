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
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SendDamage.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/718819757.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1305362854.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3249668497.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L04M020_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Whistleblower_CLO = "9223372049907832250"
  self.Phone_Hack = "9223372065309756202"
  self.Laptop_Hack = "9223372058737038432"
  self.Download_Time = 20
  self.Whistleblower_CLO_Sitting = "9223372055533122266"
  self.Phone_SoundEntity = "9223372055533122256"
  self.Switch_Phone = 0
  self.Whistleblower = nil
  self.Security_Camera = "9223372056705084940"
  self.Whistleblower_Alive = 0
  self.PostJump = nil
  self.During_Call = 0
  self.BadCalls = 0
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|37631939"
  l0.Out = self.f_box_PlaySound_v2_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_56 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_56
  l0._graph = self
  l0._name = "box_RewardController_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|89313622"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_56_RewardsExecuted
  self.box_PhoneCommunicationController_52 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_52
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|99077898"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_52_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_52_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|105251438"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_CLOController_43 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_43
  l0._graph = self
  l0._name = "box_CLOController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|146291765"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_43_OnUserInPlace
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|175844266"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_SendDamageBox_29 = cbox:CreateBox("domino/System/SendDamage.lua")
  l0 = self.box_SendDamageBox_29
  l0._graph = self
  l0._name = "box_SendDamageBox_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|233326236"
  l0.DamageSent = self.f_box_SendDamageBox_29_DamageSent
  self.box_LogicGate_v2_85 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_85
  l0._graph = self
  l0._name = "box_LogicGate_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|277051851"
  l0.Out = self.f_box_LogicGate_v2_85_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_Timer_v2_79 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_79
  l0._graph = self
  l0._name = "box_Timer_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|324909645"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_81 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_81
  l0._graph = self
  l0._name = "box_HackableController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|352654057"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_81_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_41 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_41
  l0._graph = self
  l0._name = "box_CinematicPrep_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|359040322"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|395670835"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_33_OnUserInPlace
  self.box_MissionMessageController_v3_49 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_49
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|438261297"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_49_MessageCompleted
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|462749302"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SwitchOutput_v3_60 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_60
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|465593361"
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_60_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_60_Output_1
  l0.Output[2] = DummyFunction
  l0.Output[3] = self.f_box_SwitchOutput_v3_60_Output_3
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|475723717"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_40 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_40
  l0._graph = self
  l0._name = "box_CLOController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|499448178"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_40_OnUserInPlace
  self.box_PhoneCommunicationController_45 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_45
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|573757305"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_45_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_50 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_50
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|576573673"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_50_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|591671309"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_PhoneCommunicationController_46 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_46
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|593189008"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_46_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_19 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_19
  l0._graph = self
  l0._name = "box_Hackable_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|633831547"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_19_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_38 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_38
  l0._graph = self
  l0._name = "box_HackableController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|654054226"
  l0.Enabled = self.f_box_HackableController_v2_38_Enabled
  l0.Disabled = self.f_box_HackableController_v2_38_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_38_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_38_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_48 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_48
  l0._graph = self
  l0._name = "box_SetBoolean_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|681213061"
  l0.Out = self.f_box_SetBoolean_v2_48_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_48_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_48_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_48_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_48_SetFromBool
  self.box_AI_IOPController_2 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_2
  l0._graph = self
  l0._name = "box_AI_IOPController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|684244825"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_2_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Security_Camera_Monitor_78 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_78
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|685924755"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_78_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_78_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MissionController_v4_42 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_42
  l0._graph = self
  l0._name = "box_MissionController_v4_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|747921133"
  self.box_OnceOnly_v3_70 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_70
  l0._graph = self
  l0._name = "box_OnceOnly_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|751648881"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_70_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_74 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_74
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|784655302"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_74_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_66 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_66
  l0._graph = self
  l0._name = "box_PlaySound_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|808013189"
  l0.Out = self.f_box_PlaySound_v2_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_63 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_63
  l0._graph = self
  l0._name = "box_PlaySound_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|809329845"
  l0.Out = self.f_box_PlaySound_v2_63_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_11 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_11
  l0._graph = self
  l0._name = "box_HackableController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|855691514"
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
  self.box_CLOController_24 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_24
  l0._graph = self
  l0._name = "box_CLOController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|906763173"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_24_OnUserInPlace
  self.box_SwitchOutput_v3_68 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_68
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|923588955"
  l0._DynamicAnchors = {Output = 4}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_68_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_68_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_68_Output_2
  l0.Output[3] = DummyFunction
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_IOP_CleanUp_8 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_8
  l0._graph = self
  l0._name = "box_IOP_CleanUp_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|939262598"
  l0.Completed = self.f_box_IOP_CleanUp_8_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_8_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_AI_IOPController_13 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_13
  l0._graph = self
  l0._name = "box_AI_IOPController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|942953895"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_13_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_6 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_6
  l0._graph = self
  l0._name = "box_AI_IOPController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|968917886"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_6_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_72 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_72
  l0._graph = self
  l0._name = "box_SetBoolean_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|994109207"
  l0.Out = self.f_box_SetBoolean_v2_72_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_72_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_72_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_72_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_72_SetFromBool
  self.box_Hackable_Monitor_27 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_27
  l0._graph = self
  l0._name = "box_Hackable_Monitor_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1025888964"
  l0.Enabled = self.f_box_Hackable_Monitor_27_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_27_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_27_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_77 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_77
  l0._graph = self
  l0._name = "box_Timer_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1029197035"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_77_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1056355638"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_10 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_10
  l0._graph = self
  l0._name = "box_HackableController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1100774314"
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
  self.box_CLOController_55 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_55
  l0._graph = self
  l0._name = "box_CLOController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1102162516"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_54 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_54
  l0._graph = self
  l0._name = "box_CLOController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1108089075"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_54_OnUserInPlace
  self.box_DistanceBasedProgressBarController_v2_5 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1142592188"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_IOPMonitor_12 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_12
  l0._graph = self
  l0._name = "box_IOPMonitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1145502419"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = self.f_box_IOPMonitor_12_ActivateHackables
  l0.DeactivateHackables = self.f_box_IOPMonitor_12_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1162645777"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_16_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_44 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_44
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1258079888"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_44_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_20 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_20
  l0._graph = self
  l0._name = "box_CLOController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1305267013"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_20_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_IOP_StartUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_14
  l0._graph = self
  l0._name = "box_IOP_StartUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1318862505"
  l0.Out = self.f_box_IOP_StartUp_14_Out
  self.box_AI_IOPController_30 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_30
  l0._graph = self
  l0._name = "box_AI_IOPController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1319933367"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_30_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_76 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_76
  l0._graph = self
  l0._name = "box_MultipleOR_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1368340648"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_76_Out
  self.box_MultipleOR_53 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1402218576"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_IOPMonitor_7 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_7
  l0._graph = self
  l0._name = "box_IOPMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1409245493"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_7_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_82 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_82
  l0._graph = self
  l0._name = "box_HackableController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1426467666"
  l0.Enabled = self.f_box_HackableController_v2_82_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1456463500"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_31_OnUserInPlace
  self.box_HackableController_v2_23 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_23
  l0._graph = self
  l0._name = "box_HackableController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1462164267"
  l0.Enabled = self.f_box_HackableController_v2_23_Enabled
  l0.Disabled = self.f_box_HackableController_v2_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_23_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_15 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_15
  l0._graph = self
  l0._name = "box_MissionLayer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1522841269"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_15_Unloaded
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1574956299"
  l0.Out = self.f_box_PlaySound_v2_18_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_26 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1671026519"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_26_OnUserInPlace
  self.box_AI_IOPController_64 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_64
  l0._graph = self
  l0._name = "box_AI_IOPController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1759726074"
  l0.Out = self.f_box_AI_IOPController_64_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_35 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_35
  l0._graph = self
  l0._name = "box_SetBoolean_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1810745629"
  l0.Out = self.f_box_SetBoolean_v2_35_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_35_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_35_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_35_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_35_SetFromBool
  self.box_PlaySound_v2_22 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_22
  l0._graph = self
  l0._name = "box_PlaySound_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1868640887"
  l0.Out = self.f_box_PlaySound_v2_22_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_3 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_3
  l0._graph = self
  l0._name = "box_HackableController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1912593497"
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
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1926186457"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_PhoneCommunicationController_47 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_47
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1957932192"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2112168219"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|33261262", "33261262", "L04M020_IOP_Main", "CheckPoint_0", "box_MultipleOR_65.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|524407475", "524407475", "L04M020_IOP_Main", "In", "box_MultipleOR_65.Input", self, l0)
  l0:Input(0)
end
function export:f_box_SecurityCamController_1_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|403024918"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1616355893", "1616355893", "L04M020_IOP_Main", "box_SecurityCamController_1.CanExitSet", "box_Ordered_Output_32.In", clone, l0)
  l0:In()
end
function export:f_box_SecurityCamController_1_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_1()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1714220411", "1714220411", "L04M020_IOP_Main", "box_SecurityCamController_1.EnterForced", "box_SecurityCamController_1.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_PlaySound_v2_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_1()
  l0 = self.box_PlaySound_v2_62
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|41270051", "41270051", "L04M020_IOP_Main", "box_PlaySound_v2_62.Out", "box_SecurityCamController_1.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_RewardController_v3_56_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_57
  l0.Seconds = 5
  l0 = self.box_RewardController_v3_56
  l1 = self.box_Timer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|710397431", "710397431", "L04M020_IOP_Main", "box_RewardController_v3_56.RewardsExecuted", "box_Timer_v2_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_52_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_PhoneCommunicationController_52
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1737644856", "1737644856", "L04M020_IOP_Main", "box_PhoneCommunicationController_52.OnCommunicationFinished", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_52_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  l0.CLO = "9223372059714400056"
  l0 = self.box_PhoneCommunicationController_52
  l1 = self.box_CLOController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|498650558", "498650558", "L04M020_IOP_Main", "box_PhoneCommunicationController_52.StartCommunicationOut", "box_CLOController_26.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2037354521"
  l0.Out = self.f_box_Get_Player_ID_25_Out
  l0 = self.box_MultipleOR_65
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1610114485", "1610114485", "L04M020_IOP_Main", "box_MultipleOR_65.Out", "box_Get_Player_ID_25.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_43_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  l0.CLO = "9223372065309726611"
  l0 = self.box_CLOController_43
  l1 = self.box_CLOController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1414581514", "1414581514", "L04M020_IOP_Main", "box_CLOController_43.OnUserInPlace", "box_CLOController_55.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|240299418", "240299418", "L04M020_IOP_Main", "box_Ordered_Output_58.Out", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1297372162", "1297372162", "L04M020_IOP_Main", "box_Ordered_Output_58.Out", "box_IOPMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1905866884", "1905866884", "L04M020_IOP_Main", "box_Ordered_Output_58.Out", "box_HackableController_v2_23.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_72()
  l0 = self.box_MultipleOR_21
  l1 = self.box_SetBoolean_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|614979390", "614979390", "L04M020_IOP_Main", "box_MultipleOR_21.Out", "box_SetBoolean_v2_72.True", l0, l1)
  l1:True()
end
function export:f_box_SendDamageBox_29_DamageSent()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_24
  l0.CLO = "9223372065309726460"
  l0 = self.box_SendDamageBox_29
  l1 = self.box_CLOController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|312437057", "312437057", "L04M020_IOP_Main", "box_SendDamageBox_29.DamageSent", "box_CLOController_24.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_LogicGate_v2_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LogicGate_v2_85
  l1 = self.box_SetBoolean_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|127084005", "127084005", "L04M020_IOP_Main", "box_LogicGate_v2_85.Out", "box_SetBoolean_v2_48.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_81
  l0.HackableEntity = self.Phone_Hack
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Timer_v2_79
  l1 = self.box_HackableController_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|826421052", "826421052", "L04M020_IOP_Main", "box_Timer_v2_79.TimeElapsed", "box_HackableController_v2_81.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Compare_Boolean_v2_34_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_4
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1031015372", "1031015372", "L04M020_IOP_Main", "box_Compare_Boolean_v2_34.A_is_False", "box_Timer_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_34_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|783890733"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1234128407", "1234128407", "L04M020_IOP_Main", "box_Compare_Boolean_v2_34.A_is_True", "box_Ordered_Output_39.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_81_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_81
  l1 = self.box_SetBoolean_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1295737347", "1295737347", "L04M020_IOP_Main", "box_HackableController_v2_81.Disabled", "box_SetBoolean_v2_35.True", l0, l1)
  l1:True()
end
function export:f_box_CLOController_33_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  self.Whistleblower = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Whistleblower
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1198390365"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_9_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_33
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2000213653", "2000213653", "L04M020_IOP_Main", "box_CLOController_33.OnUserInPlace", "box_CollisionController_9.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_78()
  l0 = self.box_Security_Camera_Monitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2026367556", "2026367556", "L04M020_IOP_Main", "box_Ordered_Output_32.Out", "box_Security_Camera_Monitor_78.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_16
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373731"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1131479246", "1131479246", "L04M020_IOP_Main", "box_Ordered_Output_32.Out", "box_PhoneCommunicationController_16.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MissionMessageController_v3_49_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_15
  l0.LayerName = "L04M020_IOP_Main"
  l0 = self.box_MissionMessageController_v3_49
  l1 = self.box_MissionLayer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1505664276", "1505664276", "L04M020_IOP_Main", "box_MissionMessageController_v3_49.MessageCompleted", "box_MissionLayer_v2_15.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_Timer_v2_57
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1438379761", "1438379761", "L04M020_IOP_Main", "box_Timer_v2_57.TimeElapsed", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SwitchOutput_v3_60_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_3
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Sister",
    id = "684999"
  }
  l0 = self.box_SwitchOutput_v3_60
  l1 = self.box_HackableController_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1466845168", "1466845168", "L04M020_IOP_Main", "box_SwitchOutput_v3_60.Output", "box_HackableController_v2_3.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SwitchOutput_v3_60_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_10
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Wife",
    id = "685000"
  }
  l0 = self.box_SwitchOutput_v3_60
  l1 = self.box_HackableController_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|998052600", "998052600", "L04M020_IOP_Main", "box_SwitchOutput_v3_60.Output", "box_HackableController_v2_10.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_SwitchOutput_v3_60_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_SwitchOutput_v3_60
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1489399902", "1489399902", "L04M020_IOP_Main", "box_SwitchOutput_v3_60.Output", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_2
  l0.IopID = "Whistleblower"
  l0.IopEvent = "WhistleBlower.ComputerHack"
  l0 = self.box_Timer_v2_36
  l1 = self.box_AI_IOPController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1797165199", "1797165199", "L04M020_IOP_Main", "box_Timer_v2_36.TimeElapsed", "box_AI_IOPController_2.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_CLOController_40_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_54
  l0.CLO = "9223372065309726610"
  l0 = self.box_CLOController_40
  l1 = self.box_CLOController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1513854576", "1513854576", "L04M020_IOP_Main", "box_CLOController_40.OnUserInPlace", "box_CLOController_54.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PhoneCommunicationController_45_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_PhoneCommunicationController_45
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1713380664", "1713380664", "L04M020_IOP_Main", "box_PhoneCommunicationController_45.OnCommunicationFinished", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_50_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_56
  l0.ItemDB = "Items.9223372050357463260"
  l0 = self.box_PhoneCommunicationController_50
  l1 = self.box_RewardController_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1871193937", "1871193937", "L04M020_IOP_Main", "box_PhoneCommunicationController_50.OnCommunicationFinished", "box_RewardController_v3_56.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_72()
  l0 = self.box_MultipleOR_37
  l1 = self.box_SetBoolean_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1240830737", "1240830737", "L04M020_IOP_Main", "box_MultipleOR_37.Out", "box_SetBoolean_v2_72.False", l0, l1)
  l1:False()
end
function export:f_box_PhoneCommunicationController_46_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_PhoneCommunicationController_46
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|194606285", "194606285", "L04M020_IOP_Main", "box_PhoneCommunicationController_46.OnCommunicationFinished", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Hackable_Monitor_19_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|932346114"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0 = self.box_Hackable_Monitor_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|109133018", "109133018", "L04M020_IOP_Main", "box_Hackable_Monitor_19.Disabled", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_19_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_Hackable_Monitor_19
  l1 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|188263853", "188263853", "L04M020_IOP_Main", "box_Hackable_Monitor_19.HackSuccess", "box_HackableController_v2_23.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_38_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_27()
  l0 = self.box_HackableController_v2_38
  l1 = self.box_Hackable_Monitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|88707568", "88707568", "L04M020_IOP_Main", "box_HackableController_v2_38.Disabled", "box_Hackable_Monitor_27.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_38_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_27()
  l0 = self.box_HackableController_v2_38
  l1 = self.box_Hackable_Monitor_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2029103725", "2029103725", "L04M020_IOP_Main", "box_HackableController_v2_38.Enabled", "box_Hackable_Monitor_27.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_38_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_69()
  l0 = self.box_HackableController_v2_38
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2045492425", "2045492425", "L04M020_IOP_Main", "box_HackableController_v2_38.ProfilingDisabled", "box_VisibilityController_v2_69.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_HackableController_v2_38_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_69()
  l0 = self.box_HackableController_v2_38
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1974583095", "1974583095", "L04M020_IOP_Main", "box_HackableController_v2_38.ProfilingEnabled", "box_VisibilityController_v2_69.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_48_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.Whistleblower_Alive = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.Whistleblower_Alive = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.Whistleblower_Alive = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.Whistleblower_Alive = l0.Target
end
function export:f_box_SetBoolean_v2_48_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.Whistleblower_Alive = l0.Target
end
function export:f_box_AI_IOPController_2_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_85()
  l0 = self.box_AI_IOPController_2
  l1 = self.box_LogicGate_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|513910561", "513910561", "L04M020_IOP_Main", "box_AI_IOPController_2.SendEventCompleted", "box_LogicGate_v2_85.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_78_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_77
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_78
  l1 = self.box_Timer_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1096664343", "1096664343", "L04M020_IOP_Main", "box_Security_Camera_Monitor_78.Disabled", "box_Timer_v2_77.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_78_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_78()
  l0 = self.box_Security_Camera_Monitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1727490117", "1727490117", "L04M020_IOP_Main", "box_Security_Camera_Monitor_78.OnEndAccessCamera", "box_Security_Camera_Monitor_78.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_66
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/718819757.bnk"
  l0 = self.box_OnceOnly_v3_70
  l1 = self.box_PlaySound_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1651662846", "1651662846", "L04M020_IOP_Main", "box_OnceOnly_v3_70.Out", "box_PlaySound_v2_66.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_18
  l0.Entity = self.Phone_SoundEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|432518842", "432518842", "L04M020_IOP_Main", "box_Ordered_Output_39.Out", "box_PlaySound_v2_18.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1090589958", "1090589958", "L04M020_IOP_Main", "box_Ordered_Output_39.Out", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PhoneCommunicationController_74_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_82
  l0.HackableEntity = self.Phone_Hack
  l0.ProfileLinkedToHack = 1
  l0 = self.box_PhoneCommunicationController_74
  l1 = self.box_HackableController_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|44095027", "44095027", "L04M020_IOP_Main", "box_PhoneCommunicationController_74.OnCommunicationFinished", "box_HackableController_v2_82.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Compare_Boolean_v2_71_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SwitchOutput_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|877285998", "877285998", "L04M020_IOP_Main", "box_Compare_Boolean_v2_71.A_is_False", "box_SwitchOutput_v3_68.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_71_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_44
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1778369015", "1778369015", "L04M020_IOP_Main", "box_Compare_Boolean_v2_71.A_is_True", "box_PhoneCommunicationController_44.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_PlaySound_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Switch_Phone
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|346405855"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_34_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_66
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1225128225", "1225128225", "L04M020_IOP_Main", "box_PlaySound_v2_66.Out", "box_Compare_Boolean_v2_34.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_64
  l0.IopID = "Whistleblower"
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_PlaySound_v2_63
  l1 = self.box_AI_IOPController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|934288171", "934288171", "L04M020_IOP_Main", "box_PlaySound_v2_63.Out", "box_AI_IOPController_64.HideChat", l0, l1)
  l1:HideChat()
end
function export:f_box_CLOController_24_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  l0.CLO = "9223372065309726461"
  l0 = self.box_CLOController_24
  l1 = self.box_CLOController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|471832491", "471832491", "L04M020_IOP_Main", "box_CLOController_24.OnUserInPlace", "box_CLOController_31.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SwitchOutput_v3_68_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_45
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373734"
  l0 = self.box_SwitchOutput_v3_68
  l1 = self.box_PhoneCommunicationController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|54214043", "54214043", "L04M020_IOP_Main", "box_SwitchOutput_v3_68.Output", "box_PhoneCommunicationController_45.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SwitchOutput_v3_68_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_46
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373735"
  l0 = self.box_SwitchOutput_v3_68
  l1 = self.box_PhoneCommunicationController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1635861183", "1635861183", "L04M020_IOP_Main", "box_SwitchOutput_v3_68.Output", "box_PhoneCommunicationController_46.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SwitchOutput_v3_68_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_47
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373732"
  l0 = self.box_SwitchOutput_v3_68
  l1 = self.box_PhoneCommunicationController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|935184332", "935184332", "L04M020_IOP_Main", "box_SwitchOutput_v3_68.Output", "box_PhoneCommunicationController_47.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DistanceBasedProgressBarController_v2_5()
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1351502151", "1351502151", "L04M020_IOP_Main", "box_Ordered_Output_80.Out", "box_DistanceBasedProgressBarController_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_79()
  l0 = self.box_Timer_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2044642711", "2044642711", "L04M020_IOP_Main", "box_Ordered_Output_80.Out", "box_Timer_v2_79.Start", clone, l0)
  l0:Start()
end
function export:f_box_IOP_CleanUp_8_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_63
  l0.Entity = "9223372055533122268"
  l0.SoundId = "soundbinary/3249668497.bnk"
  l0 = self.box_IOP_CleanUp_8
  l1 = self.box_PlaySound_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|587625158", "587625158", "L04M020_IOP_Main", "box_IOP_CleanUp_8.Completed", "box_PlaySound_v2_63.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOP_CleanUp_8_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_20()
  l0 = self.box_IOP_CleanUp_8
  l1 = self.box_CLOController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1929509656", "1929509656", "L04M020_IOP_Main", "box_IOP_CleanUp_8.DisconnectedAnimationPlayed", "box_CLOController_20.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_33
  l0.CLO = self.Whistleblower_CLO_Sitting
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|950584480", "950584480", "L04M020_IOP_Main", "box_Ordered_Output_17.Out", "box_CLOController_33.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1751150506", "1751150506", "L04M020_IOP_Main", "box_Ordered_Output_17.Out", "box_IOPMonitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_IOPController_13_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_62
  l0.Entity = "9223372055533122268"
  l0.SoundId = "soundbinary/1305362854.bnk"
  l0 = self.box_AI_IOPController_13
  l1 = self.box_PlaySound_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1692655651", "1692655651", "L04M020_IOP_Main", "box_AI_IOPController_13.StartCompleted", "box_PlaySound_v2_62.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_6_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|154935083"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_58_Out_2
  l0 = self.box_AI_IOPController_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|867261055", "867261055", "L04M020_IOP_Main", "box_AI_IOPController_6.SendEventCompleted", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_72_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.During_Call = l0.Target
end
function export:f_box_SetBoolean_v2_72_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.During_Call = l0.Target
  self:OnEnter_box_HackableController_v2_38()
  l1 = self.box_HackableController_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|733408745", "733408745", "L04M020_IOP_Main", "box_SetBoolean_v2_72.SetFalse", "box_HackableController_v2_38.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_SetBoolean_v2_72_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.During_Call = l0.Target
end
function export:f_box_SetBoolean_v2_72_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.During_Call = l0.Target
  self:OnEnter_box_HackableController_v2_38()
  l1 = self.box_HackableController_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|326367643", "326367643", "L04M020_IOP_Main", "box_SetBoolean_v2_72.SetTrue", "box_HackableController_v2_38.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetBoolean_v2_72_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_72
  self.During_Call = l0.Target
end
function export:f_box_Ordered_Output_67_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|719003521", "719003521", "L04M020_IOP_Main", "box_Ordered_Output_67.Out", "box_MultipleOR_21.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_67_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SwitchOutput_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|834026365", "834026365", "L04M020_IOP_Main", "box_Ordered_Output_67.Out", "box_SwitchOutput_v3_60.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_27_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_38()
  l0 = self.box_Hackable_Monitor_27
  l1 = self.box_HackableController_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|912515330", "912515330", "L04M020_IOP_Main", "box_Hackable_Monitor_27.Disabled", "box_HackableController_v2_38.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Hackable_Monitor_27_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_38()
  l0 = self.box_Hackable_Monitor_27
  l1 = self.box_HackableController_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|581357985", "581357985", "L04M020_IOP_Main", "box_Hackable_Monitor_27.Enabled", "box_HackableController_v2_38.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_Hackable_Monitor_27_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_Hackable_Monitor_27
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1499845757", "1499845757", "L04M020_IOP_Main", "box_Hackable_Monitor_27.HackSuccess", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(0)
end
function export:f_box_Timer_v2_77_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_41
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_77
  l1 = self.box_CinematicPrep_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1265521219", "1265521219", "L04M020_IOP_Main", "box_Timer_v2_77.TimeElapsed", "box_CinematicPrep_41.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Whistleblower_Alive
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1964126609"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_28_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_51
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|755628956", "755628956", "L04M020_IOP_Main", "box_Timer_v2_51.TimeElapsed", "box_Compare_Boolean_v2_28.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_84_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_85()
  l0 = self.box_LogicGate_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2114601377", "2114601377", "L04M020_IOP_Main", "box_Compare_Integers_v2_84.A_ge_B", "box_LogicGate_v2_85.Close", clone, l0)
  l0:Close()
end
function export:f_box_CLOController_54_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_43
  l0.CLO = "9223372065309726609"
  l0 = self.box_CLOController_54
  l1 = self.box_CLOController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2070645836", "2070645836", "L04M020_IOP_Main", "box_CLOController_54.OnUserInPlace", "box_CLOController_43.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VisibilityController_v2_69_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|714077710", "714077710", "L04M020_IOP_Main", "box_VisibilityController_v2_69.Shown", "box_OnceOnly_v3_70.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DistanceBasedProgressBarController_v2_5()
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|764676764", "764676764", "L04M020_IOP_Main", "box_Ordered_Output_59.Out", "box_DistanceBasedProgressBarController_v2_5.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_51
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|909217093", "909217093", "L04M020_IOP_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_59_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_79()
  l0 = self.box_Timer_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1906313288", "1906313288", "L04M020_IOP_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_79.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_IOPMonitor_12_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_IOPMonitor_12
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|422574394", "422574394", "L04M020_IOP_Main", "box_IOPMonitor_12.ActivateHackables", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IOPMonitor_12_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1003050450"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_67_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_67_Out_1
  l0 = self.box_IOPMonitor_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|114024153", "114024153", "L04M020_IOP_Main", "box_IOPMonitor_12.DeactivateHackables", "box_Ordered_Output_67.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_6
  l0.IopID = "Whistleblower"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_AI_IOPController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|401643246", "401643246", "L04M020_IOP_Main", "box_PhoneCommunicationController_16.OnCommunicationFinished", "box_AI_IOPController_6.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PhoneCommunicationController_16_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|319003777", "319003777", "L04M020_IOP_Main", "box_PhoneCommunicationController_16.StartCommunicationOut", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CollisionController_9_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_13
  l0.IopID = "Whistleblower"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntity = self.Whistleblower
  l0.IopRole = "WhistleBlower.Guy"
  l0.OffscreenDialogPoint = "9223372055533122268"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1337680362", "1337680362", "L04M020_IOP_Main", "box_CollisionController_9.CollisionsDisabled", "box_AI_IOPController_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_44_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_PhoneCommunicationController_44
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|5963402", "5963402", "L04M020_IOP_Main", "box_PhoneCommunicationController_44.OnCommunicationFinished", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_CLOController_20_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_20()
  l0 = self.box_CLOController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1880043149", "1880043149", "L04M020_IOP_Main", "box_CLOController_20.UnspawnedUser", "box_CLOController_20.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_IOP_StartUp_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_22
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_IOP_StartUp_14
  l1 = self.box_PlaySound_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|699824029", "699824029", "L04M020_IOP_Main", "box_IOP_StartUp_14.Out", "box_PlaySound_v2_22.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_30_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.BadCalls
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1878544456"
  l0.Out = self.f_box_Integer_Arithmetics_83_Out
  l0 = self.box_AI_IOPController_30
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|304891856", "304891856", "L04M020_IOP_Main", "box_AI_IOPController_30.SendEventCompleted", "box_Integer_Arithmetics_83.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_11
  l0.HackableEntity = self.Phone_Hack
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.WHISTLEBLOWER.OBJECTS.WhistleblowerJumper",
    item = "Call Reporter",
    id = "685001"
  }
  l0 = self.box_MultipleOR_76
  l1 = self.box_HackableController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1176944450", "1176944450", "L04M020_IOP_Main", "box_MultipleOR_76.Out", "box_HackableController_v2_11.SetOverrideHackingText", l0, l1)
  l1:SetOverrideHackingText()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_53
  l1 = self.box_MissionMessageController_v3_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2041773509", "2041773509", "L04M020_IOP_Main", "box_MultipleOR_53.Out", "box_MissionMessageController_v3_49.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_IOPMonitor_7_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_7
  l1 = self.box_IOP_CleanUp_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|903807933", "903807933", "L04M020_IOP_Main", "box_IOPMonitor_7.IOPComplete", "box_IOP_CleanUp_8.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_82_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_HackableController_v2_82
  l1 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1658967709", "1658967709", "L04M020_IOP_Main", "box_HackableController_v2_82.Enabled", "box_MultipleOR_76.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_31_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_40
  l0.CLO = "9223372065309726608"
  l0 = self.box_CLOController_31
  l1 = self.box_CLOController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|900189337", "900189337", "L04M020_IOP_Main", "box_CLOController_31.OnUserInPlace", "box_CLOController_40.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_23_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|199394903", "199394903", "L04M020_IOP_Main", "box_HackableController_v2_23.Disabled", "box_HackableController_v2_23.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_19()
  l0 = self.box_HackableController_v2_23
  l1 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1601078285", "1601078285", "L04M020_IOP_Main", "box_HackableController_v2_23.Enabled", "box_Hackable_Monitor_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_23_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_19()
  l0 = self.box_HackableController_v2_23
  l1 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1571326620", "1571326620", "L04M020_IOP_Main", "box_HackableController_v2_23.ProfilingDisabled", "box_Hackable_Monitor_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_15_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_15
  l1 = self.box_MissionController_v4_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|931374369", "931374369", "L04M020_IOP_Main", "box_MissionLayer_v2_15.Unloaded", "box_MissionController_v4_42.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_PlaySound_v2_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_36
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_18
  l1 = self.box_Timer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1459550961", "1459550961", "L04M020_IOP_Main", "box_PlaySound_v2_18.Out", "box_Timer_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.During_Call
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1702259281"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_73_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|259236310", "259236310", "L04M020_IOP_Main", "box_Ordered_Output_75.Out", "box_Compare_Boolean_v2_73.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|261999716", "261999716", "L04M020_IOP_Main", "box_Ordered_Output_75.Out", "box_MultipleOR_76.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_26_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  self.PostJump = l0.UserID
  l0 = self.box_SendDamageBox_29
  l0.PlayerEntity = self.PostJump
  l0.DamageLevel = 500
  l0.DamageType = "InstantKill"
  l0.DamageLocation = "Torso"
  l0 = self.box_CLOController_26
  l1 = self.box_SendDamageBox_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|654589688", "654589688", "L04M020_IOP_Main", "box_CLOController_26.OnUserInPlace", "box_SendDamageBox_29.Send", l0, l1)
  l1:Send()
end
function export:f_box_Compare_Boolean_v2_73_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_74
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1033600901", "1033600901", "L04M020_IOP_Main", "box_Compare_Boolean_v2_73.A_is_False", "box_PhoneCommunicationController_74.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_AI_IOPController_64_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1116048655"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_59_Out_2
  l0 = self.box_AI_IOPController_64
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|252898389", "252898389", "L04M020_IOP_Main", "box_AI_IOPController_64.Out", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_35_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.Switch_Phone = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.Switch_Phone = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.Switch_Phone = l0.Target
end
function export:f_box_SetBoolean_v2_35_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.Switch_Phone = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1636192029"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_SetBoolean_v2_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|315203793", "315203793", "L04M020_IOP_Main", "box_SetBoolean_v2_35.SetTrue", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_35_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_35
  self.Switch_Phone = l0.Target
end
function export:f_box_PlaySound_v2_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|942536744"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_PlaySound_v2_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1815951417", "1815951417", "L04M020_IOP_Main", "box_PlaySound_v2_22.Out", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_Integer_Arithmetics_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.BadCalls = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.BadCalls
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1062028908"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_84_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|487930598", "487930598", "L04M020_IOP_Main", "box_Integer_Arithmetics_83.Out", "box_Compare_Integers_v2_84.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Switch_Phone
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|795567707"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_71_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_71_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_61
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|925864276", "925864276", "L04M020_IOP_Main", "box_MultipleOR_61.Out", "box_Compare_Boolean_v2_71.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_28_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_52
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367238"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1785467394", "1785467394", "L04M020_IOP_Main", "box_Compare_Boolean_v2_28.A_is_False", "box_PhoneCommunicationController_52.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_28_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_50
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367239"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|540114218", "540114218", "L04M020_IOP_Main", "box_Compare_Boolean_v2_28.A_is_True", "box_PhoneCommunicationController_50.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Get_Player_ID_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_14
  l0.MainLayer = "L04M020_IOP_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372060001341263"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|2122450530", "2122450530", "L04M020_IOP_Main", "box_Get_Player_ID_25.Out", "box_IOP_StartUp_14.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_30
  l0.IopID = "Whistleblower"
  l0.IopEvent = "WhistleBlower.PhoneHack"
  l0 = self.box_Timer_v2_4
  l1 = self.box_AI_IOPController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1030148716", "1030148716", "L04M020_IOP_Main", "box_Timer_v2_4.TimeElapsed", "box_AI_IOPController_30.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:OnEnter_box_SecurityCamController_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Security_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|10828815"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_1_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_1_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_LogicGate_v2_85()
end
function export:OnEnter_box_Timer_v2_79()
  local l0
  l0 = self.box_Timer_v2_79
  l0.Seconds = self.Download_Time
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_Hackable_Monitor_19()
  local l0
  l0 = self.box_Hackable_Monitor_19
  l0.HackableEntity = self.Laptop_Hack
end
function export:OnEnter_box_HackableController_v2_38()
  local l0
  l0 = self.box_HackableController_v2_38
  l0.HackableEntity = self.Phone_Hack
end
function export:OnEnter_box_Security_Camera_Monitor_78()
  local l0
  l0 = self.box_Security_Camera_Monitor_78
  l0.CameraEntity = self.Security_Camera
end
function export:OnEnter_box_OnceOnly_v3_70()
end
function export:OnEnter_box_SetBoolean_v2_72()
end
function export:OnEnter_box_Hackable_Monitor_27()
  local l0
  l0 = self.box_Hackable_Monitor_27
  l0.HackableEntity = self.Phone_Hack
end
function export:OnEnter_box_VisibilityController_v2_69()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Phone_Hack
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L04\\L04M020_IOP.domino|@L04M020_IOP_Main|1111082048"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_69_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_DistanceBasedProgressBarController_v2_5()
  local l0
  l0 = self.box_DistanceBasedProgressBarController_v2_5
  l0.Text = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.TotalTime = self.Download_Time
end
function export:OnEnter_box_CLOController_20()
  local l0
  l0 = self.box_CLOController_20
  l0.CLO = self.Whistleblower_CLO_Sitting
  l0.User = self.Whistleblower
end
function export:OnEnter_box_MultipleOR_76()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_HackableController_v2_23()
  local l0
  l0 = self.box_HackableController_v2_23
  l0.HackableEntity = self.Laptop_Hack
end
function export:OnEnter_box_MultipleOR_61()
end
function export:Out()
end
_compilerVersion = 4
