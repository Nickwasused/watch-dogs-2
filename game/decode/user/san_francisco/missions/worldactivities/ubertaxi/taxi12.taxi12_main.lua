export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
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
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RandomInteger.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/199611726.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1076075987.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3122818565.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/520810366.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2612066200.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/614818790.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372047582725732"
  self.ClientCLO = "9223372046858693747"
  self.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF120",
    item = "Objective_01",
    id = "579973"
  }
  self.EnterDialogueOnCooldown = 0
  self.LeaveDialogueOnCooldown = 0
  self.InCorrectArea = 0
  self.PlayerFound = 0
  self.ClientCoach = nil
  self.ClientCarson = nil
  self.RacePartStarted = 0
  self.Client = nil
  self.GIC_Users = {}
  self.Taxi09_SearchArea_1 = "9223372046858868494"
  self.MissionTarget_Taxi09_Icon_SearchArea_1 = "9223372046858868822"
  self.SearchArea1_Radius = 0
  self.PatrolPath_Check_01 = nil
  self.VehicleStopped = 0
  self.Speed = 0
  self.Coach_Picked_Up = 0
  self.First_False_Location_Visited = 0
  self.Both_Locations_Visited = 0
  self.Trigger_List = {
    "9223372049633613776",
    "9223372049803940598"
  }
  self.A = 1
  self.B = 0
  self.C = 0
  self.Destination_01_Visited = 0
  self.Destination_02_Visited = 0
  self.Destination_Bar_ = nil
  self.tmpClient = nil
  self.Last_Beat = 0
  self.Elena = nil
  self.WronLocationBark = {}
  self.Bark_List = {}
  self.BarkCount = 0
  self.GayMan = nil
  self.CoachFoundPlayer = {}
  self.List_Coach_Found_Carson = {}
  self.Bar_1_Visited = 0
  self.Bar_2_Visited = 0
  self.Police = 0
  self[17] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_17_Out
  self[106] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_106_Started
  l0.Stopped = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_32_Out
  self[43] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.SetTrue = self.f_43_SetTrue
  l0.SetFalse = self.f_43_SetFalse
  l0.Toggled = self.f_43_Toggled
  l0.SetFromBool = self.f_43_SetFromBool
  self[131] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[131]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_131_Out
  self[18] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_18_ReachDestination
  l0.ClientDropOff = self.f_18_ClientDropOff
  self[121] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[121]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_121_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_121_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[133] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[133]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_133_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_133_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
  self[6] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_6_ClientDropOff
  self[46] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.SetTrue = self.f_46_SetTrue
  l0.SetFalse = self.f_46_SetFalse
  l0.Toggled = self.f_46_Toggled
  l0.SetFromBool = self.f_46_SetFromBool
  self[124] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[124]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_124_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_124_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[114] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[114]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_114_Paused
  l0.Resumed = DummyFunction
  self[99] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[99]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_99_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[117] = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = self.f_117_Out
  l0.EndOfList = self.f_117_EndOfList
  self[23] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_23_Started
  l0.Stopped = DummyFunction
  self[79] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = self.f_79_Resumed
  self[19] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[108] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[108]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_108_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[104] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_104_Unloaded
  l0.Reseted = DummyFunction
  self[44] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_44_Out
  self[94] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[94]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_94_Paused
  l0.Resumed = DummyFunction
  self[132] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_132_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_132_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[130] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[130]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_38_Out
  l0.ResetOut = DummyFunction
  self[123] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[123]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_123_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_123_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[103] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_103_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[54] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[33] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_33_Out
  self[96] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[96]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_96_Out
  self[134] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_134_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[27] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_27_ClientSpawned
  l0.ClientPickedUp = self.f_27_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_62_MessageCompleted
  self[93] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = self.f_93_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[35] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[35]
  l0._graph = self
  self[29] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_29_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[115] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[115]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_115_Out
  self[119] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[11]
  l0._graph = self
  l0.Attached = DummyFunction
  self[57] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[57]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_57_PostOut
  self[26] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_26_Added
  l0.Removed = self.f_26_Removed
  l0.Out = self.f_26_Out
  self[61] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[61]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[40] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_40_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_40_Chasing
  l0.Searching = DummyFunction
  l0.Evaded = self.f_40_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[53] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[53]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_53_Disabled
  l0.ClientDeath = self.f_53_ClientDeath
  l0.VehicleUnusable = self.f_53_VehicleUnusable
  l0.ClientBailedOut = self.f_53_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_53_PlayerAbandonedVehicle
  self[9] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[136] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[136]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_136_Added
  l0.Removed = self.f_136_Removed
  l0.Out = self.f_136_Out
  self[101] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[101]
  l0._graph = self
  self[55] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[55]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_55_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[135] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_135_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_135_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[30] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_30_ClientSpawned
  l0.ClientPickedUp = self.f_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_30_ClientConversationFinised
  self[52] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[52]
  l0._graph = self
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[56] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[111] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[111]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_111_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_34_Out
  self[127] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_127_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[7] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_7_Added
  l0.Removed = self.f_7_Removed
  l0.Out = self.f_7_Out
  self[3] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.ClientDeath = self.f_3_ClientDeath
  l0.VehicleUnusable = self.f_3_VehicleUnusable
  l0.ClientBailedOut = self.f_3_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_3_PlayerAbandonedVehicle
  self[71] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[97] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = self.f_97_Out
  l0.MessageCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
  self[81] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[81]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_81_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[25] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_25_TalkFailed
  self[13] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[95] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = self.f_95_Out
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
  l0 = self[96]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[96]
  l0:Input(0)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Seconds = 10
  l0:Start()
end
function export:f_106_Started()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149939"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[124]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/2612066200.bnk"
  l0:Start()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[43]
  self.Police = l0.Target
end
function export:f_43_SetFalse()
  local l0
  self = self._graph
  l0 = self[43]
  self.Police = l0.Target
end
function export:f_43_SetFromBool()
  local l0
  self = self._graph
  l0 = self[43]
  self.Police = l0.Target
end
function export:f_43_SetTrue()
  local l0
  self = self._graph
  l0 = self[43]
  self.Police = l0.Target
  l0 = self[56]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "EscapePolice",
    id = "333925"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_43_Toggled()
  local l0
  self = self._graph
  l0 = self[43]
  self.Police = l0.Target
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:In()
end
function export:f_131_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_116_Popped
  l0:Pop()
end
function export:f_18_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_18_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_121_Finished()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(0)
end
function export:f_121_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(1)
end
function export:f_120_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_120_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  l0.Min = 1
  l0.Max = self.BarkCount
  l0._graph = self
  l0.Out = self.f_128_Out
  l0:In()
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_133_Finished()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(0)
end
function export:f_133_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Input(1)
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_90_Out_0
  l0.Out[1] = self.f_90_Out_1
  l0.Out[2] = self.f_90_Out_2
  l0.Out[3] = self.f_90_Out_3
  l0:In()
end
function export:f_47_Out()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Stop()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[94]
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0:Pause()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_6_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372047582725860"
  l0._graph = self
  l0.Out = self.f_113_Out
  l0:FromEntity()
end
function export:f_82_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(1)
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[46]
  self.Police = l0.Target
end
function export:f_46_SetFalse()
  local l0
  self = self._graph
  l0 = self[46]
  self.Police = l0.Target
  self:en_40()
  l0 = self[40]
  l0:Start()
end
function export:f_46_SetFromBool()
  local l0
  self = self._graph
  l0 = self[46]
  self.Police = l0.Target
end
function export:f_46_SetTrue()
  local l0
  self = self._graph
  l0 = self[46]
  self.Police = l0.Target
end
function export:f_46_Toggled()
  local l0
  self = self._graph
  l0 = self[46]
  self.Police = l0.Target
end
function export:f_124_Finished()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(0)
end
function export:f_124_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Input(1)
end
function export:f_114_Paused()
  local l0
  self = self._graph
  l0 = self[46]
  l0:False()
end
function export:f_99_RewardShown()
  local l0
  self = self._graph
  l0 = self[103]
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0:Stop()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0:In()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0:Pause()
end
function export:f_117_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self[117]
  l1 = self[130]
  l1.SoundId = l0.SoundID
end
function export:f_117_Out()
  local l0, l1
  self = self._graph
  l0 = self[117]
  l1 = self[130]
  l1.SoundId = l0.SoundID
  l1.Entity = self.ClientCoach
  l1:Start()
end
function export:f_23_Started()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149937"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Police
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_42_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_39_Out_1()
  local l0
  self = self._graph
  l0 = self[27]
  l0.ClientClo = "9223372048443731083"
  l0.PickUpIcon = "9223372047582725866"
  l0.ShowPickUpIcon = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402308"
  l0:Enable()
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Destination_Bar_ = l0.Target
  l0 = self[115]
  l0:Input(0)
end
function export:f_79_Resumed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_19_TimeElapsed()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Add()
end
function export:f_108_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Disable()
end
function export:f_104_Unloaded()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Succeed()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0:In(0)
end
function export:f_94_Paused()
  local l0
  self = self._graph
  l0 = self[99]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_132_Finished()
  local l0
  self = self._graph
  l0 = self[131]
  l0:Input(0)
end
function export:f_132_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[131]
  l0:Input(2)
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372047582725807"
  l0._graph = self
  l0.Out = self.f_112_Out
  l0:FromEntity()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[57]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0:In()
end
function export:f_123_Finished()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(0)
end
function export:f_123_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(1)
end
function export:f_103_Stopped()
  local l0
  self = self._graph
  l0 = self[93]
  l0:ShowMissionComplete()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[127]
  l0.Seconds = 2
  l0:Start()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Taxi12_Main"
  l0:Load()
end
function export:f_90_Out_0()
  local l0
  self = self._graph
  self:en_108()
  l0 = self[108]
  l0:Enable()
end
function export:f_90_Out_1()
  local l0
  self = self._graph
  self:en_111()
  l0 = self[111]
  l0:Enable()
end
function export:f_90_Out_2()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725866"
  l0.LastDestination = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
  l0:Enable()
end
function export:f_90_Out_3()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 5
  l0:Start()
end
function export:f_45_Out()
  local l0
  self = self._graph
  self:en_111()
  l0 = self[111]
  l0:Disable()
end
function export:f_134_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[132]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/614818790.bnk"
  l0:Start()
end
function export:f_69_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Seconds = 2
  l0:Start()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Client = self.ClientCarson
  l0.DropOffIcon = "9223372047582725735"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF120",
    item = "Objective_03",
    id = "643348"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057399402308"
  l0:Enable()
end
function export:f_27_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[27]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[79]
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0:Resume()
end
function export:f_27_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[27]
  self.ClientCarson = l0.Client
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0:In()
end
function export:f_62_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(1)
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0.LayerName = "Taxi12_Main"
  l0:Unload()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060678040943"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_29_TalkFinished()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Seconds = 5
  l0:Start()
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_4_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_65_Out()
  local l0
  self = self._graph
  self:en_108()
  l0 = self[108]
  l0:Disable()
end
function export:f_119_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[136]
  l0.Input = self.WronLocationBark
  l0.SoundID[0] = "soundbinary/1076075987.bnk"
  l0.SoundID[1] = "soundbinary/3122818565.bnk"
  l0.SoundID[2] = "soundbinary/3122818565.bnk"
  l0.SoundID[3] = "soundbinary/520810366.bnk"
  l0:Add()
end
function export:f_113_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Destination_Bar_ = l0.Target
  l0 = self[115]
  l0:Input(1)
end
function export:f_57_PostOut()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_26_Added()
  local l0
  self = self._graph
  l0 = self[26]
  self.GIC_Users = l0.Target
  self:en_23()
  l0 = self[23]
  l0:Start()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.GIC_Users = l0.Target
end
function export:f_26_Removed()
  local l0
  self = self._graph
  l0 = self[26]
  self.GIC_Users = l0.Target
  self:en_23()
  l0 = self[23]
  l0:Stop()
end
function export:f_116_Popped()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Seconds = 2
  l0:Start()
end
function export:f_40_Chasing()
  local l0
  self = self._graph
  l0 = self[43]
  l0:True()
end
function export:f_40_Evaded()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_40_None()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Input(0)
end
function export:f_53_ClientBailedOut()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:ClientBailedOut()
end
function export:f_53_ClientDeath()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:ClientDead()
end
function export:f_53_Disabled()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Remove()
end
function export:f_53_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:PlayerAbandonedVehicle()
end
function export:f_53_VehicleUnusable()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:VehicleUnusable()
end
function export:f_9_TalkFinished()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Seconds = 10
  l0:Start()
end
function export:f_136_Added()
  local l0
  self = self._graph
  l0 = self[136]
  self.WronLocationBark = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.WronLocationBark
  l0._graph = self
  l0.Out = self.f_120_Out
  l0.Empty = self.f_120_Empty
  l0.NotEmpty = self.f_120_NotEmpty
  l0:GetLength()
end
function export:f_136_Out()
  local l0
  self = self._graph
  l0 = self[136]
  self.WronLocationBark = l0.Target
end
function export:f_136_Removed()
  local l0
  self = self._graph
  l0 = self[136]
  self.WronLocationBark = l0.Target
end
function export:f_109_Equal()
  local l0
  self = self._graph
  l0 = self[123]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/199611726.bnk"
  l0:Start()
end
function export:f_109_NotEqual()
  local l0
  self = self._graph
  l0 = self[133]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/199611726.bnk"
  l0:Start()
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  l0 = self[97]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF120",
    item = "Objective_01",
    id = "579973"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_28_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(0)
end
function export:f_42_A_is_False()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047582725866"
  l0.xPosOffset = 1
  l0:Attach()
end
function export:f_55_RatingReset()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0:Start()
end
function export:f_135_Finished()
  local l0
  self = self._graph
  l0 = self[131]
  l0:Input(1)
end
function export:f_135_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[131]
  l0:Input(3)
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[29]
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612308751"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_30_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Add()
end
function export:f_30_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[30]
  self.PlayerVehicle = l0.Vehicle
end
function export:f_30_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[30]
  self.ClientCoach = l0.Client
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:In()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612308752"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_111_ReachDestination()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_82_Out_0
  l0.Out[1] = self.f_82_Out_1
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[121]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/2612066200.bnk"
  l0:Start()
end
function export:f_127_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[135]
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/614818790.bnk"
  l0:Start()
end
function export:f_7_Added()
  local l0
  self = self._graph
  l0 = self[7]
  self.GIC_Users = l0.Target
  self:en_106()
  l0 = self[106]
  l0:Start()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.GIC_Users = l0.Target
end
function export:f_7_Removed()
  local l0
  self = self._graph
  l0 = self[7]
  self.GIC_Users = l0.Target
  self:en_106()
  l0 = self[106]
  l0:Stop()
end
function export:f_3_ClientBailedOut()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:ClientBailedOut()
end
function export:f_3_ClientDeath()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:ClientDead()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Remove()
end
function export:f_3_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:PlayerAbandonedVehicle()
end
function export:f_3_VehicleUnusable()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:VehicleUnusable()
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372047582725866"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Player"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Enable()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_4_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Destination_Bar_
  l0.Entity2 = "9223372047582725807"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_109_Equal
  l0.NotEqual = self.f_109_NotEqual
  l0:In()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[134]
  l0.Seconds = 2
  l0:Start()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:Enable()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:In()
end
function export:f_81_TalkFinished()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Seconds = 5
  l0:Start()
end
function export:f_25_TalkFailed()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_25_TalkFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_28_Out_0
  l0.Out[1] = self.f_28_Out_1
  l0:In()
end
function export:f_13_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149938"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.ClientClo = "9223372047582725738"
  l0.PickUpIcon = "9223372047582725735"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
  l0:Enable()
end
function export:f_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  l0 = self[117]
  l0.Input = self.WronLocationBark
  l0.Index = self.BarkCount
  l0:Read()
end
function export:en_106()
  local l0
  l0 = self[106]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_108()
  local l0
  l0 = self[108]
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725807"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi12_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582725733"
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149933"
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.ClientCoach
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.Target = self.PlayerEntity
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.Client = self.ClientCarson
  l0.Config = "TaxiRideGameplayBrick.9223372057399402308"
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi12_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582725733"
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149933"
end
function export:en_111()
  local l0
  l0 = self[111]
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725860"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.ClientCarson
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Client = self.ClientCoach
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
_compilerVersion = 4
