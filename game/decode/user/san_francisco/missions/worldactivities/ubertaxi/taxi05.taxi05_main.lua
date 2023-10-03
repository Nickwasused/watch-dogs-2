export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
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
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
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
  self[52] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_52_Out
  self[60] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_60_Added
  l0.Removed = self.f_60_Removed
  l0.Out = self.f_60_Out
  self[58] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_58_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_58_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[61] = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.EndOfList = self.f_61_EndOfList
  self[47] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[47]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_47_RatingRemoved
  self[4] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_4_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_4_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.SetTrue = self.f_82_SetTrue
  l0.SetFalse = self.f_82_SetFalse
  l0.Toggled = self.f_82_Toggled
  l0.SetFromBool = self.f_82_SetFromBool
  self[9] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_9_Started
  l0.Stopped = self.f_9_Stopped
  self[75] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[75]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_75_Out
  self[5] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_5_ClientSpawned
  l0.ClientPickedUp = self.f_5_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_26_Unloaded
  l0.Reseted = DummyFunction
  self[73] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_73_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[34] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_34_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[76]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_76_Out
  self[78] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_78_Out
  self[21] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_21_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_21_TalkFailed
  self[15] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_15_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_15_TalkFailed
  self[13] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[40] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_20_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_20_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[25] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[25]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_25_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[41] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[8]
  l0._graph = self
  self[39] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_68_Out
  self[23] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_23_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_23_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[37] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[37]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_37_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[22] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_22_TalkFailed
  self[63] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_63_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_63_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_45_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_17_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_17_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[28] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0.MessageCompleted = DummyFunction
  self[42] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.MessageCompleted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[27]
  l0._graph = self
  self[74] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[74]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_74_Out
  self[54] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_54_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_54_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[69] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_69_Out
  self[62] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_62_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[77] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[77]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_77_Out
  self[36] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = self.f_36_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[3] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_3_Paused
  l0.Resumed = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_43_Out
  self[29] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_29_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[48] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.SetTrue = self.f_48_SetTrue
  l0.SetFalse = self.f_48_SetFalse
  l0.Toggled = self.f_48_Toggled
  l0.SetFromBool = self.f_48_SetFromBool
  self[18] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_18_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_18_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[46] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[72] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[72]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_72_Out
  self[11] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_11_ClientDeath
  l0.VehicleUnusable = self.f_11_VehicleUnusable
  l0.ClientBailedOut = self.f_11_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_11_PlayerAbandonedVehicle
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_7_ReachDestination
  l0.ClientDropOff = self.f_7_ClientDropOff
  self[79] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[79]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_79_Out
  self[6] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_6_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_6_TalkFailed
  self[19] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_19_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_19_TalkFailed
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_67_Out
  self[10] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_10_Added
  l0.Removed = self.f_10_Removed
  l0.Out = self.f_10_Out
  self[51] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[16] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[16]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_16_PostOut
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
  l0 = self[14]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[14]
  l0:Input(0)
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_84_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Added()
  local l0
  self = self._graph
  l0 = self[60]
  self.Bark_List = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Bark_List
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.Empty = self.f_59_Empty
  l0.NotEmpty = self.f_59_NotEmpty
  l0:GetLength()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[60]
  self.Bark_List = l0.Target
end
function export:f_60_Removed()
  local l0
  self = self._graph
  l0 = self[60]
  self.Bark_List = l0.Target
end
function export:f_58_Finished()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(0)
end
function export:f_58_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[72]
  l0:Input(1)
end
function export:f_61_EndOfList()
  local l0
  self = self._graph
  l0 = self[61]
  self.tmpSound = l0.SoundID
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[61]
  self.tmpSound = l0.SoundID
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0:In()
end
function export:f_47_RatingRemoved()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Input = self.Bark_List
  l0.SoundID[0] = "soundbinary/3394559707.bnk"
  l0.SoundID[1] = "soundbinary/1115399176.bnk"
  l0.SoundID[2] = "soundbinary/2080618438.bnk"
  l0.SoundID[3] = "soundbinary/4017453473.bnk"
  l0:Add()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Input(0)
end
function export:f_4_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Input(1)
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Client = self.GayMan
  l0.DropOffIcon = "9223372046661821328"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
  l0:Enable()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[82]
  self.isMissionFinished = l0.Target
end
function export:f_82_SetFalse()
  local l0
  self = self._graph
  l0 = self[82]
  self.isMissionFinished = l0.Target
end
function export:f_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self[82]
  self.isMissionFinished = l0.Target
end
function export:f_82_SetTrue()
  local l0
  self = self._graph
  l0 = self[82]
  self.isMissionFinished = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:In()
end
function export:f_82_Toggled()
  local l0
  self = self._graph
  l0 = self[82]
  self.isMissionFinished = l0.Target
end
function export:f_9_Started()
  local l0
  self = self._graph
  l0 = self[15]
  l0.PawnList = self.GIC_Users
  l0.Conversation = "ConversationSetting.9223372049506588169"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_9_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 1}
  l0.Out[0] = self.f_50_Out_0
  l0:In()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588172"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_5_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[5]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[42]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF050",
    item = "Objective_Clinic",
    id = "630491"
  }
  l0:UpdateObjective()
end
function export:f_5_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[5]
  self.GayMan = l0.Client
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  l0 = self[61]
  l0.Input = self.Bark_List
  l0.Index = self.BarkCount
  l0:Read()
end
function export:f_26_Unloaded()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Succeed()
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 5
  l0:Start()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Seconds = 120
  l0:Start()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/4001855298.bnk"
  l0:Start()
end
function export:f_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_84_A_is_False()
  local l0
  self = self._graph
  l0 = self[47]
  l0.MissionName = self.Mission
  l0.RatingAmount = 1
  l0:RemoveRating()
end
function export:f_83_A_is_False()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/1115399176.bnk"
  l0:Start()
end
function export:f_34_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SoundId = "soundbinary/730477845.bnk"
  l0:Start()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.Rating_Counter = l0.Target
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Rating_Counter
  l0.B = 1
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_53_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0:Start()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Seconds = 2
  l0:Start()
end
function export:f_21_TalkFailed()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(1)
end
function export:f_21_TalkFinished()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(0)
end
function export:f_15_TalkFailed()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(1)
end
function export:f_15_TalkFinished()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(0)
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  l0:Pause()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ClientClo = "9223372046661821124"
  l0.PickUpIcon = "9223372046661821117"
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
  l0:Enable()
end
function export:f_53_A_gt_B()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Start()
end
function export:f_40_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588174"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_20_Finished()
  local l0
  self = self._graph
  l0 = self[76]
  l0:Input(0)
end
function export:f_20_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[76]
  l0:Input(1)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:In()
end
function export:f_25_RewardShown()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  l0:Stop()
end
function export:f_39_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588175"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_59_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_59_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  l0.Min = 1
  l0.Max = self.BarkCount
  l0._graph = self
  l0.Out = self.f_57_Out
  l0:In()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Seconds = 10
  l0:Start()
end
function export:f_23_Finished()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(0)
end
function export:f_23_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[77]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[48]
  l0:False()
end
function export:f_37_RatingReset()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Config = "TaxiRideStrategyConfig.9223372047195442167"
  l0:Start()
end
function export:f_22_TalkFailed()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(1)
end
function export:f_22_TalkFinished()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(0)
end
function export:f_63_Finished()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(0)
end
function export:f_63_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[78]
  l0:Input(1)
end
function export:f_45_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_85_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_17_Finished()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(0)
end
function export:f_17_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Input(1)
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Seconds = 10
  l0:Start()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0:In()
end
function export:f_74_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.GayMan
  l0:Add()
end
function export:f_54_Finished()
  local l0
  self = self._graph
  l0 = self[79]
  l0:Input(0)
end
function export:f_54_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[79]
  l0:Input(1)
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.SoundId = "soundbinary/615395564.bnk"
  l0:Start()
end
function export:f_62_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_81_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372059612490714"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0.Out[2] = self.f_24_Out_2
  l0:In()
end
function export:f_32_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_3_Paused()
  local l0
  self = self._graph
  l0 = self[25]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Seconds = 10
  l0:Start()
end
function export:f_38_A_is_False()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Entity = self.GayMan
  l0.SoundId = self.tmpSound
  l0:Start()
end
function export:f_29_Stopped()
  local l0
  self = self._graph
  l0 = self[28]
  l0:ShowMissionComplete()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[48]
  self.isMissionFinished = l0.Target
end
function export:f_48_SetFalse()
  local l0
  self = self._graph
  l0 = self[48]
  self.isMissionFinished = l0.Target
  l0 = self[16]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self[48]
  self.isMissionFinished = l0.Target
end
function export:f_48_SetTrue()
  local l0
  self = self._graph
  l0 = self[48]
  self.isMissionFinished = l0.Target
end
function export:f_48_Toggled()
  local l0
  self = self._graph
  l0 = self[48]
  self.isMissionFinished = l0.Target
end
function export:f_18_Finished()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Input(0)
end
function export:f_18_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[75]
  l0:Input(1)
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SoundId = "soundbinary/1278437805.bnk"
  l0:Start()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isMissionFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_83_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_85_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 5
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_55_Out
  l0:FromFloat()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.Rating_Counter
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_56_Out
  l0:Sub()
end
function export:f_11_ClientBailedOut()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:ClientBailedOut()
end
function export:f_11_ClientDeath()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:ClientDead()
end
function export:f_11_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:PlayerAbandonedVehicle()
end
function export:f_11_VehicleUnusable()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:VehicleUnusable()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.GayMan
  l0.Conversation = "ConversationSetting.9223372049506588170"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
  l0:Start()
end
function export:f_7_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_7_ReachDestination()
  local l0
  self = self._graph
  l0 = self[82]
  l0:True()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Seconds = 2
  l0:Start()
end
function export:f_6_TalkFailed()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(1)
end
function export:f_6_TalkFinished()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(0)
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Stop()
end
function export:f_66_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Stop()
end
function export:f_19_TalkFailed()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_19_TalkFinished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(0)
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.Rating_Counter = l0.Target
  l0 = self[52]
  l0:Input(0)
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SoundId = "soundbinary/1066329321.bnk"
  l0:Start()
end
function export:f_10_Added()
  local l0
  self = self._graph
  l0 = self[10]
  self.GIC_Users = l0.Target
  self:en_9()
  l0 = self[9]
  l0:Start()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[10]
  self.GIC_Users = l0.Target
end
function export:f_10_Removed()
  local l0
  self = self._graph
  l0 = self[10]
  self.GIC_Users = l0.Target
end
function export:f_51_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(1)
end
function export:f_16_PostOut()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_81_A_is_False()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = self.GayMan
  l0.SoundId = "soundbinary/3394559707.bnk"
  l0:Start()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216510"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047195442167"
  l0.Pawn1 = self.GayMan
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.Client = self.GayMan
  l0.Config = "TaxiRideGameplayBrick.9223372057809865485"
end
function export:en_51()
  local l0
  l0 = self[51]
  l0.Seconds = 30
end
_compilerVersion = 4
