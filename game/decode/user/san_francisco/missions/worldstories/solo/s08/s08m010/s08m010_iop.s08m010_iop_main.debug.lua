export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LookAtTriggerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/934358356.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3750291630.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2918364508.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3179538684.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3358214408.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2911131890.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/96816711.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4065522176.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/627478928.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1927502775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3563038995.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main"
  self.Out = DummyFunction
  self.IOP_Loaded = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Door = "9223372048509353869"
  self.Conference_Phone = "9223372064423648279"
  self.Nudle_Toy = "9223372064440935415"
  self.Horatio = nil
  self.TV_Cam = "9223372048509353863"
  self.Characters = {}
  self.Light_Hack = "9223372064440763326"
  self.NPCRoles = {
    "LimpNudle.Brody",
    "LimpNudle.Horatio",
    "LimpNudle.Yasmine"
  }
  self.CapsuleLight_2 = "9223372048509353878"
  self.CapsuleLight_1 = "9223372048509353880"
  self.Increment = 0
  self.Camera = "9223372048509353859"
  self.Hall_Cam = "9223372048509353873"
  self.Start_Camera = "9223372048509353875"
  self.Brody = nil
  self.Speaker_Hack = "9223372058438551696"
  self.HR = nil
  self.BarkSoundEntity_0 = "9223372049125592826"
  self.Speakers_SoundEntity = "9223372049658022211"
  self.Toy_SoundEntity = "9223372049658022210"
  self.Phone_SoundEntity = "9223372049658022213"
  self.Lights_SoundEntity = "9223372049658022213"
  self.Bool = 0
  self.Tablet_HackableEntity_23 = "9223372052247297181"
  self.IOP_InvisibleGeo_0 = "9223372053748361571"
  self.Light_OnOff = 0
  self.InCam = 0
  self.Light_On_Off = "9223372057846990704"
  self.S08M010_LookAtBoard = "9223372058100386297"
  self.LookAt = 0
  self.Ambience_SoundEntity = "9223372059539414815"
  self.GarbageCam = "9223372050349538733"
  self.box_OnceOnly_v3_109 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_109
  l0._graph = self
  l0._name = "box_OnceOnly_v3_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2519735"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_109_Out
  l0.ResetOut = DummyFunction
  self.box_AI_IOPController_34 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_34
  l0._graph = self
  l0._name = "box_AI_IOPController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|8123098"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_34_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_LMA_Layer_Controller_80 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_80
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|17898966"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_80_Unloaded
  self.box_HackableController_v2_23 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_23
  l0._graph = self
  l0._name = "box_HackableController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|20575286"
  l0.Enabled = self.f_box_HackableController_v2_23_Enabled
  l0.Disabled = self.f_box_HackableController_v2_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_73 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_73
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|44095638"
  l0.Out = self.f_box_MissionMessageController_v3_73_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_93 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_93
  l0._graph = self
  l0._name = "box_SetBoolean_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|48087613"
  l0.Out = self.f_box_SetBoolean_v2_93_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_93_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_93_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_93_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_93_SetFromBool
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|63475650"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_46 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_46
  l0._graph = self
  l0._name = "box_CLOController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|82964029"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_46_OnUserInPlace
  self.box_AI_IOPController_26 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_26
  l0._graph = self
  l0._name = "box_AI_IOPController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|162475717"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_26_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_82 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_82
  l0._graph = self
  l0._name = "box_AI_IOPController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|183070973"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_82_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Multiple_AND_84 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_84
  l0._graph = self
  l0._name = "box_Multiple_AND_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|205901336"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_84_Out
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|253442541"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_HackableController_v2_2 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_2
  l0._graph = self
  l0._name = "box_HackableController_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|258323767"
  l0.Enabled = self.f_box_HackableController_v2_2_Enabled
  l0.Disabled = self.f_box_HackableController_v2_2_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_102 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_102
  l0._graph = self
  l0._name = "box_OnceOnly_v3_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|284956651"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_102_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|287953794"
  l0.Out = self.f_box_PlaySound_v2_42_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_49 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_49
  l0._graph = self
  l0._name = "box_AI_IOPController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|304275271"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_49_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_52 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|318769847"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|340989202"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_21 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_21
  l0._graph = self
  l0._name = "box_CLOController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|361981935"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_21_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_21_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Security_Camera_Monitor_105 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_105
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|427720041"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_105_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_105_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_AI_IOPController_39 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_39
  l0._graph = self
  l0._name = "box_AI_IOPController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|447530444"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_39_IOPKickOutComplete
  self.box_AI_IOPController_44 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_44
  l0._graph = self
  l0._name = "box_AI_IOPController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|512214690"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_44_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_28 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_28
  l0._graph = self
  l0._name = "box_AI_IOPController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|592835829"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_28_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|609441080"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_15 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_15
  l0._graph = self
  l0._name = "box_OnceOnly_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|612827983"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_15_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|652670896"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_63 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|709081096"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_IOPMonitor_19 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_19
  l0._graph = self
  l0._name = "box_IOPMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|720481503"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_19_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_5 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_5
  l0._graph = self
  l0._name = "box_AI_IOPController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|744381099"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_5_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_90 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_90
  l0._graph = self
  l0._name = "box_HackableController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|793396859"
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
  self.box_HackableController_v2_22 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_22
  l0._graph = self
  l0._name = "box_HackableController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|806743144"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_22_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_50 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_50
  l0._graph = self
  l0._name = "box_Hackable_Monitor_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|849072816"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_50_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_50_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_56 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_56
  l0._graph = self
  l0._name = "box_AI_IOPController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|857762749"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_56_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|866908244"
  l0.Out = self.f_box_PlaySound_v2_18_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_47 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_47
  l0._graph = self
  l0._name = "box_ListWriter_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|910881562"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_47_Added
  l0.Removed = self.f_box_ListWriter_47_Removed
  l0.Out = self.f_box_ListWriter_47_Out
  self.box_LMA_Layer_Controller_74 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_74
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|926596643"
  l0.Loaded = self.f_box_LMA_Layer_Controller_74_Loaded
  l0.Unloaded = DummyFunction
  self.box_AI_IOPController_77 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_77
  l0._graph = self
  l0._name = "box_AI_IOPController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|986482712"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_77_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_91 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_91
  l0._graph = self
  l0._name = "box_SetBoolean_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|997391518"
  l0.Out = self.f_box_SetBoolean_v2_91_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_91_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_91_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_91_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_91_SetFromBool
  self.box_MissionMessageController_v3_107 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_107
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|999609088"
  l0.Out = self.f_box_MissionMessageController_v3_107_Out
  l0.MessageCompleted = DummyFunction
  self.box_Security_Camera_Monitor_30 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_30
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1019177396"
  l0.Enabled = self.f_box_Security_Camera_Monitor_30_Enabled
  l0.Disabled = self.f_box_Security_Camera_Monitor_30_Disabled
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_30_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_30_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CinematicPrep_9 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_9
  l0._graph = self
  l0._name = "box_CinematicPrep_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1039769963"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_9_PostOut
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1043127640"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_60 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_60
  l0._graph = self
  l0._name = "box_Timer_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1057573640"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_60_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_10 = cbox:CreateBox("domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_10
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1081797723"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_10_EnterFOV
  l0.LeaveFOV = DummyFunction
  l0.InsideFOV = self.f_box_LookAtTriggerMonitor_Monitor_10_InsideFOV
  l0.OutsideFOV = self.f_box_LookAtTriggerMonitor_Monitor_10_OutsideFOV
  self.box_Multiple_AND_59 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_59
  l0._graph = self
  l0._name = "box_Multiple_AND_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1085398473"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_59_Out
  self.box_PlaySound_v2_7 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_7
  l0._graph = self
  l0._name = "box_PlaySound_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1094609090"
  l0.Out = self.f_box_PlaySound_v2_7_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1151578406"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_PlaySound_v2_66 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_66
  l0._graph = self
  l0._name = "box_PlaySound_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1166735868"
  l0.Out = self.f_box_PlaySound_v2_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_86 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_86
  l0._graph = self
  l0._name = "box_AI_IOPController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1173552851"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_86_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlayDialog_v2_111 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_111
  l0._graph = self
  l0._name = "box_PlayDialog_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1189390756"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SwitchOutput_v3_6 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_6
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1242142850"
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = DummyFunction
  l0.Output[2] = self.f_box_SwitchOutput_v3_6_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_CLOController_69 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_69
  l0._graph = self
  l0._name = "box_CLOController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1242893275"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_69_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_69_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_76 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_76
  l0._graph = self
  l0._name = "box_MissionLayer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1320498429"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_76_Unloaded
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_97 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_97
  l0._graph = self
  l0._name = "box_SetBoolean_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1345944863"
  l0.Out = self.f_box_SetBoolean_v2_97_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_97_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_97_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_97_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_97_SetFromBool
  self.box_PlaySound_v2_8 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1386662859"
  l0.Out = self.f_box_PlaySound_v2_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_54 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_54
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1386682574"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_54_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_54_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_SetBoolean_v2_92 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_92
  l0._graph = self
  l0._name = "box_SetBoolean_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1394744399"
  l0.Out = self.f_box_SetBoolean_v2_92_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_92_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_92_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_92_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_92_SetFromBool
  self.box_Timer_v2_81 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_81
  l0._graph = self
  l0._name = "box_Timer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1416678138"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_78 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_78
  l0._graph = self
  l0._name = "box_Multiple_AND_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1435343416"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_78_Out
  self.box_Hackable_Monitor_68 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_68
  l0._graph = self
  l0._name = "box_Hackable_Monitor_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1441864981"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_68_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_68_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_14 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_14
  l0._graph = self
  l0._name = "box_AI_IOPController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1457231061"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_14_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_IndexedOutput_V2_41 = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self.box_IndexedOutput_V2_41
  l0._graph = self
  l0._name = "box_IndexedOutput_V2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1459750624"
  l0._DynamicAnchors = {Output = 6}
  l0.Output[0] = self.f_box_IndexedOutput_V2_41_Output_0
  l0.Output[1] = self.f_box_IndexedOutput_V2_41_Output_1
  l0.Output[2] = self.f_box_IndexedOutput_V2_41_Output_2
  l0.Output[3] = self.f_box_IndexedOutput_V2_41_Output_3
  l0.Output[4] = self.f_box_IndexedOutput_V2_41_Output_4
  l0.Output[5] = self.f_box_IndexedOutput_V2_41_Output_5
  l0.OutOfRange = self.f_box_IndexedOutput_V2_41_OutOfRange
  self.box_Timer_v2_31 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_31
  l0._graph = self
  l0._name = "box_Timer_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1468977906"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_31_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_55 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_55
  l0._graph = self
  l0._name = "box_HackableController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1492161905"
  l0.Enabled = self.f_box_HackableController_v2_55_Enabled
  l0.Disabled = self.f_box_HackableController_v2_55_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_55_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_55_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1513831460"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1544385020"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_17_Started
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_20 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_20
  l0._graph = self
  l0._name = "box_Hackable_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1588049660"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_20_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_20_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_4 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_4
  l0._graph = self
  l0._name = "box_PlaySound_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1603141418"
  l0.Out = self.f_box_PlaySound_v2_4_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_58 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_58
  l0._graph = self
  l0._name = "box_Timer_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1621018129"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1646729128"
  l0.Out = self.f_box_PlaySound_v2_33_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SwitchOutput_v3_103 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_103
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1670985095"
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = DummyFunction
  l0.Output[1] = self.f_box_SwitchOutput_v3_103_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1716070450"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_Timer_v2_43 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_43
  l0._graph = self
  l0._name = "box_Timer_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1778548887"
  l0.Out = self.f_box_Timer_v2_43_Out
  l0.Started = self.f_box_Timer_v2_43_Started
  l0.Stopped = self.f_box_Timer_v2_43_Stopped
  l0.Paused = self.f_box_Timer_v2_43_Paused
  l0.Resumed = self.f_box_Timer_v2_43_Resumed
  l0.TimeElapsed = self.f_box_Timer_v2_43_TimeElapsed
  l0.LoopingEnded = self.f_box_Timer_v2_43_LoopingEnded
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_3 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_3
  l0._graph = self
  l0._name = "box_Hackable_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1782147283"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_3_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_37 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_37
  l0._graph = self
  l0._name = "box_PlaySound_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1790962576"
  l0.Out = self.f_box_PlaySound_v2_37_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_67 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_67
  l0._graph = self
  l0._name = "box_CLOController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1797318922"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_67_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_67_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_24 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_24
  l0._graph = self
  l0._name = "box_HackableController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1805550893"
  l0.Enabled = self.f_box_HackableController_v2_24_Enabled
  l0.Disabled = self.f_box_HackableController_v2_24_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_64 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_64
  l0._graph = self
  l0._name = "box_MissionLayer_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1811889312"
  l0.Loaded = self.f_box_MissionLayer_v2_64_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_65 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_65
  l0._graph = self
  l0._name = "box_PlaySound_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1889693232"
  l0.Out = self.f_box_PlaySound_v2_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1947054351"
  l0.Out = self.f_box_PlaySound_v2_25_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_61 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_61
  l0._graph = self
  l0._name = "box_CLOController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1996604372"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_61_OnUserInPlace
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2009604553"
  l0.Out = self.f_box_PlaySound_v2_51_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_88 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_88
  l0._graph = self
  l0._name = "box_AI_IOPController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2128637818"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_48 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2144843206"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_48_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|207551060"
  l0.Out = self.f_box_Get_Player_ID_36_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1402352840", "1402352840", "S08M010_IOP_Main", "In", "box_Get_Player_ID_36.In", self, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_111
  l0.SoundId = "soundbinary/96816711.bnk"
  l0.UseFacial = 0
  l0 = self.box_OnceOnly_v3_109
  l1 = self.box_PlayDialog_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|919935302", "919935302", "S08M010_IOP_Main", "box_OnceOnly_v3_109.Out", "box_PlayDialog_v2_111.Start", l0, l1)
  l1:Start()
end
function export:f_box_Bind_v2_85_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_42
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/4065522176.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1189961242", "1189961242", "S08M010_IOP_Main", "box_Bind_v2_85.Bound", "box_PlaySound_v2_42.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_34_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_73
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective050",
    item = "Objective4",
    id = "359140"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_AI_IOPController_34
  l1 = self.box_MissionMessageController_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|382662767", "382662767", "S08M010_IOP_Main", "box_AI_IOPController_34.SendEventCompleted", "box_MissionMessageController_v3_73.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_LMA_Layer_Controller_80_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|304650671"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_LMA_Layer_Controller_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|245767505", "245767505", "S08M010_IOP_Main", "box_LMA_Layer_Controller_80.Unloaded", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_23_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_68()
  l0 = self.box_HackableController_v2_23
  l1 = self.box_Hackable_Monitor_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|777161489", "777161489", "S08M010_IOP_Main", "box_HackableController_v2_23.Disabled", "box_Hackable_Monitor_68.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_68()
  l0 = self.box_HackableController_v2_23
  l1 = self.box_Hackable_Monitor_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1556734407", "1556734407", "S08M010_IOP_Main", "box_HackableController_v2_23.Enabled", "box_Hackable_Monitor_68.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_73_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1237857295"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_62_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_62_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_62_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_62_Out_3
  l0 = self.box_MissionMessageController_v3_73
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1891506886", "1891506886", "S08M010_IOP_Main", "box_MissionMessageController_v3_73.Out", "box_Ordered_Output_62.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_93_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_93_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_93_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_93_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_93_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.InCam = l0.Target
end
function export:f_box_SecurityCamController_108_DisconnectedAnimationHidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|669916346", "669916346", "S08M010_IOP_Main", "box_SecurityCamController_108.DisconnectedAnimationHidden", "Out", clone, self)
  self:Out()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_9
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_57
  l1 = self.box_CinematicPrep_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1510015183", "1510015183", "S08M010_IOP_Main", "box_Timer_v2_57.TimeElapsed", "box_CinematicPrep_9.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_46_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_46
  self.Brody = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Brody
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|900499737"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_11_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_46
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|911342217", "911342217", "S08M010_IOP_Main", "box_CLOController_46.OnUserInPlace", "box_CollisionController_11.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_AI_IOPController_26_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l0.Seconds = 0.5
  l0.Loop = 1
  l0.nbLoop = 7
  l0 = self.box_AI_IOPController_26
  l1 = self.box_Timer_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|955302705", "955302705", "S08M010_IOP_Main", "box_AI_IOPController_26.SendEventCompleted", "box_Timer_v2_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_82_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_4
  l0.Entity = self.Speakers_SoundEntity
  l0.SoundId = "soundbinary/3750291630.bnk"
  l0 = self.box_AI_IOPController_82
  l1 = self.box_PlaySound_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1670497839", "1670497839", "S08M010_IOP_Main", "box_AI_IOPController_82.SendEventCompleted", "box_PlaySound_v2_4.Play", l0, l1)
  l1:Play()
end
function export:f_box_Multiple_AND_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_107
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S08.S08M010.Objectives.Objective050",
    item = "SubObjective2",
    id = "359137"
  }
  l0 = self.box_Multiple_AND_84
  l1 = self.box_MissionMessageController_v3_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1253499085", "1253499085", "S08M010_IOP_Main", "box_Multiple_AND_84.Out", "box_MissionMessageController_v3_107.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_80
  l0.LMALayerName = self.NudleUpperLMA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|755879725", "755879725", "S08M010_IOP_Main", "box_Get_Player_ID_36.Out", "box_LMA_Layer_Controller_80.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_CollisionController_27_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_78()
  l0 = self.box_Multiple_AND_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1505194493", "1505194493", "S08M010_IOP_Main", "box_CollisionController_27.CollisionsDisabled", "box_Multiple_AND_78.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_VisibilityController_v2_89_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|672201544", "672201544", "S08M010_IOP_Main", "box_VisibilityController_v2_89.Hidden", "box_Timer_v2_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_86
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.PlayerIsLooking"
  l0 = self.box_MultipleOR_104
  l1 = self.box_AI_IOPController_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1831996519", "1831996519", "S08M010_IOP_Main", "box_MultipleOR_104.Out", "box_AI_IOPController_86.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_2_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_20()
  l0 = self.box_HackableController_v2_2
  l1 = self.box_Hackable_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1559901952", "1559901952", "S08M010_IOP_Main", "box_HackableController_v2_2.Disabled", "box_Hackable_Monitor_20.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_2_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_20()
  l0 = self.box_HackableController_v2_2
  l1 = self.box_Hackable_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1681409949", "1681409949", "S08M010_IOP_Main", "box_HackableController_v2_2.Enabled", "box_Hackable_Monitor_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_102_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_10()
  l0 = self.box_OnceOnly_v3_102
  l1 = self.box_LookAtTriggerMonitor_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1917313958", "1917313958", "S08M010_IOP_Main", "box_OnceOnly_v3_102.Out", "box_LookAtTriggerMonitor_Monitor_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_42_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_25
  l0.Entity = self.Ambience_SoundEntity
  l0.SoundId = "soundbinary/1927502775.bnk"
  l0 = self.box_PlaySound_v2_42
  l1 = self.box_PlaySound_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1714287829", "1714287829", "S08M010_IOP_Main", "box_PlaySound_v2_42.Out", "box_PlaySound_v2_25.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_49_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_49
  l1 = self.box_SetBoolean_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1068561481", "1068561481", "S08M010_IOP_Main", "box_AI_IOPController_49.SendEventCompleted", "box_SetBoolean_v2_92.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_64
  l0.LayerName = "S08M010_IOP"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|723806708", "723806708", "S08M010_IOP_Main", "box_Ordered_Output_75.Out", "box_MissionLayer_v2_64.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_74
  l0.LMALayerName = self.NudleLowerLMA
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1364630911", "1364630911", "S08M010_IOP_Main", "box_Ordered_Output_75.Out", "box_LMA_Layer_Controller_74.Load", clone, l0)
  l0:Load()
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_MultipleOR_52
  l1 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|737772339", "737772339", "S08M010_IOP_Main", "box_MultipleOR_52.Out", "box_HackableController_v2_55.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2069754000"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_106_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_106_Out_1
  l0 = self.box_Timer_v2_72
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1392708104", "1392708104", "S08M010_IOP_Main", "box_Timer_v2_72.TimeElapsed", "box_Ordered_Output_106.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_21_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_CLOController_21
  l1 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2077799914", "2077799914", "S08M010_IOP_Main", "box_CLOController_21.Deactivated", "box_Multiple_AND_59.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_21_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_21()
  l0 = self.box_CLOController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2094593609", "2094593609", "S08M010_IOP_Main", "box_CLOController_21.UnspawnedUser", "box_CLOController_21.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Security_Camera_Monitor_105_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_90()
  l0 = self.box_Security_Camera_Monitor_105
  l1 = self.box_HackableController_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|346668080", "346668080", "S08M010_IOP_Main", "box_Security_Camera_Monitor_105.OnStartAccessCamera", "box_HackableController_v2_90.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Security_Camera_Monitor_105_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_90()
  l0 = self.box_Security_Camera_Monitor_105
  l1 = self.box_HackableController_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1472533648", "1472533648", "S08M010_IOP_Main", "box_Security_Camera_Monitor_105.OnStartExitCamera", "box_HackableController_v2_90.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_AI_IOPController_39_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|481886486"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0 = self.box_AI_IOPController_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|33338035", "33338035", "S08M010_IOP_Main", "box_AI_IOPController_39.IOPKickOutComplete", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_98_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_102()
  l0 = self.box_OnceOnly_v3_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2057753738", "2057753738", "S08M010_IOP_Main", "box_Simple_Node_98.Out", "box_OnceOnly_v3_102.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOController_67()
  l0 = self.box_CLOController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1050800704", "1050800704", "S08M010_IOP_Main", "box_Ordered_Output_32.Out", "box_CLOController_67.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOController_21()
  l0 = self.box_CLOController_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1719335118", "1719335118", "S08M010_IOP_Main", "box_Ordered_Output_32.Out", "box_CLOController_21.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOController_69()
  l0 = self.box_CLOController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1112113407", "1112113407", "S08M010_IOP_Main", "box_Ordered_Output_32.Out", "box_CLOController_69.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_AI_IOPController_44_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_AI_IOPController_44
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1882662303", "1882662303", "S08M010_IOP_Main", "box_AI_IOPController_44.SendEventCompleted", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AI_IOPController_28_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_AI_IOPController_28
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1461562963", "1461562963", "S08M010_IOP_Main", "box_AI_IOPController_28.SendEventCompleted", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_14
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack2"
  l0 = self.box_Timer_v2_53
  l1 = self.box_AI_IOPController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|937097557", "937097557", "S08M010_IOP_Main", "box_Timer_v2_53.TimeElapsed", "box_AI_IOPController_14.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_OnceOnly_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1975637553"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_110_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_110_Out_1
  l0 = self.box_OnceOnly_v3_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|970577757", "970577757", "S08M010_IOP_Main", "box_OnceOnly_v3_15.Out", "box_Ordered_Output_110.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_44
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack3"
  l0 = self.box_Timer_v2_35
  l1 = self.box_AI_IOPController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1553741465", "1553741465", "S08M010_IOP_Main", "box_Timer_v2_35.TimeElapsed", "box_AI_IOPController_44.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Compare_Boolean_v2_101_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|471083138"
  l0.Out = self.f_box_Simple_Node_98_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1272252954", "1272252954", "S08M010_IOP_Main", "box_Compare_Boolean_v2_101.A_is_True", "box_Simple_Node_98.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_33
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/3179538684.bnk"
  l0 = self.box_MultipleOR_63
  l1 = self.box_PlaySound_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|726391041", "726391041", "S08M010_IOP_Main", "box_MultipleOR_63.Out", "box_PlaySound_v2_33.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_19_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1388373283"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_96_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_96_Out_1
  l0 = self.box_IOPMonitor_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|720234800", "720234800", "S08M010_IOP_Main", "box_IOPMonitor_19.IOPComplete", "box_Ordered_Output_96.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_5_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_5
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|246156041", "246156041", "S08M010_IOP_Main", "box_AI_IOPController_5.StartCompleted", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_40_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2013700903"
  l0.Out = self.f_box_Simple_Node_95_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|115190901", "115190901", "S08M010_IOP_Main", "box_Compare_Boolean_v2_40.A_is_True", "box_Simple_Node_95.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_22_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_39
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_HackableController_v2_22
  l1 = self.box_AI_IOPController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|203787690", "203787690", "S08M010_IOP_Main", "box_HackableController_v2_22.HackForced", "box_AI_IOPController_39.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Hackable_Monitor_50_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_50
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1356656573", "1356656573", "S08M010_IOP_Main", "box_Hackable_Monitor_50.Disabled", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_50_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_24()
  l0 = self.box_Hackable_Monitor_50
  l1 = self.box_HackableController_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1517722415", "1517722415", "S08M010_IOP_Main", "box_Hackable_Monitor_50.HackSuccess", "box_HackableController_v2_24.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_AI_IOPController_56_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_7
  l0.Entity = self.Toy_SoundEntity
  l0.SoundId = "soundbinary/3563038995.bnk"
  l0 = self.box_AI_IOPController_56
  l1 = self.box_PlaySound_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1393142516", "1393142516", "S08M010_IOP_Main", "box_AI_IOPController_56.SendEventCompleted", "box_PlaySound_v2_7.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1426104671", "1426104671", "S08M010_IOP_Main", "box_PlaySound_v2_18.Out", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_84()
  l0 = self.box_Multiple_AND_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|898429001", "898429001", "S08M010_IOP_Main", "box_Simple_Node_83.Out", "box_Multiple_AND_84.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Light_OnOff
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|750997732"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_40_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1303000455", "1303000455", "S08M010_IOP_Main", "box_Ordered_Output_100.Out", "box_Compare_Boolean_v2_40.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.LookAt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|691402147"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_101_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1189322093", "1189322093", "S08M010_IOP_Main", "box_Ordered_Output_100.Out", "box_Compare_Boolean_v2_101.In", clone, l0)
  l0:In()
end
function export:f_box_CollisionController_11_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_78()
  l0 = self.box_Multiple_AND_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1733953592", "1733953592", "S08M010_IOP_Main", "box_CollisionController_11.CollisionsDisabled", "box_Multiple_AND_78.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_ListWriter_47_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Characters = l0.Target
  l0 = self.box_AI_IOPController_5
  l0.IopID = "LimpNudle"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0.OffscreenDialogPoint = self.BarkSoundEntity_0
  l0 = self.box_ListWriter_47
  l1 = self.box_AI_IOPController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1422563796", "1422563796", "S08M010_IOP_Main", "box_ListWriter_47.Added", "box_AI_IOPController_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_47_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Characters = l0.Target
end
function export:f_box_ListWriter_47_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Characters = l0.Target
end
function export:f_box_LMA_Layer_Controller_74_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|879539971"
  l0.Out = self.f_box_Simple_Node_83_Out
  l0 = self.box_LMA_Layer_Controller_74
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|48051567", "48051567", "S08M010_IOP_Main", "box_LMA_Layer_Controller_74.Loaded", "box_Simple_Node_83.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_77_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_77
  l1 = self.box_SetBoolean_v2_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1565450518", "1565450518", "S08M010_IOP_Main", "box_AI_IOPController_77.SendEventCompleted", "box_SetBoolean_v2_93.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_91_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_91
  self.Light_OnOff = l0.Target
end
function export:f_box_SetBoolean_v2_91_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_91
  self.Light_OnOff = l0.Target
end
function export:f_box_SetBoolean_v2_91_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_91
  self.Light_OnOff = l0.Target
end
function export:f_box_SetBoolean_v2_91_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_91
  self.Light_OnOff = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InCam
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1454922827"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_94_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_91
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|692474769", "692474769", "S08M010_IOP_Main", "box_SetBoolean_v2_91.SetTrue", "box_Compare_Boolean_v2_94.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_91_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_91
  self.Light_OnOff = l0.Target
end
function export:f_box_MissionMessageController_v3_107_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|62479877"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = self.f_box_SecurityCamController_108_DisconnectedAnimationHidden
  l0.FriendlySet = DummyFunction
  l0 = self.box_MissionMessageController_v3_107
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|944346227", "944346227", "S08M010_IOP_Main", "box_MissionMessageController_v3_107.Out", "box_SecurityCamController_108.HideDisconnectedAnimation", l0, l1)
  l1:HideDisconnectedAnimation()
end
function export:f_box_CollisionController_45_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_78()
  l0 = self.box_Multiple_AND_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|365106724", "365106724", "S08M010_IOP_Main", "box_CollisionController_45.CollisionsDisabled", "box_Multiple_AND_78.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Security_Camera_Monitor_30_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_105()
  l0 = self.box_Security_Camera_Monitor_30
  l1 = self.box_Security_Camera_Monitor_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2116215772", "2116215772", "S08M010_IOP_Main", "box_Security_Camera_Monitor_30.Disabled", "box_Security_Camera_Monitor_105.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Security_Camera_Monitor_30_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_1()
  l0 = self.box_Security_Camera_Monitor_30
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|738267670", "738267670", "S08M010_IOP_Main", "box_Security_Camera_Monitor_30.Enabled", "box_SecurityCamController_1.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Security_Camera_Monitor_30_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_49
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.CameraIn"
  l0 = self.box_Security_Camera_Monitor_30
  l1 = self.box_AI_IOPController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|553903412", "553903412", "S08M010_IOP_Main", "box_Security_Camera_Monitor_30.OnStartAccessCamera", "box_AI_IOPController_49.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Security_Camera_Monitor_30_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_77
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.CameraOut"
  l0 = self.box_Security_Camera_Monitor_30
  l1 = self.box_AI_IOPController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1946051575", "1946051575", "S08M010_IOP_Main", "box_Security_Camera_Monitor_30.OnStartExitCamera", "box_AI_IOPController_77.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_CinematicPrep_9_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.TV_Cam
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1326297375"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_38_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_CinematicPrep_9
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1539711560", "1539711560", "S08M010_IOP_Main", "box_CinematicPrep_9.PostOut", "box_SecurityCamController_38.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l1 = self.box_SetBoolean_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1149415496", "1149415496", "S08M010_IOP_Main", "box_Timer_v2_12.TimeElapsed", "box_SetBoolean_v2_91.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_60_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_56
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.StartRobotAnim"
  l0 = self.box_Timer_v2_60
  l1 = self.box_AI_IOPController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1483018679", "1483018679", "S08M010_IOP_Main", "box_Timer_v2_60.TimeElapsed", "box_AI_IOPController_56.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_LookAtTriggerMonitor_Monitor_10_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_LookAtTriggerMonitor_Monitor_10
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1023970469", "1023970469", "S08M010_IOP_Main", "box_LookAtTriggerMonitor_Monitor_10.EnterFOV", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LookAtTriggerMonitor_Monitor_10_InsideFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_LookAtTriggerMonitor_Monitor_10
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1687011987", "1687011987", "S08M010_IOP_Main", "box_LookAtTriggerMonitor_Monitor_10.InsideFOV", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LookAtTriggerMonitor_Monitor_10_OutsideFOV()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_88
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.PlayerIsNotLooking"
  l0 = self.box_LookAtTriggerMonitor_Monitor_10
  l1 = self.box_AI_IOPController_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1989311762", "1989311762", "S08M010_IOP_Main", "box_LookAtTriggerMonitor_Monitor_10.OutsideFOV", "box_AI_IOPController_88.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Multiple_AND_59_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_37
  l0.Entity = self.Ambience_SoundEntity
  l0.SoundId = "soundbinary/934358356.bnk"
  l0 = self.box_Multiple_AND_59
  l1 = self.box_PlaySound_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|322615718", "322615718", "S08M010_IOP_Main", "box_Multiple_AND_59.Out", "box_PlaySound_v2_37.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.Nudle_Toy
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|251742342"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_89_Hidden
  l0.Out = DummyFunction
  l0 = self.box_PlaySound_v2_7
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1726018367", "1726018367", "S08M010_IOP_Main", "box_PlaySound_v2_7.Out", "box_VisibilityController_v2_89.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1079347330", "1079347330", "S08M010_IOP_Main", "box_VisibilityController_v2_87.Out", "box_SetBoolean_v2_97.True", clone, l0)
  l0:True()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.HR = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.HR
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1000950883"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_45_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_13
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1754544285", "1754544285", "S08M010_IOP_Main", "box_CLOController_13.OnUserInPlace", "box_CollisionController_45.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_PlaySound_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_12
  l0.Seconds = 14
  l0 = self.box_PlaySound_v2_66
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1868396004", "1868396004", "S08M010_IOP_Main", "box_PlaySound_v2_66.Out", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_86_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LookAtTriggerMonitor_Monitor_10()
  l0 = self.box_AI_IOPController_86
  l1 = self.box_LookAtTriggerMonitor_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1017864740", "1017864740", "S08M010_IOP_Main", "box_AI_IOPController_86.SendEventCompleted", "box_LookAtTriggerMonitor_Monitor_10.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_62_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_24()
  l0 = self.box_HackableController_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1181654581", "1181654581", "S08M010_IOP_Main", "box_Ordered_Output_62.Out", "box_HackableController_v2_24.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_62_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_2()
  l0 = self.box_HackableController_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1146199916", "1146199916", "S08M010_IOP_Main", "box_Ordered_Output_62.Out", "box_HackableController_v2_2.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_62_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1075290586", "1075290586", "S08M010_IOP_Main", "box_Ordered_Output_62.Out", "box_HackableController_v2_23.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_62_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|519380712", "519380712", "S08M010_IOP_Main", "box_Ordered_Output_62.Out", "box_MultipleOR_52.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SwitchOutput_v3_6_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_81
  l0.Seconds = 13
  l0 = self.box_SwitchOutput_v3_6
  l1 = self.box_Timer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|432540153", "432540153", "S08M010_IOP_Main", "box_SwitchOutput_v3_6.Output", "box_Timer_v2_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_69_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_CLOController_69
  l1 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1757121047", "1757121047", "S08M010_IOP_Main", "box_CLOController_69.Deactivated", "box_Multiple_AND_59.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_CLOController_69_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_69()
  l0 = self.box_CLOController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1202179030", "1202179030", "S08M010_IOP_Main", "box_CLOController_69.UnspawnedUser", "box_CLOController_69.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_MissionLayer_v2_76_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_84()
  l0 = self.box_MissionLayer_v2_76
  l1 = self.box_Multiple_AND_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|925734480", "925734480", "S08M010_IOP_Main", "box_MissionLayer_v2_76.Unloaded", "box_Multiple_AND_84.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_SecurityCamController_38_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Horatio
  l0.Child = self.IOP_InvisibleGeo_0
  l0.BoneName = "Spine2"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|5062244"
  l0.Bound = self.f_box_Bind_v2_85_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|813350803", "813350803", "S08M010_IOP_Main", "box_SecurityCamController_38.CanExitSet", "box_Bind_v2_85.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_SetBoolean_v2_97_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self.LookAt = l0.Target
end
function export:f_box_SetBoolean_v2_97_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self.LookAt = l0.Target
end
function export:f_box_SetBoolean_v2_97_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self.LookAt = l0.Target
end
function export:f_box_SetBoolean_v2_97_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self.LookAt = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InCam
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1782664414"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_99_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_97
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1171191023", "1171191023", "S08M010_IOP_Main", "box_SetBoolean_v2_97.SetTrue", "box_Compare_Boolean_v2_99.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_97_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self.LookAt = l0.Target
end
function export:f_box_PlaySound_v2_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_8
  l1 = self.box_Timer_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|822851639", "822851639", "S08M010_IOP_Main", "box_PlaySound_v2_8.Out", "box_Timer_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_54_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_57
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_54
  l1 = self.box_Timer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|569572126", "569572126", "S08M010_IOP_Main", "box_Security_Camera_Monitor_54.Disabled", "box_Timer_v2_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_54_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_54()
  l0 = self.box_Security_Camera_Monitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1003177292", "1003177292", "S08M010_IOP_Main", "box_Security_Camera_Monitor_54.OnEndAccessCamera", "box_Security_Camera_Monitor_54.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_96_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_30()
  l0 = self.box_Security_Camera_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|11417564", "11417564", "S08M010_IOP_Main", "box_Ordered_Output_96.Out", "box_Security_Camera_Monitor_30.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_96_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_22
  l0.HackableEntity = self.Tablet_HackableEntity_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1089457745", "1089457745", "S08M010_IOP_Main", "box_Ordered_Output_96.Out", "box_HackableController_v2_22.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_SetBoolean_v2_92_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.InCam = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.InCam = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|883844418"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0 = self.box_SetBoolean_v2_92
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1756713969", "1756713969", "S08M010_IOP_Main", "box_SetBoolean_v2_92.SetTrue", "box_Ordered_Output_100.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_92_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.InCam = l0.Target
end
function export:f_box_Timer_v2_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_82
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.EndRobotAnim"
  l0 = self.box_Timer_v2_81
  l1 = self.box_AI_IOPController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1361671546", "1361671546", "S08M010_IOP_Main", "box_Timer_v2_81.TimeElapsed", "box_AI_IOPController_82.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Multiple_AND_78_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1765417957"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_Multiple_AND_78
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1565593306", "1565593306", "S08M010_IOP_Main", "box_Multiple_AND_78.Out", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_68_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_68
  l1 = self.box_Timer_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1991180833", "1991180833", "S08M010_IOP_Main", "box_Hackable_Monitor_68.Disabled", "box_Timer_v2_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_68_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_Hackable_Monitor_68
  l1 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1945351524", "1945351524", "S08M010_IOP_Main", "box_Hackable_Monitor_68.HackSuccess", "box_HackableController_v2_23.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Compare_Boolean_v2_94_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_15()
  l0 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1885540382", "1885540382", "S08M010_IOP_Main", "box_Compare_Boolean_v2_94.A_is_True", "box_OnceOnly_v3_15.In", clone, l0)
  l0:In(1)
end
function export:f_box_AI_IOPController_14_SendEventCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_AI_IOPController_14
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|84483616", "84483616", "S08M010_IOP_Main", "box_AI_IOPController_14.SendEventCompleted", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_41_OutOfRange()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.HR
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1150538354"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_87_Out
  l0 = self.box_IndexedOutput_V2_41
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2009200690", "2009200690", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.OutOfRange", "box_VisibilityController_v2_87.Show", l0, l1)
  l1:Show()
end
function export:f_box_IndexedOutput_V2_41_Output_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1399906307", "1399906307", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_41_Output_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|75843869", "75843869", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_IndexedOutput_V2_41_Output_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|350444831", "350444831", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_41_Output_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1470565198", "1470565198", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_IndexedOutput_V2_41_Output_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1596399210", "1596399210", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_IndexedOutput_V2_41_Output_5()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_IndexedOutput_V2_41
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|617392979", "617392979", "S08M010_IOP_Main", "box_IndexedOutput_V2_41.Output", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Timer_v2_31_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_28
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Hack1"
  l0 = self.box_Timer_v2_31
  l1 = self.box_AI_IOPController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|653727500", "653727500", "S08M010_IOP_Main", "box_Timer_v2_31.TimeElapsed", "box_AI_IOPController_28.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_HackableController_v2_55_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1008890174", "1008890174", "S08M010_IOP_Main", "box_HackableController_v2_55.Disabled", "box_HackableController_v2_55.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_55_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|102843529", "102843529", "S08M010_IOP_Main", "box_HackableController_v2_55.Enabled", "box_HackableController_v2_55.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_55_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_3()
  l0 = self.box_HackableController_v2_55
  l1 = self.box_Hackable_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2060938916", "2060938916", "S08M010_IOP_Main", "box_HackableController_v2_55.ProfilingDisabled", "box_Hackable_Monitor_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_55_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_3()
  l0 = self.box_HackableController_v2_55
  l1 = self.box_Hackable_Monitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|158512740", "158512740", "S08M010_IOP_Main", "box_HackableController_v2_55.ProfilingEnabled", "box_Hackable_Monitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_8
  l0.Entity = self.Speakers_SoundEntity
  l0.SoundId = "soundbinary/2918364508.bnk"
  l0 = self.box_Timer_v2_71
  l1 = self.box_PlaySound_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|773925896", "773925896", "S08M010_IOP_Main", "box_Timer_v2_71.TimeElapsed", "box_PlaySound_v2_8.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_17_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1940381639"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_79_Out_2
  l0 = self.box_PlaySound_v2_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|289113192", "289113192", "S08M010_IOP_Main", "box_PlaySound_v2_17.Started", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_20_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_20
  l1 = self.box_Timer_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|17004762", "17004762", "S08M010_IOP_Main", "box_Hackable_Monitor_20.Disabled", "box_Timer_v2_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_20_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_2()
  l0 = self.box_Hackable_Monitor_20
  l1 = self.box_HackableController_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|944437569", "944437569", "S08M010_IOP_Main", "box_Hackable_Monitor_20.HackSuccess", "box_HackableController_v2_2.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_65
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/2911131890.bnk"
  l0 = self.box_PlaySound_v2_4
  l1 = self.box_PlaySound_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|400012033", "400012033", "S08M010_IOP_Main", "box_PlaySound_v2_4.Out", "box_PlaySound_v2_65.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_58_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l0.Entity = self.Phone_SoundEntity
  l0.SoundId = "soundbinary/3358214408.bnk"
  l0 = self.box_Timer_v2_58
  l1 = self.box_PlaySound_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|588770648", "588770648", "S08M010_IOP_Main", "box_Timer_v2_58.TimeElapsed", "box_PlaySound_v2_18.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_33_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LightController_16()
  l0 = self.box_PlaySound_v2_33
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1629507178", "1629507178", "S08M010_IOP_Main", "box_PlaySound_v2_33.Out", "box_LightController_16.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SwitchOutput_v3_103_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_26
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.LightSwitch"
  l0 = self.box_SwitchOutput_v3_103
  l1 = self.box_AI_IOPController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|761496428", "761496428", "S08M010_IOP_Main", "box_SwitchOutput_v3_103.Output", "box_AI_IOPController_26.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_29
  l1 = self.box_SwitchOutput_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1370570634", "1370570634", "S08M010_IOP_Main", "box_MultipleOR_29.Out", "box_SwitchOutput_v3_6.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_47
  l0.Input = self.Characters
  l0.Data[0] = self.Brody
  l0.Data[1] = self.Horatio
  l0.Data[2] = self.HR
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|37090347", "37090347", "S08M010_IOP_Main", "box_Ordered_Output_70.Out", "box_ListWriter_47.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|657618890", "657618890", "S08M010_IOP_Main", "box_Ordered_Output_70.Out", "box_IOPMonitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_43_LoopingEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_Resumed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
end
function export:f_box_Timer_v2_43_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_43
  l1 = self.box_IndexedOutput_V2_41
  l1.Index = l0.currentLoop
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1252115624", "1252115624", "S08M010_IOP_Main", "box_Timer_v2_43.TimeElapsed", "box_IndexedOutput_V2_41.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_3_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_3
  l1 = self.box_SwitchOutput_v3_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1673843016", "1673843016", "S08M010_IOP_Main", "box_Hackable_Monitor_3.Disabled", "box_SwitchOutput_v3_103.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_3_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_Hackable_Monitor_3
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|7441016", "7441016", "S08M010_IOP_Main", "box_Hackable_Monitor_3.HackSuccess", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_99_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_102()
  l0 = self.box_OnceOnly_v3_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1566630118", "1566630118", "S08M010_IOP_Main", "box_Compare_Boolean_v2_99.A_is_True", "box_OnceOnly_v3_102.In", clone, l0)
  l0:In(1)
end
function export:f_box_PlaySound_v2_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_76
  l0.LayerName = "S08M010_IOP"
  l0 = self.box_PlaySound_v2_37
  l1 = self.box_MissionLayer_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|41094904", "41094904", "S08M010_IOP_Main", "box_PlaySound_v2_37.Out", "box_MissionLayer_v2_76.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CLOController_67_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_59()
  l0 = self.box_CLOController_67
  l1 = self.box_Multiple_AND_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|369686311", "369686311", "S08M010_IOP_Main", "box_CLOController_67.Deactivated", "box_Multiple_AND_59.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_67_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_67()
  l0 = self.box_CLOController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1172841826", "1172841826", "S08M010_IOP_Main", "box_CLOController_67.UnspawnedUser", "box_CLOController_67.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_HackableController_v2_24_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_50()
  l0 = self.box_HackableController_v2_24
  l1 = self.box_Hackable_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|877530360", "877530360", "S08M010_IOP_Main", "box_HackableController_v2_24.Disabled", "box_Hackable_Monitor_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_24_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_50()
  l0 = self.box_HackableController_v2_24
  l1 = self.box_Hackable_Monitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1743747720", "1743747720", "S08M010_IOP_Main", "box_HackableController_v2_24.Enabled", "box_Hackable_Monitor_50.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_64_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_17
  l0.SoundId = "soundbinary/3973683875.bnk"
  l0 = self.box_MissionLayer_v2_64
  l1 = self.box_PlaySound_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|599994950", "599994950", "S08M010_IOP_Main", "box_MissionLayer_v2_64.Loaded", "box_PlaySound_v2_17.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_66
  l0.Entity = self.Toy_SoundEntity
  l0.SoundId = "soundbinary/627478928.bnk"
  l0 = self.box_PlaySound_v2_65
  l1 = self.box_PlaySound_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|896110080", "896110080", "S08M010_IOP_Main", "box_PlaySound_v2_65.Out", "box_PlaySound_v2_66.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_61
  l0.CLO = "9223372048509353883"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|212054029", "212054029", "S08M010_IOP_Main", "box_Ordered_Output_79.Out", "box_CLOController_61.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_13
  l0.CLO = "9223372048509353876"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1749811445", "1749811445", "S08M010_IOP_Main", "box_Ordered_Output_79.Out", "box_CLOController_13.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_79_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_46
  l0.CLO = "9223372048509353884"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2010232716", "2010232716", "S08M010_IOP_Main", "box_Ordered_Output_79.Out", "box_CLOController_46.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlaySound_v2_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_34
  l0.IopID = "LimpNudle"
  l0.IopEvent = "LimpNudle.Intro"
  l0 = self.box_PlaySound_v2_25
  l1 = self.box_AI_IOPController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|453694534", "453694534", "S08M010_IOP_Main", "box_PlaySound_v2_25.Out", "box_AI_IOPController_34.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Ordered_Output_110_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1017837871", "1017837871", "S08M010_IOP_Main", "box_Ordered_Output_110.Out", "box_HackableController_v2_55.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_110_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|76428", "76428", "S08M010_IOP_Main", "box_Ordered_Output_110.Out", "box_OnceOnly_v3_109.In", clone, l0)
  l0:In(0)
end
function export:f_box_CLOController_61_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_61
  self.Horatio = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Horatio
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|222112273"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_27_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_61
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1792467152", "1792467152", "S08M010_IOP_Main", "box_CLOController_61.OnUserInPlace", "box_CollisionController_27.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_PlaySound_v2_51_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LightController_16()
  l0 = self.box_PlaySound_v2_51
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1440168493", "1440168493", "S08M010_IOP_Main", "box_PlaySound_v2_51.Out", "box_LightController_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_15()
  l0 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1488180871", "1488180871", "S08M010_IOP_Main", "box_Simple_Node_95.Out", "box_OnceOnly_v3_15.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_106_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_30()
  l0 = self.box_Security_Camera_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|692798281", "692798281", "S08M010_IOP_Main", "box_Ordered_Output_106.Out", "box_Security_Camera_Monitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_105()
  l0 = self.box_Security_Camera_Monitor_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|883460053", "883460053", "S08M010_IOP_Main", "box_Ordered_Output_106.Out", "box_Security_Camera_Monitor_105.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SecurityCamController_1_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_54()
  l0 = self.box_Security_Camera_Monitor_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1957606125", "1957606125", "S08M010_IOP_Main", "box_SecurityCamController_1.CanExitSet", "box_Security_Camera_Monitor_54.Enable", clone, l0)
  l0:Enable()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|381871777", "381871777", "S08M010_IOP_Main", "box_SecurityCamController_1.EnterForced", "box_SecurityCamController_1.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_51
  l0.Entity = self.Lights_SoundEntity
  l0.SoundId = "soundbinary/4065522176.bnk"
  l0 = self.box_MultipleOR_48
  l1 = self.box_PlaySound_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|1260801674", "1260801674", "S08M010_IOP_Main", "box_MultipleOR_48.Out", "box_PlaySound_v2_51.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_HackableController_v2_23()
  local l0
  l0 = self.box_HackableController_v2_23
  l0.HackableEntity = self.Conference_Phone
end
function export:OnEnter_box_Multiple_AND_84()
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_HackableController_v2_2()
  local l0
  l0 = self.box_HackableController_v2_2
  l0.HackableEntity = self.Nudle_Toy
end
function export:OnEnter_box_OnceOnly_v3_102()
end
function export:OnEnter_box_MultipleOR_52()
end
function export:OnEnter_box_CLOController_21()
  local l0
  l0 = self.box_CLOController_21
  l0.CLO = "9223372048509353884"
  l0.User = self.Brody
end
function export:OnEnter_box_Security_Camera_Monitor_105()
  local l0
  l0 = self.box_Security_Camera_Monitor_105
  l0.CameraEntity = self.TV_Cam
end
function export:OnEnter_box_OnceOnly_v3_15()
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_HackableController_v2_90()
  local l0
  l0 = self.box_HackableController_v2_90
  l0.HackableEntity = self.Horatio
end
function export:OnEnter_box_Hackable_Monitor_50()
  local l0
  l0 = self.box_Hackable_Monitor_50
  l0.HackableEntity = self.Speaker_Hack
end
function export:OnEnter_box_Security_Camera_Monitor_30()
  local l0
  l0 = self.box_Security_Camera_Monitor_30
  l0.CameraEntity = self.Camera
end
function export:OnEnter_box_LookAtTriggerMonitor_Monitor_10()
  local l0
  l0 = self.box_LookAtTriggerMonitor_Monitor_10
  l0.Trigger = "9223372058438550650"
end
function export:OnEnter_box_Multiple_AND_59()
end
function export:OnEnter_box_CLOController_69()
  local l0
  l0 = self.box_CLOController_69
  l0.CLO = "9223372048509353876"
  l0.User = self.HR
end
function export:OnEnter_box_Security_Camera_Monitor_54()
  local l0
  l0 = self.box_Security_Camera_Monitor_54
  l0.CameraEntity = self.Camera
end
function export:OnEnter_box_Multiple_AND_78()
end
function export:OnEnter_box_Hackable_Monitor_68()
  local l0
  l0 = self.box_Hackable_Monitor_68
  l0.HackableEntity = self.Conference_Phone
end
function export:OnEnter_box_HackableController_v2_55()
  local l0
  l0 = self.box_HackableController_v2_55
  l0.HackableEntity = self.Light_Hack
end
function export:OnEnter_box_Hackable_Monitor_20()
  local l0
  l0 = self.box_Hackable_Monitor_20
  l0.HackableEntity = self.Nudle_Toy
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_Hackable_Monitor_3()
  local l0
  l0 = self.box_Hackable_Monitor_3
  l0.HackableEntity = self.Light_Hack
end
function export:OnEnter_box_CLOController_67()
  local l0
  l0 = self.box_CLOController_67
  l0.CLO = "9223372048509353883"
  l0.User = self.Horatio
end
function export:OnEnter_box_HackableController_v2_24()
  local l0
  l0 = self.box_HackableController_v2_24
  l0.HackableEntity = self.Speaker_Hack
end
function export:OnEnter_box_LightController_16()
  local l0
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = self.Light_On_Off
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2085911929"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_SecurityCamController_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010_IOP.domino|@S08M010_IOP_Main|2115961638"
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
function export:OnEnter_box_MultipleOR_48()
end
function export:Out()
end
function export:IOP_Loaded()
end
_compilerVersion = 4
