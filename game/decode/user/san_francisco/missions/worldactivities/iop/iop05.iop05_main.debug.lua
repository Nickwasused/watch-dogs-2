export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/IOPPropController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader_SoundID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2777267105.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3078544213.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3834351821.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3750256370.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/956491873.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2360353049.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/219946856.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1034427775.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2348956892.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4221736248.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3708793768.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3805494361.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3023493147.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3728838874.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP05_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.NPCCharacters = {}
  self.Neighbor = nil
  self.HornList = {}
  self.BlockStage1RemSmoke = 0
  self.RolesList = {
    "GarageSuicide.John",
    "GarageSuicide.Neighbor"
  }
  self.Horn = "soundbinary/3834351821.bnk"
  self.SendDoorEvents = 0
  self.PhoneHacked = 0
  self.IgnitionHacked = 0
  self.VentilationHacked = 0
  self.HornDisabled = 0
  self.VentHacks = 8
  self.GuyDies = 0
  self.SecurityCameraList = {}
  self.box_SetBoolean_v2_66 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_66
  l0._graph = self
  l0._name = "box_SetBoolean_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|41542367"
  l0.Out = self.f_box_SetBoolean_v2_66_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_66_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_66_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_66_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_66_SetFromBool
  self.box_Timer_v2_104 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_104
  l0._graph = self
  l0._name = "box_Timer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|59935243"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_104_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_156 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_156
  l0._graph = self
  l0._name = "box_Timer_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|80977431"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_156_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|86818551"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|100252628"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_44_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_172 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_172
  l0._graph = self
  l0._name = "box_Timer_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|111612191"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_172_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_110 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_110
  l0._graph = self
  l0._name = "box_SetBoolean_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|120301835"
  l0.Out = self.f_box_SetBoolean_v2_110_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_110_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_110_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_110_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_110_SetFromBool
  self.box_PlaySound_v2_169 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_169
  l0._graph = self
  l0._name = "box_PlaySound_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|125667236"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_93 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_93
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|127693077"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_93_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_93_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_IOPMonitor_64 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_64
  l0._graph = self
  l0._name = "box_IOPMonitor_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|132231305"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_64_EventOccurred
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_135 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_135
  l0._graph = self
  l0._name = "box_SetBoolean_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|140683092"
  l0.Out = self.f_box_SetBoolean_v2_135_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_135_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_135_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_135_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_135_SetFromBool
  self.box_IOPMonitor_10 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_10
  l0._graph = self
  l0._name = "box_IOPMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|146184501"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_10_EventOccurred
  l0.Out = DummyFunction
  self.box_IOP_CleanUp_20 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_20
  l0._graph = self
  l0._name = "box_IOP_CleanUp_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|154928534"
  l0.Completed = self.f_box_IOP_CleanUp_20_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_20_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|162180688"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_47_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_ListWriter_182 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_182
  l0._graph = self
  l0._name = "box_ListWriter_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|201064812"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_182_Added
  l0.Removed = self.f_box_ListWriter_182_Removed
  l0.Out = self.f_box_ListWriter_182_Out
  self.box_SetBoolean_v2_132 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_132
  l0._graph = self
  l0._name = "box_SetBoolean_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|206563475"
  l0.Out = self.f_box_SetBoolean_v2_132_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_132_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_132_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_132_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_132_SetFromBool
  self.box_Hackable_Monitor_2 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_2
  l0._graph = self
  l0._name = "box_Hackable_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|232613169"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_2_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_14 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_14
  l0._graph = self
  l0._name = "box_Hackable_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|235485686"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_14_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_125 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_125
  l0._graph = self
  l0._name = "box_HackableController_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|247288976"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_125_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|270554737"
  l0.Out = self.f_box_PlaySound_v2_108_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriterSoundID_91 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_91
  l0._graph = self
  l0._name = "box_ListWriterSoundID_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|301968663"
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_box_ListWriterSoundID_91_Added
  l0.Removed = self.f_box_ListWriterSoundID_91_Removed
  l0.Out = self.f_box_ListWriterSoundID_91_Out
  self.box_AI_IOPController_95 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_95
  l0._graph = self
  l0._name = "box_AI_IOPController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|331556912"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_ListWriter_17 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_17
  l0._graph = self
  l0._name = "box_ListWriter_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|360094011"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_17_Added
  l0.Removed = self.f_box_ListWriter_17_Removed
  l0.Out = self.f_box_ListWriter_17_Out
  self.box_AI_IOP_Prop_Controller_23 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_23
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|465050040"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_23_Out
  self.box_SetBoolean_v2_154 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_154
  l0._graph = self
  l0._name = "box_SetBoolean_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|487303084"
  l0.Out = self.f_box_SetBoolean_v2_154_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_154_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_154_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_154_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_154_SetFromBool
  self.box_IOPPropMonitor_180 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_180
  l0._graph = self
  l0._name = "box_IOPPropMonitor_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|498669367"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_180_PropSpawned
  self.box_IOPMonitor_60 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_60
  l0._graph = self
  l0._name = "box_IOPMonitor_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|517927814"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_60_EventOccurred
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_114 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_114
  l0._graph = self
  l0._name = "box_SetBoolean_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|557359473"
  l0.Out = self.f_box_SetBoolean_v2_114_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_114_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_114_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_114_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_114_SetFromBool
  self.box_MultipleOR_101 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_101
  l0._graph = self
  l0._name = "box_MultipleOR_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|564253649"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_101_Out
  self.box_CLOController_45 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_45
  l0._graph = self
  l0._name = "box_CLOController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|587328702"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_130 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_130
  l0._graph = self
  l0._name = "box_MultipleOR_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|597385941"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_130_Out
  self.box_SetBoolean_v2_115 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_115
  l0._graph = self
  l0._name = "box_SetBoolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|628792530"
  l0.Out = self.f_box_SetBoolean_v2_115_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_115_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_115_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_115_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_115_SetFromBool
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|648618778"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_HackableController_v2_88 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_88
  l0._graph = self
  l0._name = "box_HackableController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|690006679"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_88_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_140 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_140
  l0._graph = self
  l0._name = "box_SetBoolean_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|696693231"
  l0.Out = self.f_box_SetBoolean_v2_140_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_140_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_140_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_140_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_140_SetFromBool
  self.box_Hackable_Monitor_96 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_96
  l0._graph = self
  l0._name = "box_Hackable_Monitor_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|704008939"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_96_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Security_Camera_Monitor_36 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_36
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|738861096"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_36_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_36_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CLOController_52 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_52
  l0._graph = self
  l0._name = "box_CLOController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|743437810"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_52_OnUserInPlace
  self.box_SetBoolean_v2_77 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_77
  l0._graph = self
  l0._name = "box_SetBoolean_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|747025181"
  l0.Out = self.f_box_SetBoolean_v2_77_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_77_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_77_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_77_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_77_SetFromBool
  self.box_Security_Camera_Monitor_46 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_46
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|828497764"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_46_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_46_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CinematicPrep_18 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_18
  l0._graph = self
  l0._name = "box_CinematicPrep_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|839867080"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_65 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_65
  l0._graph = self
  l0._name = "box_HackableController_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|877000691"
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
  self.box_CLOController_38 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_38
  l0._graph = self
  l0._name = "box_CLOController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|879775056"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_38_OnUserInPlace
  self.box_Security_Camera_Monitor_85 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_85
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|904772454"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_85_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_85_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_PlaySound_v2_49 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_49
  l0._graph = self
  l0._name = "box_PlaySound_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|933636448"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_146 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_146
  l0._graph = self
  l0._name = "box_PlaySound_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|935587201"
  l0.Out = self.f_box_PlaySound_v2_146_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_59 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_59
  l0._graph = self
  l0._name = "box_PlaySound_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|954898427"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_170 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_170
  l0._graph = self
  l0._name = "box_Timer_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1162527338"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_170_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_32 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_32
  l0._graph = self
  l0._name = "box_HackableController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1169992798"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_32_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionController_v4_80 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_80
  l0._graph = self
  l0._name = "box_MissionController_v4_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1263840842"
  self.box_MultipleOR_177 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_177
  l0._graph = self
  l0._name = "box_MultipleOR_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1273122588"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_177_Out
  self.box_IOPMonitor_143 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_143
  l0._graph = self
  l0._name = "box_IOPMonitor_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1280701039"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_143_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_123 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_123
  l0._graph = self
  l0._name = "box_HackableController_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1312553071"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_123_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_92 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_92
  l0._graph = self
  l0._name = "box_HackableController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1313671500"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_99 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_99
  l0._graph = self
  l0._name = "box_Timer_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1326699395"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_137 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_137
  l0._graph = self
  l0._name = "box_SetBoolean_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1368980355"
  l0.Out = self.f_box_SetBoolean_v2_137_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_137_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_137_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_137_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_137_SetFromBool
  self.box_AI_IOPController_94 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_94
  l0._graph = self
  l0._name = "box_AI_IOPController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1375261358"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_94_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1399335154"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Security_Camera_Monitor_63 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_63
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1408335689"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_63_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_63_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_PlayDialogOnSoundPoint_43 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_43
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1436841742"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_144 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_144
  l0._graph = self
  l0._name = "box_PlaySound_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1472969731"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_126 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_126
  l0._graph = self
  l0._name = "box_HackableController_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1487942633"
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
  self.box_Timer_v2_183 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_183
  l0._graph = self
  l0._name = "box_Timer_v2_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1500109225"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_183_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_21 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1519971405"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1533189989"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_33_Finished
  self.box_SetBoolean_v2_109 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_109
  l0._graph = self
  l0._name = "box_SetBoolean_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1539546688"
  l0.Out = self.f_box_SetBoolean_v2_109_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_109_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_109_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_109_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_109_SetFromBool
  self.box_IOPMonitor_70 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_70
  l0._graph = self
  l0._name = "box_IOPMonitor_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1541453503"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_106 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_106
  l0._graph = self
  l0._name = "box_MultipleOR_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1557643712"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_106_Out
  self.box_IOPMonitor_6 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_6
  l0._graph = self
  l0._name = "box_IOPMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1605451442"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_6_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_34 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_34
  l0._graph = self
  l0._name = "box_HackableController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1616495157"
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
  self.box_HackableController_v2_128 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_128
  l0._graph = self
  l0._name = "box_HackableController_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1652822961"
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
  self.box_IOP_StartUp_40 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_40
  l0._graph = self
  l0._name = "box_IOP_StartUp_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1653816004"
  l0.Out = self.f_box_IOP_StartUp_40_Out
  self.box_PlaySound_v2_84 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_84
  l0._graph = self
  l0._name = "box_PlaySound_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1714547167"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_105 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_105
  l0._graph = self
  l0._name = "box_AI_IOPController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1730209873"
  l0.Out = self.f_box_AI_IOPController_105_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1745011486"
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
  self.box_HackableController_v2_113 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_113
  l0._graph = self
  l0._name = "box_HackableController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1758657593"
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
  self.box_HackableController_v2_131 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_131
  l0._graph = self
  l0._name = "box_HackableController_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1767802019"
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
  self.box_SetBoolean_v2_133 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_133
  l0._graph = self
  l0._name = "box_SetBoolean_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1823380104"
  l0.Out = self.f_box_SetBoolean_v2_133_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_133_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_133_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_133_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_133_SetFromBool
  self.box_Hackable_Monitor_124 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_124
  l0._graph = self
  l0._name = "box_Hackable_Monitor_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1828600669"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_124_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_127 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_127
  l0._graph = self
  l0._name = "box_HackableController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1842793287"
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
  self.box_SetBoolean_v2_37 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_37
  l0._graph = self
  l0._name = "box_SetBoolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1884014253"
  l0.Out = self.f_box_SetBoolean_v2_37_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_37_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_37_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_37_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_37_SetFromBool
  self.box_HackableController_v2_73 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_73
  l0._graph = self
  l0._name = "box_HackableController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1921742745"
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
  self.box_SetBoolean_v2_134 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_134
  l0._graph = self
  l0._name = "box_SetBoolean_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1941535198"
  l0.Out = self.f_box_SetBoolean_v2_134_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_134_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_134_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_134_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_134_SetFromBool
  self.box_Timer_v2_176 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_176
  l0._graph = self
  l0._name = "box_Timer_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1992835445"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_176_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_138 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_138
  l0._graph = self
  l0._name = "box_MissionLayer_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1999757730"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_138_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2047057662"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_ListReaderSoundID_81 = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self.box_ListReaderSoundID_81
  l0._graph = self
  l0._name = "box_ListReaderSoundID_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2049335847"
  l0.Out = self.f_box_ListReaderSoundID_81_Out
  l0.EndOfList = self.f_box_ListReaderSoundID_81_EndOfList
  self.box_IOPMonitor_9 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_9
  l0._graph = self
  l0._name = "box_IOPMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2055999480"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2062605430"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_55 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_55
  l0._graph = self
  l0._name = "box_AI_IOPController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2143448172"
  l0.Out = self.f_box_AI_IOPController_55_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
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
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1148852800", "1148852800", "IOP05_Main", "CheckPoint_0", "box_MultipleOR_35.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1067774815", "1067774815", "IOP05_Main", "In", "box_MultipleOR_35.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1560640851"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0.Out[2] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1230512447", "1230512447", "IOP05_Main", "box_Ordered_Output_100.Out", "box_Ordered_Output_54.In", clone, l0)
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
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|996262051", "996262051", "IOP05_Main", "box_Ordered_Output_100.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_SetBoolean_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.SendDoorEvents = l0.Target
  l0 = self.box_IOPMonitor_60
  l0.MonitoredEvent = "GarageSuicide.ToggleOpenDoorChance"
  l0 = self.box_SetBoolean_v2_66
  l1 = self.box_IOPMonitor_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1520059451", "1520059451", "IOP05_Main", "box_SetBoolean_v2_66.Out", "box_IOPMonitor_60.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_66_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_66_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.SendDoorEvents = l0.Target
end
function export:f_box_Timer_v2_104_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_106()
  l0 = self.box_Timer_v2_104
  l1 = self.box_MultipleOR_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1456254144", "1456254144", "IOP05_Main", "box_Timer_v2_104.Stopped", "box_MultipleOR_106.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_104_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_Timer_v2_104
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1692278625", "1692278625", "IOP05_Main", "box_Timer_v2_104.TimeElapsed", "box_MultipleOR_177.Input", l0, l1)
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
  l0 = self.box_Timer_v2_183
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1548687503", "1548687503", "IOP05_Main", "box_Ordered_Output_53.Out", "box_Timer_v2_183.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2105915574"
  l0._DynamicAnchors = {Out = 13}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_box_Ordered_Output_68_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_68_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_68_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_68_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_68_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_68_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_68_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_68_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_68_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_68_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_68_Out_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1117496832", "1117496832", "IOP05_Main", "box_Ordered_Output_53.Out", "box_Ordered_Output_68.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_156_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_88()
  l0 = self.box_Timer_v2_156
  l1 = self.box_HackableController_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|36183780", "36183780", "IOP05_Main", "box_Timer_v2_156.TimeElapsed", "box_HackableController_v2_88.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_124
  l0.HackableEntity = "9223372062359598007"
  l0.AutoDisable = 1
  l0 = self.box_Timer_v2_72
  l1 = self.box_Hackable_Monitor_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|631494876", "631494876", "IOP05_Main", "box_Timer_v2_72.TimeElapsed", "box_Hackable_Monitor_124.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_44_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_45
  l0.CLO = "9223372046411245347"
  l0 = self.box_CLOController_44
  l1 = self.box_CLOController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|501271531", "501271531", "IOP05_Main", "box_CLOController_44.UnspawnedUser", "box_CLOController_45.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_172_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060145351298"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|765827270"
  l0.Started = self.f_box_ParticleFXController_v2_171_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_172
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2067640647", "2067640647", "IOP05_Main", "box_Timer_v2_172.TimeElapsed", "box_ParticleFXController_v2_171.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_110
  self.PhoneHacked = l0.Target
  l1 = self.box_SetBoolean_v2_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1109126731", "1109126731", "IOP05_Main", "box_SetBoolean_v2_110.Out", "box_SetBoolean_v2_114.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_110_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_110
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_110_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_110
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_110_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_110
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_110_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_110
  self.PhoneHacked = l0.Target
end
function export:f_box_Security_Camera_Monitor_93_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|292926209"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0 = self.box_Security_Camera_Monitor_93
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1003294913", "1003294913", "IOP05_Main", "box_Security_Camera_Monitor_93.OnStartAccessCamera", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_93_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|827542978"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_Security_Camera_Monitor_93
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1470016718", "1470016718", "IOP05_Main", "box_Security_Camera_Monitor_93.OnStartExitCamera", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_64_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_59
  l0.Entity = "9223372062359598005"
  l0.SoundId = "soundbinary/1034427775.bnk"
  l0 = self.box_IOPMonitor_64
  l1 = self.box_PlaySound_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2114239724", "2114239724", "IOP05_Main", "box_IOPMonitor_64.EventOccurred", "box_PlaySound_v2_59.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_135_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_135
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_135_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_135
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_135_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_135
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_135_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_135
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_135_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_135
  self.HornDisabled = l0.Target
end
function export:f_box_IOPMonitor_10_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046909676676"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|886957747"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_57_Out
  l0 = self.box_IOPMonitor_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|514911553", "514911553", "IOP05_Main", "box_IOPMonitor_10.EventOccurred", "box_VisibilityController_v2_57.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_IOP_CleanUp_20_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_138
  l0.LayerName = "IOP05_Main"
  l0 = self.box_IOP_CleanUp_20
  l1 = self.box_MissionLayer_v2_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1339390612", "1339390612", "IOP05_Main", "box_IOP_CleanUp_20.Completed", "box_MissionLayer_v2_138.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_IOP_CleanUp_20_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1158081467"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0 = self.box_IOP_CleanUp_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1140743754", "1140743754", "IOP05_Main", "box_IOP_CleanUp_20.DisconnectedAnimationPlayed", "box_Ordered_Output_26.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_47_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_12
  l0.CLO = "9223372046411245346"
  l0 = self.box_CLOController_47
  l1 = self.box_CLOController_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|773221205", "773221205", "IOP05_Main", "box_CLOController_47.UnspawnedUser", "box_CLOController_12.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ListWriter_182_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_182
  self.SecurityCameraList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|977717179"
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_4_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_4_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_4_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_4_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_4_Out_7
  l0.Out[8] = DummyFunction
  l0.Out[9] = self.f_box_Ordered_Output_4_Out_9
  l0 = self.box_ListWriter_182
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1314597757", "1314597757", "IOP05_Main", "box_ListWriter_182.Added", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_182_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_182
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_182_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_182
  self.SecurityCameraList = l0.Target
end
function export:f_box_SetBoolean_v2_132_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_132
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_132_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_132
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_132_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_132
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_132_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_132
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_132_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_132
  self.VentilationHacked = l0.Target
end
function export:f_box_Bind_v2_179_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_180
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = 0
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_178"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|398504148"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1207394237", "1207394237", "IOP05_Main", "box_Bind_v2_179.Out", "box_VisibilityController_v2_178.Hide", clone, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|481521098", "481521098", "IOP05_Main", "box_VisibilityController_v2_152.Out", "box_SetBoolean_v2_154.False", clone, l0)
  l0:False()
end
function export:f_box_Hackable_Monitor_2_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_88()
  l0 = self.box_Hackable_Monitor_2
  l1 = self.box_HackableController_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|218088927", "218088927", "IOP05_Main", "box_Hackable_Monitor_2.HackSuccess", "box_HackableController_v2_88.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_14_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|576842736"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_102_Out_2
  l0 = self.box_Hackable_Monitor_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1079149346", "1079149346", "IOP05_Main", "box_Hackable_Monitor_14.HackSuccess", "box_Ordered_Output_102.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_125_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047388999903"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1291834825"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_69_Out
  l0 = self.box_HackableController_v2_125
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|766509065", "766509065", "IOP05_Main", "box_HackableController_v2_125.Disabled", "box_MoveableEntityController_69.Move", l0, l1)
  l1:Move()
end
function export:f_box_PlaySound_v2_108_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_108
  l1 = self.box_Timer_v2_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1503683112", "1503683112", "IOP05_Main", "box_PlaySound_v2_108.Out", "box_Timer_v2_170.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PhoneHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1167899877"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_111_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|763716696", "763716696", "IOP05_Main", "box_Ordered_Output_74.Out", "box_Compare_Boolean_v2_111.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriterSoundID_91_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_91
  self.HornList = l0.Target
  l0 = self.box_ListReaderSoundID_81
  l0.Input = self.HornList
  l0 = self.box_ListWriterSoundID_91
  l1 = self.box_ListReaderSoundID_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1834437521", "1834437521", "IOP05_Main", "box_ListWriterSoundID_91.Added", "box_ListReaderSoundID_81.Read", l0, l1)
  l1:Read()
end
function export:f_box_ListWriterSoundID_91_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_91
  self.HornList = l0.Target
end
function export:f_box_ListWriterSoundID_91_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_91
  self.HornList = l0.Target
end
function export:f_box_ListWriter_17_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_17
  self.NPCCharacters = l0.Target
  l0 = self.box_AI_IOPController_94
  l0.IopID = "GarageSuicide"
  l0.PlayerEntity = self.PlayerEntity
  l0.IopRole = "GarageSuicide.John"
  l0.NpcEntityList = self.NPCCharacters
  l0.IopRoleList = self.RolesList
  l0.OffscreenDialogPoint = "9223372046411330288"
  l0 = self.box_ListWriter_17
  l1 = self.box_AI_IOPController_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1740878316", "1740878316", "IOP05_Main", "box_ListWriter_17.Added", "box_AI_IOPController_94.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_17
  self.NPCCharacters = l0.Target
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372046411245317"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|223933487"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_152_Out
  l0 = self.box_ListWriter_17
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|206257967", "206257967", "IOP05_Main", "box_ListWriter_17.Out", "box_VisibilityController_v2_152.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListWriter_17_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_17
  self.NPCCharacters = l0.Target
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_33
  l0.Entity = "9223372046411245339"
  l0.SoundId = "soundbinary/2777267105.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2045396483", "2045396483", "IOP05_Main", "box_Ordered_Output_103.Out", "box_PlaySound_v2_33.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetInteger_v2_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.VentHacks = l0.Target
end
function export:f_box_ParticleFXController_v2_39_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|36219080", "36219080", "IOP05_Main", "box_ParticleFXController_v2_39.Started", "box_SetBoolean_v2_110.False", clone, l0)
  l0:False()
end
function export:f_box_AI_IOP_Prop_Controller_23_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_84
  l0.Entity = "9223372046411330288"
  l0.SoundId = "soundbinary/3750256370.bnk"
  l0 = self.box_AI_IOP_Prop_Controller_23
  l1 = self.box_PlaySound_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|681694204", "681694204", "IOP05_Main", "box_AI_IOP_Prop_Controller_23.Out", "box_PlaySound_v2_84.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_154_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_154
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_154_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_154
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_154_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_154
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_154_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_154
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_154_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_154
  self.GuyDies = l0.Target
end
function export:f_box_IOPPropMonitor_180_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_180
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372046411398857"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_179"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|213926325"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = self.f_box_Bind_v2_179_Out
  l0 = self.box_IOPPropMonitor_180
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1571784652", "1571784652", "IOP05_Main", "box_IOPPropMonitor_180.PropSpawned", "box_Bind_v2_179.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_IOPMonitor_60_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  l0.Bool = self.SendDoorEvents
  l0 = self.box_IOPMonitor_60
  l1 = self.box_SetBoolean_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|675454129", "675454129", "IOP05_Main", "box_IOPMonitor_60.EventOccurred", "box_SetBoolean_v2_37.Toggle", l0, l1)
  l1:Toggle()
end
function export:f_box_SetBoolean_v2_114_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_114
  self.IgnitionHacked = l0.Target
  l1 = self.box_SetBoolean_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1979451448", "1979451448", "IOP05_Main", "box_SetBoolean_v2_114.Out", "box_SetBoolean_v2_115.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_114_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_114
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_114_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_114
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_114_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_114
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_114_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_114
  self.IgnitionHacked = l0.Target
end
function export:f_box_MultipleOR_101_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_104()
  l0 = self.box_MultipleOR_101
  l1 = self.box_Timer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1508808970", "1508808970", "IOP05_Main", "box_MultipleOR_101.Out", "box_Timer_v2_104.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_101()
  l0 = self.box_MultipleOR_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1586078617", "1586078617", "IOP05_Main", "box_Ordered_Output_102.Out", "box_MultipleOR_101.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_43
  l0.Entity = "9223372046411368364"
  l0.SoundId = "soundbinary/956491873.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1501451129", "1501451129", "IOP05_Main", "box_Ordered_Output_102.Out", "box_PlayDialogOnSoundPoint_43.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_102_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_109
  l0.Bool = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1463128405", "1463128405", "IOP05_Main", "box_Ordered_Output_102.Out", "box_SetBoolean_v2_109.True", clone, l0)
  l0:True()
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|597599460"
  l0._DynamicAnchors = {Out = 9}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_129_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_box_Ordered_Output_129_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_129_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_129_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_129_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_129_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_129_Out_8
  l0 = self.box_MultipleOR_130
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1089250976", "1089250976", "IOP05_Main", "box_MultipleOR_130.Out", "box_Ordered_Output_129.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_126
  l0.HackableEntity = "9223372062359598005"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|678330519", "678330519", "IOP05_Main", "box_Ordered_Output_129.Out", "box_HackableController_v2_126.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_129_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_127
  l0.HackableEntity = "9223372062359598003"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1492263682", "1492263682", "IOP05_Main", "box_Ordered_Output_129.Out", "box_HackableController_v2_127.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_129_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_128
  l0.HackableEntity = "9223372062359598007"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|411895264", "411895264", "IOP05_Main", "box_Ordered_Output_129.Out", "box_HackableController_v2_128.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_129_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_131
  l0.HackableEntity = "9223372046411398857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1899041300", "1899041300", "IOP05_Main", "box_Ordered_Output_129.Out", "box_HackableController_v2_131.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_129_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2035317104", "2035317104", "IOP05_Main", "box_Ordered_Output_129.Out", "box_SetBoolean_v2_132.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_129_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|669418067", "669418067", "IOP05_Main", "box_Ordered_Output_129.Out", "box_SetBoolean_v2_134.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_129_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|8903045", "8903045", "IOP05_Main", "box_Ordered_Output_129.Out", "box_SetBoolean_v2_133.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_129_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|789968097", "789968097", "IOP05_Main", "box_Ordered_Output_129.Out", "box_SetBoolean_v2_137.True", clone, l0)
  l0:True()
end
function export:f_box_SetBoolean_v2_115_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.VentilationHacked = l0.Target
  l1 = self.box_SetBoolean_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1412508969", "1412508969", "IOP05_Main", "box_SetBoolean_v2_115.Out", "box_SetBoolean_v2_135.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_115_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.VentilationHacked = l0.Target
end
function export:f_box_SetBoolean_v2_115_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.VentilationHacked = l0.Target
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1185599052"
  l0.Out = self.f_box_Get_Player_ID_41_Out
  l0 = self.box_MultipleOR_35
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|928435131", "928435131", "IOP05_Main", "box_MultipleOR_35.Out", "box_Get_Player_ID_41.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|413923397"
  l0.Out = self.f_box_SetInteger_v2_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|601018679", "601018679", "IOP05_Main", "box_CollisionController_67.Out", "box_SetInteger_v2_11.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_HackableController_v2_88_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2002477928"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_184_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_184_Out_1
  l0 = self.box_HackableController_v2_88
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1144765162", "1144765162", "IOP05_Main", "box_HackableController_v2_88.Disabled", "box_Ordered_Output_184.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_140_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_140
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_140_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_140
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_140_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_140
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_140_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_140
  self.GuyDies = l0.Target
end
function export:f_box_SetBoolean_v2_140_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_140
  self.GuyDies = l0.Target
end
function export:f_box_Hackable_Monitor_96_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|374854590"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_Hackable_Monitor_96
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1884421530", "1884421530", "IOP05_Main", "box_Hackable_Monitor_96.HackSuccess", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_117_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1804191739", "1804191739", "IOP05_Main", "box_Compare_Boolean_v2_117.A_is_False", "box_HackableController_v2_7.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Security_Camera_Monitor_36_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1943143504"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0 = self.box_Security_Camera_Monitor_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1628471395", "1628471395", "IOP05_Main", "box_Security_Camera_Monitor_36.OnStartAccessCamera", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_36_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|982786854"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_Security_Camera_Monitor_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1107560028", "1107560028", "IOP05_Main", "box_Security_Camera_Monitor_36.OnStartExitCamera", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_52_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_52
  self.MainCharacter = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1697138597"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_181_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_181_Out_1
  l0 = self.box_CLOController_52
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1036512503", "1036512503", "IOP05_Main", "box_CLOController_52.OnUserInPlace", "box_Ordered_Output_181.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_77
  self.BlockStage1RemSmoke = l0.Target
  l0 = self.box_ListWriter_21
  l0.Input = self.Cameras
  l0.Data[0] = "9223372047346295135"
  l0.Data[1] = "9223372047346295132"
  l0.Data[2] = "9223372047259739537"
  l0 = self.box_SetBoolean_v2_77
  l1 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|505182125", "505182125", "IOP05_Main", "box_SetBoolean_v2_77.Out", "box_ListWriter_21.Add", l0, l1)
  l1:Add()
end
function export:f_box_SetBoolean_v2_77_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_77
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_box_SetBoolean_v2_77_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_77
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_box_SetBoolean_v2_77_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_77
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_box_SetBoolean_v2_77_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_77
  self.BlockStage1RemSmoke = l0.Target
end
function export:f_box_ParticleFXController_v2_171_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372066890091114"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1832418882"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1098238958", "1098238958", "IOP05_Main", "box_ParticleFXController_v2_171.Started", "box_ParticleFXController_v2_173.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_136_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_73()
  l0 = self.box_HackableController_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|225537500", "225537500", "IOP05_Main", "box_Compare_Boolean_v2_136.A_is_False", "box_HackableController_v2_73.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_65()
  l0 = self.box_HackableController_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1114825198", "1114825198", "IOP05_Main", "box_Ordered_Output_31.Out", "box_HackableController_v2_65.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Security_Camera_Monitor_46_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HornDisabled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|814486828"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_136_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Security_Camera_Monitor_46
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|908725089", "908725089", "IOP05_Main", "box_Security_Camera_Monitor_46.OnStartAccessCamera", "box_Compare_Boolean_v2_136.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_46_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_73()
  l0 = self.box_Security_Camera_Monitor_46
  l1 = self.box_HackableController_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1592512429", "1592512429", "IOP05_Main", "box_Security_Camera_Monitor_46.OnStartExitCamera", "box_HackableController_v2_73.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_38_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  self.Neighbor = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Neighbor
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1756448433"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_48_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_38
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2057947953", "2057947953", "IOP05_Main", "box_CLOController_38.OnUserInPlace", "box_CollisionController_48.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_VisibilityController_v2_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_113
  l0.HackableEntity = "9223372046411398857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|294429962", "294429962", "IOP05_Main", "box_VisibilityController_v2_57.Out", "box_HackableController_v2_113.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Security_Camera_Monitor_85_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_58()
  l0 = self.box_Security_Camera_Monitor_85
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|406035640", "406035640", "IOP05_Main", "box_Security_Camera_Monitor_85.OnStartAccessCamera", "box_VisibilityController_v2_58.Show", l0, l1)
  l1:Show()
end
function export:f_box_Security_Camera_Monitor_85_OnStartExitCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_58()
  l0 = self.box_Security_Camera_Monitor_85
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|766623836", "766623836", "IOP05_Main", "box_Security_Camera_Monitor_85.OnStartExitCamera", "box_VisibilityController_v2_58.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PlaySound_v2_146_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_146
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|927197556", "927197556", "IOP05_Main", "box_PlaySound_v2_146.Out", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_CollisionController_75_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_17
  l0.Input = self.NPCCharacters
  l0.Data[0] = self.MainCharacter
  l0.Data[1] = self.Neighbor
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|658451426", "658451426", "IOP05_Main", "box_CollisionController_75.CollisionsDisabled", "box_ListWriter_17.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_99
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2143181469", "2143181469", "IOP05_Main", "box_Ordered_Output_4.Out", "box_Timer_v2_99.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245335"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|422373476"
  l0.Started = self.f_box_ParticleFXController_v2_39_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|90379992", "90379992", "IOP05_Main", "box_Ordered_Output_4.Out", "box_ParticleFXController_v2_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245333"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2126806291"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|317130453", "317130453", "IOP05_Main", "box_Ordered_Output_4.Out", "box_ParticleFXController_v2_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245321"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1761091212"
  l0.Started = self.f_box_ParticleFXController_v2_78_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2091926149", "2091926149", "IOP05_Main", "box_Ordered_Output_4.Out", "box_ParticleFXController_v2_78.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372046411245319"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|587473899"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2066026518", "2066026518", "IOP05_Main", "box_Ordered_Output_4.Out", "box_ParticleFXController_v2_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_4_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_10
  l0.MonitoredEvent = "GarageSuicide.HideGarageDoor"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|505153752", "505153752", "IOP05_Main", "box_Ordered_Output_4.Out", "box_IOPMonitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriterSoundID_91
  l0.Input = self.HornList
  l0.SoundID[0] = "soundbinary/4221736248.bnk"
  l0.SoundID[1] = "soundbinary/219946856.bnk"
  l0.SoundID[2] = "soundbinary/2348956892.bnk"
  l0.SoundID[3] = "soundbinary/3805494361.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1080657509", "1080657509", "IOP05_Main", "box_Ordered_Output_4.Out", "box_ListWriterSoundID_91.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_4_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372045064707467"
  l0.Collisionable = 0
  l0._graph = self
  l0._name = "box_CollisionController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|673226296"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_box_CollisionController_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|35020537", "35020537", "IOP05_Main", "box_Ordered_Output_4.Out", "box_CollisionController_67.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Ordered_Output_4_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1500018318", "1500018318", "IOP05_Main", "box_Ordered_Output_4.Out", "box_SetBoolean_v2_66.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.VentilationHacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|728700958"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_117_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1947367632", "1947367632", "IOP05_Main", "box_Ordered_Output_51.Out", "box_Compare_Boolean_v2_117.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_34()
  l0 = self.box_HackableController_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|661162695", "661162695", "IOP05_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_34.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Compare_Boolean_v2_175_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_176
  l0.Seconds = 20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1772395394", "1772395394", "IOP05_Main", "box_Compare_Boolean_v2_175.A_is_False", "box_Timer_v2_176.Start", clone, l0)
  l0:Start()
end
function export:f_box_MoveableEntityController_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_146
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/3728838874.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1303807266", "1303807266", "IOP05_Main", "box_MoveableEntityController_147.Out", "box_PlaySound_v2_146.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_47
  l0.User = self.MainCharacter
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1842087073", "1842087073", "IOP05_Main", "box_Ordered_Output_26.Out", "box_CLOController_47.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_44
  l0.User = self.Neighbor
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1620574741", "1620574741", "IOP05_Main", "box_Ordered_Output_26.Out", "box_CLOController_44.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Timer_v2_170_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1825686762"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_174_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_174_Out_1
  l0 = self.box_Timer_v2_170
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2025340880", "2025340880", "IOP05_Main", "box_Timer_v2_170.TimeElapsed", "box_Ordered_Output_174.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_142_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|976097539", "976097539", "IOP05_Main", "box_Ordered_Output_142.Out", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_142_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|225169461", "225169461", "IOP05_Main", "box_Ordered_Output_142.Out", "box_SetBoolean_v2_140.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_111_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_65()
  l0 = self.box_HackableController_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2030412205", "2030412205", "IOP05_Main", "box_Compare_Boolean_v2_111.A_is_False", "box_HackableController_v2_65.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_HackableController_v2_32_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_123
  l0.HackableEntity = "9223372047346295132"
  l0 = self.box_HackableController_v2_32
  l1 = self.box_HackableController_v2_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1225602626", "1225602626", "IOP05_Main", "box_HackableController_v2_32.Disabled", "box_HackableController_v2_123.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Get_Player_ID_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOP_StartUp_40
  l0.MainLayer = "IOP05_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372059425049658"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|132657856", "132657856", "IOP05_Main", "box_Get_Player_ID_41.Out", "box_IOP_StartUp_40.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_177_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_105
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.Timeout"
  l0 = self.box_MultipleOR_177
  l1 = self.box_AI_IOPController_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|54319684", "54319684", "IOP05_Main", "box_MultipleOR_177.Out", "box_AI_IOPController_105.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_IOPMonitor_143_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_144
  l0.Entity = "9223372062359598005"
  l0.SoundId = "soundbinary/3708793768.bnk"
  l0 = self.box_IOPMonitor_143
  l1 = self.box_PlaySound_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1050068725", "1050068725", "IOP05_Main", "box_IOPMonitor_143.EventOccurred", "box_PlaySound_v2_144.Play", l0, l1)
  l1:Play()
end
function export:f_box_MoveableEntityController_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_108
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/3078544213.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2033151796", "2033151796", "IOP05_Main", "box_MoveableEntityController_69.Out", "box_PlaySound_v2_108.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_123_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_92
  l0.HackableEntity = "9223372047259739537"
  l0 = self.box_HackableController_v2_123
  l1 = self.box_HackableController_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|471298479", "471298479", "IOP05_Main", "box_HackableController_v2_123.Disabled", "box_HackableController_v2_92.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_92_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_20
  l0.SecurityCameraList = self.SecurityCameraList
  l0 = self.box_HackableController_v2_92
  l1 = self.box_IOP_CleanUp_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|448297020", "448297020", "IOP05_Main", "box_HackableController_v2_92.Disabled", "box_IOP_CleanUp_20.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_99_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  l0.CLO = "9223372046411245347"
  l0 = self.box_Timer_v2_99
  l1 = self.box_CLOController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2128498551", "2128498551", "IOP05_Main", "box_Timer_v2_99.TimeElapsed", "box_CLOController_38.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetBoolean_v2_137_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_137_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HornDisabled = l0.Target
end
function export:f_box_SetBoolean_v2_137_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_137
  self.HornDisabled = l0.Target
end
function export:f_box_AI_IOPController_94_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_76
  l0.Seconds = 0.6
  l0 = self.box_AI_IOPController_94
  l1 = self.box_Timer_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|40106559", "40106559", "IOP05_Main", "box_AI_IOPController_94.StartCompleted", "box_Timer_v2_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047388999903"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1022820978"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_147_Out
  l0 = self.box_Hackable_Monitor_15
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1377624697", "1377624697", "IOP05_Main", "box_Hackable_Monitor_15.HackSuccess", "box_MoveableEntityController_147.Move", l0, l1)
  l1:Move()
end
function export:f_box_Security_Camera_Monitor_63_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|67552390"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_Security_Camera_Monitor_63
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|426153808", "426153808", "IOP05_Main", "box_Security_Camera_Monitor_63.Disabled", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_63_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_63()
  l0 = self.box_Security_Camera_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|872015439", "872015439", "IOP05_Main", "box_Security_Camera_Monitor_63.OnEndAccessCamera", "box_Security_Camera_Monitor_63.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AI_Agent_Zone_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_182
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372047346295132"
  l0.Data[1] = "9223372047346295135"
  l0.Data[2] = "9223372047259739537"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|777012365", "777012365", "IOP05_Main", "box_AI_Agent_Zone_8.Out", "box_ListWriter_182.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_183_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_18
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_183
  l1 = self.box_CinematicPrep_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2090238644", "2090238644", "IOP05_Main", "box_Timer_v2_183.TimeElapsed", "box_CinematicPrep_18.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ListWriter_21_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Cameras = l0.Target
end
function export:f_box_ListWriter_21_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Cameras = l0.Target
end
function export:f_box_ListWriter_21_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Cameras = l0.Target
end
function export:f_box_PlaySound_v2_33_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_95
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.HornHack"
  l0 = self.box_PlaySound_v2_33
  l1 = self.box_AI_IOPController_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|735474080", "735474080", "IOP05_Main", "box_PlaySound_v2_33.Finished", "box_AI_IOPController_95.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_SetBoolean_v2_109_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_109_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.PhoneHacked = l0.Target
end
function export:f_box_MultipleOR_106_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_104()
  l0 = self.box_MultipleOR_106
  l1 = self.box_Timer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|28653216", "28653216", "IOP05_Main", "box_MultipleOR_106.Out", "box_Timer_v2_104.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_55
  l0.IopID = "GarageSuicide"
  l0.IopEvent = "GarageSuicide.DoorHack"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|573314413", "573314413", "IOP05_Main", "box_Ordered_Output_54.Out", "box_AI_IOPController_55.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_2()
  l0 = self.box_Hackable_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|233589860", "233589860", "IOP05_Main", "box_Ordered_Output_54.Out", "box_Hackable_Monitor_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_IOPMonitor_6_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_32
  l0.HackableEntity = "9223372047346295135"
  l0 = self.box_IOPMonitor_6
  l1 = self.box_HackableController_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|673376137", "673376137", "IOP05_Main", "box_IOPMonitor_6.IOPComplete", "box_HackableController_v2_32.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOP_StartUp_40_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067303896615"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1420651525"
  l0.Out = self.f_box_AI_Agent_Zone_8_Out
  l0 = self.box_IOP_StartUp_40
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|649201060", "649201060", "IOP05_Main", "box_IOP_StartUp_40.Out", "box_AI_Agent_Zone_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ParticleFXController_v2_141_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|269461960", "269461960", "IOP05_Main", "box_ParticleFXController_v2_141.Started", "box_Timer_v2_172.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_181_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_180
  l0.PropName = "cell_phone_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|463850781", "463850781", "IOP05_Main", "box_Ordered_Output_181.Out", "box_IOPPropMonitor_180.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_181_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.MainCharacter
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|941929507"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_75_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1703171277", "1703171277", "IOP05_Main", "box_Ordered_Output_181.Out", "box_CollisionController_75.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_AI_IOPController_105_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1163369293"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_142_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_142_Out_1
  l0 = self.box_AI_IOPController_105
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1399300344", "1399300344", "IOP05_Main", "box_AI_IOPController_105.Out", "box_Ordered_Output_142.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_107_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_63()
  l0 = self.box_Security_Camera_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1926497525", "1926497525", "IOP05_Main", "box_SecurityCamController_107.CanExitSet", "box_Security_Camera_Monitor_63.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CollisionController_48_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_52
  l0.CLO = "9223372046411245346"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1972647001", "1972647001", "IOP05_Main", "box_CollisionController_48.CollisionsDisabled", "box_CLOController_52.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_ParticleFXController_v2_78_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1616596933", "1616596933", "IOP05_Main", "box_ParticleFXController_v2_78.Started", "box_SetBoolean_v2_77.False", clone, l0)
  l0:False()
end
function export:f_box_SetBoolean_v2_133_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_133
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_133_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_133
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_133_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_133
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_133_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_133
  self.PhoneHacked = l0.Target
end
function export:f_box_SetBoolean_v2_133_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_133
  self.PhoneHacked = l0.Target
end
function export:f_box_Ordered_Output_174_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060145351298"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1657315591"
  l0.Started = self.f_box_ParticleFXController_v2_141_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|867887080", "867887080", "IOP05_Main", "box_Ordered_Output_174.Out", "box_ParticleFXController_v2_141.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_174_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_169
  l0.Entity = "9223372046411245317"
  l0.SoundId = "soundbinary/2360353049.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1649751384", "1649751384", "IOP05_Main", "box_Ordered_Output_174.Out", "box_PlaySound_v2_169.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_124_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_125
  l0.HackableEntity = "9223372062359598007"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_124
  l1 = self.box_HackableController_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|404080492", "404080492", "IOP05_Main", "box_Hackable_Monitor_124.HackSuccess", "box_HackableController_v2_125.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SecurityCamController_5_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.Cameras
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1735074546"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_107_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|439244140", "439244140", "IOP05_Main", "box_SecurityCamController_5.EnterForced", "box_SecurityCamController_107.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_SetBoolean_v2_37_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.SendDoorEvents = l0.Target
end
function export:f_box_SetBoolean_v2_37_Toggled()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.SendDoorEvents = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SendDoorEvents
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|999761759"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_175_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_37
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1150520595", "1150520595", "IOP05_Main", "box_SetBoolean_v2_37.Toggled", "box_Compare_Boolean_v2_175.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_50_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOP_Prop_Controller_23
  l0.StateIndex = 0
  l0.PropEntity = "9223372046909676676"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1569642809", "1569642809", "IOP05_Main", "box_Compare_Boolean_v2_50.A_is_False", "box_AI_IOP_Prop_Controller_23.SetStateIndex", clone, l0)
  l0:SetStateIndex()
end
function export:f_box_Compare_Boolean_v2_50_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|40828482"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|254486430", "254486430", "IOP05_Main", "box_Compare_Boolean_v2_50.A_is_True", "box_Ordered_Output_100.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_134_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_134
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_134_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_134
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_134_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_134
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_134_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_134
  self.IgnitionHacked = l0.Target
end
function export:f_box_SetBoolean_v2_134_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_134
  self.IgnitionHacked = l0.Target
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1242400288", "1242400288", "IOP05_Main", "box_Ordered_Output_79.Out", "box_HackableController_v2_7.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_34()
  l0 = self.box_HackableController_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2130773177", "2130773177", "IOP05_Main", "box_Ordered_Output_79.Out", "box_HackableController_v2_34.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Timer_v2_176_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_Timer_v2_176
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|183918409", "183918409", "IOP05_Main", "box_Timer_v2_176.TimeElapsed", "box_MultipleOR_177.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_138_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_138
  l1 = self.box_MissionController_v4_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1675571959", "1675571959", "IOP05_Main", "box_MissionLayer_v2_138.Unloaded", "box_MissionController_v4_80.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Ordered_Output_184_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1044678246", "1044678246", "IOP05_Main", "box_Ordered_Output_184.Out", "box_Timer_v2_156.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_184_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SendDoorEvents
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1938859279"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_50_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_50_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1320090809", "1320090809", "IOP05_Main", "box_Ordered_Output_184.Out", "box_Compare_Boolean_v2_50.In", clone, l0)
  l0:In()
end
function export:f_box_ListReaderSoundID_81_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReaderSoundID_81
  self.Horn = l0.SoundID
end
function export:f_box_ListReaderSoundID_81_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_81
  self.Horn = l0.SoundID
  l0 = self.box_PlaySound_v2_49
  l0.Entity = "9223372046411245339"
  l0.SoundId = "soundbinary/3023493147.bnk"
  l0 = self.box_ListReaderSoundID_81
  l1 = self.box_PlaySound_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|905359275", "905359275", "IOP05_Main", "box_ListReaderSoundID_81.Out", "box_PlaySound_v2_49.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047346295135"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1849652810"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_5_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_Timer_v2_76
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|955360643", "955360643", "IOP05_Main", "box_Timer_v2_76.TimeElapsed", "box_SecurityCamController_5.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = "9223372062359598007"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1187598793", "1187598793", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Hackable_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_70
  l0.MonitoredEvent = "GarageSuicide.RemoveSmoke"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|406369164", "406369164", "IOP05_Main", "box_Ordered_Output_68.Out", "box_IOPMonitor_70.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_9
  l0.MonitoredEvent = "GarageSuicide.RemoveSmokeFinal"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|569686", "569686", "IOP05_Main", "box_Ordered_Output_68.Out", "box_IOPMonitor_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_14
  l0.HackableEntity = "9223372046411398857"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|34231320", "34231320", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Hackable_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_96
  l0.HackableEntity = "9223372062359598005"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1137323703", "1137323703", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Hackable_Monitor_96.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_2()
  l0 = self.box_Hackable_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1147379828", "1147379828", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Hackable_Monitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_85
  l0.CameraEntity = "9223372045064675520"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|247812825", "247812825", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Security_Camera_Monitor_85.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1721015560", "1721015560", "IOP05_Main", "box_Ordered_Output_68.Out", "box_IOPMonitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_106()
  l0 = self.box_MultipleOR_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|392881457", "392881457", "IOP05_Main", "box_Ordered_Output_68.Out", "box_MultipleOR_106.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_68_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_64
  l0.MonitoredEvent = "GarageSuicide.SFX_CarDoor_Bell"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1311699153", "1311699153", "IOP05_Main", "box_Ordered_Output_68.Out", "box_IOPMonitor_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_143
  l0.MonitoredEvent = "GarageSuicide.SFX_GarageDoor_PryOpen"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|773789601", "773789601", "IOP05_Main", "box_Ordered_Output_68.Out", "box_IOPMonitor_143.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_68_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2135102789"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_25_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1256904549", "1256904549", "IOP05_Main", "box_Ordered_Output_68.Out", "box_Ordered_Output_25.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_93
  l0.CameraEntity = "9223372047346295132"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|9677955", "9677955", "IOP05_Main", "box_Ordered_Output_25.Out", "box_Security_Camera_Monitor_93.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_36
  l0.CameraEntity = "9223372047346295135"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1328927870", "1328927870", "IOP05_Main", "box_Ordered_Output_25.Out", "box_Security_Camera_Monitor_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_25_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_46
  l0.CameraEntity = "9223372047259739537"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|796316905", "796316905", "IOP05_Main", "box_Ordered_Output_25.Out", "box_Security_Camera_Monitor_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_IOPController_55_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_AI_IOPController_55
  l1 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|2058057765", "2058057765", "IOP05_Main", "box_AI_IOPController_55.Out", "box_MultipleOR_130.Input", l0, l1)
  l1:Input(2)
end
function export:OnEnter_box_Timer_v2_104()
  local l0
  l0 = self.box_Timer_v2_104
  l0.Seconds = 90
end
function export:OnEnter_box_Hackable_Monitor_2()
  local l0
  l0 = self.box_Hackable_Monitor_2
  l0.HackableEntity = "9223372062359598003"
end
function export:OnEnter_box_MultipleOR_101()
end
function export:OnEnter_box_MultipleOR_130()
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_HackableController_v2_88()
  local l0
  l0 = self.box_HackableController_v2_88
  l0.HackableEntity = "9223372062359598003"
end
function export:OnEnter_box_HackableController_v2_65()
  local l0
  l0 = self.box_HackableController_v2_65
  l0.HackableEntity = "9223372046411398857"
end
function export:OnEnter_box_MultipleOR_177()
end
function export:OnEnter_box_VisibilityController_v2_58()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372044913044434"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP05.domino|@IOP05_Main|1403066977"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Security_Camera_Monitor_63()
  local l0
  l0 = self.box_Security_Camera_Monitor_63
  l0.CameraEntity = "9223372047346295135"
end
function export:OnEnter_box_MultipleOR_106()
end
function export:OnEnter_box_HackableController_v2_34()
  local l0
  l0 = self.box_HackableController_v2_34
  l0.HackableEntity = "9223372047259739537"
end
function export:OnEnter_box_HackableController_v2_7()
  local l0
  l0 = self.box_HackableController_v2_7
  l0.HackableEntity = "9223372062359598007"
end
function export:OnEnter_box_HackableController_v2_73()
  local l0
  l0 = self.box_HackableController_v2_73
  l0.HackableEntity = "9223372062359598005"
end
_compilerVersion = 4
