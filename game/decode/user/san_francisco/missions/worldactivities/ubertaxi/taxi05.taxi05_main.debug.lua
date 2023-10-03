export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader_SoundID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomInteger.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2080618438.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4001855298.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1278437805.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1066329321.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4017453473.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1115399176.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3394559707.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/730477845.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/615395564.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi05_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main"
  self.PlayerEntity = nil
  self.Mission = "MissionList.9223372046107867503"
  self.PlayerVehicle = nil
  self.MissionLayer = "Taxi05_Main"
  self.Elena = nil
  self.GayMan = nil
  self.GIC_Users = {}
  self.Drive_and_Talk_4 = {}
  self.Time_Gate_01 = 0
  self.Time_Gate_02 = 0
  self.Time_Gate_03 = 0
  self.Time_Gate_04 = 0
  self.Time_Gate_05 = 0
  self.Total_Time = 160
  self.Rating_Counter = 0
  self.SongCount = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.Bark_List = {}
  self.BarkCount = 0
  self.isMissionFinished = 0
  self.tmpSound = nil
  self.box_MultipleOR_52 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|25790024"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_ListWriterSoundID_60 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_60
  l0._graph = self
  l0._name = "box_ListWriterSoundID_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|27418383"
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_box_ListWriterSoundID_60_Added
  l0.Removed = self.f_box_ListWriterSoundID_60_Removed
  l0.Out = self.f_box_ListWriterSoundID_60_Out
  self.box_PlayDialog_v2_58 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_58
  l0._graph = self
  l0._name = "box_PlayDialog_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|30615475"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_58_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_58_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_ListReaderSoundID_61 = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self.box_ListReaderSoundID_61
  l0._graph = self
  l0._name = "box_ListReaderSoundID_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|34064658"
  l0.Out = self.f_box_ListReaderSoundID_61_Out
  l0.EndOfList = self.f_box_ListReaderSoundID_61_EndOfList
  self.box_TaxiRatingController_47 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_47
  l0._graph = self
  l0._name = "box_TaxiRatingController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|43288995"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_47_RatingRemoved
  self.box_PlayDialog_v2_4 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_4
  l0._graph = self
  l0._name = "box_PlayDialog_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|43317297"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_4_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_4_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_82 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_82
  l0._graph = self
  l0._name = "box_SetBoolean_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|89396607"
  l0.Out = self.f_box_SetBoolean_v2_82_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_82_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_82_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_82_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_82_SetFromBool
  self.box_GameplayInteractionController_9 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_9
  l0._graph = self
  l0._name = "box_GameplayInteractionController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|100777572"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_9_Started
  l0.Stopped = self.f_box_GameplayInteractionController_9_Stopped
  self.box_MultipleOR_75 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_75
  l0._graph = self
  l0._name = "box_MultipleOR_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|123298905"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_75_Out
  self.box_TaxiRidePickUpController_5 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_5
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|128415123"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_5_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_5_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self.box_MissionLayer_v2_26 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_26
  l0._graph = self
  l0._name = "box_MissionLayer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|183812964"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_26_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_73 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_73
  l0._graph = self
  l0._name = "box_MultipleOR_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|186326312"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_73_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Timer_v2_34 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_34
  l0._graph = self
  l0._name = "box_Timer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|304505982"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_76 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_76
  l0._graph = self
  l0._name = "box_MultipleOR_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|350999751"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_76_Out
  self.box_MultipleOR_78 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_78
  l0._graph = self
  l0._name = "box_MultipleOR_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|412434379"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_78_Out
  self.box_DriveAndTalk_21 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_21
  l0._graph = self
  l0._name = "box_DriveAndTalk_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|423772737"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_21_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_21_TalkFailed
  self.box_DriveAndTalk_15 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_15
  l0._graph = self
  l0._name = "box_DriveAndTalk_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|434893178"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_15_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_15_TalkFailed
  self.box_MissionCheckpointReach_13 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_13
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|567000996"
  l0.Out = self.f_box_MissionCheckpointReach_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|588203676"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_20 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_20
  l0._graph = self
  l0._name = "box_PlayDialog_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|589787202"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_20_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_20_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiRatingController_25 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_25
  l0._graph = self
  l0._name = "box_TaxiRatingController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|681861022"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_41 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_41
  l0._graph = self
  l0._name = "box_DriveAndTalk_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|686433532"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Taxi_AbortMission_8 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_8
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|746324528"
  self.box_Timer_v2_39 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_39
  l0._graph = self
  l0._name = "box_Timer_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|769589265"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_68 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_68
  l0._graph = self
  l0._name = "box_MultipleOR_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|798960634"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_68_Out
  self.box_PlayDialog_v2_23 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_23
  l0._graph = self
  l0._name = "box_PlayDialog_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|816975105"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_23_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_23_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiRatingController_37 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_37
  l0._graph = self
  l0._name = "box_TaxiRatingController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|829194982"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_37_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_22 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_22
  l0._graph = self
  l0._name = "box_DriveAndTalk_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|891949409"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_22_TalkFailed
  self.box_PlayDialog_v2_63 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_63
  l0._graph = self
  l0._name = "box_PlayDialog_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|977307553"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_63_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_63_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_45 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_45
  l0._graph = self
  l0._name = "box_Timer_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|984516121"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_17 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_17
  l0._graph = self
  l0._name = "box_PlayDialog_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|994627576"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_17_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_17_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1062383408"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_MissionMessageController_v3_28 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_28
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1109153412"
  l0.Out = self.f_box_MissionMessageController_v3_28_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_42 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_42
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1124263256"
  l0.Out = self.f_box_MissionMessageController_v3_42_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_27 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_27
  l0._graph = self
  l0._name = "box_MissionController_v4_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1125977345"
  self.box_MultipleOR_74 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_74
  l0._graph = self
  l0._name = "box_MultipleOR_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1156191354"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_74_Out
  self.box_PlayDialog_v2_54 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_54
  l0._graph = self
  l0._name = "box_PlayDialog_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1174839320"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_54_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_54_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_69 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1192660435"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_Timer_v2_62 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_62
  l0._graph = self
  l0._name = "box_Timer_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1198735319"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_62_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_77 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_77
  l0._graph = self
  l0._name = "box_MultipleOR_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1203444116"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_77_Out
  self.box_TaxiStrategiesController_36 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_36
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1238802069"
  l0.Started = self.f_box_TaxiStrategiesController_36_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1248216618"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_TaxiStrategiesController_3 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_3
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1333139863"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_3_Paused
  l0.Resumed = DummyFunction
  self.box_MultipleOR_43 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_43
  l0._graph = self
  l0._name = "box_MultipleOR_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1409839125"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_43_Out
  self.box_TaxiStrategiesController_29 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_29
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1427705035"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_29_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_SetBoolean_v2_48 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_48
  l0._graph = self
  l0._name = "box_SetBoolean_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1428791981"
  l0.Out = self.f_box_SetBoolean_v2_48_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_48_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_48_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_48_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_48_SetFromBool
  self.box_PlayDialog_v2_18 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_18
  l0._graph = self
  l0._name = "box_PlayDialog_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1471965679"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_18_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_18_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1513379511"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_46 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_46
  l0._graph = self
  l0._name = "box_Timer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1524013490"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1635516877"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_TaxiRideVehicleMonitor_11 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_11
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1698814892"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_11_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_11_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_11_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_11_PlayerAbandonedVehicle
  self.box_Timer_v2_35 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_35
  l0._graph = self
  l0._name = "box_Timer_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1724541825"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_7 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1752784770"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_7_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_7_ClientDropOff
  self.box_MultipleOR_79 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_79
  l0._graph = self
  l0._name = "box_MultipleOR_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1790398776"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_79_Out
  self.box_DriveAndTalk_6 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_6
  l0._graph = self
  l0._name = "box_DriveAndTalk_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1847011052"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_6_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_6_TalkFailed
  self.box_DriveAndTalk_19 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_19
  l0._graph = self
  l0._name = "box_DriveAndTalk_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1912099942"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_19_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_19_TalkFailed
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1955306440"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_ListWriter_10 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_10
  l0._graph = self
  l0._name = "box_ListWriter_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1956966285"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_10_Added
  l0.Removed = self.f_box_ListWriter_10_Removed
  l0.Out = self.f_box_ListWriter_10_Out
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2005475048"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_16 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_16
  l0._graph = self
  l0._name = "box_CinematicPrep_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2062933857"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_16_PostOut
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
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1455409189", "1455409189", "Taxi05_Main", "CheckPoint_0", "box_MultipleOR_14.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2018744546", "2018744546", "Taxi05_Main", "In", "box_MultipleOR_14.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|228182120"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_84_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_52
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1346950886", "1346950886", "Taxi05_Main", "box_MultipleOR_52.Out", "box_Compare_Boolean_v2_84.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriterSoundID_60_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_60
  self.Bark_List = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Bark_List
  l0._graph = self
  l0._name = "box_ListLength_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|786948854"
  l0.Out = self.f_box_ListLength_59_Out
  l0.Empty = self.f_box_ListLength_59_Empty
  l0.NotEmpty = self.f_box_ListLength_59_NotEmpty
  l0 = self.box_ListWriterSoundID_60
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1566882987", "1566882987", "Taxi05_Main", "box_ListWriterSoundID_60.Added", "box_ListLength_59.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_ListWriterSoundID_60_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_60
  self.Bark_List = l0.Target
end
function export:f_box_ListWriterSoundID_60_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_60
  self.Bark_List = l0.Target
end
function export:f_box_PlayDialog_v2_58_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_PlayDialog_v2_58
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2077022211", "2077022211", "Taxi05_Main", "box_PlayDialog_v2_58.Finished", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_58_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_PlayDialog_v2_58
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1735231645", "1735231645", "Taxi05_Main", "box_PlayDialog_v2_58.PriorityFailed", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListReaderSoundID_61_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListReaderSoundID_61
  self.tmpSound = l0.SoundID
end
function export:f_box_ListReaderSoundID_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_61
  self.tmpSound = l0.SoundID
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1423556234"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_ListReaderSoundID_61
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|339311953", "339311953", "Taxi05_Main", "box_ListReaderSoundID_61.Out", "box_Compare_Boolean_v2_38.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1632379586"
  l0.Out = self.f_box_Simple_Node_33_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|590032612", "590032612", "Taxi05_Main", "box_Simple_Node_64.Out", "box_Simple_Node_33.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRatingController_47_RatingRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_60
  l0.Input = self.Bark_List
  l0.SoundID[0] = "soundbinary/3394559707.bnk"
  l0.SoundID[1] = "soundbinary/1115399176.bnk"
  l0.SoundID[2] = "soundbinary/2080618438.bnk"
  l0.SoundID[3] = "soundbinary/4017453473.bnk"
  l0 = self.box_TaxiRatingController_47
  l1 = self.box_ListWriterSoundID_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1026111245", "1026111245", "Taxi05_Main", "box_TaxiRatingController_47.RatingRemoved", "box_ListWriterSoundID_60.Add", l0, l1)
  l1:Add()
end
function export:f_box_PlayDialog_v2_4_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_PlayDialog_v2_4
  l1 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1575347391", "1575347391", "Taxi05_Main", "box_PlayDialog_v2_4.Finished", "box_MultipleOR_74.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_4_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_PlayDialog_v2_4
  l1 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|747268563", "747268563", "Taxi05_Main", "box_PlayDialog_v2_4.PriorityFailed", "box_MultipleOR_74.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l0.Client = self.GayMan
  l0.DropOffIcon = "9223372046661821328"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1561365229", "1561365229", "Taxi05_Main", "box_Simple_Node_30.Out", "box_TaxiRideReachDestinationMonitor_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_82_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.isMissionFinished = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1127925464"
  l0.Out = self.f_box_Simple_Node_31_Out
  l0 = self.box_SetBoolean_v2_82
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|990936374", "990936374", "Taxi05_Main", "box_SetBoolean_v2_82.SetTrue", "box_Simple_Node_31.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_82_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.isMissionFinished = l0.Target
end
function export:f_box_GameplayInteractionController_9_Started()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'm on my way, Mat.We're having a baby.Congratulations!I'll get you there as fast as I can.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'm on my way, Mat.We're having a baby.Congratulations!I'll get you there as fast as I can.")
  l0 = self.box_DriveAndTalk_15
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588169"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_GameplayInteractionController_9
  l1 = self.box_DriveAndTalk_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2087191108", "2087191108", "Taxi05_Main", "box_GameplayInteractionController_9.Started", "box_DriveAndTalk_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_9_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1855255567"
  l0._DynamicAnchors = {Out = 1}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0 = self.box_GameplayInteractionController_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|704672743", "704672743", "Taxi05_Main", "box_GameplayInteractionController_9.Stopped", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_75_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Oh my god!Is that good? Bad? What does that mean?", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Oh my god!Is that good? Bad? What does that mean?")
  l0 = self.box_DriveAndTalk_19
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588172"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_MultipleOR_75
  l1 = self.box_DriveAndTalk_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1297109721", "1297109721", "Taxi05_Main", "box_MultipleOR_75.Out", "box_DriveAndTalk_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRidePickUpController_5_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_5
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_MissionMessageController_v3_42
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF050",
    item = "Objective_Clinic",
    id = "630491"
  }
  l0 = self.box_TaxiRidePickUpController_5
  l1 = self.box_MissionMessageController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1466043890", "1466043890", "Taxi05_Main", "box_TaxiRidePickUpController_5.ClientPickedUp", "box_MissionMessageController_v3_42.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TaxiRidePickUpController_5_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_5
  self.GayMan = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_11()
  l1 = self.box_TaxiRideVehicleMonitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|352684933", "352684933", "Taxi05_Main", "box_TaxiRidePickUpController_5.ClientSpawned", "box_TaxiRideVehicleMonitor_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Random_Integer_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReaderSoundID_61
  l0.Input = self.Bark_List
  l0.Index = self.BarkCount
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1775328258", "1775328258", "Taxi05_Main", "box_Random_Integer_57.Out", "box_ListReaderSoundID_61.Read", clone, l0)
  l0:Read()
end
function export:f_box_MissionLayer_v2_26_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_26
  l1 = self.box_MissionController_v4_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|257820547", "257820547", "Taxi05_Main", "box_MissionLayer_v2_26.Unloaded", "box_MissionController_v4_27.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 5
  l0 = self.box_MultipleOR_73
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|442768399", "442768399", "Taxi05_Main", "box_MultipleOR_73.Out", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|794668992", "794668992", "Taxi05_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_62
  l0.Seconds = 120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|403476506", "403476506", "Taxi05_Main", "box_Ordered_Output_24.Out", "box_Timer_v2_62.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Hello. Please get me to the clinic. A-sap.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Hello. Please get me to the clinic. A-sap.")
  l0 = self.box_PlayDialog_v2_17
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/4001855298.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1440525797", "1440525797", "Taxi05_Main", "box_Ordered_Output_24.Out", "box_PlayDialog_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|642194971"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|206773338", "206773338", "Taxi05_Main", "box_Ordered_Output_24.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_84_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: -1 Star", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaxiRatingController')-- Comment: -1 Star")
  l0 = self.box_TaxiRatingController_47
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|241299864", "241299864", "Taxi05_Main", "box_Compare_Boolean_v2_84.A_is_False", "box_TaxiRatingController_47.RemoveRating", clone, l0)
  l0:RemoveRating()
end
function export:f_box_Compare_Boolean_v2_83_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: I need you to really step on it!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: I need you to really step on it!")
  l0 = self.box_PlayDialog_v2_63
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/1115399176.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1027335174", "1027335174", "Taxi05_Main", "box_Compare_Boolean_v2_83.A_is_False", "box_PlayDialog_v2_63.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_34_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Alyssa's contractions are getting closer together!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Alyssa's contractions are getting closer together!")
  l0 = self.box_PlayDialog_v2_18
  l0.SoundId = "soundbinary/730477845.bnk"
  l0 = self.box_Timer_v2_34
  l1 = self.box_PlayDialog_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1784650937", "1784650937", "Taxi05_Main", "box_Timer_v2_34.TimeElapsed", "box_PlayDialog_v2_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_Float_Arithmetics_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.Rating_Counter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Rating_Counter
  l0.B = 1
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|575822157"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_53_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1976908596", "1976908596", "Taxi05_Main", "box_Float_Arithmetics_56.Out", "box_Compare_Floats_v2_53.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_76
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|529271522", "529271522", "Taxi05_Main", "box_MultipleOR_76.Out", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_45
  l0.Seconds = 2
  l0 = self.box_MultipleOR_78
  l1 = self.box_Timer_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|730985961", "730985961", "Taxi05_Main", "box_MultipleOR_78.Out", "box_Timer_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_21_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_DriveAndTalk_21
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1453253289", "1453253289", "Taxi05_Main", "box_DriveAndTalk_21.TalkFailed", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_21_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_DriveAndTalk_21
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|447588743", "447588743", "Taxi05_Main", "box_DriveAndTalk_21.TalkFinished", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DriveAndTalk_15_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_DriveAndTalk_15
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|976322057", "976322057", "Taxi05_Main", "box_DriveAndTalk_15.TalkFailed", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_15_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_DriveAndTalk_15
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1477623271", "1477623271", "Taxi05_Main", "box_DriveAndTalk_15.TalkFinished", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_3
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1336638497", "1336638497", "Taxi05_Main", "box_Ordered_Output_80.Out", "box_TaxiStrategiesController_3.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|35134671"
  l0.Out = self.f_box_Simple_Node_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1073290554", "1073290554", "Taxi05_Main", "box_Ordered_Output_80.Out", "box_Simple_Node_64.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_5
  l0.ClientClo = "9223372046661821124"
  l0.PickUpIcon = "9223372046661821117"
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
  l0 = self.box_MissionCheckpointReach_13
  l1 = self.box_TaxiRidePickUpController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1001123609", "1001123609", "Taxi05_Main", "box_MissionCheckpointReach_13.Out", "box_TaxiRidePickUpController_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Floats_v2_53_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_51()
  l0 = self.box_Timer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2090415168", "2090415168", "Taxi05_Main", "box_Compare_Floats_v2_53.A_gt_B", "box_Timer_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: It made me queasy.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: It made me queasy.")
  l0 = self.box_DriveAndTalk_21
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588174"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_Timer_v2_40
  l1 = self.box_DriveAndTalk_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|900995718", "900995718", "Taxi05_Main", "box_Timer_v2_40.TimeElapsed", "box_DriveAndTalk_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_20_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_PlayDialog_v2_20
  l1 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1917640037", "1917640037", "Taxi05_Main", "box_PlayDialog_v2_20.Finished", "box_MultipleOR_76.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_20_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_76()
  l0 = self.box_PlayDialog_v2_20
  l1 = self.box_MultipleOR_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1402481521", "1402481521", "Taxi05_Main", "box_PlayDialog_v2_20.PriorityFailed", "box_MultipleOR_76.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|61005728"
  l0.Out = self.f_box_Simple_Node_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1700058705", "1700058705", "Taxi05_Main", "box_Simple_Node_12.Out", "box_Simple_Node_30.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRatingController_25_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_29
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  l0 = self.box_TaxiRatingController_25
  l1 = self.box_TaxiStrategiesController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1002072249", "1002072249", "Taxi05_Main", "box_TaxiRatingController_25.RewardShown", "box_TaxiStrategiesController_29.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_39_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Have you guys decided on a name?Clementine!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Have you guys decided on a name?Clementine!")
  l0 = self.box_DriveAndTalk_22
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588175"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_Timer_v2_39
  l1 = self.box_DriveAndTalk_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|458646466", "458646466", "Taxi05_Main", "box_Timer_v2_39.TimeElapsed", "box_DriveAndTalk_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListLength_59_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_ListLength_59_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  l0.Min = 1
  l0.Max = self.BarkCount
  l0._graph = self
  l0._name = "box_Random_Integer_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|176128614"
  l0.Out = self.f_box_Random_Integer_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|410487474", "410487474", "Taxi05_Main", "box_ListLength_59.NotEmpty", "box_Random_Integer_57.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_MultipleOR_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_39
  l0.Seconds = 10
  l0 = self.box_MultipleOR_68
  l1 = self.box_Timer_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|200545511", "200545511", "Taxi05_Main", "box_MultipleOR_68.Out", "box_Timer_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_23_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_PlayDialog_v2_23
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1622600153", "1622600153", "Taxi05_Main", "box_PlayDialog_v2_23.Finished", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_23_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_PlayDialog_v2_23
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1743113568", "1743113568", "Taxi05_Main", "box_PlayDialog_v2_23.PriorityFailed", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(1)
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
  l0 = self.box_SetBoolean_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1184792763", "1184792763", "Taxi05_Main", "box_Get_Player_ID_1.Out", "box_SetBoolean_v2_48.False", clone, l0)
  l0:False()
end
function export:f_box_TaxiRatingController_37_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_36
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  l0 = self.box_TaxiRatingController_37
  l1 = self.box_TaxiStrategiesController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|120891152", "120891152", "Taxi05_Main", "box_TaxiRatingController_37.RatingReset", "box_TaxiStrategiesController_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_22_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1446770850", "1446770850", "Taxi05_Main", "box_DriveAndTalk_22.TalkFailed", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_22_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|586232644", "586232644", "Taxi05_Main", "box_DriveAndTalk_22.TalkFinished", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_63_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_PlayDialog_v2_63
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1602118344", "1602118344", "Taxi05_Main", "box_PlayDialog_v2_63.Finished", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_63_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_78()
  l0 = self.box_PlayDialog_v2_63
  l1 = self.box_MultipleOR_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1179291749", "1179291749", "Taxi05_Main", "box_PlayDialog_v2_63.PriorityFailed", "box_MultipleOR_78.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_45_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1572905041"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_85_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_45
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|921227643", "921227643", "Taxi05_Main", "box_Timer_v2_45.TimeElapsed", "box_Compare_Boolean_v2_85.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_17_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_PlayDialog_v2_17
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|605482349", "605482349", "Taxi05_Main", "box_PlayDialog_v2_17.Finished", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_17_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_PlayDialog_v2_17
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|738328387", "738328387", "Taxi05_Main", "box_PlayDialog_v2_17.PriorityFailed", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_34
  l0.Seconds = 10
  l0 = self.box_MultipleOR_65
  l1 = self.box_Timer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1574993877", "1574993877", "Taxi05_Main", "box_MultipleOR_65.Out", "box_Timer_v2_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_26
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_28
  l1 = self.box_MissionLayer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|325328767", "325328767", "Taxi05_Main", "box_MissionMessageController_v3_28.Out", "box_MissionLayer_v2_26.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionMessageController_v3_42_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_37
  l0.MissionName = self.Mission
  l0 = self.box_MissionMessageController_v3_42
  l1 = self.box_TaxiRatingController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2015818425", "2015818425", "Taxi05_Main", "box_MissionMessageController_v3_42.Out", "box_TaxiRatingController_37.ResetRating", l0, l1)
  l1:ResetRating()
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
  l0._name = "box_Simple_Node_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1909232269"
  l0.Out = self.f_box_Simple_Node_66_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|151513393", "151513393", "Taxi05_Main", "box_Simple_Node_31.Out", "box_Simple_Node_66.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_74_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_10
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.GayMan
  l0 = self.box_MultipleOR_74
  l1 = self.box_ListWriter_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1262052222", "1262052222", "Taxi05_Main", "box_MultipleOR_74.Out", "box_ListWriter_10.Add", l0, l1)
  l1:Add()
end
function export:f_box_PlayDialog_v2_54_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_PlayDialog_v2_54
  l1 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1048797034", "1048797034", "Taxi05_Main", "box_PlayDialog_v2_54.Finished", "box_MultipleOR_79.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_54_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_79()
  l0 = self.box_PlayDialog_v2_54
  l1 = self.box_MultipleOR_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1481076684", "1481076684", "Taxi05_Main", "box_PlayDialog_v2_54.PriorityFailed", "box_MultipleOR_79.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Adelaide.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Adelaide.")
  l0 = self.box_PlayDialog_v2_23
  l0.SoundId = "soundbinary/615395564.bnk"
  l0 = self.box_MultipleOR_69
  l1 = self.box_PlayDialog_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|292395562", "292395562", "Taxi05_Main", "box_MultipleOR_69.Out", "box_PlayDialog_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_62_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2065590061"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_81_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_62
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1832576352", "1832576352", "Taxi05_Main", "box_Timer_v2_62.TimeElapsed", "box_Compare_Boolean_v2_81.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_77_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: My partner and I have been waiting for this for so long...", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: My partner and I have been waiting for this for so long...")
  l0 = self.box_DriveAndTalk_41
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372059612490714"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_MultipleOR_77
  l1 = self.box_DriveAndTalk_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|962236657", "962236657", "Taxi05_Main", "box_MultipleOR_77.Out", "box_DriveAndTalk_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_36_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|223099308"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  l0 = self.box_TaxiStrategiesController_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|260211094", "260211094", "Taxi05_Main", "box_TaxiStrategiesController_36.Started", "box_Ordered_Output_24.In", l0, l1)
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
  self:OnEnter_box_TaxiRideVehicleMonitor_11()
  l0 = self.box_TaxiRideVehicleMonitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1788112849", "1788112849", "Taxi05_Main", "box_Simple_Node_32.Out", "box_TaxiRideVehicleMonitor_11.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_14
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|208417640", "208417640", "Taxi05_Main", "box_MultipleOR_14.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_TaxiStrategiesController_3_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_25
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_3
  l1 = self.box_TaxiRatingController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|721609688", "721609688", "Taxi05_Main", "box_TaxiStrategiesController_3.Paused", "box_TaxiRatingController_25.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_MultipleOR_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_35
  l0.Seconds = 10
  l0 = self.box_MultipleOR_43
  l1 = self.box_Timer_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|587643782", "587643782", "Taxi05_Main", "box_MultipleOR_43.Out", "box_Timer_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_38_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_58
  l0.Entity = self.GayMan
  l0.SoundId = self.tmpSound
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1015590821", "1015590821", "Taxi05_Main", "box_Compare_Boolean_v2_38.A_is_False", "box_PlayDialog_v2_58.Start", clone, l0)
  l0:Start()
end
function export:f_box_TaxiStrategiesController_29_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_29
  l1 = self.box_MissionMessageController_v3_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1182789372", "1182789372", "Taxi05_Main", "box_TaxiStrategiesController_29.Stopped", "box_MissionMessageController_v3_28.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_SetBoolean_v2_48_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.isMissionFinished = l0.Target
  l0 = self.box_CinematicPrep_16
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_48
  l1 = self.box_CinematicPrep_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|72050808", "72050808", "Taxi05_Main", "box_SetBoolean_v2_48.SetFalse", "box_CinematicPrep_16.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.isMissionFinished = l0.Target
end
function export:f_box_SetBoolean_v2_48_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self.isMissionFinished = l0.Target
end
function export:f_box_PlayDialog_v2_18_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_PlayDialog_v2_18
  l1 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|542454942", "542454942", "Taxi05_Main", "box_PlayDialog_v2_18.Finished", "box_MultipleOR_75.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_18_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_PlayDialog_v2_18
  l1 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1154566129", "1154566129", "Taxi05_Main", "box_PlayDialog_v2_18.PriorityFailed", "box_MultipleOR_75.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Jonah? Are you in the cab?", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Jonah? Are you in the cab?")
  l0 = self.box_PlayDialog_v2_4
  l0.SoundId = "soundbinary/1278437805.bnk"
  l0 = self.box_Timer_v2_44
  l1 = self.box_PlayDialog_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1965261469", "1965261469", "Taxi05_Main", "box_Timer_v2_44.TimeElapsed", "box_PlayDialog_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_46_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|265776499"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_83_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_46
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1754308826", "1754308826", "Taxi05_Main", "box_Timer_v2_46.TimeElapsed", "box_Compare_Boolean_v2_83.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_85_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1951938911"
  l0.Out = self.f_box_SetFloat_v2_55_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|166948512", "166948512", "Taxi05_Main", "box_Compare_Boolean_v2_85.A_is_False", "box_SetFloat_v2_55.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Simple_Node_33_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1245553030"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|915404363", "915404363", "Taxi05_Main", "box_Simple_Node_33.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.Rating_Counter
  l0.B = 1
  l0._graph = self
  l0._name = "box_Float_Arithmetics_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|308821645"
  l0.Out = self.f_box_Float_Arithmetics_56_Out
  l0 = self.box_MultipleOR_72
  l1 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|512974432", "512974432", "Taxi05_Main", "box_MultipleOR_72.Out", "box_Float_Arithmetics_56.Sub", l0, l1)
  l1:Sub()
end
function export:f_box_TaxiRideVehicleMonitor_11_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_8()
  l0 = self.box_TaxiRideVehicleMonitor_11
  l1 = self.box_Taxi_AbortMission_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|2034006979", "2034006979", "Taxi05_Main", "box_TaxiRideVehicleMonitor_11.ClientBailedOut", "box_Taxi_AbortMission_8.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_11_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_8()
  l0 = self.box_TaxiRideVehicleMonitor_11
  l1 = self.box_Taxi_AbortMission_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|509198200", "509198200", "Taxi05_Main", "box_TaxiRideVehicleMonitor_11.ClientDeath", "box_Taxi_AbortMission_8.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_11_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_8()
  l0 = self.box_TaxiRideVehicleMonitor_11
  l1 = self.box_Taxi_AbortMission_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1516634413", "1516634413", "Taxi05_Main", "box_TaxiRideVehicleMonitor_11.PlayerAbandonedVehicle", "box_Taxi_AbortMission_8.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_11_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_8()
  l0 = self.box_TaxiRideVehicleMonitor_11
  l1 = self.box_Taxi_AbortMission_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|538620185", "538620185", "Taxi05_Main", "box_TaxiRideVehicleMonitor_11.VehicleUnusable", "box_Taxi_AbortMission_8.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_Timer_v2_35_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Is it a boy or a girl?She's a girl!Making her grand debut on the stage that is life.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: Is it a boy or a girl?She's a girl!Making her grand debut on the stage that is life.")
  l0 = self.box_DriveAndTalk_6
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588170"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0 = self.box_Timer_v2_35
  l1 = self.box_DriveAndTalk_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|554014153", "554014153", "Taxi05_Main", "box_Timer_v2_35.TimeElapsed", "box_DriveAndTalk_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_7_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|566110569"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1514095713", "1514095713", "Taxi05_Main", "box_TaxiRideReachDestinationMonitor_7.ClientDropOff", "box_Ordered_Output_80.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_7_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_7
  l1 = self.box_SetBoolean_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|236724247", "236724247", "Taxi05_Main", "box_TaxiRideReachDestinationMonitor_7.ReachDestination", "box_SetBoolean_v2_82.True", l0, l1)
  l1:True()
end
function export:f_box_MultipleOR_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_46
  l0.Seconds = 2
  l0 = self.box_MultipleOR_79
  l1 = self.box_Timer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|992179066", "992179066", "Taxi05_Main", "box_MultipleOR_79.Out", "box_Timer_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_6_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_DriveAndTalk_6
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|305981969", "305981969", "Taxi05_Main", "box_DriveAndTalk_6.TalkFailed", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_6_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_DriveAndTalk_6
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|711011517", "711011517", "Taxi05_Main", "box_DriveAndTalk_6.TalkFinished", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_51()
  l0 = self.box_Timer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|189501071", "189501071", "Taxi05_Main", "box_Ordered_Output_50.Out", "box_Timer_v2_51.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Simple_Node_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_9()
  l0 = self.box_GameplayInteractionController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1267113269", "1267113269", "Taxi05_Main", "box_Simple_Node_66.Out", "box_GameplayInteractionController_9.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_DriveAndTalk_19_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_DriveAndTalk_19
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|592068512", "592068512", "Taxi05_Main", "box_DriveAndTalk_19.TalkFailed", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_19_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_DriveAndTalk_19
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|226978830", "226978830", "Taxi05_Main", "box_DriveAndTalk_19.TalkFinished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetFloat_v2_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.Rating_Counter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1622531516", "1622531516", "Taxi05_Main", "box_SetFloat_v2_55.Out", "box_MultipleOR_52.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I told you to watch that video.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: I told you to watch that video.")
  l0 = self.box_PlayDialog_v2_20
  l0.SoundId = "soundbinary/1066329321.bnk"
  l0 = self.box_MultipleOR_67
  l1 = self.box_PlayDialog_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|141033334", "141033334", "Taxi05_Main", "box_MultipleOR_67.Out", "box_PlayDialog_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_10_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_10
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_9()
  l1 = self.box_GameplayInteractionController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1923188609", "1923188609", "Taxi05_Main", "box_ListWriter_10.Added", "box_GameplayInteractionController_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_10_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_10
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_10_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_10
  self.GIC_Users = l0.Target
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_Timer_v2_51
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1704862484", "1704862484", "Taxi05_Main", "box_Timer_v2_51.TimeElapsed", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_16_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_13
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_16
  l1 = self.box_MissionCheckpointReach_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|1126612504", "1126612504", "Taxi05_Main", "box_CinematicPrep_16.PostOut", "box_MissionCheckpointReach_13.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_81_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Come on! Make this go faster.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Come on! Make this go faster.")
  l0 = self.box_PlayDialog_v2_54
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/3394559707.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi05.domino|@Taxi05_Main|586164923", "586164923", "Taxi05_Main", "box_Compare_Boolean_v2_81.A_is_False", "box_PlayDialog_v2_54.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_MultipleOR_52()
end
function export:OnEnter_box_GameplayInteractionController_9()
  local l0
  l0 = self.box_GameplayInteractionController_9
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
end
function export:OnEnter_box_MultipleOR_75()
end
function export:OnEnter_box_MultipleOR_73()
end
function export:OnEnter_box_MultipleOR_76()
end
function export:OnEnter_box_MultipleOR_78()
end
function export:OnEnter_box_Taxi_AbortMission_8()
  local l0
  l0 = self.box_Taxi_AbortMission_8
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047195442167"
  l0.Pawn1 = self.GayMan
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:OnEnter_box_MultipleOR_68()
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_MultipleOR_74()
end
function export:OnEnter_box_MultipleOR_69()
end
function export:OnEnter_box_MultipleOR_77()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_MultipleOR_43()
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_TaxiRideVehicleMonitor_11()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_11
  l0.Client = self.GayMan
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
end
function export:OnEnter_box_MultipleOR_79()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_Timer_v2_51()
  local l0
  l0 = self.box_Timer_v2_51
  l0.Seconds = 30
end
_compilerVersion = 4
