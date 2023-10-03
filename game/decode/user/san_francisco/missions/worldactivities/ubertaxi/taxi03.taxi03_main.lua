export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
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
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
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
  self[29] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_29_Stopped
  l0.None = self.f_29_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_29_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[52] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[59] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_59_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[58] = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 5}
  l0.Added = self.f_58_Added
  l0.Removed = self.f_58_Removed
  l0.Out = self.f_58_Out
  self[53] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_21_Added
  l0.Removed = self.f_21_Removed
  l0.Out = self.f_21_Out
  self[50] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[36] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[36]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_3_MessageCompleted
  self[69] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_69_Out
  self[6] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[6]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_6_OnUserInPlace
  self[34] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_34_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[9] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[16] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[16]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_16_PostOut
  self[27] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[27]
  l0._graph = self
  l0.RatingShown = self.f_27_RatingShown
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_27_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[70] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_70_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_13_OnUserInPlace
  self[32] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[32]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = self.f_32_RatingRemoved
  self[60] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_60_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_60_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[43] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_43_ReachDestination
  l0.ClientDropOff = self.f_43_ClientDropOff
  self[55] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_55_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_55_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[54] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[56] = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0.EndOfList = self.f_56_EndOfList
  self[46] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[25] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = self.f_25_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[66] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[66]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_66_Out
  self[67] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_67_Out
  self[31] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_31_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[48] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[48]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_10_Unloaded
  l0.Reseted = DummyFunction
  self[61] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_61_Out
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[12] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_12_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_12_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[68] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[68]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_68_Out
  self[7] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_7_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_7_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = self.f_28_Enabled
  l0.Disabled = self.f_28_Disabled
  l0.Enter = DummyFunction
  l0.Leave = self.f_28_Leave
  l0.Use = DummyFunction
  self[4] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_4_OnUserInPlace
  self[42] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_42_Disabled
  l0.ClientDeath = self.f_42_ClientDeath
  l0.VehicleUnusable = self.f_42_VehicleUnusable
  l0.ClientBailedOut = self.f_42_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_42_PlayerAbandonedVehicle
  self[65] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_65_Out
  self[33] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_33_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[63] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[63]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_63_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[35] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[35]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_35_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_51_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_51_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[47] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0.MessageCompleted = DummyFunction
  self[40] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_40_Disabled
  l0.ClientSpawned = self.f_40_ClientSpawned
  l0.ClientPickedUp = self.f_40_ClientPickedUp
  l0.ClientConversationFinised = self.f_40_ClientConversationFinised
  self[11] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_11_OnUserInPlace
  self[38] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = self.f_38_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_38_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[45] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_45_Added
  l0.Removed = self.f_45_Removed
  l0.Out = self.f_45_Out
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
  self[5] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[5]
  l0._graph = self
  self[17] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
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
  l0 = self[19]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[19]
  l0:Input(0)
end
function export:f_64_Out()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:ResetRating()
end
function export:f_29_Evaded()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(1)
end
function export:f_29_None()
  local l0
  self = self._graph
  l0 = self[70]
  l0:In(0)
end
function export:f_29_Stopped()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF030",
    item = "Objective_Escape",
    id = "630490"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowMissionComplete()
end
function export:f_52_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[34]
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149954"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_59_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(1)
end
function export:f_58_Added()
  local l0
  self = self._graph
  l0 = self[58]
  self.Bark_List = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Bark_List
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.Empty = self.f_57_Empty
  l0.NotEmpty = self.f_57_NotEmpty
  l0:GetLength()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[58]
  self.Bark_List = l0.Target
end
function export:f_58_Removed()
  local l0
  self = self._graph
  l0 = self[58]
  self.Bark_List = l0.Target
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[31]
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149953"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
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
function export:f_21_Added()
  local l0
  self = self._graph
  l0 = self[21]
  self.FelonyAIList = l0.Target
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.FelonyAIList = l0.Target
end
function export:f_21_Removed()
  local l0
  self = self._graph
  l0 = self[21]
  self.FelonyAIList = l0.Target
end
function export:f_3_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Config = "TaxiRideStrategyConfig.9223372046182889156"
  l0:Stop()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.MissionName = self.Mission
  l0.RatingAmount = 4
  l0:RemoveRating()
end
function export:f_69_Out()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Start()
end
function export:f_6_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[6]
  self.Rus_Car_2 = l0.UserID
  l0 = self[8]
  l0.CLO = "9223372058945225504"
  l0:Activate()
end
function export:f_34_TalkFinished()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Seconds = 3
  l0:Start()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  l0 = self[56]
  l0.Input = self.Bark_List
  l0.Index = self.BarkCount
  l0:Read()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.Rus_2 = l0.UserID
  l0 = self[11]
  l0.CLO = "9223372058945225506"
  l0:Activate()
end
function export:f_16_PostOut()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Disable()
end
function export:f_27_RatingReset()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:ShowRating()
end
function export:f_27_RatingShown()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Config = "TaxiRideStrategyConfig.9223372046182889156"
  l0:Start()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.Rus_1 = l0.UserID
  l0 = self[9]
  l0.CLO = "9223372058945225505"
  l0:Activate()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0:In()
end
function export:f_13_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[13]
  self.Rus_3 = l0.UserID
  l0 = self[21]
  l0.Input = self.FelonyAIList
  l0.Data[0] = self.Rus_Car_1
  l0.Data[1] = self.Rus_Car_2
  l0.Data[2] = self.Rus_1
  l0.Data[3] = self.Rus_2
  l0.Data[4] = self.Rus_4
  l0.Data[5] = self.Rus_3
  l0:Add()
end
function export:f_32_RatingRemoved()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_62_Out_0
  l0.Out[1] = self.f_62_Out_1
  l0:In()
end
function export:f_60_Finished()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(0)
end
function export:f_60_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[16]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_20_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612490047"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_43_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_43_ReachDestination()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/343820524.bnk"
  l0:Start()
end
function export:f_55_Finished()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(0)
end
function export:f_55_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[65]
  l0:Input(1)
end
function export:f_54_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149955"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_57_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_57_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  l0.Min = 1
  l0.Max = self.BarkCount
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_56_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self[56]
  l1 = self[60]
  l1.SoundId = l0.SoundID
end
function export:f_56_Out()
  local l0, l1
  self = self._graph
  l0 = self[56]
  l1 = self[60]
  l1.SoundId = l0.SoundID
  l1:Start()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Seconds = 10
  l0:Start()
end
function export:f_25_Started()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Trigger = "9223372057621748925"
  l0:Enable()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Stop()
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(1)
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/321119829.bnk"
  l0:Start()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372059098056274"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:Enable()
end
function export:f_31_TalkFinished()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Seconds = 3
  l0:Start()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 2
  l0:Start()
end
function export:f_10_Unloaded()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Succeed()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Input = self.Bark_List
  l0.SoundID[0] = "soundbinary/1642646706.bnk"
  l0.SoundID[1] = "soundbinary/483614594.bnk"
  l0.SoundID[2] = "soundbinary/1499503313.bnk"
  l0.SoundID[3] = "soundbinary/3345733861.bnk"
  l0.SoundID[4] = "soundbinary/415917544.bnk"
  l0:Add()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_12_Finished()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(0)
end
function export:f_12_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[67]
  l0:Input(1)
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(0)
end
function export:f_7_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[68]
  l0:Input(1)
end
function export:f_28_Disabled()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(0)
end
function export:f_28_Enabled()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Start()
end
function export:f_28_Leave()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_4_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[4]
  self.Rus_Car_1 = l0.UserID
  l0 = self[6]
  l0.CLO = "9223372058945225511"
  l0.User = self.Rus_Car_2
  l0:Activate()
end
function export:f_62_Out_0()
  local l0
  self = self._graph
  l0 = self[61]
  l0:Input(0)
end
function export:f_62_Out_1()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_42_ClientBailedOut()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:ClientBailedOut()
end
function export:f_42_ClientDeath()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:ClientDead()
end
function export:f_42_Disabled()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Remove()
end
function export:f_42_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:PlayerAbandonedVehicle()
end
function export:f_42_VehicleUnusable()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:VehicleUnusable()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/1106613598.bnk"
  l0:Start()
end
function export:f_33_Stopped()
  local l0
  self = self._graph
  l0 = self[63]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_63_RewardShown()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/3728394926.bnk"
  l0:Start()
end
function export:f_35_TalkFinished()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Seconds = 3
  l0:Start()
end
function export:f_51_Finished()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Input(0)
end
function export:f_51_PriorityFailed()
  local l0
  self = self._graph
  l0 = self[66]
  l0:Input(1)
end
function export:f_49_Out()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Stop()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_47_Out()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:StartChase()
end
function export:f_40_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_40_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[40]
  self.PlayerVehicle = l0.Vehicle
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Roman
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:SetInvincible()
end
function export:f_40_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[40]
  self.Roman = l0.Client
  self:en_42()
  l0 = self[42]
  l0:Enable()
end
function export:f_40_Disabled()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Add()
end
function export:f_11_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[11]
  self.Rus_4 = l0.UserID
  l0 = self[13]
  l0.CLO = "9223372058945225507"
  l0:Activate()
end
function export:f_38_Enabled()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Client = self.Roman
  l0.DropOffIcon = "9223372046111271327"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
  l0:Enable()
end
function export:f_38_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CLO = "9223372058945225509"
  l0.User = self.Rus_Car_1
  l0:Activate()
end
function export:f_39_ChaseStarted()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_39_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_39()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_39_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = self[51]
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/4191364887.bnk"
  l0:Start()
end
function export:f_45_Added()
  local l0
  self = self._graph
  l0 = self[45]
  self.GIC_Users = l0.Target
  self:en_46()
  l0 = self[46]
  l0:Start()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[45]
  self.GIC_Users = l0.Target
end
function export:f_45_Removed()
  local l0
  self = self._graph
  l0 = self[45]
  self.GIC_Users = l0.Target
  self:en_46()
  l0 = self[46]
  l0:Stop()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF030",
    item = "Objective_Escape",
    id = "630490"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Target = self.PlayerEntity
  l0.FelonyType = "Bratva"
end
function export:en_59()
  local l0
  l0 = self[59]
  l0.Seconds = 30
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.MissionName = self.Mission
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Trigger = "9223372063835501806"
  l0.CheckNow = 1
end
function export:en_42()
  local l0
  l0 = self[42]
  l0.Client = self.Roman
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.ClientClo = self.CLOClient
  l0.PickUpIcon = "9223372046111271329"
  l0.Config = "TaxiRideGameplayBrick.9223372057621635623"
end
function export:en_39()
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_39_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_39_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_39_ScriptedAgentsAdopted
end
function export:en_45()
  local l0
  l0 = self[45]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Roman
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372046182889156"
  l0.Pawn1 = self.Roman
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149956"
end
_compilerVersion = 4
