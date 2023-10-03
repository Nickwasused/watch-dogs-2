export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
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
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomInteger.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/321119829.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1499503313.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/343820524.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/483614594.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1106613598.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3345733861.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1642646706.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/415917544.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4191364887.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3728394926.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi03_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main"
  self.PlayerEntity = nil
  self.MissionLayer = "Taxi03_Main"
  self.Mission = "MissionList.9223372046111270265"
  self.CLOClient = "9223372046111271323"
  self.Client = nil
  self.PlayerVehicle = nil
  self.IconVehicle = "9223372046111271325"
  self.CLO_9223372046182909658 = "9223372046182909658"
  self.CLO_9223372046182909659 = "9223372046182909659"
  self.CLO_9223372046182909660 = "9223372046182909660"
  self.CLO_9223372046182909661 = "9223372046182909661"
  self.CLO_9223372046182909662 = "9223372046182909662"
  self.CLO_9223372046182909663 = "9223372046182909663"
  self.GIC_Users = {}
  self.ClientCoach = nil
  self.Roman = nil
  self.FelonyAIList = {}
  self.Rus_Car_1 = nil
  self.Rus_Car_2 = nil
  self.Rus_1 = nil
  self.Rus_2 = nil
  self.Rus_3 = nil
  self.Rus_4 = nil
  self.RomanThugs = ""
  self.Bark_List = {}
  self.GayMan = nil
  self.BarkCount = 0
  self.Rating_Counter = 0
  self._9223372063835501806 = nil
  self.box_FelonyTargetMonitor_29 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_29
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|45878257"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FelonyTargetMonitor_29_Stopped
  l0.None = self.f_box_FelonyTargetMonitor_29_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_box_FelonyTargetMonitor_29_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_Timer_v2_52 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_52
  l0._graph = self
  l0._name = "box_Timer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|54289293"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_59 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_59
  l0._graph = self
  l0._name = "box_Timer_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|147322990"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_59_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriterSoundID_58 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_58
  l0._graph = self
  l0._name = "box_ListWriterSoundID_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|200710523"
  l0._DynamicAnchors = {SoundID = 5}
  l0.Added = self.f_box_ListWriterSoundID_58_Added
  l0.Removed = self.f_box_ListWriterSoundID_58_Removed
  l0.Out = self.f_box_ListWriterSoundID_58_Out
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|205460455"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListWriter_21 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|228933007"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_PlayDialog_v2_50 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_50
  l0._graph = self
  l0._name = "box_PlayDialog_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|233875089"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_36 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_36
  l0._graph = self
  l0._name = "box_MissionController_v4_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|306400643"
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|435961079"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_3_MessageCompleted
  self.box_MultipleOR_69 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_69
  l0._graph = self
  l0._name = "box_MultipleOR_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|468191849"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_69_Out
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|473598298"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_DriveAndTalk_34 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_34
  l0._graph = self
  l0._name = "box_DriveAndTalk_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|490681460"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|528209256"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_CinematicPrep_16 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_16
  l0._graph = self
  l0._name = "box_CinematicPrep_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|550744801"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_16_PostOut
  self.box_TaxiRatingController_27 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_27
  l0._graph = self
  l0._name = "box_TaxiRatingController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|600233381"
  l0.RatingShown = self.f_box_TaxiRatingController_27_RatingShown
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_27_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|613300452"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_OnceOnly_v3_70 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_70
  l0._graph = self
  l0._name = "box_OnceOnly_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|724692699"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_70_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|737495224"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_TaxiRatingController_32 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_32
  l0._graph = self
  l0._name = "box_TaxiRatingController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|744960155"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_box_TaxiRatingController_32_RatingRemoved
  self.box_PlayDialog_v2_60 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_60
  l0._graph = self
  l0._name = "box_PlayDialog_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|771354087"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_60_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_60_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|910017162"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_43 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_43
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|916465364"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_43_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_43_ClientDropOff
  self.box_PlayDialog_v2_55 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_55
  l0._graph = self
  l0._name = "box_PlayDialog_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1000487344"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_55_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_55_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_54 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1020880647"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListReaderSoundID_56 = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self.box_ListReaderSoundID_56
  l0._graph = self
  l0._name = "box_ListReaderSoundID_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1032118903"
  l0.Out = self.f_box_ListReaderSoundID_56_Out
  l0.EndOfList = self.f_box_ListReaderSoundID_56_EndOfList
  self.box_GameplayInteractionController_46 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_46
  l0._graph = self
  l0._name = "box_GameplayInteractionController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1046061631"
  l0.Out = self.f_box_GameplayInteractionController_46_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TaxiStrategiesController_25 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_25
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1102945926"
  l0.Started = self.f_box_TaxiStrategiesController_25_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1117176037"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1164696062"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_DriveAndTalk_31 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_31
  l0._graph = self
  l0._name = "box_DriveAndTalk_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1228940281"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_31_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_48 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_48
  l0._graph = self
  l0._name = "box_DriveAndTalk_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1350563468"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_10 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_10
  l0._graph = self
  l0._name = "box_MissionLayer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1357528153"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_10_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1373241811"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1403486528"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_PlayDialog_v2_12 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_12
  l0._graph = self
  l0._name = "box_PlayDialog_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1404511774"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_12_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_12_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_68 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_68
  l0._graph = self
  l0._name = "box_MultipleOR_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1422609883"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_68_Out
  self.box_PlayDialog_v2_7 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_7
  l0._graph = self
  l0._name = "box_PlayDialog_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1430513179"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_7_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_7_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_28 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_28
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1440489525"
  l0.Enabled = self.f_box_TriggerMonitor_v2_28_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_28_Disabled
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_28_Leave
  l0.Use = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1469770940"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_TaxiRideVehicleMonitor_42 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_42
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1548653120"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_42_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_42_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_42_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_42_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_42_PlayerAbandonedVehicle
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1585444878"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_TaxiStrategiesController_33 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_33
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1587138365"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_33_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_TaxiRatingController_63 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_63
  l0._graph = self
  l0._name = "box_TaxiRatingController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1588825242"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_63_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_35 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_35
  l0._graph = self
  l0._name = "box_DriveAndTalk_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1616547028"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_35_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PlayDialog_v2_51 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_51
  l0._graph = self
  l0._name = "box_PlayDialog_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1636284739"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_51_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_51_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1782515022"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_MissionMessageController_v3_47 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_47
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1816950016"
  l0.Out = self.f_box_MissionMessageController_v3_47_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRidePickUpController_40 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_40
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1859292190"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_40_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_40_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_40_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_40_ClientConversationFinised
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1868652057"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_TriggerMonitor_v2_38 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_38
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1925096250"
  l0.Enabled = self.f_box_TriggerMonitor_v2_38_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_38_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_ListWriter_45 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_45
  l0._graph = self
  l0._name = "box_ListWriter_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1958496366"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_45_Added
  l0.Removed = self.f_box_ListWriter_45_Removed
  l0.Out = self.f_box_ListWriter_45_Out
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2042702406"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Taxi_AbortMission_5 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_5
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2068460619"
  self.box_MissionCheckpointReach_17 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_17
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2078632638"
  l0.Out = self.f_box_MissionCheckpointReach_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|59959614", "59959614", "Taxi03_Main", "CheckPoint_0", "box_MultipleOR_19.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|26530809", "26530809", "Taxi03_Main", "In", "box_MultipleOR_19.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Pawn_Health_Controller_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRatingController_27()
  l0 = self.box_TaxiRatingController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1862430235", "1862430235", "Taxi03_Main", "box_Pawn_Health_Controller_64.Out", "box_TaxiRatingController_27.ResetRating", clone, l0)
  l0:ResetRating()
end
function export:f_box_FelonyTargetMonitor_29_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_FelonyTargetMonitor_29
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1144639726", "1144639726", "Taxi03_Main", "box_FelonyTargetMonitor_29.Evaded", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(1)
end
function export:f_box_FelonyTargetMonitor_29_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_70()
  l0 = self.box_FelonyTargetMonitor_29
  l1 = self.box_OnceOnly_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|992822637", "992822637", "Taxi03_Main", "box_FelonyTargetMonitor_29.None", "box_OnceOnly_v3_70.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyTargetMonitor_29_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF030",
    item = "Objective_Escape",
    id = "630490"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FelonyTargetMonitor_29
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1672764031", "1672764031", "Taxi03_Main", "box_FelonyTargetMonitor_29.Stopped", "box_MissionMessageController_v3_3.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Timer_v2_52_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_34
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149954"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_52
  l1 = self.box_DriveAndTalk_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|895862520", "895862520", "Taxi03_Main", "box_Timer_v2_52.TimeElapsed", "box_DriveAndTalk_34.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_59_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_Timer_v2_59
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|941684335", "941684335", "Taxi03_Main", "box_Timer_v2_59.TimeElapsed", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriterSoundID_58_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_58
  self.Bark_List = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Bark_List
  l0._graph = self
  l0._name = "box_ListLength_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1029336833"
  l0.Out = self.f_box_ListLength_57_Out
  l0.Empty = self.f_box_ListLength_57_Empty
  l0.NotEmpty = self.f_box_ListLength_57_NotEmpty
  l0 = self.box_ListWriterSoundID_58
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2011438347", "2011438347", "Taxi03_Main", "box_ListWriterSoundID_58.Added", "box_ListLength_57.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_ListWriterSoundID_58_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_58
  self.Bark_List = l0.Target
end
function export:f_box_ListWriterSoundID_58_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_58
  self.Bark_List = l0.Target
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_31
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149953"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_53
  l1 = self.box_DriveAndTalk_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|126196755", "126196755", "Taxi03_Main", "box_Timer_v2_53.TimeElapsed", "box_DriveAndTalk_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|794668992", "794668992", "Taxi03_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_21_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.FelonyAIList = l0.Target
end
function export:f_box_ListWriter_21_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.FelonyAIList = l0.Target
end
function export:f_box_ListWriter_21_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.FelonyAIList = l0.Target
end
function export:f_box_MissionMessageController_v3_3_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_33
  l0.Config = "TaxiRideStrategyConfig.9223372046182889156"
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_TaxiStrategiesController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1101137014", "1101137014", "Taxi03_Main", "box_MissionMessageController_v3_3.MessageCompleted", "box_TaxiStrategiesController_33.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_AI_Agent_Zone_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_32
  l0.MissionName = self.Mission
  l0.RatingAmount = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|704698657", "704698657", "Taxi03_Main", "box_AI_Agent_Zone_26.Out", "box_TaxiRatingController_32.RemoveRating", clone, l0)
  l0:RemoveRating()
end
function export:f_box_MultipleOR_69_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_59()
  l0 = self.box_MultipleOR_69
  l1 = self.box_Timer_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|629489191", "629489191", "Taxi03_Main", "box_MultipleOR_69.Out", "box_Timer_v2_59.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.Rus_Car_2 = l0.UserID
  l0 = self.box_CLOController_8
  l0.CLO = "9223372058945225504"
  l0 = self.box_CLOController_6
  l1 = self.box_CLOController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|456375644", "456375644", "Taxi03_Main", "box_CLOController_6.OnUserInPlace", "box_CLOController_8.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_DriveAndTalk_34_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_54
  l0.Seconds = 3
  l0 = self.box_DriveAndTalk_34
  l1 = self.box_Timer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1932720718", "1932720718", "Taxi03_Main", "box_DriveAndTalk_34.TalkFinished", "box_Timer_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_Random_Integer_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReaderSoundID_56
  l0.Input = self.Bark_List
  l0.Index = self.BarkCount
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|38117139", "38117139", "Taxi03_Main", "box_Random_Integer_41.Out", "box_ListReaderSoundID_56.Read", clone, l0)
  l0:Read()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Rus_2 = l0.UserID
  l0 = self.box_CLOController_11
  l0.CLO = "9223372058945225506"
  l0 = self.box_CLOController_9
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|431640933", "431640933", "Taxi03_Main", "box_CLOController_9.OnUserInPlace", "box_CLOController_11.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_16_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_17
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_16
  l1 = self.box_MissionCheckpointReach_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|847486258", "847486258", "Taxi03_Main", "box_CinematicPrep_16.PostOut", "box_MissionCheckpointReach_17.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_42()
  l0 = self.box_TaxiRideVehicleMonitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1667686266", "1667686266", "Taxi03_Main", "box_Simple_Node_44.Out", "box_TaxiRideVehicleMonitor_42.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRatingController_27_RatingReset()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRatingController_27()
  l0 = self.box_TaxiRatingController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|274511386", "274511386", "Taxi03_Main", "box_TaxiRatingController_27.RatingReset", "box_TaxiRatingController_27.ShowRating", l0, l0)
  l0:ShowRating()
end
function export:f_box_TaxiRatingController_27_RatingShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_25
  l0.Config = "TaxiRideStrategyConfig.9223372046182889156"
  l0 = self.box_TaxiRatingController_27
  l1 = self.box_TaxiStrategiesController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1766879830", "1766879830", "Taxi03_Main", "box_TaxiRatingController_27.RatingShown", "box_TaxiStrategiesController_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.Rus_1 = l0.UserID
  l0 = self.box_CLOController_9
  l0.CLO = "9223372058945225505"
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|130192726", "130192726", "Taxi03_Main", "box_CLOController_8.OnUserInPlace", "box_CLOController_9.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_70_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1111111958"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0 = self.box_OnceOnly_v3_70
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1160715488", "1160715488", "Taxi03_Main", "box_OnceOnly_v3_70.Out", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.Rus_3 = l0.UserID
  l0 = self.box_ListWriter_21
  l0.Input = self.FelonyAIList
  l0.Data[0] = self.Rus_Car_1
  l0.Data[1] = self.Rus_Car_2
  l0.Data[2] = self.Rus_1
  l0.Data[3] = self.Rus_2
  l0.Data[4] = self.Rus_4
  l0.Data[5] = self.Rus_3
  l0 = self.box_CLOController_13
  l1 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1394977471", "1394977471", "Taxi03_Main", "box_CLOController_13.OnUserInPlace", "box_ListWriter_21.Add", l0, l1)
  l1:Add()
end
function export:f_box_TaxiRatingController_32_RatingRemoved()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1484580233"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_62_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_62_Out_1
  l0 = self.box_TaxiRatingController_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1699802247", "1699802247", "Taxi03_Main", "box_TaxiRatingController_32.RatingRemoved", "box_Ordered_Output_62.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_60_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_PlayDialog_v2_60
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1306503923", "1306503923", "Taxi03_Main", "box_PlayDialog_v2_60.Finished", "box_MultipleOR_69.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_60_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_69()
  l0 = self.box_PlayDialog_v2_60
  l1 = self.box_MultipleOR_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|629355657", "629355657", "Taxi03_Main", "box_PlayDialog_v2_60.PriorityFailed", "box_MultipleOR_69.Input", l0, l1)
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
  l0 = self.box_CinematicPrep_16
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|793460760", "793460760", "Taxi03_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_16.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_48
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612490047"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_20
  l1 = self.box_DriveAndTalk_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|543405152", "543405152", "Taxi03_Main", "box_Timer_v2_20.TimeElapsed", "box_DriveAndTalk_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_43_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1801872133"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|480566819", "480566819", "Taxi03_Main", "box_TaxiRideReachDestinationMonitor_43.ClientDropOff", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_43_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_55
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/343820524.bnk"
  l0 = self.box_TaxiRideReachDestinationMonitor_43
  l1 = self.box_PlayDialog_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|63260025", "63260025", "Taxi03_Main", "box_TaxiRideReachDestinationMonitor_43.ReachDestination", "box_PlayDialog_v2_55.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_55_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_PlayDialog_v2_55
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1653229024", "1653229024", "Taxi03_Main", "box_PlayDialog_v2_55.Finished", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_55_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_PlayDialog_v2_55
  l1 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1900147521", "1900147521", "Taxi03_Main", "box_PlayDialog_v2_55.PriorityFailed", "box_MultipleOR_65.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_35
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149955"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_54
  l1 = self.box_DriveAndTalk_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1460546502", "1460546502", "Taxi03_Main", "box_Timer_v2_54.TimeElapsed", "box_DriveAndTalk_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListLength_57_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_ListLength_57_NotEmpty()
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
  l0._name = "box_Random_Integer_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|504848309"
  l0.Out = self.f_box_Random_Integer_41_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|231425355", "231425355", "Taxi03_Main", "box_ListLength_57.NotEmpty", "box_Random_Integer_41.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_ListReaderSoundID_56_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_56
  l1 = self.box_PlayDialog_v2_60
  l1.SoundId = l0.SoundID
end
function export:f_box_ListReaderSoundID_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_56
  l1 = self.box_PlayDialog_v2_60
  l1.SoundId = l0.SoundID
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1810032535", "1810032535", "Taxi03_Main", "box_ListReaderSoundID_56.Out", "box_PlayDialog_v2_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_53
  l0.Seconds = 10
  l0 = self.box_GameplayInteractionController_46
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|268197479", "268197479", "Taxi03_Main", "box_GameplayInteractionController_46.Out", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_25_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_38
  l0.Trigger = "9223372057621748925"
  l0 = self.box_TaxiStrategiesController_25
  l1 = self.box_TriggerMonitor_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|666518173", "666518173", "Taxi03_Main", "box_TaxiStrategiesController_25.Started", "box_TriggerMonitor_v2_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_29()
  l0 = self.box_FelonyTargetMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1530267995", "1530267995", "Taxi03_Main", "box_Ordered_Output_30.Out", "box_FelonyTargetMonitor_29.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|42389608", "42389608", "Taxi03_Main", "box_Ordered_Output_30.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_12
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/321119829.bnk"
  l0 = self.box_MultipleOR_66
  l1 = self.box_PlayDialog_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|999245428", "999245428", "Taxi03_Main", "box_MultipleOR_66.Out", "box_PlayDialog_v2_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059098056274"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|453261259"
  l0.Out = self.f_box_AI_Agent_Zone_26_Out
  l0 = self.box_MultipleOR_67
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|457833472", "457833472", "Taxi03_Main", "box_MultipleOR_67.Out", "box_AI_Agent_Zone_26.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_31_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_52
  l0.Seconds = 3
  l0 = self.box_DriveAndTalk_31
  l1 = self.box_Timer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|231235234", "231235234", "Taxi03_Main", "box_DriveAndTalk_31.TalkFinished", "box_Timer_v2_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_15
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|596183292", "596183292", "Taxi03_Main", "box_Simple_Node_14.Out", "box_Timer_v2_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_10_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l1 = self.box_MissionController_v4_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2073507645", "2073507645", "Taxi03_Main", "box_MissionLayer_v2_10.Unloaded", "box_MissionController_v4_36.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_58
  l0.Input = self.Bark_List
  l0.SoundID[0] = "soundbinary/1642646706.bnk"
  l0.SoundID[1] = "soundbinary/483614594.bnk"
  l0.SoundID[2] = "soundbinary/1499503313.bnk"
  l0.SoundID[3] = "soundbinary/3345733861.bnk"
  l0.SoundID[4] = "soundbinary/415917544.bnk"
  l0 = self.box_MultipleOR_61
  l1 = self.box_ListWriterSoundID_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1653547244", "1653547244", "Taxi03_Main", "box_MultipleOR_61.Out", "box_ListWriterSoundID_58.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_19
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1258464015", "1258464015", "Taxi03_Main", "box_MultipleOR_19.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_PlayDialog_v2_12_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlayDialog_v2_12
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|626052417", "626052417", "Taxi03_Main", "box_PlayDialog_v2_12.Finished", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_12_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_PlayDialog_v2_12
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1716222515", "1716222515", "Taxi03_Main", "box_PlayDialog_v2_12.PriorityFailed", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_10
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_68
  l1 = self.box_MissionLayer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|465120436", "465120436", "Taxi03_Main", "box_MultipleOR_68.Out", "box_MissionLayer_v2_10.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PlayDialog_v2_7_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_PlayDialog_v2_7
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|883966238", "883966238", "Taxi03_Main", "box_PlayDialog_v2_7.Finished", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_7_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_68()
  l0 = self.box_PlayDialog_v2_7
  l1 = self.box_MultipleOR_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1080885901", "1080885901", "Taxi03_Main", "box_PlayDialog_v2_7.PriorityFailed", "box_MultipleOR_68.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_28_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_TriggerMonitor_v2_28
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1410780387", "1410780387", "Taxi03_Main", "box_TriggerMonitor_v2_28.Disabled", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_28_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetMonitor_29()
  l0 = self.box_TriggerMonitor_v2_28
  l1 = self.box_FelonyTargetMonitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1948652932", "1948652932", "Taxi03_Main", "box_TriggerMonitor_v2_28.Enabled", "box_FelonyTargetMonitor_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_28_Leave()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1091708292", "1091708292", "Taxi03_Main", "box_TriggerMonitor_v2_28.Leave", "box_TriggerMonitor_v2_28.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.Rus_Car_1 = l0.UserID
  l0 = self.box_CLOController_6
  l0.CLO = "9223372058945225511"
  l0.User = self.Rus_Car_2
  l0 = self.box_CLOController_4
  l1 = self.box_CLOController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1573301036", "1573301036", "Taxi03_Main", "box_CLOController_4.OnUserInPlace", "box_CLOController_6.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_62_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_61()
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1903736270", "1903736270", "Taxi03_Main", "box_Ordered_Output_62.Out", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_62_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_28()
  l0 = self.box_TriggerMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|649697476", "649697476", "Taxi03_Main", "box_Ordered_Output_62.Out", "box_TriggerMonitor_v2_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_42_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_TaxiRideVehicleMonitor_42
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|870837503", "870837503", "Taxi03_Main", "box_TaxiRideVehicleMonitor_42.ClientBailedOut", "box_Taxi_AbortMission_5.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_42_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_TaxiRideVehicleMonitor_42
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1832842244", "1832842244", "Taxi03_Main", "box_TaxiRideVehicleMonitor_42.ClientDeath", "box_Taxi_AbortMission_5.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_42_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_45()
  l0 = self.box_TaxiRideVehicleMonitor_42
  l1 = self.box_ListWriter_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1448696356", "1448696356", "Taxi03_Main", "box_TaxiRideVehicleMonitor_42.Disabled", "box_ListWriter_45.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_42_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_TaxiRideVehicleMonitor_42
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1937089733", "1937089733", "Taxi03_Main", "box_TaxiRideVehicleMonitor_42.PlayerAbandonedVehicle", "box_Taxi_AbortMission_5.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_42_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_5()
  l0 = self.box_TaxiRideVehicleMonitor_42
  l1 = self.box_Taxi_AbortMission_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|818315098", "818315098", "Taxi03_Main", "box_TaxiRideVehicleMonitor_42.VehicleUnusable", "box_Taxi_AbortMission_5.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_50
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/1106613598.bnk"
  l0 = self.box_MultipleOR_65
  l1 = self.box_PlayDialog_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1089338800", "1089338800", "Taxi03_Main", "box_MultipleOR_65.Out", "box_PlayDialog_v2_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiStrategiesController_33_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_63
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_33
  l1 = self.box_TaxiRatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2141312317", "2141312317", "Taxi03_Main", "box_TaxiStrategiesController_33.Stopped", "box_TaxiRatingController_63.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRatingController_63_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_7
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/3728394926.bnk"
  l0 = self.box_TaxiRatingController_63
  l1 = self.box_PlayDialog_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1985650227", "1985650227", "Taxi03_Main", "box_TaxiRatingController_63.RewardShown", "box_PlayDialog_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_35_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_20
  l0.Seconds = 3
  l0 = self.box_DriveAndTalk_35
  l1 = self.box_Timer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1670328973", "1670328973", "Taxi03_Main", "box_DriveAndTalk_35.TalkFinished", "box_Timer_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_51_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_PlayDialog_v2_51
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1536332074", "1536332074", "Taxi03_Main", "box_PlayDialog_v2_51.Finished", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_51_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_PlayDialog_v2_51
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|462412103", "462412103", "Taxi03_Main", "box_PlayDialog_v2_51.PriorityFailed", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_59()
  l0 = self.box_MultipleOR_49
  l1 = self.box_Timer_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1388600757", "1388600757", "Taxi03_Main", "box_MultipleOR_49.Out", "box_Timer_v2_59.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|555483756"
  l0.Out = self.f_box_Simple_Node_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|73544523", "73544523", "Taxi03_Main", "box_Ordered_Output_23.Out", "box_Simple_Node_44.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1278558854"
  l0.Out = self.f_box_Simple_Node_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1369306414", "1369306414", "Taxi03_Main", "box_Ordered_Output_23.Out", "box_Simple_Node_14.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_47_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetController_39()
  l0 = self.box_MissionMessageController_v3_47
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2036106044", "2036106044", "Taxi03_Main", "box_MissionMessageController_v3_47.Out", "box_FelonyTargetController_39.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_TaxiRidePickUpController_40_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_40()
  l0 = self.box_TaxiRidePickUpController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|488186595", "488186595", "Taxi03_Main", "box_TaxiRidePickUpController_40.ClientConversationFinised", "box_TaxiRidePickUpController_40.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_40_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_40
  self.PlayerVehicle = l0.Vehicle
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Roman
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|35096826"
  l0.Out = self.f_box_Pawn_Health_Controller_64_Out
  l0 = self.box_TaxiRidePickUpController_40
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|899656126", "899656126", "Taxi03_Main", "box_TaxiRidePickUpController_40.ClientPickedUp", "box_Pawn_Health_Controller_64.SetInvincible", l0, l1)
  l1:SetInvincible()
end
function export:f_box_TaxiRidePickUpController_40_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_40
  self.Roman = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_42()
  l1 = self.box_TaxiRideVehicleMonitor_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|853753238", "853753238", "Taxi03_Main", "box_TaxiRidePickUpController_40.ClientSpawned", "box_TaxiRideVehicleMonitor_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_40_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_45()
  l0 = self.box_TaxiRidePickUpController_40
  l1 = self.box_ListWriter_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1311258550", "1311258550", "Taxi03_Main", "box_TaxiRidePickUpController_40.Disabled", "box_ListWriter_45.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.Rus_4 = l0.UserID
  l0 = self.box_CLOController_13
  l0.CLO = "9223372058945225507"
  l0 = self.box_CLOController_11
  l1 = self.box_CLOController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|2124266505", "2124266505", "Taxi03_Main", "box_CLOController_11.OnUserInPlace", "box_CLOController_13.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TriggerMonitor_v2_38_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_43
  l0.Client = self.Roman
  l0.DropOffIcon = "9223372046111271327"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
  l0 = self.box_TriggerMonitor_v2_38
  l1 = self.box_TaxiRideReachDestinationMonitor_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|773021479", "773021479", "Taxi03_Main", "box_TriggerMonitor_v2_38.Enabled", "box_TaxiRideReachDestinationMonitor_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_38_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  l0.CLO = "9223372058945225509"
  l0.User = self.Rus_Car_1
  l0 = self.box_TriggerMonitor_v2_38
  l1 = self.box_CLOController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1428437444", "1428437444", "Taxi03_Main", "box_TriggerMonitor_v2_38.Enter", "box_CLOController_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_FelonyTargetController_39_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_39()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|434880235", "434880235", "Taxi03_Main", "box_FelonyTargetController_39.ChaseStarted", "box_FelonyTargetController_39.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_FelonyTargetController_39_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_39()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1986992773", "1986992773", "Taxi03_Main", "box_FelonyTargetController_39.ScriptedAgentsAdded", "box_FelonyTargetController_39.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_FelonyTargetController_39_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_51
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/4191364887.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|330673168", "330673168", "Taxi03_Main", "box_FelonyTargetController_39.ScriptedAgentsAdopted", "box_PlayDialog_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_ListWriter_45_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_45
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_46()
  l1 = self.box_GameplayInteractionController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1133957127", "1133957127", "Taxi03_Main", "box_ListWriter_45.Added", "box_GameplayInteractionController_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_45_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_45
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_45_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_45
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_46()
  l1 = self.box_GameplayInteractionController_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1067902480", "1067902480", "Taxi03_Main", "box_ListWriter_45.Removed", "box_GameplayInteractionController_46.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_47
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF030",
    item = "Objective_Escape",
    id = "630490"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_15
  l1 = self.box_MissionMessageController_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|186755960", "186755960", "Taxi03_Main", "box_Timer_v2_15.TimeElapsed", "box_MissionMessageController_v3_47.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_MissionCheckpointReach_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_40()
  l0 = self.box_MissionCheckpointReach_17
  l1 = self.box_TaxiRidePickUpController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1027269260", "1027269260", "Taxi03_Main", "box_MissionCheckpointReach_17.Out", "box_TaxiRidePickUpController_40.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_FelonyTargetMonitor_29()
  local l0
  l0 = self.box_FelonyTargetMonitor_29
  l0.Target = self.PlayerEntity
  l0.FelonyType = "Bratva"
end
function export:OnEnter_box_Timer_v2_59()
  local l0
  l0 = self.box_Timer_v2_59
  l0.Seconds = 30
end
function export:OnEnter_box_MultipleOR_69()
end
function export:OnEnter_box_TaxiRatingController_27()
  local l0
  l0 = self.box_TaxiRatingController_27
  l0.MissionName = self.Mission
end
function export:OnEnter_box_OnceOnly_v3_70()
end
function export:OnEnter_box_GameplayInteractionController_46()
  local l0
  l0 = self.box_GameplayInteractionController_46
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_MultipleOR_61()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_68()
end
function export:OnEnter_box_TriggerMonitor_v2_28()
  local l0
  l0 = self.box_TriggerMonitor_v2_28
  l0.Trigger = "9223372063835501806"
  l0.CheckNow = 1
end
function export:OnEnter_box_TaxiRideVehicleMonitor_42()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_42
  l0.Client = self.Roman
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_TaxiRidePickUpController_40()
  local l0
  l0 = self.box_TaxiRidePickUpController_40
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = "9223372046111271329"
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
end
function export:OnEnter_box_FelonyTargetController_39()
  local l0
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = "Bratva"
  l0.HeatValue = 3
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = 0
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372048779320408"
  l0.AgentList = self.FelonyAIList
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi03.domino|@Taxi03_Main|1934097168"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_39_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_39_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_box_FelonyTargetController_39_ScriptedAgentsAdopted
end
function export:OnEnter_box_ListWriter_45()
  local l0
  l0 = self.box_ListWriter_45
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Roman
end
function export:OnEnter_box_Taxi_AbortMission_5()
  local l0
  l0 = self.box_Taxi_AbortMission_5
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372046182889156"
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
_compilerVersion = 4
