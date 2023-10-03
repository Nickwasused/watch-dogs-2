export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1419362410.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1899398813.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1090127905.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2628623184.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2060955561.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/964262306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3332098471.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3788907944.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main"
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Taxi02_DestinationStop = "9223372045891257215"
  self.MissionLayer = "Taxi02_Main"
  self.Client = nil
  self.Taxi02_FirstStop = "9223372045891256547"
  self.CLOClient = "9223372045891232878"
  self.Mission = "MissionList.9223372045891232603"
  self.FirstDestinationReached = 0
  self.IconPickUp = "9223372045891232611"
  self.IconVehicle = "9223372045891256492"
  self.IconDestination = "9223372045891303048"
  self.CLO_9223372046290547198 = "9223372046290547198"
  self.GIC_Users = {}
  self.Elena = nil
  self.ComFortChallenge_Support = {}
  self.RedZoneTimer = 0
  self.box_Taxi_AbortMission_13 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_13
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|5583433"
  self.box_ListWriterSoundID_20 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_20
  l0._graph = self
  l0._name = "box_ListWriterSoundID_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|43737343"
  l0._DynamicAnchors = {SoundID = 6}
  l0.Added = self.f_box_ListWriterSoundID_20_Added
  l0.Removed = self.f_box_ListWriterSoundID_20_Removed
  l0.Out = self.f_box_ListWriterSoundID_20_Out
  self.box_MissionLayer_v2_26 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_26
  l0._graph = self
  l0._name = "box_MissionLayer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|211589402"
  l0.Loaded = self.f_box_MissionLayer_v2_26_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlayDialog_v2_45 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_45
  l0._graph = self
  l0._name = "box_PlayDialog_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|227315895"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_32 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_32
  l0._graph = self
  l0._name = "box_Timer_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|332418488"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_32_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_50 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_50
  l0._graph = self
  l0._name = "box_TaxiRatingController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|467612458"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_50_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MissionController_v4_38 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_38
  l0._graph = self
  l0._name = "box_MissionController_v4_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|486756899"
  self.box_GameplayInteractionController_16 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_16
  l0._graph = self
  l0._name = "box_GameplayInteractionController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|572078269"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TaxiRidePickUpController_39 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_39
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|605555106"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_39_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_39_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self.box_DriveAndTalk_29 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_29
  l0._graph = self
  l0._name = "box_DriveAndTalk_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|607679893"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiRideVehicleMonitor_37 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_37
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|744792691"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_37_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_37_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_37_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_37_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_37_PlayerAbandonedVehicle
  self.box_MultipleOR_46 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|867540531"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_PlayDialog_v2_10 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_10
  l0._graph = self
  l0._name = "box_PlayDialog_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|877353052"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_10_ListFinished
  l0.PriorityFailed = self.f_box_PlayDialog_v2_10_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|945405961"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1006855172"
  l0.Out = self.f_box_Timer_v2_30_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_34 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_34
  l0._graph = self
  l0._name = "box_DriveAndTalk_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1009716258"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TaxiStrategiesController_44 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_44
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1063067651"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_44_Paused
  l0.Resumed = DummyFunction
  self.box_TaxiRatingController_60 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_60
  l0._graph = self
  l0._name = "box_TaxiRatingController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1208603542"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_60_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MissionCheckpointReach_5 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_5
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1237602347"
  l0.Out = self.f_box_MissionCheckpointReach_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlayDialog_v2_24 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_24
  l0._graph = self
  l0._name = "box_PlayDialog_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1314552020"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_9 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_9
  l0._graph = self
  l0._name = "box_DriveAndTalk_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1337383401"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_9_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MapPointController_v4_8 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_8
  l0._graph = self
  l0._name = "box_MapPointController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1387016983"
  l0.Shown = self.f_box_MapPointController_v4_8_Shown
  l0.Hidden = self.f_box_MapPointController_v4_8_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1414843817"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_61 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_61
  l0._graph = self
  l0._name = "box_MissionLayer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1430535803"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_61_Unloaded
  l0.Reseted = DummyFunction
  self.box_TaxiStrategiesController_27 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_27
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1471082922"
  l0.Started = self.f_box_TaxiStrategiesController_27_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_28 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_28
  l0._graph = self
  l0._name = "box_DriveAndTalk_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1555194372"
  l0.Started = self.f_box_DriveAndTalk_28_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_28_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Proximity_Monitor_36 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_36
  l0._graph = self
  l0._name = "box_Proximity_Monitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1558114636"
  l0.Enabled = self.f_box_Proximity_Monitor_36_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_36_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_36_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_33 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_33
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1597061109"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_33_Enabled
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_33_ClientDropOff
  self.box_SetBoolean_v2_31 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_31
  l0._graph = self
  l0._name = "box_SetBoolean_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1636088167"
  l0.Out = self.f_box_SetBoolean_v2_31_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_31_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_31_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_31_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_31_SetFromBool
  self.box_SetBoolean_v2_41 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_41
  l0._graph = self
  l0._name = "box_SetBoolean_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1812559703"
  l0.Out = self.f_box_SetBoolean_v2_41_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_41_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_41_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_41_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_41_SetFromBool
  self.box_TaxiStrategiesController_42 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_42
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1895928534"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_42_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1907210034"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1968766897"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_ListWriter_17 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_17
  l0._graph = self
  l0._name = "box_ListWriter_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2009879621"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_17_Added
  l0.Removed = self.f_box_ListWriter_17_Removed
  l0.Out = self.f_box_ListWriter_17_Out
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2012959239"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_23 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_23
  l0._graph = self
  l0._name = "box_Proximity_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2017147008"
  l0.Enabled = self.f_box_Proximity_Monitor_23_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_23_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MissionMessageController_v3_40 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_40
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2030659877"
  l0.Out = self.f_box_MissionMessageController_v3_40_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_48 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_48
  l0._graph = self
  l0._name = "box_OnceOnly_v3_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2070590017"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_48_Out
  l0.ResetOut = DummyFunction
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
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1209239221", "1209239221", "Taxi02_Main", "CheckPoint_0", "box_MultipleOR_6.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|530254315", "530254315", "Taxi02_Main", "In", "box_MultipleOR_6.Input", self, l0)
  l0:Input(0)
end
function export:f_box_ListWriterSoundID_20_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_20
  self.ComFortChallenge_Support = l0.Target
end
function export:f_box_ListWriterSoundID_20_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_20
  self.ComFortChallenge_Support = l0.Target
end
function export:f_box_ListWriterSoundID_20_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_20
  self.ComFortChallenge_Support = l0.Target
end
function export:f_box_MissionLayer_v2_26_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2131657447"
  l0.Out = self.f_box_Get_Player_ID_11_Out
  l0 = self.box_MissionLayer_v2_26
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1491285268", "1491285268", "Taxi02_Main", "box_MissionLayer_v2_26.Loaded", "box_Get_Player_ID_11.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2005348386"
  l0.Out = self.f_box_Simple_Node_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|184838647", "184838647", "Taxi02_Main", "box_Simple_Node_18.Out", "box_Simple_Node_19.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_32_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_28
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110308"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0 = self.box_Timer_v2_32
  l1 = self.box_DriveAndTalk_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|570057818", "570057818", "Taxi02_Main", "box_Timer_v2_32.TimeElapsed", "box_DriveAndTalk_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|846671851"
  l0.Out = self.f_box_Simple_Node_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|137845814", "137845814", "Taxi02_Main", "box_Simple_Node_3.Out", "box_Simple_Node_7.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRatingController_50_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_42
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  l0 = self.box_TaxiRatingController_50
  l1 = self.box_TaxiStrategiesController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2081937354", "2081937354", "Taxi02_Main", "box_TaxiRatingController_50.RewardShown", "box_TaxiStrategiesController_42.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRidePickUpController_39_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_39
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_TaxiRatingController_60
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRidePickUpController_39
  l1 = self.box_TaxiRatingController_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1913679734", "1913679734", "Taxi02_Main", "box_TaxiRidePickUpController_39.ClientPickedUp", "box_TaxiRatingController_60.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_TaxiRidePickUpController_39_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_39
  self.Elena = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_37()
  l1 = self.box_TaxiRideVehicleMonitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1437539769", "1437539769", "Taxi02_Main", "box_TaxiRidePickUpController_39.ClientSpawned", "box_TaxiRideVehicleMonitor_37.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_37_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_13()
  l0 = self.box_TaxiRideVehicleMonitor_37
  l1 = self.box_Taxi_AbortMission_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|663514822", "663514822", "Taxi02_Main", "box_TaxiRideVehicleMonitor_37.ClientBailedOut", "box_Taxi_AbortMission_13.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_37_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_13()
  l0 = self.box_TaxiRideVehicleMonitor_37
  l1 = self.box_Taxi_AbortMission_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1428010070", "1428010070", "Taxi02_Main", "box_TaxiRideVehicleMonitor_37.ClientDeath", "box_Taxi_AbortMission_13.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_37_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_17()
  l0 = self.box_TaxiRideVehicleMonitor_37
  l1 = self.box_ListWriter_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|369660681", "369660681", "Taxi02_Main", "box_TaxiRideVehicleMonitor_37.Disabled", "box_ListWriter_17.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_37_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_13()
  l0 = self.box_TaxiRideVehicleMonitor_37
  l1 = self.box_Taxi_AbortMission_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1691165581", "1691165581", "Taxi02_Main", "box_TaxiRideVehicleMonitor_37.PlayerAbandonedVehicle", "box_Taxi_AbortMission_13.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_37_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_13()
  l0 = self.box_TaxiRideVehicleMonitor_37
  l1 = self.box_Taxi_AbortMission_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|720242286", "720242286", "Taxi02_Main", "box_TaxiRideVehicleMonitor_37.VehicleUnusable", "box_Taxi_AbortMission_13.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_3DGPSController_12_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_9()
  l0 = self.box_DriveAndTalk_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|975668040", "975668040", "Taxi02_Main", "box_3DGPSController_12.Disabled", "box_DriveAndTalk_9.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_3DGPSController_12_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_9()
  l0 = self.box_DriveAndTalk_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1754466451", "1754466451", "Taxi02_Main", "box_3DGPSController_12.Enabled", "box_DriveAndTalk_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1542178185"
  l0.Out = self.f_box_Simple_Node_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1597776223", "1597776223", "Taxi02_Main", "box_Simple_Node_7.Out", "box_Simple_Node_2.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_32
  l0.Seconds = 2
  l0 = self.box_MultipleOR_46
  l1 = self.box_Timer_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1117210857", "1117210857", "Taxi02_Main", "box_MultipleOR_46.Out", "box_Timer_v2_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_10_ListFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_PlayDialog_v2_10
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2057224496", "2057224496", "Taxi02_Main", "box_PlayDialog_v2_10.ListFinished", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_10_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_PlayDialog_v2_10
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1340974883", "1340974883", "Taxi02_Main", "box_PlayDialog_v2_10.PriorityFailed", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_34
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110310"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0 = self.box_Timer_v2_73
  l1 = self.box_DriveAndTalk_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1259135765", "1259135765", "Taxi02_Main", "box_Timer_v2_73.TimeElapsed", "box_DriveAndTalk_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF020",
    item = "Objective_01",
    id = "630488"
  }
  l0 = self.box_Timer_v2_30
  l1 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|545944527", "545944527", "Taxi02_Main", "box_Timer_v2_30.Out", "box_MissionMessageController_v3_22.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: RedZoneTimer", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SetBoolean_v2')-- Comment: RedZoneTimer")
  l0 = self.box_Timer_v2_30
  l1 = self.box_SetBoolean_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|26189912", "26189912", "Taxi02_Main", "box_Timer_v2_30.TimeElapsed", "box_SetBoolean_v2_31.True", l0, l1)
  l1:True()
end
function export:f_box_TaxiStrategiesController_44_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_44
  l1 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1908966395", "1908966395", "Taxi02_Main", "box_TaxiStrategiesController_44.Paused", "box_Timer_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_60_RatingReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1659998925"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_TaxiRatingController_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|889001189", "889001189", "Taxi02_Main", "box_TaxiRatingController_60.RatingReset", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l1 = self.box_SetBoolean_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1846956115", "1846956115", "Taxi02_Main", "box_MissionCheckpointReach_5.Out", "box_SetBoolean_v2_41.False", l0, l1)
  l1:False()
end
function export:f_box_Compare_Boolean_v2_43_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_24
  l0.Entity = self.Elena
  l0.SoundId = "soundbinary/1419362410.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1885792428", "1885792428", "Taxi02_Main", "box_Compare_Boolean_v2_43.A_is_False", "box_PlayDialog_v2_24.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_43_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_45
  l0.Entity = self.Elena
  l0.SoundId = "soundbinary/1090127905.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1857161433", "1857161433", "Taxi02_Main", "box_Compare_Boolean_v2_43.A_is_True", "box_PlayDialog_v2_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_DriveAndTalk_9_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_48()
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_OnceOnly_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1132459556", "1132459556", "Taxi02_Main", "box_DriveAndTalk_9.Stopped", "box_OnceOnly_v3_48.In", l0, l1)
  l1:In(0)
end
function export:f_box_DriveAndTalk_9_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_48()
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_OnceOnly_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|988791653", "988791653", "Taxi02_Main", "box_DriveAndTalk_9.TalkFinished", "box_OnceOnly_v3_48.In", l0, l1)
  l1:In(1)
end
function export:f_box_MapPointController_v4_8_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_MapPointController_v4_8
  l1 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|933175317", "933175317", "Taxi02_Main", "box_MapPointController_v4_8.Hidden", "box_Proximity_Monitor_36.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_8_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_MapPointController_v4_8
  l1 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1778820118", "1778820118", "Taxi02_Main", "box_MapPointController_v4_8.Shown", "box_Proximity_Monitor_36.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_50
  l0.MissionName = self.Mission
  l0 = self.box_Timer_v2_15
  l1 = self.box_TaxiRatingController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1461657378", "1461657378", "Taxi02_Main", "box_Timer_v2_15.TimeElapsed", "box_TaxiRatingController_50.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_MissionLayer_v2_61_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_61
  l1 = self.box_MissionController_v4_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|367430474", "367430474", "Taxi02_Main", "box_MissionLayer_v2_61.Unloaded", "box_MissionController_v4_38.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_TaxiStrategiesController_27_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_30
  l0.Seconds = 240
  l0 = self.box_TaxiStrategiesController_27
  l1 = self.box_Timer_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|162243155", "162243155", "Taxi02_Main", "box_TaxiStrategiesController_27.Started", "box_Timer_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_37()
  l0 = self.box_TaxiRideVehicleMonitor_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1987581448", "1987581448", "Taxi02_Main", "box_Simple_Node_2.Out", "box_TaxiRideVehicleMonitor_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DriveAndTalk_28_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Proximity_Monitor_23
  l0.Entity1 = "9223372045891257215"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|125135318", "125135318", "Taxi02_Main", "box_DriveAndTalk_28.Started", "box_Proximity_Monitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_28_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_29
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110310"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
  l0 = self.box_DriveAndTalk_28
  l1 = self.box_DriveAndTalk_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|364109487", "364109487", "Taxi02_Main", "box_DriveAndTalk_28.TalkFinished", "box_DriveAndTalk_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_36_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_12()
  l0 = self.box_Proximity_Monitor_36
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|402479325", "402479325", "Taxi02_Main", "box_Proximity_Monitor_36.Disabled", "box_3DGPSController_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_36_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_3DGPSController_12()
  l0 = self.box_Proximity_Monitor_36
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1921808351", "1921808351", "Taxi02_Main", "box_Proximity_Monitor_36.Enabled", "box_3DGPSController_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_36_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1885008049"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_Proximity_Monitor_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|855900227", "855900227", "Taxi02_Main", "box_Proximity_Monitor_36.EnterRadius", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_33_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2106703072"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|38347507", "38347507", "Taxi02_Main", "box_TaxiRideReachDestinationMonitor_33.ClientDropOff", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_33_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_73
  l0.Seconds = 3
  l0 = self.box_TaxiRideReachDestinationMonitor_33
  l1 = self.box_Timer_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|675830016", "675830016", "Taxi02_Main", "box_TaxiRideReachDestinationMonitor_33.Enabled", "box_Timer_v2_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_31_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_31_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_31_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_31
  self.RedZoneTimer = l0.Target
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_27
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1053571134", "1053571134", "Taxi02_Main", "box_Ordered_Output_21.Out", "box_TaxiStrategiesController_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ListWriter_17()
  l0 = self.box_ListWriter_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1288355285", "1288355285", "Taxi02_Main", "box_Ordered_Output_21.Out", "box_ListWriter_17.Add", clone, l0)
  l0:Add()
end
function export:f_box_SetBoolean_v2_41_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_41_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.RedZoneTimer = l0.Target
  l0 = self.box_TaxiRidePickUpController_39
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = self.IconPickUp
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
  l0 = self.box_SetBoolean_v2_41
  l1 = self.box_TaxiRidePickUpController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|76082907", "76082907", "Taxi02_Main", "box_SetBoolean_v2_41.SetFalse", "box_TaxiRidePickUpController_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_41_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_41_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.RedZoneTimer = l0.Target
end
function export:f_box_SetBoolean_v2_41_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.RedZoneTimer = l0.Target
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|258873161"
  l0.Out = self.f_box_Simple_Node_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|607474050", "607474050", "Taxi02_Main", "box_Ordered_Output_1.Out", "box_Simple_Node_18.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_10
  l0.Entity = self.Elena
  l0.SoundIdList = self.ComFortChallenge_Support
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1188663293", "1188663293", "Taxi02_Main", "box_Ordered_Output_1.Out", "box_PlayDialog_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_TaxiStrategiesController_42_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_42
  l1 = self.box_MissionMessageController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1985655804", "1985655804", "Taxi02_Main", "box_TaxiStrategiesController_42.Stopped", "box_MissionMessageController_v3_40.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_26
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_6
  l1 = self.box_MissionLayer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1550238309", "1550238309", "Taxi02_Main", "box_MultipleOR_6.Out", "box_MissionLayer_v2_26.Load", l0, l1)
  l1:Load()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_5
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_4
  l1 = self.box_MissionCheckpointReach_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1006928806", "1006928806", "Taxi02_Main", "box_CinematicPrep_4.PostOut", "box_MissionCheckpointReach_5.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_8()
  l0 = self.box_MapPointController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|240868342", "240868342", "Taxi02_Main", "box_Simple_Node_19.Out", "box_MapPointController_v4_8.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_17_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_17
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_16()
  l1 = self.box_GameplayInteractionController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1400472882", "1400472882", "Taxi02_Main", "box_ListWriter_17.Added", "box_GameplayInteractionController_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_17_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_17
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_17_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_17
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_16()
  l1 = self.box_GameplayInteractionController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|889098458", "889098458", "Taxi02_Main", "box_ListWriter_17.Removed", "box_GameplayInteractionController_16.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_8()
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_MapPointController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|153767715", "153767715", "Taxi02_Main", "box_MissionMessageController_v3_22.Out", "box_MapPointController_v4_8.Show", l0, l1)
  l1:Show()
end
function export:f_box_Proximity_Monitor_23_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_33
  l0.Client = self.Elena
  l0.DropOffIcon = "9223372045891257215"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF020",
    item = "Objective_02",
    id = "630489"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_TaxiRideReachDestinationMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1683280536", "1683280536", "Taxi02_Main", "box_Proximity_Monitor_23.Enabled", "box_TaxiRideReachDestinationMonitor_33.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_23_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RedZoneTimer
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1297779515"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_43_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_43_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Proximity_Monitor_23
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|1050655113", "1050655113", "Taxi02_Main", "box_Proximity_Monitor_23.EnterRadius", "box_Compare_Boolean_v2_43.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_61
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_40
  l1 = self.box_MissionLayer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|2027986704", "2027986704", "Taxi02_Main", "box_MissionMessageController_v3_40.Out", "box_MissionLayer_v2_61.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_OnceOnly_v3_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_20
  l0.Input = self.ComFortChallenge_Support
  l0.SoundID[0] = "soundbinary/1899398813.bnk"
  l0.SoundID[1] = "soundbinary/3788907944.bnk"
  l0.SoundID[2] = "soundbinary/964262306.bnk"
  l0.SoundID[3] = "soundbinary/2628623184.bnk"
  l0.SoundID[4] = "soundbinary/3332098471.bnk"
  l0.SoundID[5] = "soundbinary/2060955561.bnk"
  l0 = self.box_OnceOnly_v3_48
  l1 = self.box_ListWriterSoundID_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|537088447", "537088447", "Taxi02_Main", "box_OnceOnly_v3_48.Out", "box_ListWriterSoundID_20.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_44
  l0.Config = "TaxiRideStrategyConfig.9223372045668663952"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|378375462", "378375462", "Taxi02_Main", "box_Ordered_Output_47.Out", "box_TaxiStrategiesController_44.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|398165002"
  l0.Out = self.f_box_Simple_Node_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|22421999", "22421999", "Taxi02_Main", "box_Ordered_Output_47.Out", "box_Simple_Node_3.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|758364421", "758364421", "Taxi02_Main", "box_Get_Player_ID_11.Out", "box_CinematicPrep_4.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:OnEnter_box_Taxi_AbortMission_13()
  local l0
  l0 = self.box_Taxi_AbortMission_13
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372045668663952"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:OnEnter_box_GameplayInteractionController_16()
  local l0
  l0 = self.box_GameplayInteractionController_16
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_TaxiRideVehicleMonitor_37()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_37
  l0.Client = self.Elena
  l0.Config = "TaxiRideGameplayBrick.9223372057653321824"
end
function export:OnEnter_box_3DGPSController_12()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Taxi02_FirstStop
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Player"
  l0._graph = self
  l0._name = "box_3DGPSController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi02.domino|@Taxi02_Main|818278384"
  l0.Enabled = self.f_box_3DGPSController_12_Enabled
  l0.Disabled = self.f_box_3DGPSController_12_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_DriveAndTalk_9()
  local l0
  l0 = self.box_DriveAndTalk_9
  l0.Pawn1 = self.Elena
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049804110307"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372049113084109"
end
function export:OnEnter_box_MapPointController_v4_8()
  local l0
  l0 = self.box_MapPointController_v4_8
  l0.MapPoint = self.Taxi02_FirstStop
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerDescription = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_Proximity_Monitor_36()
  local l0
  l0 = self.box_Proximity_Monitor_36
  l0.Entity1 = self.Taxi02_FirstStop
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_ListWriter_17()
  local l0
  l0 = self.box_ListWriter_17
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Elena
end
function export:OnEnter_box_OnceOnly_v3_48()
end
_compilerVersion = 4
