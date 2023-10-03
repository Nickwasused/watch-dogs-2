export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/EnableVehicleRadioSystem.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M020/S03_M020_CIN_AIDrive.S03_M020_CIN_AIDrive_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M020/S03_M020_CIN_SmartCar.S03_M020_CIN_SmartCar_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetIsHindingInVehicle.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1077058006.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1246218219.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2592806601.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2303875927.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3760647909.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3349634757.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/647288204.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2577052881.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2949501724.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1918557130.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2135885279.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4033795671.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2196133766.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2146639917.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2770162362.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/709180270.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4155306742.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3841799905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/805634204.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2270014178.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/213975402.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1968675972.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3602918216.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/42397832.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4254049479.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4026214074.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4223454010.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2911472626.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3065254418.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1006766581.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1270627348.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3027244872.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1459568064.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main"
  self.PlayerEntity = "100"
  self.CHIP = nil
  self.Convoy = nil
  self.Spawned_VIP = nil
  self.DeliveryTruck = 0
  self.test = nil
  self.VehicleFollower_01 = nil
  self.VehicleFollower_02 = nil
  self.Escort01 = nil
  self.Escort02 = nil
  self.Vehicle_Follower = {}
  self.Escorts_List = {}
  self.Random_SmileyBoom = {}
  self.WrenchHelp_Check = 0
  self.PGT_AI = {}
  self.Security = "Security"
  self.IsConvoyInterrupted = 0
  self.GarageTrigger = nil
  self.IsInstigatorPlayer = nil
  self.S03M020_Convoy = nil
  self.S03M020_Driver = nil
  self.S03M020_Follow = nil
  self.TalkingCar01 = {}
  self.TalkingCar02 = {}
  self.TalkingCar03 = {}
  self.TalkingCar04 = {}
  self.TalkingCar06 = {}
  self.TalkingCar05 = {}
  self.AI_CLO_01_Aware = nil
  self.AI_CLO_01_Unaware = nil
  self.AI_CLO_02_Unaware = nil
  self.Escort = {}
  self.Paparazzi_PostCin = nil
  self.Vehicle_Leader = nil
  self.IsInFelony = 0
  self.IsNarrativeFinished = 0
  self.IsCar02Finished = 0
  self.IsCar03Finished = 0
  self.IsCar06Finished = 0
  self.IsCar05Finished = 0
  self.PoliceCar5 = nil
  self.Unemi_03 = nil
  self.PoliceCar_01 = nil
  self.PoliceCar_03 = nil
  self.PoliceCar_02 = nil
  self.PoliceBark3 = {}
  self.PoliceCar_04 = nil
  self.IsCloseFromGarage = 0
  self.box_ListWriterSoundID_110 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_110
  l0._graph = self
  l0._name = "box_ListWriterSoundID_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|30667261"
  l0._DynamicAnchors = {SoundID = 6}
  l0.Added = self.f_box_ListWriterSoundID_110_Added
  l0.Removed = self.f_box_ListWriterSoundID_110_Removed
  l0.Out = self.f_box_ListWriterSoundID_110_Out
  self.box_ListWriterSoundID_94 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_94
  l0._graph = self
  l0._name = "box_ListWriterSoundID_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|39628818"
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_box_ListWriterSoundID_94_Added
  l0.Removed = self.f_box_ListWriterSoundID_94_Removed
  l0.Out = self.f_box_ListWriterSoundID_94_Out
  self.box_CinematicPrep_53 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_53
  l0._graph = self
  l0._name = "box_CinematicPrep_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|41296553"
  l0.PreOut = self.f_box_CinematicPrep_53_PreOut
  l0.PostOut = DummyFunction
  self.box_PGTController_v2_133 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_133
  l0._graph = self
  l0._name = "box_PGTController_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|41938517"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_133_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Timer_v2_106 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_106
  l0._graph = self
  l0._name = "box_Timer_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|52395398"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_106_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_50 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_50
  l0._graph = self
  l0._name = "box_MultipleOR_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|56884323"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_50_Out
  self.box_MissionMessageController_v3_54 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_54
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|65233382"
  l0.Out = self.f_box_MissionMessageController_v3_54_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_113 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_113
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|169993674"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_113_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_25 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_25
  l0._graph = self
  l0._name = "box_OnceOnly_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|174576432"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_25_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_38 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_38
  l0._graph = self
  l0._name = "box_MissionLayer_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|178885517"
  l0.Loaded = self.f_box_MissionLayer_v2_38_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Player_Proximity_Monitor_127 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_127
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|187626006"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_127_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_127_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_Multiple_AND_44 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_44
  l0._graph = self
  l0._name = "box_Multiple_AND_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|204435250"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_44_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Intel_Controller_176 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_176
  l0._graph = self
  l0._name = "box_Intel_Controller_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|223980103"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_176_Disabled
  self.box_Player_Proximity_Monitor_71 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_71
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|237699906"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_71_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_71_EnterRadius
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_71_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CLOController_92 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_92
  l0._graph = self
  l0._name = "box_CLOController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|243422417"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_92_Deactivated
  l0.UnspawnedUser = self.f_box_CLOController_92_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Reach_Gameplay_173 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_173
  l0._graph = self
  l0._name = "box_Reach_Gameplay_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|279190355"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_173_Reached
  self.box_SetBoolean_v2_83 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_83
  l0._graph = self
  l0._name = "box_SetBoolean_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|330986975"
  l0.Out = self.f_box_SetBoolean_v2_83_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_83_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_83_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_83_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_83_SetFromBool
  self.box_CLOController_140 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_140
  l0._graph = self
  l0._name = "box_CLOController_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|355354247"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_140_OnUserInPlace
  self.box_PlayDialog_v2_39 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_39
  l0._graph = self
  l0._name = "box_PlayDialog_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|399632451"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Vehicle_Failure_66 = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  l0 = self.box_Vehicle_Failure_66
  l0._graph = self
  l0._name = "box_Vehicle_Failure_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|404693057"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Vehicle_Failure_66_Stopped
  l0.Fail = self.f_box_Vehicle_Failure_66_Fail
  self.box_SetBoolean_v2_82 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_82
  l0._graph = self
  l0._name = "box_SetBoolean_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|422768228"
  l0.Out = self.f_box_SetBoolean_v2_82_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_82_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_82_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_82_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_82_SetFromBool
  self.box_CLOController_42 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|429727620"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_42_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_41 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_41
  l0._graph = self
  l0._name = "box_CLOController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|440942613"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_41_OnUserInPlace
  self.box_PGTController_v2_101 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_101
  l0._graph = self
  l0._name = "box_PGTController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|461942581"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_101_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PlayDialogInVehicle_100 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_100
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|462208511"
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogInVehicle_100_Finished
  l0.Skipped = DummyFunction
  self.box_PlayDialogInVehicle_111 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_111
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|478955412"
  l0.Started = self.f_box_PlayDialogInVehicle_111_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_111_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_111_Skipped
  self.box_MissionLayer_v2_52 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_52
  l0._graph = self
  l0._name = "box_MissionLayer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|507766099"
  l0.Loaded = self.f_box_MissionLayer_v2_52_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S03_M020_CIN_AIDrive_Main_46 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M020/S03_M020_CIN_AIDrive.S03_M020_CIN_AIDrive_Main.debug.lua")
  l0 = self.box_S03_M020_CIN_AIDrive_Main_46
  l0._graph = self
  l0._name = "box_S03_M020_CIN_AIDrive_Main_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|525576743"
  l0.Out = self.f_box_S03_M020_CIN_AIDrive_Main_46_Out
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|548809028"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_PlayDialogInVehicle_154 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_154
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|554826809"
  l0.Started = self.f_box_PlayDialogInVehicle_154_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_154_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_154_Skipped
  self.box_MissionCheckpointReach_31 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_31
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|565279114"
  l0.Out = self.f_box_MissionCheckpointReach_31_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_56 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_56
  l0._graph = self
  l0._name = "box_MissionLayer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|566115545"
  l0.Loaded = self.f_box_MissionLayer_v2_56_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_103 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_103
  l0._graph = self
  l0._name = "box_Timer_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|566392002"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_103_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_49 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_49
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|569212224"
  l0.Out = self.f_box_MissionCheckpointReach_49_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|585838601"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_84 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_84
  l0._graph = self
  l0._name = "box_OnceOnly_v3_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|646502979"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_84_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_151 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_151
  l0._graph = self
  l0._name = "box_CLOController_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|684326351"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_151_OnUserInPlace
  self.box_ListWriterSoundID_16 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_16
  l0._graph = self
  l0._name = "box_ListWriterSoundID_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|725907206"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_16_Added
  l0.Removed = self.f_box_ListWriterSoundID_16_Removed
  l0.Out = self.f_box_ListWriterSoundID_16_Out
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|742124678"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_7_MessageCompleted
  self.box_CLOController_147 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_147
  l0._graph = self
  l0._name = "box_CLOController_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|754634586"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_147_OnUserInPlace
  self.box_Timer_v2_157 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_157
  l0._graph = self
  l0._name = "box_Timer_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|759467514"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialogInVehicle_109 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_109
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|763531495"
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogInVehicle_109_Finished
  l0.Skipped = DummyFunction
  self.box_PhoneCommunicationController_112 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_112
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|764230338"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_112_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_63 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_63
  l0._graph = self
  l0._name = "box_CinematicPrep_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|768007964"
  l0.PreOut = self.f_box_CinematicPrep_63_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_172 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_172
  l0._graph = self
  l0._name = "box_PlaySound_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|783294727"
  l0.Out = self.f_box_PlaySound_v2_172_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|846029899"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_MultipleOR_93 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|846875886"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_Timer_v2_120 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_120
  l0._graph = self
  l0._name = "box_Timer_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|853639305"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_120_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_165 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_165
  l0._graph = self
  l0._name = "box_PlaySound_v2_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|877811064"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_150 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_150
  l0._graph = self
  l0._name = "box_CLOController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1022085483"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_150_OnUserInPlace
  self.box_PlayDialogInVehicle_131 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_131
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1042834268"
  l0.Started = self.f_box_PlayDialogInVehicle_131_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_131_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_131_Skipped
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1055150478"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_Intel_Controller_175 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_175
  l0._graph = self
  l0._name = "box_Intel_Controller_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1073687295"
  l0.Enabled = self.f_box_Intel_Controller_175_Enabled
  l0.Disabled = DummyFunction
  self.box_PlaySequence_v5_13 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_13
  l0._graph = self
  l0._name = "box_PlaySequence_v5_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1078629326"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_13_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_13_Finished
  self.box_MissionMessageController_v3_10 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_10
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1083847369"
  l0.Out = self.f_box_MissionMessageController_v3_10_Out
  l0.MessageCompleted = DummyFunction
  self.box_Teleport_To_SpawnPoint_59 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_59
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1135912352"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_59_TeleportDone
  self.box_TutorialController_163 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_163
  l0._graph = self
  l0._name = "box_TutorialController_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1137941779"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1162927201"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1169247358"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Interact_Gameplay_8 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_8
  l0._graph = self
  l0._name = "box_Interact_Gameplay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1170400880"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_8_Interacted
  self.box_PlayDialog_v2_123 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_123
  l0._graph = self
  l0._name = "box_PlayDialog_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1189272793"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_123_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_18 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_18
  l0._graph = self
  l0._name = "box_OnceOnly_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1234384641"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_18_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1247465225"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_17_OnUserInPlace
  self.box_ListWriterSoundID_95 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_95
  l0._graph = self
  l0._name = "box_ListWriterSoundID_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1261029732"
  l0._DynamicAnchors = {SoundID = 5}
  l0.Added = self.f_box_ListWriterSoundID_95_Added
  l0.Removed = self.f_box_ListWriterSoundID_95_Removed
  l0.Out = self.f_box_ListWriterSoundID_95_Out
  self.box_Timer_v2_64 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_64
  l0._graph = self
  l0._name = "box_Timer_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1262918647"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_64_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleMonitor_v3_122 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_122
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1266700912"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_122_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
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
  self.box_CLOController_148 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_148
  l0._graph = self
  l0._name = "box_CLOController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1272005949"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_148_OnUserInPlace
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1286097046"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_14_OnUserInPlace
  self.box_PlayDialogInVehicle_98 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_98
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1286501868"
  l0.Started = self.f_box_PlayDialogInVehicle_98_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_98_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_98_Skipped
  self.box_PlayDialog_v2_33 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_33
  l0._graph = self
  l0._name = "box_PlayDialog_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1288564190"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_81 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_81
  l0._graph = self
  l0._name = "box_CinematicPrep_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1298940196"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_81_PostOut
  self.box_PhoneCommunicationController_114 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_114
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1339883811"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_114_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Delivery_Gameplay_60 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_60
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1351017236"
  l0.Started = self.f_box_Delivery_Gameplay_60_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_60_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = self.f_box_Delivery_Gameplay_60_Evaded
  l0.InConflict = self.f_box_Delivery_Gameplay_60_InConflict
  l0.TeamSpeakFinished = DummyFunction
  self.box_TriggerMonitor_v2_164 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_164
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1370941370"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_164_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_164_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Loading_Screen_Monitor_v2_22 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_22
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1377384085"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_22_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_TutorialController_67 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_67
  l0._graph = self
  l0._name = "box_TutorialController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1396399272"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_box_TutorialController_67_MessageCompleted
  self.box_VehicleSeatingController_69 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_69
  l0._graph = self
  l0._name = "box_VehicleSeatingController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1427562603"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_69_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1459533492"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_159 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_159
  l0._graph = self
  l0._name = "box_CLOController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1462371481"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_159_OnUserInPlace
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1500770039"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_27 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_27
  l0._graph = self
  l0._name = "box_PlayDialog_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1521837200"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_129 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_129
  l0._graph = self
  l0._name = "box_PlaySequence_v5_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1540850270"
  l0._DynamicAnchors = {
    EntityIn = {"CHIP"},
    EntityOut = {"CHIP", "Box_Van"},
    SPOut = {
      "Play_Music",
      "PoweringUp",
      "SystemCheck",
      "Sweet"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_129_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_129_Finished
  l0.SPOut.Play_Music = DummyFunction
  l0.SPOut.PoweringUp = self.f_box_PlaySequence_v5_129_SPOut__PoweringUp_
  l0.SPOut.SystemCheck = self.f_box_PlaySequence_v5_129_SPOut__SystemCheck_
  l0.SPOut.Sweet = self.f_box_PlaySequence_v5_129_SPOut__Sweet_
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1583406916"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_PlaySound_v2_156 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_156
  l0._graph = self
  l0._name = "box_PlaySound_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1599821756"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_116 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_116
  l0._graph = self
  l0._name = "box_Timer_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1652047692"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_116_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Mission_End_30 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_30
  l0._graph = self
  l0._name = "box_Mission_End_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1658396818"
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1665059916"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_70 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_70
  l0._graph = self
  l0._name = "box_Timer_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1690955097"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_137 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_137
  l0._graph = self
  l0._name = "box_Multiple_AND_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1718854211"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_137_Out
  self.box_MultipleOR_152 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_152
  l0._graph = self
  l0._name = "box_MultipleOR_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1719243475"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_152_Out
  self.box_TriggerMonitor_v2_166 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_166
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1742238114"
  l0.Enabled = self.f_box_TriggerMonitor_v2_166_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_166_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_166_Leave
  l0.Use = DummyFunction
  self.box_VehicleSeatingController_144 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_144
  l0._graph = self
  l0._name = "box_VehicleSeatingController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1780139172"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_144_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1808406955"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_171 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_171
  l0._graph = self
  l0._name = "box_PlaySound_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1813023063"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_72 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_72
  l0._graph = self
  l0._name = "box_CinematicPrep_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1827733332"
  l0.PreOut = self.f_box_CinematicPrep_72_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_29 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_29
  l0._graph = self
  l0._name = "box_Timer_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1840613375"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_29_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionZone_126 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_126
  l0._graph = self
  l0._name = "box_MissionZone_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1851121369"
  l0.Enabled = self.f_box_MissionZone_126_Enabled
  l0.Disabled = self.f_box_MissionZone_126_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlayDialogInVehicle_96 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_96
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1874761584"
  l0.Started = self.f_box_PlayDialogInVehicle_96_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_96_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_96_Skipped
  self.box_CLOController_145 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_145
  l0._graph = self
  l0._name = "box_CLOController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1900417770"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_145_OnUserInPlace
  self.box_S03_M020_CIN_SmartCar_Main_47 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M020/S03_M020_CIN_SmartCar.S03_M020_CIN_SmartCar_Main.debug.lua")
  l0 = self.box_S03_M020_CIN_SmartCar_Main_47
  l0._graph = self
  l0._name = "box_S03_M020_CIN_SmartCar_Main_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1943750083"
  l0.Out = self.f_box_S03_M020_CIN_SmartCar_Main_47_Out
  self.box_PlayDialogInVehicle_128 = cbox:CreateBox("domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_128
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1978236447"
  l0.Started = self.f_box_PlayDialogInVehicle_128_Started
  l0.Finished = self.f_box_PlayDialogInVehicle_128_Finished
  l0.Skipped = self.f_box_PlayDialogInVehicle_128_Skipped
  self.box_MultipleOR_177 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_177
  l0._graph = self
  l0._name = "box_MultipleOR_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1999814451"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_177_Out
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2004643848"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_PhoneCommunicationController_97 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_97
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2006319315"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_97_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2031795301"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriterSoundID_108 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_108
  l0._graph = self
  l0._name = "box_ListWriterSoundID_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2046659413"
  l0._DynamicAnchors = {SoundID = 6}
  l0.Added = self.f_box_ListWriterSoundID_108_Added
  l0.Removed = self.f_box_ListWriterSoundID_108_Removed
  l0.Out = self.f_box_ListWriterSoundID_108_Out
  self.box_CinematicPrep_142 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_142
  l0._graph = self
  l0._name = "box_CinematicPrep_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2101726196"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_142_PostOut
  self.box_MissionCheckpointReach_48 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_48
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2112046150"
  l0.Out = self.f_box_MissionCheckpointReach_48_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ListWriterSoundID_99 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_99
  l0._graph = self
  l0._name = "box_ListWriterSoundID_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2115294784"
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_box_ListWriterSoundID_99_Added
  l0.Removed = self.f_box_ListWriterSoundID_99_Removed
  l0.Out = self.f_box_ListWriterSoundID_99_Out
  self.box_SetBoolean_v2_117 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_117
  l0._graph = self
  l0._name = "box_SetBoolean_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2115716496"
  l0.Out = self.f_box_SetBoolean_v2_117_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_117_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_117_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_117_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_117_SetFromBool
  self.box_MissionMessageController_v3_174 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_174
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2116538292"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_174_MessageCompleted
  self.box_PlayDialog_v2_136 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_136
  l0._graph = self
  l0._name = "box_PlayDialog_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2117514774"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_136_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
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
  l0 = self.box_MissionLayer_v2_52
  l0.LayerName = "S03M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|155202645", "155202645", "S03M020_Main", "CheckPoint_0", "box_MissionLayer_v2_52.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_56
  l0.LayerName = "S03M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|578143309", "578143309", "S03M020_Main", "CheckPoint_1", "box_MissionLayer_v2_56.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_38
  l0.LayerName = "S03M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1268866190", "1268866190", "S03M020_Main", "CheckPoint_2", "box_MissionLayer_v2_38.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_30()
  l0 = self.box_Mission_End_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|549344258", "549344258", "S03M020_Main", "CheckPoint_3", "box_Mission_End_30.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S03M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1104553538", "1104553538", "S03M020_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_166
  l0.Trigger = "9223372052098999512"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|68136765", "68136765", "S03M020_Main", "box_Ordered_Output_43.Out", "box_TriggerMonitor_v2_166.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_164()
  l0 = self.box_TriggerMonitor_v2_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|838664693", "838664693", "S03M020_Main", "box_Ordered_Output_43.Out", "box_TriggerMonitor_v2_164.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListWriterSoundID_110_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_110
  self.TalkingCar05 = l0.Target
  l0 = self.box_MissionMessageController_v3_10
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_ListWriterSoundID_110
  l1 = self.box_MissionMessageController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|939801162", "939801162", "S03M020_Main", "box_ListWriterSoundID_110.Added", "box_MissionMessageController_v3_10.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriterSoundID_110_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_110
  self.TalkingCar05 = l0.Target
end
function export:f_box_ListWriterSoundID_110_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_110
  self.TalkingCar05 = l0.Target
end
function export:f_box_TimeScale_Controller_90_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|627495989", "627495989", "S03M020_Main", "box_TimeScale_Controller_90.Locked", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetVehicleLightAndSiren_v2_135_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|539243456"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1165040198", "1165040198", "S03M020_Main", "box_SetVehicleLightAndSiren_v2_135.Out", "box_SetVehicleLightAndSiren_v2_162.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_ListWriterSoundID_94_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_94
  self.TalkingCar02 = l0.Target
  l0 = self.box_ListWriterSoundID_95
  l0.Input = self.TalkingCar03
  l0.SoundID[0] = "soundbinary/1006766581.bnk"
  l0.SoundID[1] = "soundbinary/2949501724.bnk"
  l0.SoundID[2] = "soundbinary/2577052881.bnk"
  l0.SoundID[3] = "soundbinary/2592806601.bnk"
  l0.SoundID[4] = "soundbinary/1918557130.bnk"
  l0 = self.box_ListWriterSoundID_94
  l1 = self.box_ListWriterSoundID_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|226042578", "226042578", "S03M020_Main", "box_ListWriterSoundID_94.Added", "box_ListWriterSoundID_95.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_94_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_94
  self.TalkingCar02 = l0.Target
end
function export:f_box_ListWriterSoundID_94_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_94
  self.TalkingCar02 = l0.Target
end
function export:f_box_CinematicPrep_53_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_92()
  l0 = self.box_CinematicPrep_53
  l1 = self.box_CLOController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1520024623", "1520024623", "S03M020_Main", "box_CinematicPrep_53.PreOut", "box_CLOController_92.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_PGTController_v2_133_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_175
  l0.Entity = "9223372068891947766"
  l0 = self.box_PGTController_v2_133
  l1 = self.box_Intel_Controller_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1493584747", "1493584747", "S03M020_Main", "box_PGTController_v2_133.AllSpawned", "box_Intel_Controller_175.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_106_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_152()
  l0 = self.box_Timer_v2_106
  l1 = self.box_MultipleOR_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|379142680", "379142680", "S03M020_Main", "box_Timer_v2_106.TimeElapsed", "box_MultipleOR_152.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S03_M020_CIN_SmartCar_Main_47
  l0.Chip_Cin = self.CHIP
  l0 = self.box_MultipleOR_50
  l1 = self.box_S03_M020_CIN_SmartCar_Main_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1401140801", "1401140801", "S03M020_Main", "box_MultipleOR_50.Out", "box_S03_M020_CIN_SmartCar_Main_47.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_49
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionMessageController_v3_54
  l1 = self.box_MissionCheckpointReach_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1588412736", "1588412736", "S03M020_Main", "box_MissionMessageController_v3_54.Out", "box_MissionCheckpointReach_49.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1555886965"
  l0.Out = self.f_box_Simple_Node_74_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1735009533", "1735009533", "S03M020_Main", "box_Simple_Node_75.Out", "box_Simple_Node_74.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_132_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_154
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar05
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|708621704", "708621704", "S03M020_Main", "box_Compare_Boolean_v2_132.notA_and_notB", "box_PlayDialogInVehicle_154.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_113_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|352619"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0 = self.box_PhoneCommunicationController_113
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1410492801", "1410492801", "S03M020_Main", "box_PhoneCommunicationController_113.OnCommunicationFinished", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_9
  l0.Seconds = 3
  l0 = self.box_OnceOnly_v3_25
  l1 = self.box_Timer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1621115965", "1621115965", "S03M020_Main", "box_OnceOnly_v3_25.Out", "box_Timer_v2_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_38_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1495935881"
  l0.Out = self.f_box_Get_Player_ID_169_Out
  l0 = self.box_MissionLayer_v2_38
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2080430942", "2080430942", "S03M020_Main", "box_MissionLayer_v2_38.Loaded", "box_Get_Player_ID_169.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Proximity_Monitor_127_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_122()
  l0 = self.box_Player_Proximity_Monitor_127
  l1 = self.box_VehicleMonitor_v3_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1222140919", "1222140919", "S03M020_Main", "box_Player_Proximity_Monitor_127.Enabled", "box_VehicleMonitor_v3_122.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_127_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Proximity_Monitor_127
  l1 = self.box_SetBoolean_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1582805791", "1582805791", "S03M020_Main", "box_Player_Proximity_Monitor_127.EnterRadius", "box_SetBoolean_v2_83.True", l0, l1)
  l1:True()
end
function export:f_box_Multiple_AND_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_31
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_Multiple_AND_44
  l1 = self.box_MissionCheckpointReach_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1370894607", "1370894607", "S03M020_Main", "box_Multiple_AND_44.Out", "box_MissionCheckpointReach_31.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|786361222"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_167_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|420497650", "420497650", "S03M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Ordered_Output_167.In", l0, l1)
  l1:In()
end
function export:f_box_Intel_Controller_176_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1392532661"
  l0.Out = self.f_box_Simple_Node_77_Out
  l0 = self.box_Intel_Controller_176
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1388207832", "1388207832", "S03M020_Main", "box_Intel_Controller_176.Disabled", "box_Simple_Node_77.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_87_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1208766431"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_149_Unlocked
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|931740004", "931740004", "S03M020_Main", "box_Show_Or_Hide_All_UI_87.Shown", "box_TimeScale_Controller_149.Unlock", clone, l0)
  l0:Unlock()
end
function export:f_box_Player_Proximity_Monitor_71_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_174
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M010.ActivationObjective",
    item = "ActivationObjective",
    id = "341403"
  }
  l0 = self.box_Player_Proximity_Monitor_71
  l1 = self.box_MissionMessageController_v3_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1746782553", "1746782553", "S03M020_Main", "box_Player_Proximity_Monitor_71.Disabled", "box_MissionMessageController_v3_174.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Player_Proximity_Monitor_71_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_Player_Proximity_Monitor_71
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|159331449", "159331449", "S03M020_Main", "box_Player_Proximity_Monitor_71.EnterRadius", "box_MultipleOR_177.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Player_Proximity_Monitor_71_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_71()
  l0 = self.box_Player_Proximity_Monitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|36034440", "36034440", "S03M020_Main", "box_Player_Proximity_Monitor_71.ExitRadius", "box_Player_Proximity_Monitor_71.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_92_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_CLOController_92
  l1 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1246568288", "1246568288", "S03M020_Main", "box_CLOController_92.Deactivated", "box_MultipleOR_50.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_92_UnspawnedUser()
  local l0
  self = self._graph
  self:OnEnter_box_CLOController_92()
  l0 = self.box_CLOController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|48633500", "48633500", "S03M020_Main", "box_CLOController_92.UnspawnedUser", "box_CLOController_92.Deactivate", l0, l0)
  l0:Deactivate()
end
function export:f_box_Reach_Gameplay_173_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_177()
  l0 = self.box_Reach_Gameplay_173
  l1 = self.box_MultipleOR_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1400403626", "1400403626", "S03M020_Main", "box_Reach_Gameplay_173.Reached", "box_MultipleOR_177.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_118_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_123
  l0.SoundIdList = self.PoliceBark3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|413710064", "413710064", "S03M020_Main", "box_Compare_Boolean_v2_118.A_is_True", "box_PlayDialog_v2_123.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetBoolean_v2_83_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self.IsCloseFromGarage = l0.Target
end
function export:f_box_SetBoolean_v2_83_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self.IsCloseFromGarage = l0.Target
end
function export:f_box_SetBoolean_v2_83_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self.IsCloseFromGarage = l0.Target
end
function export:f_box_SetBoolean_v2_83_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self.IsCloseFromGarage = l0.Target
end
function export:f_box_SetBoolean_v2_83_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self.IsCloseFromGarage = l0.Target
end
function export:f_box_Compare_Boolean_v2_121_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_98
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar03
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|481823237", "481823237", "S03M020_Main", "box_Compare_Boolean_v2_121.A_is_True", "box_PlayDialogInVehicle_98.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_140_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_140
  self.PoliceCar_01 = l0.UserID
  l0 = self.box_CLOController_147
  l0.CLO = "9223372065590187597"
  l0 = self.box_CLOController_140
  l1 = self.box_CLOController_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1507166628", "1507166628", "S03M020_Main", "box_CLOController_140.OnUserInPlace", "box_CLOController_147.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Boolean_v2_58_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_25()
  l0 = self.box_OnceOnly_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1387382439", "1387382439", "S03M020_Main", "box_Compare_Boolean_v2_58.A_is_True", "box_OnceOnly_v3_25.In", clone, l0)
  l0:In(1)
end
function export:f_box_InteractionScriptController_139_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|412741412"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_box_Set_Is_Hiding_In_Vehicle_40_HideInVehicleDisabled
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|358764839", "358764839", "S03M020_Main", "box_InteractionScriptController_139.Disabled", "box_Set_Is_Hiding_In_Vehicle_40.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:f_box_SetTimeOfDay_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|766271437"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_89_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|400864195", "400864195", "S03M020_Main", "box_SetTimeOfDay_76.Out", "box_TimeScale_Controller_89.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Vehicle_Failure_66_Fail()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 4
  l0._graph = self
  l0._name = "box_StopMusic_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1708249485"
  l0.Out = self.f_box_StopMusic_65_Out
  l0 = self.box_Vehicle_Failure_66
  l1 = Boxes[PathID("domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|484482189", "484482189", "S03M020_Main", "box_Vehicle_Failure_66.Fail", "box_StopMusic_65.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Failure_66_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_71()
  l0 = self.box_Vehicle_Failure_66
  l1 = self.box_Player_Proximity_Monitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1105426425", "1105426425", "S03M020_Main", "box_Vehicle_Failure_66.Stopped", "box_Player_Proximity_Monitor_71.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_40_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_63
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1415923100", "1415923100", "S03M020_Main", "box_Set_Is_Hiding_In_Vehicle_40.HideInVehicleDisabled", "box_CinematicPrep_63.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_SetBoolean_v2_82_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.IsNarrativeFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.IsNarrativeFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.IsNarrativeFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.IsNarrativeFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.IsNarrativeFinished = l0.Target
end
function export:f_box_CLOController_42_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_145
  l0.CLO = "9223372048573079345"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_42
  l1 = self.box_CLOController_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|915261313", "915261313", "S03M020_Main", "box_CLOController_42.UnspawnedUser", "box_CLOController_145.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_41_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_41
  self.Paparazzi_PostCin = l0.UserID
  self:OnEnter_box_MultipleOR_15()
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|277640084", "277640084", "S03M020_Main", "box_CLOController_41.OnUserInPlace", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PGTController_v2_101_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046912312020"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|527542496"
  l0.Out = self.f_box_AI_Agent_Zone_125_Out
  l0 = self.box_PGTController_v2_101
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|881675021", "881675021", "S03M020_Main", "box_PGTController_v2_101.AllSpawned", "box_AI_Agent_Zone_125.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlayDialogInVehicle_100_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1894855010"
  l0.Out = self.f_box_Simple_Node_160_Out
  l0 = self.box_PlayDialogInVehicle_100
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1174972291", "1174972291", "S03M020_Main", "box_PlayDialogInVehicle_100.Finished", "box_Simple_Node_160.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialogInVehicle_111_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_111
  self.IsCar05Finished = l0.HasFinished
  l0 = self.box_PhoneCommunicationController_112
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053519424685"
  l0 = self.box_PlayDialogInVehicle_111
  l1 = self.box_PhoneCommunicationController_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|635141687", "635141687", "S03M020_Main", "box_PlayDialogInVehicle_111.Finished", "box_PhoneCommunicationController_112.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlayDialogInVehicle_111_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_111
  self.IsCar05Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_111_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_111
  self.IsCar05Finished = l0.HasFinished
end
function export:f_box_SetTimeOfDay_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|32659406"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_90_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1536639947", "1536639947", "S03M020_Main", "box_SetTimeOfDay_91.Out", "box_TimeScale_Controller_90.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_MissionLayer_v2_52_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|725335206"
  l0.Out = self.f_box_Get_Player_ID_51_Out
  l0 = self.box_MissionLayer_v2_52
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1384248772", "1384248772", "S03M020_Main", "box_MissionLayer_v2_52.Loaded", "box_Get_Player_ID_51.In", l0, l1)
  l1:In()
end
function export:f_box_S03_M020_CIN_AIDrive_Main_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S03_M020_CIN_AIDrive_Main_46
  self.CHIP = l0.CHIP_Out
  self:OnEnter_box_MultipleOR_6()
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|713945758", "713945758", "S03M020_Main", "box_S03_M020_CIN_AIDrive_Main_46.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_Agent_Zone_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.CLO = "9223372048573079345"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|958617031", "958617031", "S03M020_Main", "box_AI_Agent_Zone_125.Out", "box_CLOController_14.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_94
  l0.Input = self.TalkingCar02
  l0.SoundID[0] = "soundbinary/805634204.bnk"
  l0.SoundID[1] = "soundbinary/1968675972.bnk"
  l0.SoundID[2] = "soundbinary/4155306742.bnk"
  l0.SoundID[3] = "soundbinary/1077058006.bnk"
  l0 = self.box_MultipleOR_6
  l1 = self.box_ListWriterSoundID_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1459073238", "1459073238", "S03M020_Main", "box_MultipleOR_6.Out", "box_ListWriterSoundID_94.Add", l0, l1)
  l1:Add()
end
function export:f_box_PlayDialogInVehicle_154_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_154
  self.IsCar05Finished = l0.HasFinished
  l0 = self.box_PhoneCommunicationController_114
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053519424685"
  l0 = self.box_PlayDialogInVehicle_154
  l1 = self.box_PhoneCommunicationController_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1120353650", "1120353650", "S03M020_Main", "box_PlayDialogInVehicle_154.Finished", "box_PhoneCommunicationController_114.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlayDialogInVehicle_154_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_154
  self.IsCar05Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_154_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_154
  self.IsCar05Finished = l0.HasFinished
end
function export:f_box_MissionCheckpointReach_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_53
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_31
  l1 = self.box_CinematicPrep_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1740414113", "1740414113", "S03M020_Main", "box_MissionCheckpointReach_31.Out", "box_CinematicPrep_53.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_MissionLayer_v2_56_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|989180280"
  l0.Out = self.f_box_Get_Player_ID_57_Out
  l0 = self.box_MissionLayer_v2_56
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|171391204", "171391204", "S03M020_Main", "box_MissionLayer_v2_56.Loaded", "box_Get_Player_ID_57.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_103_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_97
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053519423061"
  l0 = self.box_Timer_v2_103
  l1 = self.box_PhoneCommunicationController_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|450037024", "450037024", "S03M020_Main", "box_Timer_v2_103.TimeElapsed", "box_PhoneCommunicationController_97.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_8
  l0.Entity = "9223372060004449425"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0 = self.box_MissionCheckpointReach_49
  l1 = self.box_Interact_Gameplay_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1443237982", "1443237982", "S03M020_Main", "box_MissionCheckpointReach_49.Out", "box_Interact_Gameplay_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2034028564"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_78_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_68
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|408890190", "408890190", "S03M020_Main", "box_Timer_v2_68.TimeElapsed", "box_Compare_Boolean_v2_78.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_24_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372073311418274"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1483086207"
  l0.Activated = self.f_box_MissionMusicController_26_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1670947234", "1670947234", "S03M020_Main", "box_VisibilityController_v2_24.Hidden", "box_MissionMusicController_26.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_59
  l0.SpawnPoint = "9223372067236850098"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_OnceOnly_v3_84
  l1 = self.box_Teleport_To_SpawnPoint_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|21844881", "21844881", "S03M020_Main", "box_OnceOnly_v3_84.Out", "box_Teleport_To_SpawnPoint_59.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_151_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_151
  self.PoliceCar_03 = l0.UserID
  l0 = self.box_VehicleSeatingController_69
  l0.Vehicle = self.CHIP
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_151
  l1 = self.box_VehicleSeatingController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1693308165", "1693308165", "S03M020_Main", "box_CLOController_151.OnUserInPlace", "box_VehicleSeatingController_69.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_EnableVehicleRadioSystem_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_17
  l0.CLO = "9223372065590188974"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1598867159", "1598867159", "S03M020_Main", "box_EnableVehicleRadioSystem_153.Out", "box_CLOController_17.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_FelonySystemController_v2_37_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372055310480361"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1773570676"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_138_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|942268423", "942268423", "S03M020_Main", "box_FelonySystemController_v2_37.Enabled", "box_FelonyTargetController_138.StartChase", clone, l0)
  l0:StartChase()
end
function export:f_box_Get_Player_ID_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = 58
  l0._graph = self
  l0._name = "box_SetTimeOfDay_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|492799066"
  l0.Out = self.f_box_SetTimeOfDay_91_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1924869465", "1924869465", "S03M020_Main", "box_Get_Player_ID_51.Out", "box_SetTimeOfDay_91.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_ListWriterSoundID_16_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_16
  self.PoliceBark3 = l0.Target
  l0 = self.box_PlayDialog_v2_136
  l0.SoundId = "soundbinary/1459568064.bnk"
  l0 = self.box_ListWriterSoundID_16
  l1 = self.box_PlayDialog_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|637897715", "637897715", "S03M020_Main", "box_ListWriterSoundID_16.Added", "box_PlayDialog_v2_136.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriterSoundID_16_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_16
  self.PoliceBark3 = l0.Target
end
function export:f_box_ListWriterSoundID_16_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_16
  self.PoliceBark3 = l0.Target
end
function export:f_box_MissionMessageController_v3_7_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_CinematicPrep_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|871529926", "871529926", "S03M020_Main", "box_MissionMessageController_v3_7.MessageCompleted", "box_CinematicPrep_3.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_CLOController_147_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_147
  self.PoliceCar_02 = l0.UserID
  l0 = self.box_CLOController_150
  l0.CLO = "9223372065590403454"
  l0 = self.box_CLOController_147
  l1 = self.box_CLOController_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|773145692", "773145692", "S03M020_Main", "box_CLOController_147.OnUserInPlace", "box_CLOController_150.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_157_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_156
  l0.SoundId = "soundbinary/3841799905.bnk"
  l0 = self.box_Timer_v2_157
  l1 = self.box_PlaySound_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1849611154", "1849611154", "S03M020_Main", "box_Timer_v2_157.TimeElapsed", "box_PlaySound_v2_156.Play", l0, l1)
  l1:Play()
end
function export:f_box_Compare_Boolean_v2_86_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_45
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|769355152", "769355152", "S03M020_Main", "box_Compare_Boolean_v2_86.A_is_False", "box_Timer_v2_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_86_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|499632435", "499632435", "S03M020_Main", "box_Compare_Boolean_v2_86.A_is_True", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetActionMap_v2_21_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372060004449425"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|359823092"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_139_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1890662831", "1890662831", "S03M020_Main", "box_SetActionMap_v2_21.Pushed", "box_InteractionScriptController_139.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlayDialogInVehicle_109_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_5
  l0.Seconds = 3
  l0 = self.box_PlayDialogInVehicle_109
  l1 = self.box_Timer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|182025691", "182025691", "S03M020_Main", "box_PlayDialogInVehicle_109.Finished", "box_Timer_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_112_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_112
  l1 = self.box_SetBoolean_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1959640647", "1959640647", "S03M020_Main", "box_PhoneCommunicationController_112.OnCommunicationFinished", "box_SetBoolean_v2_82.True", l0, l1)
  l1:True()
end
function export:f_box_TimeScale_Controller_89_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_72
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1856611167", "1856611167", "S03M020_Main", "box_TimeScale_Controller_89.Locked", "box_CinematicPrep_72.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_63_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_129
  l0.SceneEntity = "9223372050590115507"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M020_StealingCHIP/s03_m020_stealingchip.seq"
  l0.EntityIn.CHIP = self.CHIP
  l0 = self.box_CinematicPrep_63
  l1 = self.box_PlaySequence_v5_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|535065428", "535065428", "S03M020_Main", "box_CinematicPrep_63.PreOut", "box_PlaySequence_v5_129.Start", l0, l1)
  l1:Start()
end
function export:f_box_EnableVehicleRadioSystem_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046912312020"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|908935847"
  l0.Out = self.f_box_AI_Agent_Zone_124_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|601641959", "601641959", "S03M020_Main", "box_EnableVehicleRadioSystem_36.Out", "box_AI_Agent_Zone_124.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_172_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Proximity_Monitor_127
  l0.TargetEntity = "9223372052098999512"
  l0.Radius = 20
  l0 = self.box_PlaySound_v2_172
  l1 = self.box_Player_Proximity_Monitor_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|478927312", "478927312", "S03M020_Main", "box_PlaySound_v2_172.Out", "box_Player_Proximity_Monitor_127.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_167_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|599089468", "599089468", "S03M020_Main", "box_Ordered_Output_167.Out", "box_Get_Player_ID_1.In", clone, l0)
  l0:In()
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = 58
  l0._graph = self
  l0._name = "box_SetTimeOfDay_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|384686571"
  l0.Out = self.f_box_SetTimeOfDay_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|560830470", "560830470", "S03M020_Main", "box_Get_Player_ID_1.Out", "box_SetTimeOfDay_76.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_AI_Agent_Zone_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_133
  l0.PGTMissionArea = "9223372046912312020"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2002245155", "2002245155", "S03M020_Main", "box_AI_Agent_Zone_134.Out", "box_PGTController_v2_133.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_113
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053519424683"
  l0 = self.box_MultipleOR_104
  l1 = self.box_PhoneCommunicationController_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1137375438", "1137375438", "S03M020_Main", "box_MultipleOR_104.Out", "box_PhoneCommunicationController_113.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCar03Finished
  l0.B = self.IsCloseFromGarage
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1934175320"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_130_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_130_notA_and_notB
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_93
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1901164592", "1901164592", "S03M020_Main", "box_MultipleOR_93.Out", "box_Compare_Boolean_v2_130.In", l0, l1)
  l1:In()
end
function export:f_box_Pawn_Health_Controller_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_13
  l0.SceneEntity = "9223372052538014524"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M020_Paparazzi/s03_m020_paparazzi.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|822046990", "822046990", "S03M020_Main", "box_Pawn_Health_Controller_85.Out", "box_PlaySequence_v5_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_120_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCar05Finished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|355559042"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_58_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_120
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1006046342", "1006046342", "S03M020_Main", "box_Timer_v2_120.TimeElapsed", "box_Compare_Boolean_v2_58.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_143_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_163()
  l0 = self.box_TutorialController_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1095641639", "1095641639", "S03M020_Main", "box_Compare_Boolean_v2_143.A_is_True", "box_TutorialController_163.Display", clone, l0)
  l0:Display()
end
function export:f_box_AI_Agent_Zone_124_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S03_M020_CIN_AIDrive_Main_46
  l0.CHIP = self.CHIP
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|942797733", "942797733", "S03M020_Main", "box_AI_Agent_Zone_124.Out", "box_S03_M020_CIN_AIDrive_Main_46.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_168_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_163()
  l0 = self.box_TutorialController_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|717875958", "717875958", "S03M020_Main", "box_Simple_Node_168.Out", "box_TutorialController_163.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1989293592", "1989293592", "S03M020_Main", "box_Ordered_Output_20.Out", "box_OnceOnly_v3_11.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_117()
  l0 = self.box_SetBoolean_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1153889014", "1153889014", "S03M020_Main", "box_Ordered_Output_20.Out", "box_SetBoolean_v2_117.False", clone, l0)
  l0:False()
end
function export:f_box_Get_Player_ID_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 30
  l0._graph = self
  l0._name = "box_SetTimeOfDay_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1185039513"
  l0.Out = self.f_box_SetTimeOfDay_102_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1690808302", "1690808302", "S03M020_Main", "box_Get_Player_ID_57.Out", "box_SetTimeOfDay_102.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_CLOController_150_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_150
  self.PoliceCar_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1155074661"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_146_Out
  l0 = self.box_CLOController_150
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|346760545", "346760545", "S03M020_Main", "box_CLOController_150.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_146.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_PlayDialogInVehicle_131_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_131
  self.IsCar03Finished = l0.HasFinished
  l0 = self.box_Timer_v2_106
  l0.Seconds = 5
  l0 = self.box_PlayDialogInVehicle_131
  l1 = self.box_Timer_v2_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1457488223", "1457488223", "S03M020_Main", "box_PlayDialogInVehicle_131.Finished", "box_Timer_v2_106.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogInVehicle_131_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_131
  self.IsCar03Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_131_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_131
  self.IsCar03Finished = l0.HasFinished
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_122()
  l0 = self.box_VehicleMonitor_v3_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1121041370", "1121041370", "S03M020_Main", "box_Ordered_Output_35.Out", "box_VehicleMonitor_v3_122.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_35_Out_1()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1813301772"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|474708214", "474708214", "S03M020_Main", "box_Ordered_Output_35.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsNarrativeFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|763061839"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_86_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_86_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_11
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1061183158", "1061183158", "S03M020_Main", "box_OnceOnly_v3_11.Out", "box_Compare_Boolean_v2_86.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_161_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|910389402"
  l0.Out = self.f_box_Simple_Node_168_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1141215432", "1141215432", "S03M020_Main", "box_Ordered_Output_161.Out", "box_Simple_Node_168.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_161_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_67()
  l0 = self.box_TutorialController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|747297943", "747297943", "S03M020_Main", "box_Ordered_Output_161.Out", "box_TutorialController_67.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Intel_Controller_175_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_126()
  l0 = self.box_Intel_Controller_175
  l1 = self.box_MissionZone_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1296096876", "1296096876", "S03M020_Main", "box_Intel_Controller_175.Enabled", "box_MissionZone_126.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Delivery_Gameplay_60
  l0.VehicleEntity = self.CHIP
  l0.DestinationTrigger = "9223372052098999512"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 0
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M020.Objectives.Objective040",
    item = "Objective",
    id = "342734"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1283784660", "1283784660", "S03M020_Main", "box_Ordered_Output_141.Out", "box_Delivery_Gameplay_60.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_68
  l0.Seconds = 120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1820708397", "1820708397", "S03M020_Main", "box_Ordered_Output_141.Out", "box_Timer_v2_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_141_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|107280501"
  l0.Out = self.f_box_Simple_Node_75_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1263917137", "1263917137", "S03M020_Main", "box_Ordered_Output_141.Out", "box_Simple_Node_75.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_13_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_84()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1997679122", "1997679122", "S03M020_Main", "box_PlaySequence_v5_13.Finished", "box_OnceOnly_v3_84.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_13_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_84()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|898591947", "898591947", "S03M020_Main", "box_PlaySequence_v5_13.Skipped", "box_OnceOnly_v3_84.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMessageController_v3_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_48
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MissionMessageController_v3_10
  l1 = self.box_MissionCheckpointReach_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2019550516", "2019550516", "S03M020_Main", "box_MissionMessageController_v3_10.Out", "box_MissionCheckpointReach_48.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_80_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_81
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|472601846", "472601846", "S03M020_Main", "box_Set_Is_Hiding_In_Vehicle_80.HideInVehicleEnabled", "box_CinematicPrep_81.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_59_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1824757084"
  l0.Out = self.f_box_Pawn_Health_Controller_88_Out
  l0 = self.box_Teleport_To_SpawnPoint_59
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1372503799", "1372503799", "S03M020_Main", "box_Teleport_To_SpawnPoint_59.TeleportDone", "box_Pawn_Health_Controller_88.UnsetInvincible", l0, l1)
  l1:UnsetInvincible()
end
function export:f_box_SetVehicleLightAndSiren_v2_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1652112210"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_62_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|742527277", "742527277", "S03M020_Main", "box_SetVehicleLightAndSiren_v2_146.Out", "box_SetVehicleLightAndSiren_v2_62.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCloseFromGarage
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1272216445"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_55_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_9
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1901774616", "1901774616", "S03M020_Main", "box_Timer_v2_9.TimeElapsed", "box_Compare_Boolean_v2_55.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCloseFromGarage
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1220254058"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_61_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|55759066", "55759066", "S03M020_Main", "box_Timer_v2_5.TimeElapsed", "box_Compare_Boolean_v2_61.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_8_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_126()
  l0 = self.box_Interact_Gameplay_8
  l1 = self.box_MissionZone_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1617593274", "1617593274", "S03M020_Main", "box_Interact_Gameplay_8.Interacted", "box_MissionZone_126.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetTimeOfDay_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_101
  l0.PGTMissionArea = "9223372046912312020"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|224690623", "224690623", "S03M020_Main", "box_SetTimeOfDay_102.Out", "box_PGTController_v2_101.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_123_ListFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1449304510"
  l0.Out = self.f_box_Simple_Node_28_Out
  l0 = self.box_PlayDialog_v2_123
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|223313126", "223313126", "S03M020_Main", "box_PlayDialog_v2_123.ListFinished", "box_Simple_Node_28.In", l0, l1)
  l1:In()
end
function export:f_box_TimeScale_Controller_149_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 1
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1989382119"
  l0.Out = self.f_box_EnableVehicleRadioSystem_155_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|971119230", "971119230", "S03M020_Main", "box_TimeScale_Controller_149.Unlocked", "box_EnableVehicleRadioSystem_155.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_61_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_100
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar04
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|660828895", "660828895", "S03M020_Main", "box_Compare_Boolean_v2_61.A_is_False", "box_PlayDialogInVehicle_100.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_OnceOnly_v3_18
  l1 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|884021428", "884021428", "S03M020_Main", "box_OnceOnly_v3_18.Out", "box_Multiple_AND_44.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOController_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  self.PoliceCar_04 = l0.UserID
  l0 = self.box_CLOController_140
  l0.CLO = "9223372056266298751"
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|224001513", "224001513", "S03M020_Main", "box_CLOController_17.OnUserInPlace", "box_CLOController_140.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriterSoundID_95_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_95
  self.TalkingCar03 = l0.Target
  l0 = self.box_ListWriterSoundID_99
  l0.Input = self.TalkingCar04
  l0.SoundID[0] = "soundbinary/2770162362.bnk"
  l0.SoundID[1] = "soundbinary/213975402.bnk"
  l0.SoundID[2] = "soundbinary/2146639917.bnk"
  l0 = self.box_ListWriterSoundID_95
  l1 = self.box_ListWriterSoundID_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1742693821", "1742693821", "S03M020_Main", "box_ListWriterSoundID_95.Added", "box_ListWriterSoundID_99.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_95_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_95
  self.TalkingCar03 = l0.Target
end
function export:f_box_ListWriterSoundID_95_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_95
  self.TalkingCar03 = l0.Target
end
function export:f_box_Timer_v2_64_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_Timer_v2_64
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1230321903", "1230321903", "S03M020_Main", "box_Timer_v2_64.TimeElapsed", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_122_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCar02Finished
  l0.B = self.IsCloseFromGarage
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1412228857"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_119_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_119_notA_and_notB
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleMonitor_v3_122
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1297922565", "1297922565", "S03M020_Main", "box_VehicleMonitor_v3_122.Entered", "box_Compare_Boolean_v2_119.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_148_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_148
  self.PoliceCar_02 = l0.UserID
  l0 = self.box_CLOController_151
  l0.CLO = "9223372065590188974"
  l0 = self.box_CLOController_148
  l1 = self.box_CLOController_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1492862137", "1492862137", "S03M020_Main", "box_CLOController_148.OnUserInPlace", "box_CLOController_151.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Boolean_v2_55_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_109
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar06
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|694434317", "694434317", "S03M020_Main", "box_Compare_Boolean_v2_55.A_is_False", "box_PlayDialogInVehicle_109.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_14_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  self.CHIP = l0.UserID
  l0 = self.box_CLOController_159
  l0.CLO = "9223372056266298751"
  l0 = self.box_CLOController_14
  l1 = self.box_CLOController_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|865959342", "865959342", "S03M020_Main", "box_CLOController_14.OnUserInPlace", "box_CLOController_159.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayDialogInVehicle_98_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_98
  self.IsCar03Finished = l0.HasFinished
  l0 = self.box_Timer_v2_12
  l0.Seconds = 12
  l0 = self.box_PlayDialogInVehicle_98
  l1 = self.box_Timer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1865277469", "1865277469", "S03M020_Main", "box_PlayDialogInVehicle_98.Finished", "box_Timer_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogInVehicle_98_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_98
  self.IsCar03Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_98_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_98
  self.IsCar03Finished = l0.HasFinished
end
function export:f_box_CinematicPrep_81_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_CinematicPrep_81
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1650127575", "1650127575", "S03M020_Main", "box_CinematicPrep_81.PostOut", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_114_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1053257224"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_PhoneCommunicationController_114
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1928441950", "1928441950", "S03M020_Main", "box_PhoneCommunicationController_114.OnCommunicationFinished", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_158_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372068891947766"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|585930835"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_24_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|806987539", "806987539", "S03M020_Main", "box_Ordered_Output_158.Out", "box_VisibilityController_v2_24.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_158_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_157
  l0.Seconds = 9.4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|145772762", "145772762", "S03M020_Main", "box_Ordered_Output_158.Out", "box_Timer_v2_157.Start", clone, l0)
  l0:Start()
end
function export:f_box_Delivery_Gameplay_60_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Failure_66()
  l0 = self.box_Delivery_Gameplay_60
  l1 = self.box_Vehicle_Failure_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2111465382", "2111465382", "S03M020_Main", "box_Delivery_Gameplay_60.AllDeliveryCompleted", "box_Vehicle_Failure_66.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Delivery_Gameplay_60_Evaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|914122808"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_Delivery_Gameplay_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|162801495", "162801495", "S03M020_Main", "box_Delivery_Gameplay_60.Evaded", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_Delivery_Gameplay_60_InConflict()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_117()
  l0 = self.box_Delivery_Gameplay_60
  l1 = self.box_SetBoolean_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1175036896", "1175036896", "S03M020_Main", "box_Delivery_Gameplay_60.InConflict", "box_SetBoolean_v2_117.True", l0, l1)
  l1:True()
end
function export:f_box_Delivery_Gameplay_60_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Failure_66()
  l0 = self.box_Delivery_Gameplay_60
  l1 = self.box_Vehicle_Failure_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2000126960", "2000126960", "S03M020_Main", "box_Delivery_Gameplay_60.Started", "box_Vehicle_Failure_66.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_164_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_165
  l0.Entity = "9223372068859298042"
  l0.SoundId = "soundbinary/4033795671.bnk"
  l0 = self.box_TriggerMonitor_v2_164
  l1 = self.box_PlaySound_v2_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|852717527", "852717527", "S03M020_Main", "box_TriggerMonitor_v2_164.Disabled", "box_PlaySound_v2_165.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_164_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_164()
  l0 = self.box_TriggerMonitor_v2_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|570518847", "570518847", "S03M020_Main", "box_TriggerMonitor_v2_164.Enter", "box_TriggerMonitor_v2_164.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Loading_Screen_Monitor_v2_22_LoadingScreenEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_144
  l0.Vehicle = self.CHIP
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_Loading_Screen_Monitor_v2_22
  l1 = self.box_VehicleSeatingController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1614311537", "1614311537", "S03M020_Main", "box_Loading_Screen_Monitor_v2_22.LoadingScreenEnded", "box_VehicleSeatingController_144.Assign", l0, l1)
  l1:Assign()
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
  l0._name = "box_Simple_Node_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1432961753"
  l0.Out = self.f_box_Simple_Node_73_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1886514202", "1886514202", "S03M020_Main", "box_Simple_Node_77.Out", "box_Simple_Node_73.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_115_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_96
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar02
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|808066529", "808066529", "S03M020_Main", "box_Compare_Boolean_v2_115.A_is_True", "box_PlayDialogInVehicle_96.Start", clone, l0)
  l0:Start()
end
function export:f_box_TutorialController_67_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_70
  l0.Seconds = 20
  l0 = self.box_TutorialController_67
  l1 = self.box_Timer_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1627631888", "1627631888", "S03M020_Main", "box_TutorialController_67.MessageCompleted", "box_Timer_v2_70.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_119_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1685187960", "1685187960", "S03M020_Main", "box_Compare_Boolean_v2_119.A_is_True", "box_MultipleOR_93.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_119_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_128
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar02
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1492870606", "1492870606", "S03M020_Main", "box_Compare_Boolean_v2_119.notA_and_notB", "box_PlayDialogInVehicle_128.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleSeatingController_69_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|763214299"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_21_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_VehicleSeatingController_69
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|695934899", "695934899", "S03M020_Main", "box_VehicleSeatingController_69.AssignCompleted", "box_SetActionMap_v2_21.Push", l0, l1)
  l1:Push()
end
function export:f_box_Simple_Node_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M020.Objectives.Objective020",
    item = "Objective",
    id = "496566"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|484752945", "484752945", "S03M020_Main", "box_Simple_Node_73.Out", "box_MissionMessageController_v3_7.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_137()
  l0 = self.box_Multiple_AND_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1684096289", "1684096289", "S03M020_Main", "box_Simple_Node_28.Out", "box_Multiple_AND_137.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|324929531"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_118_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_105
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1897151916", "1897151916", "S03M020_Main", "box_Timer_v2_105.TimeElapsed", "box_Compare_Boolean_v2_118.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_159_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_159
  self.PoliceCar_01 = l0.UserID
  l0 = self.box_CLOController_148
  l0.CLO = "9223372065590187597"
  l0 = self.box_CLOController_159
  l1 = self.box_CLOController_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|245817680", "245817680", "S03M020_Main", "box_CLOController_159.OnUserInPlace", "box_CLOController_148.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMusicController_26_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar_01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|38407554"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_135_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|441356465", "441356465", "S03M020_Main", "box_MissionMusicController_26.Activated", "box_SetVehicleLightAndSiren_v2_135.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_Get_Player_ID_169_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 30
  l0._graph = self
  l0._name = "box_SetTimeOfDay_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1844837784"
  l0.Out = self.f_box_SetTimeOfDay_170_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1269799549", "1269799549", "S03M020_Main", "box_Get_Player_ID_169.Out", "box_SetTimeOfDay_170.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1706705004"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_19_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_12
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1686380608", "1686380608", "S03M020_Main", "box_Timer_v2_12.TimeElapsed", "box_Compare_Boolean_v2_19.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_129_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1908327893"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_79_Popped
  l0 = self.box_PlaySequence_v5_129
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|188020236", "188020236", "S03M020_Main", "box_PlaySequence_v5_129.Finished", "box_SetActionMap_v2_79.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_PlaySequence_v5_129_SPOut__PoweringUp_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_33
  l0.SoundId = "soundbinary/647288204.bnk"
  l0 = self.box_PlaySequence_v5_129
  l1 = self.box_PlayDialog_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1483945877", "1483945877", "S03M020_Main", "box_PlaySequence_v5_129.SPOut", "box_PlayDialog_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_129_SPOut__Sweet_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_39
  l0.SoundId = "soundbinary/1270627348.bnk"
  l0 = self.box_PlaySequence_v5_129
  l1 = self.box_PlayDialog_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|537944292", "537944292", "S03M020_Main", "box_PlaySequence_v5_129.SPOut", "box_PlayDialog_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_129_SPOut__SystemCheck_()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_27
  l0.SoundId = "soundbinary/42397832.bnk"
  l0 = self.box_PlaySequence_v5_129
  l1 = self.box_PlayDialog_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1066371820", "1066371820", "S03M020_Main", "box_PlaySequence_v5_129.SPOut", "box_PlayDialog_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_129_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_129
  self.CHIP = l0.EntityOut.CHIP
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1345631184"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_158_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_158_Out_1
  l0 = self.box_PlaySequence_v5_129
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|752181403", "752181403", "S03M020_Main", "box_PlaySequence_v5_129.Started", "box_Ordered_Output_158.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_137()
  l0 = self.box_Multiple_AND_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1899889861", "1899889861", "S03M020_Main", "box_Simple_Node_74.Out", "box_Multiple_AND_137.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 0
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|703076124"
  l0.Out = self.f_box_EnableVehicleRadioSystem_153_Out
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1089981106", "1089981106", "S03M020_Main", "box_MultipleOR_15.Out", "box_EnableVehicleRadioSystem_153.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_116_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1074637561"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_141_Out_2
  l0 = self.box_Timer_v2_116
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2055963610", "2055963610", "S03M020_Main", "box_Timer_v2_116.TimeElapsed", "box_Ordered_Output_141.In", l0, l1)
  l1:In()
end
function export:f_box_SetVehicleLightAndSiren_v2_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046912312020"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|823030533"
  l0.Out = self.f_box_AI_Agent_Zone_134_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1260080959", "1260080959", "S03M020_Main", "box_SetVehicleLightAndSiren_v2_62.Out", "box_AI_Agent_Zone_134.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372069899416443"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1971914254"
  l0.Out = self.f_box_Phys_Zone_Cleanup_107_Out
  l0 = self.box_CinematicPrep_3
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|670176219", "670176219", "S03M020_Main", "box_CinematicPrep_3.PreOut", "box_Phys_Zone_Cleanup_107.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_70_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|864267926"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_143_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_70
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|824336942", "824336942", "S03M020_Main", "box_Timer_v2_70.TimeElapsed", "box_Compare_Boolean_v2_143.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_19_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_111
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar05
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1540247986", "1540247986", "S03M020_Main", "box_Compare_Boolean_v2_19.A_is_True", "box_PlayDialogInVehicle_111.Start", clone, l0)
  l0:Start()
end
function export:f_box_StopMusic_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_171
  l0.SoundId = "soundbinary/2911472626.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|727586587", "727586587", "S03M020_Main", "box_StopMusic_65.Out", "box_PlaySound_v2_171.Play", clone, l0)
  l0:Play()
end
function export:f_box_Multiple_AND_137_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_34
  l0.Seconds = 12
  l0 = self.box_Multiple_AND_137
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1104976787", "1104976787", "S03M020_Main", "box_Multiple_AND_137.Out", "box_Timer_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_152_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCar05Finished
  l0.B = self.IsCloseFromGarage
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|119435112"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_132_notA_and_notB
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_152
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1190683649", "1190683649", "S03M020_Main", "box_MultipleOR_152.Out", "box_Compare_Boolean_v2_132.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_166_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_172
  l0.SoundId = "soundbinary/2911472626.bnk"
  l0 = self.box_TriggerMonitor_v2_166
  l1 = self.box_PlaySound_v2_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|601541169", "601541169", "S03M020_Main", "box_TriggerMonitor_v2_166.Enabled", "box_PlaySound_v2_172.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_166_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_18()
  l0 = self.box_TriggerMonitor_v2_166
  l1 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|929207259", "929207259", "S03M020_Main", "box_TriggerMonitor_v2_166.Enter", "box_OnceOnly_v3_18.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_166_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_120
  l0.Seconds = 3
  l0 = self.box_TriggerMonitor_v2_166
  l1 = self.box_Timer_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|591914307", "591914307", "S03M020_Main", "box_TriggerMonitor_v2_166.Leave", "box_Timer_v2_120.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetController_138_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_116
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1147800459", "1147800459", "S03M020_Main", "box_FelonyTargetController_138.ChaseStarted", "box_Timer_v2_116.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleSeatingController_144_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 0
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|774171032"
  l0.Out = self.f_box_EnableVehicleRadioSystem_36_Out
  l0 = self.box_VehicleSeatingController_144
  l1 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1716378544", "1716378544", "S03M020_Main", "box_VehicleSeatingController_144.AssignCompleted", "box_EnableVehicleRadioSystem_36.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_Timer_v2_45
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1970837214", "1970837214", "S03M020_Main", "box_Timer_v2_45.TimeElapsed", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_25()
  l0 = self.box_OnceOnly_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1179301239", "1179301239", "S03M020_Main", "box_Simple_Node_32.Out", "box_OnceOnly_v3_25.In", clone, l0)
  l0:In(0)
end
function export:f_box_Pawn_Health_Controller_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_41
  l0.CLO = "9223372056591836374"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|439673290", "439673290", "S03M020_Main", "box_Pawn_Health_Controller_88.Out", "box_CLOController_41.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CinematicPrep_72_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|850719404"
  l0.Out = self.f_box_Pawn_Health_Controller_85_Out
  l0 = self.box_CinematicPrep_72
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|918977702", "918977702", "S03M020_Main", "box_CinematicPrep_72.PreOut", "box_Pawn_Health_Controller_85.SetInvincible", l0, l1)
  l1:SetInvincible()
end
function export:f_box_Timer_v2_29_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1396357504"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_115_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_29
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|304877549", "304877549", "S03M020_Main", "box_Timer_v2_29.TimeElapsed", "box_Compare_Boolean_v2_115.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_170_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2056483480", "2056483480", "S03M020_Main", "box_SetTimeOfDay_170.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionZone_126_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_176
  l0.Entity = "9223372068891947766"
  l0 = self.box_MissionZone_126
  l1 = self.box_Intel_Controller_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|606623222", "606623222", "S03M020_Main", "box_MissionZone_126.Disabled", "box_Intel_Controller_176.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionZone_126_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_142
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionZone_126
  l1 = self.box_CinematicPrep_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|238837887", "238837887", "S03M020_Main", "box_MissionZone_126.Enabled", "box_CinematicPrep_142.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|705409713"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_37_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1674884999", "1674884999", "S03M020_Main", "box_Ordered_Output_23.Out", "box_FelonySystemController_v2_37.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_103
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1759976195", "1759976195", "S03M020_Main", "box_Ordered_Output_23.Out", "box_Timer_v2_103.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialogInVehicle_96_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_96
  self.IsCar02Finished = l0.HasFinished
  l0 = self.box_Timer_v2_105
  l0.Seconds = 14
  l0 = self.box_PlayDialogInVehicle_96
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|51118582", "51118582", "S03M020_Main", "box_PlayDialogInVehicle_96.Finished", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogInVehicle_96_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_96
  self.IsCar02Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_96_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_96
  self.IsCar02Finished = l0.HasFinished
end
function export:f_box_Simple_Node_160_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_18()
  l0 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|361408892", "361408892", "S03M020_Main", "box_Simple_Node_160.Out", "box_OnceOnly_v3_18.In", clone, l0)
  l0:In(1)
end
function export:f_box_CLOController_145_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_145
  self.CHIP = l0.UserID
  l1 = self.box_Loading_Screen_Monitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|56636321", "56636321", "S03M020_Main", "box_CLOController_145.OnUserInPlace", "box_Loading_Screen_Monitor_v2_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetActionMap_v2_79_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1099363221"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_box_Set_Is_Hiding_In_Vehicle_80_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1335976294", "1335976294", "S03M020_Main", "box_SetActionMap_v2_79.Popped", "box_Set_Is_Hiding_In_Vehicle_80.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:f_box_Compare_Boolean_v2_130_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_152()
  l0 = self.box_MultipleOR_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|761443793", "761443793", "S03M020_Main", "box_Compare_Boolean_v2_130.A_is_True", "box_MultipleOR_152.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_130_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_131
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundIdList = self.TalkingCar03
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|450376077", "450376077", "S03M020_Main", "box_Compare_Boolean_v2_130.notA_and_notB", "box_PlayDialogInVehicle_131.Start", clone, l0)
  l0:Start()
end
function export:f_box_S03_M020_CIN_SmartCar_Main_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_S03_M020_CIN_SmartCar_Main_47
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2005226946", "2005226946", "S03M020_Main", "box_S03_M020_CIN_SmartCar_Main_47.Out", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Phys_Zone_Cleanup_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_42
  l0.User = self.Vehicle_Leader
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|437233683", "437233683", "S03M020_Main", "box_Phys_Zone_Cleanup_107.Out", "box_CLOController_42.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_PlayDialogInVehicle_128_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_128
  self.IsCar02Finished = l0.HasFinished
  l0 = self.box_Timer_v2_64
  l0.Seconds = 5
  l0 = self.box_PlayDialogInVehicle_128
  l1 = self.box_Timer_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|57994563", "57994563", "S03M020_Main", "box_PlayDialogInVehicle_128.Finished", "box_Timer_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogInVehicle_128_Skipped()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_128
  self.IsCar02Finished = l0.HasFinished
end
function export:f_box_PlayDialogInVehicle_128_Started()
  local l0
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_128
  self.IsCar02Finished = l0.HasFinished
end
function export:f_box_EnableVehicleRadioSystem_155_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnableVehicleRadioSystem.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_30()
  l0 = self.box_Mission_End_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1394172255", "1394172255", "S03M020_Main", "box_EnableVehicleRadioSystem_155.Out", "box_Mission_End_30.End", clone, l0)
  l0:End()
end
function export:f_box_MultipleOR_177_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_MultipleOR_177
  l1 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|850152837", "850152837", "S03M020_Main", "box_MultipleOR_177.Out", "box_Multiple_AND_44.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|231548091"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_87_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_4
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1964850128", "1964850128", "S03M020_Main", "box_CinematicPrep_4.PostOut", "box_Show_Or_Hide_All_UI_87.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_97_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_29
  l0.Seconds = 10
  l0 = self.box_PhoneCommunicationController_97
  l1 = self.box_Timer_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|253007197", "253007197", "S03M020_Main", "box_PhoneCommunicationController_97.OnCommunicationFinished", "box_Timer_v2_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsInFelony
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|334288162"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_121_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_34
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1929688286", "1929688286", "S03M020_Main", "box_Timer_v2_34.TimeElapsed", "box_Compare_Boolean_v2_121.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_78_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_67()
  l0 = self.box_TutorialController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|970655877", "970655877", "S03M020_Main", "box_Compare_Boolean_v2_78.A_is_True", "box_TutorialController_67.Display", clone, l0)
  l0:Display()
end
function export:f_box_ListWriterSoundID_108_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_108
  self.TalkingCar06 = l0.Target
  l0 = self.box_ListWriterSoundID_110
  l0.Input = self.TalkingCar05
  l0.SoundID[0] = "soundbinary/3760647909.bnk"
  l0.SoundID[1] = "soundbinary/4026214074.bnk"
  l0.SoundID[2] = "soundbinary/2270014178.bnk"
  l0.SoundID[3] = "soundbinary/4223454010.bnk"
  l0.SoundID[4] = "soundbinary/3602918216.bnk"
  l0.SoundID[5] = "soundbinary/3027244872.bnk"
  l0 = self.box_ListWriterSoundID_108
  l1 = self.box_ListWriterSoundID_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1940146442", "1940146442", "S03M020_Main", "box_ListWriterSoundID_108.Added", "box_ListWriterSoundID_110.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_108_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_108
  self.TalkingCar06 = l0.Target
end
function export:f_box_ListWriterSoundID_108_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_108
  self.TalkingCar06 = l0.Target
end
function export:f_box_CinematicPrep_142_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_54
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M020.Objectives.Objective020",
    item = "Objective",
    id = "496566"
  }
  l0 = self.box_CinematicPrep_142
  l1 = self.box_MissionMessageController_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|262665072", "262665072", "S03M020_Main", "box_CinematicPrep_142.PostOut", "box_MissionMessageController_v3_54.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_16
  l0.Input = self.PoliceBark3
  l0.SoundID[0] = "soundbinary/709180270.bnk"
  l0.SoundID[1] = "soundbinary/4254049479.bnk"
  l0 = self.box_MissionCheckpointReach_48
  l1 = self.box_ListWriterSoundID_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|792839988", "792839988", "S03M020_Main", "box_MissionCheckpointReach_48.Out", "box_ListWriterSoundID_16.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_99_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_99
  self.TalkingCar04 = l0.Target
  l0 = self.box_ListWriterSoundID_108
  l0.Input = self.TalkingCar06
  l0.SoundID[0] = "soundbinary/2196133766.bnk"
  l0.SoundID[1] = "soundbinary/1246218219.bnk"
  l0.SoundID[2] = "soundbinary/3065254418.bnk"
  l0.SoundID[3] = "soundbinary/3349634757.bnk"
  l0.SoundID[4] = "soundbinary/2303875927.bnk"
  l0.SoundID[5] = "soundbinary/2135885279.bnk"
  l0 = self.box_ListWriterSoundID_99
  l1 = self.box_ListWriterSoundID_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|828540543", "828540543", "S03M020_Main", "box_ListWriterSoundID_99.Added", "box_ListWriterSoundID_108.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_99_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_99
  self.TalkingCar04 = l0.Target
end
function export:f_box_ListWriterSoundID_99_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_99
  self.TalkingCar04 = l0.Target
end
function export:f_box_SetBoolean_v2_117_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_117
  self.IsInFelony = l0.Target
end
function export:f_box_SetBoolean_v2_117_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_117
  self.IsInFelony = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1066389928"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_161_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_161_Out_1
  l0 = self.box_SetBoolean_v2_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1870166404", "1870166404", "S03M020_Main", "box_SetBoolean_v2_117.SetFalse", "box_Ordered_Output_161.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_117_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_117
  self.IsInFelony = l0.Target
end
function export:f_box_SetBoolean_v2_117_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_117
  self.IsInFelony = l0.Target
end
function export:f_box_SetBoolean_v2_117_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_117
  self.IsInFelony = l0.Target
end
function export:f_box_MissionMessageController_v3_174_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_173
  l0.Entity = self.CHIP
  l0.Entity_AreaRadius = 10
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_174
  l1 = self.box_Reach_Gameplay_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|2139644390", "2139644390", "S03M020_Main", "box_MissionMessageController_v3_174.MessageCompleted", "box_Reach_Gameplay_173.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_136_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|1866340190"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_PlayDialog_v2_136
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M020\\S03M020.domino|@S03M020_Main|780072951", "780072951", "S03M020_Main", "box_PlayDialog_v2_136.Finished", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_50()
end
function export:OnEnter_box_OnceOnly_v3_25()
end
function export:OnEnter_box_Multiple_AND_44()
end
function export:OnEnter_box_Player_Proximity_Monitor_71()
  local l0
  l0 = self.box_Player_Proximity_Monitor_71
  l0.TargetEntity = self.CHIP
  l0.Radius = 25
  l0.CheckNow = 1
end
function export:OnEnter_box_CLOController_92()
  local l0
  l0 = self.box_CLOController_92
  l0.CLO = "9223372048573079345"
  l0.User = self.CHIP
end
function export:OnEnter_box_Vehicle_Failure_66()
  local l0
  l0 = self.box_Vehicle_Failure_66
  l0.VehicleEntity = self.CHIP
  l0.Fail_IfUnusable = 1
  l0.Fail_IfStuck = 1
  l0.Unusable_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0.FaiIfUnloaded = 1
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_OnceOnly_v3_84()
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_TutorialController_163()
  local l0
  l0 = self.box_TutorialController_163
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_FelonyEscape2",
    item = "Description",
    id = "693711"
  }
  l0.Duration = 20
end
function export:OnEnter_box_OnceOnly_v3_18()
end
function export:OnEnter_box_VehicleMonitor_v3_122()
  local l0
  l0 = self.box_VehicleMonitor_v3_122
  l0.Vehicle = self.CHIP
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_164()
  local l0
  l0 = self.box_TriggerMonitor_v2_164
  l0.Trigger = "9223372059669415462"
end
function export:OnEnter_box_TutorialController_67()
  local l0
  l0 = self.box_TutorialController_67
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_FelonyEscape1",
    item = "Description",
    id = "693709"
  }
  l0.Duration = 25
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Mission_End_30()
  local l0
  l0 = self.box_Mission_End_30
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S03M020_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Multiple_AND_137()
end
function export:OnEnter_box_MultipleOR_152()
end
function export:OnEnter_box_MissionZone_126()
  local l0
  l0 = self.box_MissionZone_126
  l0.MissionArea = "9223372056712997134"
  l0.MissionLayer = "S03M020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_177()
end
function export:OnEnter_box_SetBoolean_v2_117()
end
_compilerVersion = 4
