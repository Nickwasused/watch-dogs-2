export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CraneController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/s14_m060_cin_campaignrally.S14_M060_CIN_CampaignRally_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/s14_m060_cin_secretmeeting.S14_M060_CIN_SecretMeeting_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_FromTheRooftop.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_GetCivilians_IDs.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_WrenchManager.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TalkerController.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/2007092709.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3696690883.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/832003828.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/358428224.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S14M060_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main"
  self.PlayerEntity = nil
  self.WrenchCar = nil
  self.IsFirstTimeEnteringWrenchCar = 1
  self.HasPlayerReachSkyscrapper = 0
  self.Wrench = "3"
  self.IsZipLineStarted = 0
  self.LockedDoorKeyPads = {}
  self.Is_CheckPoint3 = 0
  self.LivingRoomCivilians = {}
  self.DiningRoomCivilians = {}
  self.KitchenCivilians = {}
  self.MicrowaveGuy = nil
  self.AcidBathGuy = nil
  self.IsWrenchInCar = 0
  self.CINEMATIC_CAR = nil
  self.Thruss = nil
  self.PreMeetingTriggerCollider = nil
  self.S14_M060_Y_AccessMeetingCamera = {}
  self.is_checkpoint_1b = 0
  self.box_PhoneCommunicationController_43 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_43
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|899009"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_43_Out
  self.box_S14_M060_CIN_SecretMeeting_Main_13 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/s14_m060_cin_secretmeeting.S14_M060_CIN_SecretMeeting_Main.debug.lua")
  l0 = self.box_S14_M060_CIN_SecretMeeting_Main_13
  l0._graph = self
  l0._name = "box_S14_M060_CIN_SecretMeeting_Main_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|3760475"
  l0.Out = self.f_box_S14_M060_CIN_SecretMeeting_Main_13_Out
  self.box_OnceOnly_v3_30 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_30
  l0._graph = self
  l0._name = "box_OnceOnly_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|4777864"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_30_Out
  l0.ResetOut = DummyFunction
  self.box_DriveAndTalk_183 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_183
  l0._graph = self
  l0._name = "box_DriveAndTalk_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|29145945"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_183_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_S14M060_GetCivilians_IDs_5 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_GetCivilians_IDs.debug.lua")
  l0 = self.box_S14M060_GetCivilians_IDs_5
  l0._graph = self
  l0._name = "box_S14M060_GetCivilians_IDs_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|134836718"
  l0.Out_AllCiviliansRegistered = self.f_box_S14M060_GetCivilians_IDs_5_Out_AllCiviliansRegistered
  self.box_PlayDialog_v2_17 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_17
  l0._graph = self
  l0._name = "box_PlayDialog_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|145338576"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_17_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_DriveAndTalk_181 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_181
  l0._graph = self
  l0._name = "box_DriveAndTalk_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|372515219"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = self.f_box_DriveAndTalk_181_TalkStarted
  l0.TalkPaused = self.f_box_DriveAndTalk_181_TalkPaused
  l0.TalkFinished = self.f_box_DriveAndTalk_181_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PlayDialog_v2_16 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_16
  l0._graph = self
  l0._name = "box_PlayDialog_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|389307851"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_16_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_EntityLoadingMonitor_56 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_56
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|407207624"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_56_AllLoaded
  self.box_CinematicPrep_133 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_133
  l0._graph = self
  l0._name = "box_CinematicPrep_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|414093809"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_133_PostOut
  self.box_CLOMonitor_38 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_38
  l0._graph = self
  l0._name = "box_CLOMonitor_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|430538438"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = DummyFunction
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = self.f_box_CLOMonitor_38_OnAnimBegin
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_VehicleMonitor_v3_25 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_25
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|500750994"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_25_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_25_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Perk_Controller_55 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_55
  l0._graph = self
  l0._name = "box_Perk_Controller_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|524534255"
  l0.PerkAdded = self.f_box_Perk_Controller_55_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_LogicGate_v2_28 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_28
  l0._graph = self
  l0._name = "box_LogicGate_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|537656092"
  l0.Out = self.f_box_LogicGate_v2_28_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|538820656"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_S14M060_FromTheRooftop_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_FromTheRooftop.debug.lua")
  l0 = self.box_S14M060_FromTheRooftop_8
  l0._graph = self
  l0._name = "box_S14M060_FromTheRooftop_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|611934751"
  self.box_CinematicPrep_26 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_26
  l0._graph = self
  l0._name = "box_CinematicPrep_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|649850364"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_26_PostOut
  self.box_PlayDialog_v2_41 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_41
  l0._graph = self
  l0._name = "box_PlayDialog_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|675610839"
  l0.Started = self.f_box_PlayDialog_v2_41_Started
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_41_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S14M060_WrenchManager_48 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_WrenchManager.debug.lua")
  l0 = self.box_S14M060_WrenchManager_48
  l0._graph = self
  l0._name = "box_S14M060_WrenchManager_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|705695074"
  l0.WrenchSpawned = self.f_box_S14M060_WrenchManager_48_WrenchSpawned
  self.box_MissionCheckpointReach_14 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_14
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|766332802"
  l0.Out = self.f_box_MissionCheckpointReach_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlayDialog_v2_20 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_20
  l0._graph = self
  l0._name = "box_PlayDialog_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|810000302"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_20_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Crane_Controller_57 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_57
  l0._graph = self
  l0._name = "box_Crane_Controller_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|817752572"
  l0.PlatformPositionSet = self.f_box_Crane_Controller_57_PlatformPositionSet
  l0.CanMoveChanged = DummyFunction
  self.box_SetBoolean_v2_63 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_63
  l0._graph = self
  l0._name = "box_SetBoolean_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|830411832"
  l0.Out = self.f_box_SetBoolean_v2_63_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_63_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_63_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_63_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_63_SetFromBool
  self.box_GameplayInteractionController_80 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_80
  l0._graph = self
  l0._name = "box_GameplayInteractionController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|848685075"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TalkerController_52 = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self.box_TalkerController_52
  l0._graph = self
  l0._name = "box_TalkerController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|861759835"
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_135 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_135
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|924341037"
  l0.Out = self.f_box_MissionCheckpointReach_135_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_DriveAndTalk_184 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_184
  l0._graph = self
  l0._name = "box_DriveAndTalk_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|956520487"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SetBoolean_v2_21 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_21
  l0._graph = self
  l0._name = "box_SetBoolean_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|961055940"
  l0.Out = self.f_box_SetBoolean_v2_21_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_21_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_21_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_21_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_21_SetFromBool
  self.box_Crane_Controller_59 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_59
  l0._graph = self
  l0._name = "box_Crane_Controller_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1072502215"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = DummyFunction
  self.box_MissionMessageController_v3_39 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_39
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1073965336"
  l0.Out = self.f_box_MissionMessageController_v3_39_Out
  l0.MessageCompleted = DummyFunction
  self.box_Reach_Gameplay_40 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_40
  l0._graph = self
  l0._name = "box_Reach_Gameplay_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1074094305"
  l0.Started = self.f_box_Reach_Gameplay_40_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_40_Reached
  self.box_EntityLoadingMonitor_58 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_58
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1259582254"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_58_AllLoaded
  self.box_Interact_Gameplay_33 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_33
  l0._graph = self
  l0._name = "box_Interact_Gameplay_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1374111215"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_33_Interacted
  self.box_S14M060_GetCivilians_IDs_3 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_GetCivilians_IDs.debug.lua")
  l0 = self.box_S14M060_GetCivilians_IDs_3
  l0._graph = self
  l0._name = "box_S14M060_GetCivilians_IDs_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1388985967"
  l0.Out_AllCiviliansRegistered = self.f_box_S14M060_GetCivilians_IDs_3_Out_AllCiviliansRegistered
  self.box_AI_Buddy_Controller_22 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_22
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1424624247"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_box_AI_Buddy_Controller_22_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_CLOController_62 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_62
  l0._graph = self
  l0._name = "box_CLOController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1475686735"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_62_OnUserInPlace
  self.box_MultipleOR_136 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_136
  l0._graph = self
  l0._name = "box_MultipleOR_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1482265892"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_136_Out
  self.box_MissionZone_75 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_75
  l0._graph = self
  l0._name = "box_MissionZone_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1483998927"
  l0.Enabled = self.f_box_MissionZone_75_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_S14_M060_CIN_CampaignRally_Main_154 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/s14_m060_cin_campaignrally.S14_M060_CIN_CampaignRally_Main.debug.lua")
  l0 = self.box_S14_M060_CIN_CampaignRally_Main_154
  l0._graph = self
  l0._name = "box_S14_M060_CIN_CampaignRally_Main_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1489428852"
  l0.Out = self.f_box_S14_M060_CIN_CampaignRally_Main_154_Out
  self.box_MissionCheckpointReach_126 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_126
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1527219318"
  l0.Out = self.f_box_MissionCheckpointReach_126_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LMA_Layer_Controller_19 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_19
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1540814149"
  l0.Loaded = self.f_box_LMA_Layer_Controller_19_Loaded
  l0.Unloaded = DummyFunction
  self.box_TriggerMonitor_v2_23 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_23
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1543648502"
  l0.Enabled = self.f_box_TriggerMonitor_v2_23_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_23_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_23_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_23_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_23_Use
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1592373338"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_127 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_127
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1615549816"
  l0.Out = self.f_box_MissionCheckpointReach_127_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_69 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_69
  l0._graph = self
  l0._name = "box_CLOController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1647063096"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_180 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_180
  l0._graph = self
  l0._name = "box_MultipleOR_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1717228351"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_180_Out
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1802136916"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_CinematicPrep_79 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_79
  l0._graph = self
  l0._name = "box_CinematicPrep_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1819997234"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_79_PostOut
  self.box_MissionMessageController_v3_111 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_111
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1853752187"
  l0.Out = self.f_box_MissionMessageController_v3_111_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_125 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_125
  l0._graph = self
  l0._name = "box_MissionLayer_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1894076037"
  l0.Loaded = self.f_box_MissionLayer_v2_125_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_53 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_53
  l0._graph = self
  l0._name = "box_Multiple_AND_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1934814113"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_53_Out
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1997230219"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2001707146"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2071561047"
  l0.Loaded = self.f_box_MissionLayer_v2_81_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_60 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_60
  l0._graph = self
  l0._name = "box_MissionLayer_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2088666930"
  l0.Loaded = self.f_box_MissionLayer_v2_60_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_131 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_131
  l0._graph = self
  l0._name = "box_MissionLayer_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2102746717"
  l0.Loaded = self.f_box_MissionLayer_v2_131_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  l0 = self.box_MissionLayer_v2_125
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1387136724", "1387136724", "S14M060_Main", "CheckPoint_0", "box_MissionLayer_v2_125.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|497773060", "497773060", "S14M060_Main", "CheckPoint_1", "box_MissionLayer_v2_81.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1b()
  local l0
  l0 = self.box_MissionLayer_v2_60
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|73018316", "73018316", "S14M060_Main", "CheckPoint_1b", "box_MissionLayer_v2_60.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_131
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|874205779", "874205779", "S14M060_Main", "CheckPoint_2", "box_MissionLayer_v2_131.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_S14M060_FromTheRooftop_8()
  l0 = self.box_S14M060_FromTheRooftop_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|479799470", "479799470", "S14M060_Main", "CheckPoint_3", "box_S14M060_FromTheRooftop_8.In_CheckPt_3", self, l0)
  l0:In_CheckPt_3()
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_S14M060_FromTheRooftop_8()
  l0 = self.box_S14M060_FromTheRooftop_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|70145758", "70145758", "S14M060_Main", "CheckPoint_4", "box_S14M060_FromTheRooftop_8.In_CheckPt_4", self, l0)
  l0:In_CheckPt_4()
end
function export:CheckPoint_5()
  local l0
  self:OnEnter_box_S14M060_FromTheRooftop_8()
  l0 = self.box_S14M060_FromTheRooftop_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|933625226", "933625226", "S14M060_Main", "CheckPoint_5", "box_S14M060_FromTheRooftop_8.In_CheckPt_5", self, l0)
  l0:In_CheckPt_5()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2070506525", "2070506525", "S14M060_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_PhoneCommunicationController_43_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_136()
  l0 = self.box_PhoneCommunicationController_43
  l1 = self.box_MultipleOR_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1913154748", "1913154748", "S14M060_Main", "box_PhoneCommunicationController_43.Out", "box_MultipleOR_136.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_S14_M060_CIN_SecretMeeting_Main_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_43
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055684883134"
  l0 = self.box_S14_M060_CIN_SecretMeeting_Main_13
  l1 = self.box_PhoneCommunicationController_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|565621014", "565621014", "S14M060_Main", "box_S14_M060_CIN_SecretMeeting_Main_13.Out", "box_PhoneCommunicationController_43.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_30_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1446362150"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_84_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_84_Out_1
  l0 = self.box_OnceOnly_v3_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1736217441", "1736217441", "S14M060_Main", "box_OnceOnly_v3_30.Out", "box_Ordered_Output_84.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|131468000", "131468000", "S14M060_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_180.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_DriveAndTalk_183_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_184
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372053122953983"
  l0.StartDelay = 3
  l0 = self.box_DriveAndTalk_183
  l1 = self.box_DriveAndTalk_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|780032846", "780032846", "S14M060_Main", "box_DriveAndTalk_183.TalkFinished", "box_DriveAndTalk_184.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_72_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372055370337265"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|551573331"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_47_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2046592857", "2046592857", "S14M060_Main", "box_InteractionScriptController_72.Disabled", "box_InteractionScriptController_47.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_66_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1512752025"
  l0.Out = self.f_box_Simple_Node_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|481035699", "481035699", "S14M060_Main", "box_Compare_Boolean_v2_66.A_is_False", "box_Simple_Node_31.In", clone, l0)
  l0:In()
end
function export:f_box_S14M060_GetCivilians_IDs_5_Out_AllCiviliansRegistered()
  local l0
  self = self._graph
  l0 = self.box_S14M060_GetCivilians_IDs_5
  self.LivingRoomCivilians = l0.LivingRoomCivilians_OUT
  self.DiningRoomCivilians = l0.DiningRoomCivilians_OUT
  self.KitchenCivilians = l0.KitchenCivilians_OUT
  self.MicrowaveGuy = l0.MicrowaveGuy_OUT
  self.AcidBathGuy = l0.AcidBathGuy_OUT
end
function export:f_box_PlayDialog_v2_17_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_53()
  l0 = self.box_PlayDialog_v2_17
  l1 = self.box_Multiple_AND_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|355128833", "355128833", "S14M060_Main", "box_PlayDialog_v2_17.Finished", "box_Multiple_AND_53.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|545204973"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1186753981", "1186753981", "S14M060_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S14M060_WrenchManager_48()
  l0 = self.box_S14M060_WrenchManager_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1822029352", "1822029352", "S14M060_Main", "box_Simple_Node_71.Out", "box_S14M060_WrenchManager_48.UnspawnWrench", clone, l0)
  l0:UnspawnWrench()
end
function export:f_box_Get_Player_ID_132_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_133
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|519399518", "519399518", "S14M060_Main", "box_Get_Player_ID_132.Out", "box_CinematicPrep_133.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_DriveAndTalk_181_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_183
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372053122953985"
  l0.StartDelay = 3
  l0 = self.box_DriveAndTalk_181
  l1 = self.box_DriveAndTalk_183
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1010908451", "1010908451", "S14M060_Main", "box_DriveAndTalk_181.TalkFinished", "box_DriveAndTalk_183.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_181_TalkPaused()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "talk paused"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|341907527"
  l0.Out = DummyFunction
  l0 = self.box_DriveAndTalk_181
  l1 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|906798398", "906798398", "S14M060_Main", "box_DriveAndTalk_181.TalkPaused", "box_TextToScreen_v2_36.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_181_TalkStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "talk started"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1615891698"
  l0.Out = DummyFunction
  l0 = self.box_DriveAndTalk_181
  l1 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1577311849", "1577311849", "S14M060_Main", "box_DriveAndTalk_181.TalkStarted", "box_TextToScreen_v2_35.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14M060_GetCivilians_IDs_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1159506004", "1159506004", "S14M060_Main", "box_Ordered_Output_15.Out", "box_S14M060_GetCivilians_IDs_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_56
  l0.AutoDisable = 1
  l0.Entity = "9223372049574754202"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1666557569", "1666557569", "S14M060_Main", "box_Ordered_Output_15.Out", "box_EntityLoadingMonitor_56.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_16_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_20
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/832003828.bnk"
  l0 = self.box_PlayDialog_v2_16
  l1 = self.box_PlayDialog_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|878409843", "878409843", "S14M060_Main", "box_PlayDialog_v2_16.Finished", "box_PlayDialog_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_EntityLoadingMonitor_56_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_57
  l0.Entity = "9223372049574754202"
  l0.Rotation = -70.5
  l0.PlatformHeight = 59
  l0.SliderPosition = 41
  l0 = self.box_EntityLoadingMonitor_56
  l1 = self.box_Crane_Controller_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1550094621", "1550094621", "S14M060_Main", "box_EntityLoadingMonitor_56.AllLoaded", "box_Crane_Controller_57.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_CinematicPrep_133_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_136()
  l0 = self.box_CinematicPrep_133
  l1 = self.box_MultipleOR_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1229395197", "1229395197", "S14M060_Main", "box_CinematicPrep_133.PostOut", "box_MultipleOR_136.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOMonitor_38_OnAnimBegin()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_53()
  l0 = self.box_CLOMonitor_38
  l1 = self.box_Multiple_AND_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1247260875", "1247260875", "S14M060_Main", "box_CLOMonitor_38.OnAnimBegin", "box_Multiple_AND_53.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_SetTimeOfDay_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14_M060_CIN_CampaignRally_Main_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|469640992", "469640992", "S14M060_Main", "box_SetTimeOfDay_51.Out", "box_S14_M060_CIN_CampaignRally_Main_154.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_25_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_21()
  l0 = self.box_VehicleMonitor_v3_25
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|780708728", "780708728", "S14M060_Main", "box_VehicleMonitor_v3_25.Entered", "box_SetBoolean_v2_21.True", l0, l1)
  l1:True()
end
function export:f_box_VehicleMonitor_v3_25_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_21()
  l0 = self.box_VehicleMonitor_v3_25
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|97797008", "97797008", "S14M060_Main", "box_VehicleMonitor_v3_25.Leave", "box_SetBoolean_v2_21.False", l0, l1)
  l1:False()
end
function export:f_box_Perk_Controller_55_PerkAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S14M060_FromTheRooftop_8()
  l0 = self.box_Perk_Controller_55
  l1 = self.box_S14M060_FromTheRooftop_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|601777033", "601777033", "S14M060_Main", "box_Perk_Controller_55.PerkAdded", "box_S14M060_FromTheRooftop_8.In_RealMissionNOT_E3", l0, l1)
  l1:In_RealMissionNOT_E3()
end
function export:f_box_LogicGate_v2_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_30()
  l0 = self.box_LogicGate_v2_28
  l1 = self.box_OnceOnly_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1605468680", "1605468680", "S14M060_Main", "box_LogicGate_v2_28.Out", "box_OnceOnly_v3_30.In", l0, l1)
  l1:In(1)
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S14M060_WrenchManager_48()
  l0 = self.box_MultipleOR_42
  l1 = self.box_S14M060_WrenchManager_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1352357678", "1352357678", "S14M060_Main", "box_MultipleOR_42.Out", "box_S14M060_WrenchManager_48.SpawnWrench", l0, l1)
  l1:SpawnWrench()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_180()
  l0 = self.box_MultipleOR_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|216888559", "216888559", "S14M060_Main", "box_Get_Player_ID_6.Out", "box_MultipleOR_180.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_InteractionScriptController_47_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_33
  l0.Entity = "9223372059462434169"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1803750177", "1803750177", "S14M060_Main", "box_InteractionScriptController_47.Disabled", "box_Interact_Gameplay_33.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_64_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|421370314", "421370314", "S14M060_Main", "box_Compare_Boolean_v2_64.A_is_False", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_64_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_62
  l0.CLO = "9223372071560688160"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|295018288", "295018288", "S14M060_Main", "box_Compare_Boolean_v2_64.A_is_True", "box_CLOController_62.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Simple_Node_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|238410600"
  l0.Out = self.f_box_Simple_Node_71_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|83468327", "83468327", "S14M060_Main", "box_Simple_Node_70.Out", "box_Simple_Node_71.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14M060_GetCivilians_IDs_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|41807462", "41807462", "S14M060_Main", "box_Ordered_Output_4.Out", "box_S14M060_GetCivilians_IDs_3.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.is_checkpoint_1b
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|571963485"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_64_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_64_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1990406549", "1990406549", "S14M060_Main", "box_Ordered_Output_4.Out", "box_Compare_Boolean_v2_64.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_26_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|869086829"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_12_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_26
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1905098098", "1905098098", "S14M060_Main", "box_CinematicPrep_26.PostOut", "box_Show_Or_Hide_All_UI_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlayDialog_v2_41_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_16
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/3696690883.bnk"
  l0 = self.box_PlayDialog_v2_41
  l1 = self.box_PlayDialog_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|45048379", "45048379", "S14M060_Main", "box_PlayDialog_v2_41.Finished", "box_PlayDialog_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_41_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_22
  l0.NPC = self.Wrench
  l0.CLO = "9223372056067356236"
  l0 = self.box_PlayDialog_v2_41
  l1 = self.box_AI_Buddy_Controller_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|750432050", "750432050", "S14M060_Main", "box_PlayDialog_v2_41.Started", "box_AI_Buddy_Controller_22.GotoCLO", l0, l1)
  l1:GotoCLO()
end
function export:f_box_Simple_Node_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1984489695"
  l0.Out = self.f_box_Simple_Node_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|296591177", "296591177", "S14M060_Main", "box_Simple_Node_77.Out", "box_Simple_Node_76.In", clone, l0)
  l0:In()
end
function export:f_box_S14M060_WrenchManager_48_WrenchSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M060_WrenchManager_48
  self.Wrench = l0.WrenchID
  l0 = self.box_Timer_v2_44
  l0.Seconds = 3
  l0 = self.box_S14M060_WrenchManager_48
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|742123189", "742123189", "S14M060_Main", "box_S14M060_WrenchManager_48.WrenchSpawned", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_80()
  l0 = self.box_GameplayInteractionController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1570089400", "1570089400", "S14M060_Main", "box_Ordered_Output_114.Out", "box_GameplayInteractionController_80.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DriveAndTalk_181
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372053122953984"
  l0.StartDelay = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1864733827", "1864733827", "S14M060_Main", "box_Ordered_Output_114.Out", "box_DriveAndTalk_181.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_114_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_111
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective040",
    item = "Objective",
    id = "355977"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1023296569", "1023296569", "S14M060_Main", "box_Ordered_Output_114.Out", "box_MissionMessageController_v3_111.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Compare_Boolean_v2_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|996604416"
  l0.Out = self.f_box_Simple_Node_74_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|766787064", "766787064", "S14M060_Main", "box_Compare_Boolean_v2_11.A_is_True", "box_Simple_Node_74.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_75()
  l0 = self.box_MissionCheckpointReach_14
  l1 = self.box_MissionZone_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1077384797", "1077384797", "S14M060_Main", "box_MissionCheckpointReach_14.Out", "box_MissionZone_75.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_78_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|681350802"
  l0.Out = self.f_box_Simple_Node_77_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|864560578", "864560578", "S14M060_Main", "box_Ordered_Output_78.Out", "box_Simple_Node_77.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_78_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1170251225"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_134_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_134_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|954626201", "954626201", "S14M060_Main", "box_Ordered_Output_78.Out", "box_Ordered_Output_134.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_20_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_17
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/358428224.bnk"
  l0 = self.box_PlayDialog_v2_20
  l1 = self.box_PlayDialog_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1858702918", "1858702918", "S14M060_Main", "box_PlayDialog_v2_20.Finished", "box_PlayDialog_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Crane_Controller_57_PlatformPositionSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|295867796"
  l0.Out = self.f_box_Get_Player_ID_132_Out
  l0 = self.box_Crane_Controller_57
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|614388079", "614388079", "S14M060_Main", "box_Crane_Controller_57.PlatformPositionSet", "box_Get_Player_ID_132.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_63_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_63
  self.is_checkpoint_1b = l0.Target
end
function export:f_box_SetBoolean_v2_63_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_63
  self.is_checkpoint_1b = l0.Target
end
function export:f_box_SetBoolean_v2_63_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_63
  self.is_checkpoint_1b = l0.Target
end
function export:f_box_SetBoolean_v2_63_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_63
  self.is_checkpoint_1b = l0.Target
  self:OnEnter_box_MultipleOR_61()
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|701716785", "701716785", "S14M060_Main", "box_SetBoolean_v2_63.SetTrue", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_63_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_63
  self.is_checkpoint_1b = l0.Target
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.is_checkpoint_1b
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|87013223"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1671777917", "1671777917", "S14M060_Main", "box_Ordered_Output_37.Out", "box_Compare_Boolean_v2_66.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_23()
  l0 = self.box_TriggerMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2008711926", "2008711926", "S14M060_Main", "box_Ordered_Output_37.Out", "box_TriggerMonitor_v2_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_37_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_38
  l0.CLO = "9223372056067356236"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1349708696", "1349708696", "S14M060_Main", "box_Ordered_Output_37.Out", "box_CLOMonitor_38.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Show_Or_Hide_All_UI_12_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_127
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|104734671", "104734671", "S14M060_Main", "box_Show_Or_Hide_All_UI_12.Shown", "box_MissionCheckpointReach_127.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|947219140"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|158624453", "158624453", "S14M060_Main", "box_Simple_Node_85.Out", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_135_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_55
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0 = self.box_MissionCheckpointReach_135
  l1 = self.box_Perk_Controller_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|148224584", "148224584", "S14M060_Main", "box_MissionCheckpointReach_135.Out", "box_Perk_Controller_55.AddPerk", l0, l1)
  l1:AddPerk()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_23()
  l0 = self.box_TriggerMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|857302524", "857302524", "S14M060_Main", "box_Ordered_Output_24.Out", "box_TriggerMonitor_v2_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_25()
  l0 = self.box_VehicleMonitor_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1163836385", "1163836385", "S14M060_Main", "box_Ordered_Output_24.Out", "box_VehicleMonitor_v3_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_58
  l0.AutoDisable = 1
  l0.Entity = "9223372049574754202"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1486829302", "1486829302", "S14M060_Main", "box_Ordered_Output_24.Out", "box_EntityLoadingMonitor_58.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_21_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.IsWrenchInCar = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.IsWrenchInCar = l0.Target
  self:OnEnter_box_LogicGate_v2_28()
  l1 = self.box_LogicGate_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|458612556", "458612556", "S14M060_Main", "box_SetBoolean_v2_21.SetFalse", "box_LogicGate_v2_28.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.IsWrenchInCar = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.IsWrenchInCar = l0.Target
end
function export:f_box_SetBoolean_v2_21_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.IsWrenchInCar = l0.Target
end
function export:f_box_Get_Player_ID_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|57410736", "57410736", "S14M060_Main", "box_Get_Player_ID_128.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|273379536", "273379536", "S14M060_Main", "box_Simple_Node_74.Out", "box_MultipleOR_82.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_39_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1126357716"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0 = self.box_MissionMessageController_v3_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|321026295", "321026295", "S14M060_Main", "box_MissionMessageController_v3_39.Out", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_Reach_Gameplay_40_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_19
  l0.LMALayerName = "SF_08_Skyscraper_LMA"
  l0 = self.box_Reach_Gameplay_40
  l1 = self.box_LMA_Layer_Controller_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1894586308", "1894586308", "S14M060_Main", "box_Reach_Gameplay_40.Reached", "box_LMA_Layer_Controller_19.Load", l0, l1)
  l1:Load()
end
function export:f_box_Reach_Gameplay_40_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|916028768"
  l0.Out = self.f_box_Simple_Node_85_Out
  l0 = self.box_Reach_Gameplay_40
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1991199552", "1991199552", "S14M060_Main", "box_Reach_Gameplay_40.Started", "box_Simple_Node_85.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_80()
  l0 = self.box_GameplayInteractionController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|912158406", "912158406", "S14M060_Main", "box_Simple_Node_83.Out", "box_GameplayInteractionController_80.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372051777342069"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|41986123"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_72_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|519929925", "519929925", "S14M060_Main", "box_Ordered_Output_73.Out", "box_InteractionScriptController_72.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.is_checkpoint_1b
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|743501391"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_11_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1182088264", "1182088264", "S14M060_Main", "box_Ordered_Output_73.Out", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1801335127", "1801335127", "S14M060_Main", "box_Get_Player_ID_9.Out", "box_SetBoolean_v2_63.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_134_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.is_checkpoint_1b
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1479742833"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_67_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_67_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|69761585", "69761585", "S14M060_Main", "box_Ordered_Output_134.Out", "box_Compare_Boolean_v2_67.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_134_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14_M060_CIN_SecretMeeting_Main_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1139442166", "1139442166", "S14M060_Main", "box_Ordered_Output_134.Out", "box_S14_M060_CIN_SecretMeeting_Main_13.In", clone, l0)
  l0:In()
end
function export:f_box_EntityLoadingMonitor_58_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_59
  l0.Entity = "9223372049574754202"
  l0.Rotation = -70.5
  l0.PlatformHeight = 59
  l0.SliderPosition = 41
  l0 = self.box_EntityLoadingMonitor_58
  l1 = self.box_Crane_Controller_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|877276327", "877276327", "S14M060_Main", "box_EntityLoadingMonitor_58.AllLoaded", "box_Crane_Controller_59.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_Interact_Gameplay_33_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|780356601"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_78_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_78_Out_1
  l0 = self.box_Interact_Gameplay_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2021820634", "2021820634", "S14M060_Main", "box_Interact_Gameplay_33.Interacted", "box_Ordered_Output_78.In", l0, l1)
  l1:In()
end
function export:f_box_S14M060_GetCivilians_IDs_3_Out_AllCiviliansRegistered()
  local l0
  self = self._graph
  l0 = self.box_S14M060_GetCivilians_IDs_3
  self.LivingRoomCivilians = l0.LivingRoomCivilians_OUT
  self.DiningRoomCivilians = l0.DiningRoomCivilians_OUT
  self.KitchenCivilians = l0.KitchenCivilians_OUT
  self.MicrowaveGuy = l0.MicrowaveGuy_OUT
  self.AcidBathGuy = l0.AcidBathGuy_OUT
end
function export:f_box_AI_Buddy_Controller_22_IsGoingToCLO()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|839912730"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_37_Out_2
  l0 = self.box_AI_Buddy_Controller_22
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|814591799", "814591799", "S14M060_Main", "box_AI_Buddy_Controller_22.IsGoingToCLO", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_84_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1078959150"
  l0.Out = self.f_box_Simple_Node_83_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1119911969", "1119911969", "S14M060_Main", "box_Ordered_Output_84.Out", "box_Simple_Node_83.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_84_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1798977585", "1798977585", "S14M060_Main", "box_Ordered_Output_84.Out", "box_MultipleOR_82.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_62_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_62
  self.Wrench = l0.UserID
  l0 = self.box_CinematicPrep_79
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_62
  l1 = self.box_CinematicPrep_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|380665308", "380665308", "S14M060_Main", "box_CLOController_62.OnUserInPlace", "box_CinematicPrep_79.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Compare_Boolean_v2_67_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|621320982"
  l0.Out = self.f_box_Simple_Node_70_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|223645605", "223645605", "S14M060_Main", "box_Compare_Boolean_v2_67.A_is_False", "box_Simple_Node_70.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_67_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_69
  l0.User = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1196418143", "1196418143", "S14M060_Main", "box_Compare_Boolean_v2_67.A_is_True", "box_CLOController_69.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_MultipleOR_136_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_135
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_136
  l1 = self.box_MissionCheckpointReach_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|361525891", "361525891", "S14M060_Main", "box_MultipleOR_136.Out", "box_MissionCheckpointReach_135.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_75_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|648235253"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_MissionZone_75
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1964275149", "1964275149", "S14M060_Main", "box_MissionZone_75.Enabled", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_S14_M060_CIN_CampaignRally_Main_154_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S14_M060_CIN_CampaignRally_Main_154
  self.CINEMATIC_CAR = l0.CINEMATIC_CAR
  self:OnEnter_box_MultipleOR_42()
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|786775398", "786775398", "S14M060_Main", "box_S14_M060_CIN_CampaignRally_Main_154.Out", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1639753397"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1073114179", "1073114179", "S14M060_Main", "box_Simple_Node_31.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_126_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 15
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|439428017"
  l0.Out = self.f_box_SetTimeOfDay_51_Out
  l0 = self.box_MissionCheckpointReach_126
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1577517872", "1577517872", "S14M060_Main", "box_MissionCheckpointReach_126.Out", "box_SetTimeOfDay_51.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_LMA_Layer_Controller_19_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_LMA_Layer_Controller_19
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|73809306", "73809306", "S14M060_Main", "box_LMA_Layer_Controller_19.Loaded", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_23_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_25()
  l0 = self.box_TriggerMonitor_v2_23
  l1 = self.box_VehicleMonitor_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|735482140", "735482140", "S14M060_Main", "box_TriggerMonitor_v2_23.Disabled", "box_VehicleMonitor_v3_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_23_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_23
  self.PreMeetingTriggerCollider = l0.Collider
end
function export:f_box_TriggerMonitor_v2_23_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_23
  self.PreMeetingTriggerCollider = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.PreMeetingTriggerCollider
  l0.Entity2 = self.Wrench
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1591133520"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_49_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_23
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2119511473", "2119511473", "S14M060_Main", "box_TriggerMonitor_v2_23.Enter", "box_Compare_Entity_v2_49.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_23_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_23
  self.PreMeetingTriggerCollider = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.PreMeetingTriggerCollider
  l0.Entity2 = self.Wrench
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1600277119"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_50_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_23
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|303976161", "303976161", "S14M060_Main", "box_TriggerMonitor_v2_23.Leave", "box_Compare_Entity_v2_50.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_23_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_23
  self.PreMeetingTriggerCollider = l0.Collider
end
function export:f_box_Compare_Entity_v2_49_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsWrenchInCar
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1835029568"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_27_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_27_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1629446106", "1629446106", "S14M060_Main", "box_Compare_Entity_v2_49.Equal", "box_Compare_Boolean_v2_27.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_26
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_44
  l1 = self.box_CinematicPrep_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1641735976", "1641735976", "S14M060_Main", "box_Timer_v2_44.TimeElapsed", "box_CinematicPrep_26.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Compare_Entity_v2_50_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_28()
  l0 = self.box_LogicGate_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2141575262", "2141575262", "S14M060_Main", "box_Compare_Entity_v2_50.Equal", "box_LogicGate_v2_28.Close", clone, l0)
  l0:Close()
end
function export:f_box_MissionCheckpointReach_127_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|719422003"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_114_Out_2
  l0 = self.box_MissionCheckpointReach_127
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|22070202", "22070202", "S14M060_Main", "box_MissionCheckpointReach_127.Out", "box_Ordered_Output_114.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S14M060_WrenchManager_48()
  l0 = self.box_S14M060_WrenchManager_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|302269413", "302269413", "S14M060_Main", "box_Simple_Node_32.Out", "box_S14M060_WrenchManager_48.Stop_DistanceFailCheck", clone, l0)
  l0:Stop_DistanceFailCheck()
end
function export:f_box_MultipleOR_180_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_126
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_180
  l1 = self.box_MissionCheckpointReach_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|59711555", "59711555", "S14M060_Main", "box_MultipleOR_180.Out", "box_MissionCheckpointReach_126.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_14
  l0.Checkpoint = "CheckPoint_1b"
  l0 = self.box_MultipleOR_61
  l1 = self.box_MissionCheckpointReach_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1245299589", "1245299589", "S14M060_Main", "box_MultipleOR_61.Out", "box_MissionCheckpointReach_14.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_79_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_CinematicPrep_79
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|584185859", "584185859", "S14M060_Main", "box_CinematicPrep_79.PostOut", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_27_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_30()
  l0 = self.box_OnceOnly_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|749278746", "749278746", "S14M060_Main", "box_Compare_Boolean_v2_27.A_is_False", "box_OnceOnly_v3_30.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Boolean_v2_27_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_28()
  l0 = self.box_LogicGate_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1664532830", "1664532830", "S14M060_Main", "box_Compare_Boolean_v2_27.A_is_True", "box_LogicGate_v2_28.Open", clone, l0)
  l0:Open()
end
function export:f_box_MissionMessageController_v3_111_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_40
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372050741533916"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_111
  l1 = self.box_Reach_Gameplay_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1208558938", "1208558938", "S14M060_Main", "box_MissionMessageController_v3_111.Out", "box_Reach_Gameplay_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_125_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|6660226"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_125
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|837449021", "837449021", "S14M060_Main", "box_MissionLayer_v2_125.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TalkerController_52
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372062935708805"
  l0 = self.box_Multiple_AND_53
  l1 = self.box_TalkerController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|192037374", "192037374", "S14M060_Main", "box_Multiple_AND_53.Out", "box_TalkerController_52.SetConversationOnEntity", l0, l1)
  l1:SetConversationOnEntity()
end
function export:f_box_Simple_Node_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_75()
  l0 = self.box_MissionZone_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2107943052", "2107943052", "S14M060_Main", "box_Simple_Node_76.Out", "box_MissionZone_75.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_39
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective030",
    item = "Objective",
    id = "354185"
  }
  l0 = self.box_MultipleOR_65
  l1 = self.box_MissionMessageController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|322709317", "322709317", "S14M060_Main", "box_MultipleOR_65.Out", "box_MissionMessageController_v3_39.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_41
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/2007092709.bnk"
  l0 = self.box_MultipleOR_82
  l1 = self.box_PlayDialog_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1719438120", "1719438120", "S14M060_Main", "box_MultipleOR_82.Out", "box_PlayDialog_v2_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_81_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|976630823"
  l0.Out = self.f_box_Get_Player_ID_128_Out
  l0 = self.box_MissionLayer_v2_81
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1242690455", "1242690455", "S14M060_Main", "box_MissionLayer_v2_81.Loaded", "box_Get_Player_ID_128.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_60_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|1153799772"
  l0.Out = self.f_box_Get_Player_ID_9_Out
  l0 = self.box_MissionLayer_v2_60
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|23381785", "23381785", "S14M060_Main", "box_MissionLayer_v2_60.Loaded", "box_Get_Player_ID_9.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_131_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|388978076"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0 = self.box_MissionLayer_v2_131
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_Main|2083668231", "2083668231", "S14M060_Main", "box_MissionLayer_v2_131.Loaded", "box_Ordered_Output_15.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_30()
end
function export:OnEnter_box_VehicleMonitor_v3_25()
  local l0
  l0 = self.box_VehicleMonitor_v3_25
  l0.Pawn = self.Wrench
end
function export:OnEnter_box_LogicGate_v2_28()
  local l0
  l0 = self.box_LogicGate_v2_28
  l0.initStateOpen = 0
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_S14M060_FromTheRooftop_8()
  local l0
  l0 = self.box_S14M060_FromTheRooftop_8
  l0.IN_LivingRoomCivilians = self.LivingRoomCivilians
  l0.IN_DiningRoomCivilians = self.DiningRoomCivilians
  l0.IN_KitchenCivilians = self.KitchenCivilians
  l0.IN_MicrowaveGuy = self.MicrowaveGuy
  l0.IN_AcidBathGuy = self.AcidBathGuy
end
function export:OnEnter_box_S14M060_WrenchManager_48()
  local l0
  l0 = self.box_S14M060_WrenchManager_48
  l0.Wrench_CLO = "9223372046887669322"
end
function export:OnEnter_box_GameplayInteractionController_80()
  local l0
  l0 = self.box_GameplayInteractionController_80
  l0.User1 = self.PlayerEntity
  l0.User2 = self.Wrench
  l0.RuleConfig = "GameplayConversationSettings.9223372049814796295"
end
function export:OnEnter_box_SetBoolean_v2_21()
end
function export:OnEnter_box_MultipleOR_136()
end
function export:OnEnter_box_MissionZone_75()
  local l0
  l0 = self.box_MissionZone_75
  l0.MissionArea = "9223372064407028772"
  l0.MissionLayer = "S14M060_Main"
  l0.LmaLayer = "SF_08_Skyscraper_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_TriggerMonitor_v2_23()
  local l0
  l0 = self.box_TriggerMonitor_v2_23
  l0.Trigger = "9223372055370338357"
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_180()
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_Multiple_AND_53()
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_MultipleOR_82()
end
_compilerVersion = 4
