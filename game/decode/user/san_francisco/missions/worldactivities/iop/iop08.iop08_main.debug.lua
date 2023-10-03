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
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  cbox:RegisterBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3330805229.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/278155621.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2461408010.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1549466621.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4188758919.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2128171563.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/874233564.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3375537693.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/330420633.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/618300052.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP08_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main"
  self.PlayerEntity = nil
  self.Spectator2 = nil
  self.Spectator1 = nil
  self.Characters = {}
  self.NPCRoles = {
    "ExerciseFail.Man",
    "ExerciseFail.Woman",
    "ExerciseFail.Spectator1",
    "ExerciseFail.Spectator2"
  }
  self.MainCharacter = nil
  self.Girl = nil
  self.TreadMillSoundHack = 0
  self.CameraListIOP08 = {}
  self.Timeout = 0
  self.TV1On = 0
  self.TV2On = 0
  self.TV3On = 0
  self.IOPEnded = 0
  self.SecurityCameraList = {}
  self.box_ListWriter_50 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_50
  l0._graph = self
  l0._name = "box_ListWriter_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|19396918"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_50_Added
  l0.Removed = self.f_box_ListWriter_50_Removed
  l0.Out = self.f_box_ListWriter_50_Out
  self.box_PlaySound_v2_41 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_41
  l0._graph = self
  l0._name = "box_PlaySound_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|42418642"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_52 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_52
  l0._graph = self
  l0._name = "box_SetBoolean_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|67982150"
  l0.Out = self.f_box_SetBoolean_v2_52_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_52_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_52_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_52_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_52_SetFromBool
  self.box_CinematicPrep_58 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_58
  l0._graph = self
  l0._name = "box_CinematicPrep_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|115860519"
  l0.PreOut = DummyFunction
  l0.PostOut = DummyFunction
  self.box_IOPMonitor_51 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_51
  l0._graph = self
  l0._name = "box_IOPMonitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|130422695"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_51_EventOccurred
  l0.Out = DummyFunction
  self.box_IOPMonitor_45 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_45
  l0._graph = self
  l0._name = "box_IOPMonitor_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|219569430"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_45_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_30 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_30
  l0._graph = self
  l0._name = "box_HackableController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|223593844"
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
  self.box_PlaySound_v2_31 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_31
  l0._graph = self
  l0._name = "box_PlaySound_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|230482782"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_103 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_103
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|265765499"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_103_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_55 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_55
  l0._graph = self
  l0._name = "box_ListWriter_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|271831796"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_55_Added
  l0.Removed = self.f_box_ListWriter_55_Removed
  l0.Out = self.f_box_ListWriter_55_Out
  self.box_Hackable_Monitor_19 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_19
  l0._graph = self
  l0._name = "box_Hackable_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|378023700"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_48 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_48
  l0._graph = self
  l0._name = "box_HackableController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|387619173"
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
  self.box_AI_IOPController_17 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_17
  l0._graph = self
  l0._name = "box_AI_IOPController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|389886603"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PhoneCommunicationController_102 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_102
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|428721242"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_102_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_11 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_11
  l0._graph = self
  l0._name = "box_PlaySound_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|455982878"
  l0.Out = self.f_box_PlaySound_v2_11_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_25 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_25
  l0._graph = self
  l0._name = "box_AI_IOPController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|466845618"
  l0.Out = self.f_box_AI_IOPController_25_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|475634774"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_ListWriter_13 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_13
  l0._graph = self
  l0._name = "box_ListWriter_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|483275186"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_13_Added
  l0.Removed = self.f_box_ListWriter_13_Removed
  l0.Out = self.f_box_ListWriter_13_Out
  self.box_IOP_StartUp_21 = cbox:CreateBox("domino/Library/common/IOP.IOP_StartUp.debug.lua")
  l0 = self.box_IOP_StartUp_21
  l0._graph = self
  l0._name = "box_IOP_StartUp_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|528020905"
  l0.Out = self.f_box_IOP_StartUp_21_Out
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|540369274"
  l0.Out = self.f_box_PlaySound_v2_33_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionController_v4_27 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_27
  l0._graph = self
  l0._name = "box_MissionController_v4_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|543618314"
  self.box_PlaySound_v2_35 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_35
  l0._graph = self
  l0._name = "box_PlaySound_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|587310983"
  l0.Out = self.f_box_PlaySound_v2_35_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_23 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_23
  l0._graph = self
  l0._name = "box_CLOController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|690609589"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_23_OnUserInPlace
  self.box_PlaySound_v2_49 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_49
  l0._graph = self
  l0._name = "box_PlaySound_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|715882567"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_28 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|814178429"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|897192289"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_4_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|911280365"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|968743869"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_10 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_10
  l0._graph = self
  l0._name = "box_AI_IOPController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1053716519"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_10_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Security_Camera_Monitor_59 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_59
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1131136109"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_59_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_59_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1147100594"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_CLOController_2 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_2
  l0._graph = self
  l0._name = "box_CLOController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1158624425"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_43 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_43
  l0._graph = self
  l0._name = "box_HackableController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1176555350"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_43_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1198759803"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_6_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1264829246"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_12_MessageCompleted
  self.box_PlaySound_v2_40 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_40
  l0._graph = self
  l0._name = "box_PlaySound_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1308421070"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_53 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_53
  l0._graph = self
  l0._name = "box_SetBoolean_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1377461675"
  l0.Out = self.f_box_SetBoolean_v2_53_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_53_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_53_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_53_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_53_SetFromBool
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1541971409"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1681465287"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_18_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_54 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_54
  l0._graph = self
  l0._name = "box_PlaySound_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1704681497"
  l0.Out = self.f_box_PlaySound_v2_54_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_34 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_34
  l0._graph = self
  l0._name = "box_PlaySound_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1708814294"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1751989381"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_26 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1755148236"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_32 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_32
  l0._graph = self
  l0._name = "box_Timer_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1757120828"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_24 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_24
  l0._graph = self
  l0._name = "box_IOPMonitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1779919887"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_24_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_24_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_60 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_60
  l0._graph = self
  l0._name = "box_PlaySound_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1789452645"
  l0.Out = self.f_box_PlaySound_v2_60_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1829654549"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOP_CleanUp_14 = cbox:CreateBox("domino/Library/common/IOP.IOP_CleanUp.debug.lua")
  l0 = self.box_IOP_CleanUp_14
  l0._graph = self
  l0._name = "box_IOP_CleanUp_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1885104683"
  l0.Completed = self.f_box_IOP_CleanUp_14_Completed
  l0.DisconnectedAnimationPlayed = self.f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed
  l0.Out = DummyFunction
  self.box_Integer_Select_39 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_39
  l0._graph = self
  l0._name = "box_Integer_Select_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1918296352"
  l0._DynamicAnchors = {Case = 4, Match = 4}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_39_Match_0
  l0.Match[1] = self.f_box_Integer_Select_39_Match_1
  l0.Match[2] = self.f_box_Integer_Select_39_Match_2
  l0.Match[3] = self.f_box_Integer_Select_39_Match_3
  l0.None = DummyFunction
  self.box_Timer_v2_56 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_56
  l0._graph = self
  l0._name = "box_Timer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|2091967139"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|2106100835"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_22_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|540418732", "540418732", "IOP08_Main", "CheckPoint_0", "box_MultipleOR_57.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1917628522", "1917628522", "IOP08_Main", "In", "box_MultipleOR_57.Input", self, l0)
  l0:Input(0)
end
function export:f_box_ListWriter_50_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_50
  self.CameraListIOP08 = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1119350744"
  l0.Out = self.f_box_SetInteger_v2_38_Out
  l0 = self.box_ListWriter_50
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1823608285", "1823608285", "IOP08_Main", "box_ListWriter_50.Added", "box_SetInteger_v2_38.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_ListWriter_50_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_50
  self.CameraListIOP08 = l0.Target
end
function export:f_box_ListWriter_50_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_50
  self.CameraListIOP08 = l0.Target
end
function export:f_box_SetBoolean_v2_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_52
  self.IOPEnded = l0.Target
  l0 = self.box_CLOController_23
  l0.CLO = "9223372046121130069"
  l0 = self.box_SetBoolean_v2_52
  l1 = self.box_CLOController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|737120510", "737120510", "IOP08_Main", "box_SetBoolean_v2_52.Out", "box_CLOController_23.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetBoolean_v2_52_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_52
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_52_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_52
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_52_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_52
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_52_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_52
  self.IOPEnded = l0.Target
end
function export:f_box_IOPMonitor_51_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_35
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/3375537693.bnk"
  l0 = self.box_IOPMonitor_51
  l1 = self.box_PlaySound_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|224911507", "224911507", "IOP08_Main", "box_IOPMonitor_51.EventOccurred", "box_PlaySound_v2_35.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_45_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_48
  l0.HackableEntity = "9223372046121210495"
  l0 = self.box_IOPMonitor_45
  l1 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|247531849", "247531849", "IOP08_Main", "box_IOPMonitor_45.DeactivateHackables", "box_HackableController_v2_48.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PhoneCommunicationController_103_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_103
  l1 = self.box_MissionMessageController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|691616550", "691616550", "IOP08_Main", "box_PhoneCommunicationController_103.OnCommunicationFinished", "box_MissionMessageController_v3_12.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_ListWriter_55_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_55
  self.SecurityCameraList = l0.Target
  l0 = self.box_PlaySound_v2_33
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/874233564.bnk"
  l0 = self.box_ListWriter_55
  l1 = self.box_PlaySound_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1182852868", "1182852868", "IOP08_Main", "box_ListWriter_55.Added", "box_PlaySound_v2_33.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriter_55_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.SecurityCameraList = l0.Target
end
function export:f_box_ListWriter_55_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.SecurityCameraList = l0.Target
end
function export:f_box_Hackable_Monitor_19_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_43()
  l0 = self.box_Hackable_Monitor_19
  l1 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|407295311", "407295311", "IOP08_Main", "box_Hackable_Monitor_19.HackSuccess", "box_HackableController_v2_43.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Integer_Arithmetics_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.TreadMillSoundHack = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Integer_Select_39
  l0.Integer = self.TreadMillSoundHack
  l0.Case[0] = 1
  l0.Case[1] = 2
  l0.Case[2] = 3
  l0.Case[3] = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1802386482", "1802386482", "IOP08_Main", "box_Integer_Arithmetics_37.Out", "box_Integer_Select_39.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_102_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_25
  l0.IopID = "ExerciseFail"
  l0.IopEvent = "ExerciseFail.Hack"
  l0 = self.box_PhoneCommunicationController_102
  l1 = self.box_AI_IOPController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|887487222", "887487222", "IOP08_Main", "box_PhoneCommunicationController_102.OnCommunicationFinished", "box_AI_IOPController_25.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PlaySound_v2_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_49
  l0.Entity = "9223372046121210869"
  l0.SoundId = "soundbinary/3330805229.bnk"
  l0 = self.box_PlaySound_v2_11
  l1 = self.box_PlaySound_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|185071707", "185071707", "IOP08_Main", "box_PlaySound_v2_11.Out", "box_PlaySound_v2_49.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1668426783"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_16_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_16_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_16_Out_4
  l0 = self.box_AI_IOPController_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|299207046", "299207046", "IOP08_Main", "box_AI_IOPController_25.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.Spectator2 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130062"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1781523686"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_64_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_15
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1127242623", "1127242623", "IOP08_Main", "box_CLOController_15.OnUserInPlace", "box_CollisionController_64.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_ListWriter_13_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_13
  self.Characters = l0.Target
  l0 = self.box_ListWriter_50
  l0.Input = self.CameraListIOP08
  l0.Data[0] = "9223372046496285355"
  l0.Data[1] = "9223372046411288482"
  l0 = self.box_ListWriter_13
  l1 = self.box_ListWriter_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|690651784", "690651784", "IOP08_Main", "box_ListWriter_13.Added", "box_ListWriter_50.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_13_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.Characters = l0.Target
end
function export:f_box_ListWriter_13_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.Characters = l0.Target
end
function export:f_box_IOP_StartUp_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1634776442"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_IOP_StartUp_21
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1826915987", "1826915987", "IOP08_Main", "box_IOP_StartUp_21.Out", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_33
  l1 = self.box_SetBoolean_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|639963954", "639963954", "IOP08_Main", "box_PlaySound_v2_33.Out", "box_SetBoolean_v2_52.False", l0, l1)
  l1:False()
end
function export:f_box_PlaySound_v2_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_32
  l0.Seconds = 3
  l0 = self.box_PlaySound_v2_35
  l1 = self.box_Timer_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1223264874", "1223264874", "IOP08_Main", "box_PlaySound_v2_35.Out", "box_Timer_v2_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_23_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_23
  self.MainCharacter = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.MainCharacter
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1807765302"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_61_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_23
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|954736836", "954736836", "IOP08_Main", "box_CLOController_23.OnUserInPlace", "box_CollisionController_61.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CollisionController_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372046121130061"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1008813268", "1008813268", "IOP08_Main", "box_CollisionController_62.CollisionsDisabled", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.User = self.MainCharacter
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|727262264", "727262264", "IOP08_Main", "box_Ordered_Output_8.Out", "box_CLOController_6.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_22
  l0.User = self.Girl
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1603004048", "1603004048", "IOP08_Main", "box_Ordered_Output_8.Out", "box_CLOController_22.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_8_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_4
  l0.User = self.Spectator1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|520175916", "520175916", "IOP08_Main", "box_Ordered_Output_8.Out", "box_CLOController_4.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_8_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_18
  l0.User = self.Spectator2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|803324828", "803324828", "IOP08_Main", "box_Ordered_Output_8.Out", "box_CLOController_18.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_CLOController_4_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_2
  l0.CLO = "9223372046121130061"
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1892198580", "1892198580", "IOP08_Main", "box_CLOController_4.UnspawnedUser", "box_CLOController_2.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Spectator1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130061"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1493067875"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_63_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_9
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1624398923", "1624398923", "IOP08_Main", "box_CLOController_9.OnUserInPlace", "box_CollisionController_63.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1757140542", "1757140542", "IOP08_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_27.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_IOPController_10_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.CameraListIOP08
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1614502019"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_42_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_AI_IOPController_10
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|733366285", "733366285", "IOP08_Main", "box_AI_IOPController_10.StartCompleted", "box_SecurityCamController_42.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_SetInteger_v2_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.TreadMillSoundHack = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_10
  l0.IopID = "ExerciseFail"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|214623189", "214623189", "IOP08_Main", "box_SetInteger_v2_38.Out", "box_AI_IOPController_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Security_Camera_Monitor_59_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1617858231"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_101_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_101_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_101_Out_2
  l0 = self.box_Security_Camera_Monitor_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|896158451", "896158451", "IOP08_Main", "box_Security_Camera_Monitor_59.Disabled", "box_Ordered_Output_101.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_59_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_59()
  l0 = self.box_Security_Camera_Monitor_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|540130181", "540130181", "IOP08_Main", "box_Security_Camera_Monitor_59.OnEndAccessCamera", "box_Security_Camera_Monitor_59.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_StartUp_21
  l0.MainLayer = "IOP08_Main"
  l0.CheckPoint = "CheckPoint_0"
  l0.CinemaZone = "9223372060863027539"
  l0 = self.box_MultipleOR_57
  l1 = self.box_IOP_StartUp_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|587862754", "587862754", "IOP08_Main", "box_MultipleOR_57.Out", "box_IOP_StartUp_21.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_43_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1782925514"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_HackableController_v2_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1951716881", "1951716881", "IOP08_Main", "box_HackableController_v2_43.Disabled", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_6_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_28
  l0.CLO = "9223372046121130069"
  l0 = self.box_CLOController_6
  l1 = self.box_CLOController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1933856084", "1933856084", "IOP08_Main", "box_CLOController_6.UnspawnedUser", "box_CLOController_28.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MissionMessageController_v3_12_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "IOP08_Main"
  l0 = self.box_MissionMessageController_v3_12
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|348344270", "348344270", "IOP08_Main", "box_MissionMessageController_v3_12.MessageCompleted", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_SetBoolean_v2_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IOPEnded = l0.Target
  self:OnEnter_box_Hackable_Monitor_19()
  l1 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|819560674", "819560674", "IOP08_Main", "box_SetBoolean_v2_53.Out", "box_Hackable_Monitor_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_53_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IOPEnded = l0.Target
end
function export:f_box_SetBoolean_v2_53_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IOPEnded = l0.Target
end
function export:f_box_CollisionController_63_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_15
  l0.CLO = "9223372046121130062"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1940316149", "1940316149", "IOP08_Main", "box_CollisionController_63.CollisionsDisabled", "box_CLOController_15.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.Girl = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372046121130058"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|743306474"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_3
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1927192536", "1927192536", "IOP08_Main", "box_CLOController_3.OnUserInPlace", "box_CollisionController_62.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_SecurityCamController_42_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1845135386"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|287708976", "287708976", "IOP08_Main", "box_SecurityCamController_42.CanExitSet", "box_Ordered_Output_1.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_101_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_56
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1523901509", "1523901509", "IOP08_Main", "box_Ordered_Output_101.Out", "box_Timer_v2_56.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_101_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_102
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357372612"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1527520435", "1527520435", "IOP08_Main", "box_Ordered_Output_101.Out", "box_PhoneCommunicationController_102.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_101_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_11
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/278155621.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1842096461", "1842096461", "IOP08_Main", "box_Ordered_Output_101.Out", "box_PlaySound_v2_11.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_55
  l0.Input = self.SecurityCameraList
  l0.Data[0] = "9223372046411288482"
  l0.Data[1] = "9223372046496285355"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1276093250", "1276093250", "IOP08_Main", "box_Get_Player_ID_7.Out", "box_ListWriter_55.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_30
  l0.HackableEntity = "9223372046121210495"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1937872049", "1937872049", "IOP08_Main", "box_Ordered_Output_16.Out", "box_HackableController_v2_30.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_19()
  l0 = self.box_Hackable_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|112338308", "112338308", "IOP08_Main", "box_Ordered_Output_16.Out", "box_Hackable_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPMonitor_24()
  l0 = self.box_IOPMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|2146367027", "2146367027", "IOP08_Main", "box_Ordered_Output_16.Out", "box_IOPMonitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_45
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|296435303", "296435303", "IOP08_Main", "box_Ordered_Output_16.Out", "box_IOPMonitor_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_16_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_51
  l0.MonitoredEvent = "ExerciseFail.TreadmillStopped"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|153280328", "153280328", "IOP08_Main", "box_Ordered_Output_16.Out", "box_IOPMonitor_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_18_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  l0.CLO = "9223372046121130062"
  l0 = self.box_CLOController_18
  l1 = self.box_CLOController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|794719394", "794719394", "IOP08_Main", "box_CLOController_18.UnspawnedUser", "box_CLOController_29.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlaySound_v2_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOP_CleanUp_14
  l0.SecurityCameraList = self.SecurityCameraList
  l0 = self.box_PlaySound_v2_54
  l1 = self.box_IOP_CleanUp_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|386464953", "386464953", "IOP08_Main", "box_PlaySound_v2_54.Out", "box_IOP_CleanUp_14.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_32_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_31
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/1549466621.bnk"
  l0 = self.box_Timer_v2_32
  l1 = self.box_PlaySound_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|822256452", "822256452", "IOP08_Main", "box_Timer_v2_32.TimeElapsed", "box_PlaySound_v2_31.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_54
  l0.Entity = "9223372046121210869"
  l0.SoundId = "soundbinary/2128171563.bnk"
  l0 = self.box_IOPMonitor_24
  l1 = self.box_PlaySound_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|548498159", "548498159", "IOP08_Main", "box_IOPMonitor_24.Disabled", "box_PlaySound_v2_54.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_24_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_24()
  l0 = self.box_IOPMonitor_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|820366372", "820366372", "IOP08_Main", "box_IOPMonitor_24.IOPComplete", "box_IOPMonitor_24.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CollisionController_64_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_13
  l0.Input = self.Characters
  l0.Data[0] = self.MainCharacter
  l0.Data[1] = self.Girl
  l0.Data[2] = self.Spectator1
  l0.Data[3] = self.Spectator2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|872503561", "872503561", "IOP08_Main", "box_CollisionController_64.CollisionsDisabled", "box_ListWriter_13.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1906241791"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1176497723", "1176497723", "IOP08_Main", "box_Ordered_Output_46.Out", "box_Ordered_Output_36.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_44
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1892230138", "1892230138", "IOP08_Main", "box_Ordered_Output_46.Out", "box_Timer_v2_44.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_60_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_60
  l1 = self.box_SetBoolean_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1820964207", "1820964207", "IOP08_Main", "box_PlaySound_v2_60.Out", "box_SetBoolean_v2_53.True", l0, l1)
  l1:True()
end
function export:f_box_CollisionController_61_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372046121130058"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|480385740", "480385740", "IOP08_Main", "box_CollisionController_61.CollisionsDisabled", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SecurityCamController_20_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_59()
  l0 = self.box_Security_Camera_Monitor_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|661261609", "661261609", "IOP08_Main", "box_SecurityCamController_20.EnterForced", "box_Security_Camera_Monitor_59.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IOPEnded
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|2098034321"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_47_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_44
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1123936267", "1123936267", "IOP08_Main", "box_Timer_v2_44.TimeElapsed", "box_Compare_Boolean_v2_47.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_20()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|116807776", "116807776", "IOP08_Main", "box_Ordered_Output_1.Out", "box_SecurityCamController_20.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_20()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1928103757", "1928103757", "IOP08_Main", "box_Ordered_Output_1.Out", "box_SecurityCamController_20.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_IOP_CleanUp_14_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_103
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051775436222"
  l0 = self.box_IOP_CleanUp_14
  l1 = self.box_PhoneCommunicationController_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1184483321", "1184483321", "IOP08_Main", "box_IOP_CleanUp_14.Completed", "box_PhoneCommunicationController_103.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_IOP_CleanUp_14_DisconnectedAnimationPlayed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|798810886"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_8_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_8_Out_3
  l0 = self.box_IOP_CleanUp_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1349691286", "1349691286", "IOP08_Main", "box_IOP_CleanUp_14.DisconnectedAnimationPlayed", "box_Ordered_Output_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_17
  l0.IopID = "ExerciseFail"
  l0.IopEvent = "ExerciseFail.Hack"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1554869900", "1554869900", "IOP08_Main", "box_Ordered_Output_36.Out", "box_AI_IOPController_17.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.TreadMillSoundHack
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|395082072"
  l0.Out = self.f_box_Integer_Arithmetics_37_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1685026179", "1685026179", "IOP08_Main", "box_Ordered_Output_36.Out", "box_Integer_Arithmetics_37.Add", clone, l0)
  l0:Add()
end
function export:f_box_Integer_Select_39_Match_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/618300052.bnk"
  l0 = self.box_Integer_Select_39
  l1 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|582418369", "582418369", "IOP08_Main", "box_Integer_Select_39.Match", "box_PlaySound_v2_34.Play", l0, l1)
  l1:Play()
end
function export:f_box_Integer_Select_39_Match_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_40
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/330420633.bnk"
  l0 = self.box_Integer_Select_39
  l1 = self.box_PlaySound_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1722465803", "1722465803", "IOP08_Main", "box_Integer_Select_39.Match", "box_PlaySound_v2_40.Play", l0, l1)
  l1:Play()
end
function export:f_box_Integer_Select_39_Match_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_41
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/2461408010.bnk"
  l0 = self.box_Integer_Select_39
  l1 = self.box_PlaySound_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1000516153", "1000516153", "IOP08_Main", "box_Integer_Select_39.Match", "box_PlaySound_v2_41.Play", l0, l1)
  l1:Play()
end
function export:f_box_Integer_Select_39_Match_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_60
  l0.Entity = "9223372046121230569"
  l0.SoundId = "soundbinary/4188758919.bnk"
  l0 = self.box_Integer_Select_39
  l1 = self.box_PlaySound_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1388106101", "1388106101", "IOP08_Main", "box_Integer_Select_39.Match", "box_PlaySound_v2_60.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_56_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_58
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_56
  l1 = self.box_CinematicPrep_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|945619762", "945619762", "IOP08_Main", "box_Timer_v2_56.TimeElapsed", "box_CinematicPrep_58.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Compare_Boolean_v2_47_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_43()
  l0 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|988150287", "988150287", "IOP08_Main", "box_Compare_Boolean_v2_47.A_is_False", "box_HackableController_v2_43.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_CLOController_22_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  l0.CLO = "9223372046121130058"
  l0 = self.box_CLOController_22
  l1 = self.box_CLOController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1245794558", "1245794558", "IOP08_Main", "box_CLOController_22.UnspawnedUser", "box_CLOController_26.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:OnEnter_box_Hackable_Monitor_19()
  local l0
  l0 = self.box_Hackable_Monitor_19
  l0.HackableEntity = "9223372046121210495"
end
function export:OnEnter_box_Security_Camera_Monitor_59()
  local l0
  l0 = self.box_Security_Camera_Monitor_59
  l0.CameraEntity = "9223372046496285355"
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_HackableController_v2_43()
  local l0
  l0 = self.box_HackableController_v2_43
  l0.HackableEntity = "9223372046121210495"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_IOPMonitor_24()
end
function export:OnEnter_box_SecurityCamController_20()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372046496285355"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372046121130060"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\IOP08.domino|@IOP08_Main|1819269759"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_20_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
_compilerVersion = 4
