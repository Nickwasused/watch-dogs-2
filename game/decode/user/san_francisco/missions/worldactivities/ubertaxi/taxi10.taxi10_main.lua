export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiCheckpointController.lua")
  cbox:RegisterBox("domino/System/TaxiCheckpointMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Client = nil
  self.CurrentDestination = 0
  self.Mission = "MissionList.9223372046987693857"
  self.PlayerVehicle = nil
  self.CPIndex = 0
  self.RacePartStarted = 0
  self.FlatBed = nil
  self.CLO_9223372051980679173 = "9223372051980679173"
  self.FlatBed2 = nil
  self.GIC_Users = {}
  self.Jump_Height = 5
  self.tmpClient = nil
  self.playerVehicle = nil
  self.isCorrectVehicle = 0
  self.PlaySpecificBark = 0
  self.Vehicle_Icon = nil
  self.Player_Vehicle = nil
  self.ClientCarson = nil
  self.Liv = nil
  self[82] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_82_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[12] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[55] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[74] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0.SetTrue = self.f_60_SetTrue
  l0.SetFalse = self.f_60_SetFalse
  l0.Toggled = self.f_60_Toggled
  l0.SetFromBool = self.f_60_SetFromBool
  self[114] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[114]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_4_ClientDropOff
  self[57] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_57_Out
  self[37] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[37]
  l0._graph = self
  self[87] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[87]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_87_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[41] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_41_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[112] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[112]
  l0._graph = self
  l0.Started = self.f_112_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[53] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_62_Unloaded
  l0.Reseted = DummyFunction
  self[70] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_70_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[20]
  l0._graph = self
  self[31] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[31]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_31_PostOut
  self[108] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[108]
  l0._graph = self
  l0.Started = self.f_108_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[69] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_69_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[30] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[30]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_30_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[81] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = self.f_81_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_81_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[89] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Case = 12, Match = 12}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_89_Match_0
  l0.Match[1] = self.f_89_Match_1
  l0.Match[2] = self.f_89_Match_2
  l0.Match[3] = self.f_89_Match_3
  l0.Match[4] = self.f_89_Match_4
  l0.Match[5] = self.f_89_Match_5
  l0.Match[6] = self.f_89_Match_6
  l0.Match[7] = self.f_89_Match_7
  l0.Match[8] = self.f_89_Match_8
  l0.Match[9] = self.f_89_Match_9
  l0.Match[10] = self.f_89_Match_10
  l0.Match[11] = DummyFunction
  l0.None = DummyFunction
  self[109] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = self.f_109_Out
  l0.MessageCompleted = DummyFunction
  self[54] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[54]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_54_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[76] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[39] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_39_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
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
  self[56] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[56]
  l0._graph = self
  l0.Started = self.f_56_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[49] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_49_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[115] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[115]
  l0._graph = self
  l0.Started = self.f_115_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_115_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[21] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_21_Added
  l0.Removed = self.f_21_Removed
  l0.Out = self.f_21_Out
  self[75] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[75]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[90] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_90_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
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
  self[111] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[111]
  l0._graph = self
  l0.Started = self.f_111_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[68] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[68]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_68_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[117] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[117]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_117_ClientSpawned
  l0.ClientPickedUp = self.f_117_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self[16] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[78] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[78]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[72] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[72]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_72_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TaxiCheckpointController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = self.f_13_Enabled
  l0.Disabled = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  self[96] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[96]
  l0._graph = self
  l0.Enabled = self.f_96_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_96_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.MessageCompleted = DummyFunction
  self[118] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[118]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_118_Disabled
  l0.ClientDeath = self.f_118_ClientDeath
  l0.VehicleUnusable = self.f_118_VehicleUnusable
  l0.ClientBailedOut = self.f_118_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_118_PlayerAbandonedVehicle
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
  l0 = self[57]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[57]
  l0:Input(0)
end
function export:f_94_Disabled()
  local l0
  self = self._graph
  self:en_94()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_64_Enabled()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Enable()
end
function export:f_82_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_103_Out_0
  l0.Out[1] = self.f_103_Out_1
  l0:In()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0:False()
end
function export:f_47_Out()
  local l0
  self = self._graph
  self:en_118()
  l0 = self[118]
  l0:Disable()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Show()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0:Enable()
end
function export:f_74_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[115]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149901"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
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
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.CLO = "9223372052672201328"
  l0:Activate()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[60]
  self.RacePartStarted = l0.Target
end
function export:f_60_SetFalse()
  local l0
  self = self._graph
  l0 = self[60]
  self.RacePartStarted = l0.Target
  l0 = self[117]
  l0.ClientClo = "9223372046987668217"
  l0.PickUpIcon = "9223372048152208900"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
  l0:Enable()
end
function export:f_60_SetFromBool()
  local l0
  self = self._graph
  l0 = self[60]
  self.RacePartStarted = l0.Target
end
function export:f_60_SetTrue()
  local l0
  self = self._graph
  l0 = self[60]
  self.RacePartStarted = l0.Target
end
function export:f_60_Toggled()
  local l0
  self = self._graph
  l0 = self[60]
  self.RacePartStarted = l0.Target
end
function export:f_4_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = self.f_43_Out_1
  l0:In()
end
function export:f_79_Disabled()
  local l0
  self = self._graph
  self:en_79()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_105_Out_0()
  local l0
  self = self._graph
  self:en_91()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_105_Out_1()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Disable()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  l0 = self[62]
  l0.LayerName = "Taxi10_Main"
  l0:Unload()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_113_Out
  l0:In()
end
function export:f_107_Out_0()
  local l0
  self = self._graph
  self:en_97()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_107_Out_1()
  local l0
  self = self._graph
  self:en_96()
  l0 = self[96]
  l0:Disable()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Taxi10_Main"
  l0:Load()
end
function export:f_87_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_104_Out_0
  l0.Out[1] = self.f_104_Out_1
  l0:In()
end
function export:f_103_Out_0()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Disable()
end
function export:f_103_Out_1()
  local l0
  self = self._graph
  self:en_85()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_41_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372051430779522"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Config = "TaxiRideStrategyConfig.9223372053468216841"
  l0:Start()
end
function export:f_18_OnCheckpointReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  self.CPIndex = l0.CheckpointIndex
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_120_Out
  l0:In()
end
function export:f_18_OnDestinationReached()
  local l0
  self = self._graph
  self:en_18()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0:Disable()
end
function export:f_112_Started()
  local l0
  self = self._graph
  self:en_15()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_62_Unloaded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Succeed()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Add()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_26_Indestructable
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsIndestructable()
end
function export:f_70_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438575"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_104_Out_0()
  local l0
  self = self._graph
  self:en_88()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_104_Out_1()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Disable()
end
function export:f_31_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_108_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052167992994"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = self.f_64_Enabled
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Enable()
end
function export:f_88_Disabled()
  local l0
  self = self._graph
  self:en_88()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_69_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372051430779523"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[31]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_30_RewardShown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_34_Destructable
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetAsDestructable()
end
function export:f_81_Enabled()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Seconds = 4
  l0:Start()
end
function export:f_81_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:In()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_89_Match_0()
  local l0
  self = self._graph
  l0 = self[69]
  l0:Start()
end
function export:f_89_Match_1()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Enable()
end
function export:f_89_Match_2()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438572"
  l0.StartDelay = 1
  l0:Start()
end
function export:f_89_Match_3()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Enable()
end
function export:f_89_Match_4()
  local l0
  self = self._graph
  l0 = self[112]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438573"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_89_Match_5()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Enable()
end
function export:f_89_Match_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0:In()
end
function export:f_89_Match_7()
  local l0
  self = self._graph
  self:en_94()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_89_Match_8()
  local l0
  self = self._graph
  self:en_35()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_89_Match_9()
  local l0
  self = self._graph
  self:en_96()
  l0 = self[96]
  l0:Enable()
end
function export:f_89_Match_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  l0:Start()
end
function export:f_29_Out()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:Disable()
end
function export:f_54_TalkFinished()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_76_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[114]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438570"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_110_Out
  l0:In()
end
function export:f_39_Stopped()
  local l0
  self = self._graph
  l0 = self[30]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_71_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372050763438571"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_56_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_38_Out_0
  l0.Out[1] = self.f_38_Out_1
  l0:In()
end
function export:f_49_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149900"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_115_Started()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_115_TalkFinished()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Seconds = 10
  l0:Start()
end
function export:f_32_Out()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_21_Added()
  local l0
  self = self._graph
  l0 = self[21]
  self.GIC_Users = l0.Target
  self:en_16()
  l0 = self[16]
  l0:Start()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.GIC_Users = l0.Target
end
function export:f_21_Removed()
  local l0
  self = self._graph
  l0 = self[21]
  self.GIC_Users = l0.Target
  self:en_16()
  l0 = self[16]
  l0:Stop()
end
function export:f_90_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_105_Out_0
  l0.Out[1] = self.f_105_Out_1
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_91_Disabled()
  local l0
  self = self._graph
  self:en_91()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:In()
end
function export:f_97_Disabled()
  local l0
  self = self._graph
  self:en_97()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_38_Out_0()
  local l0
  self = self._graph
  self:en_79()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_46_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149903"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_111_Started()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_68_TalkFinished()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  self:en_15()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_117_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[117]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[3]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF100",
    item = "Instr01",
    id = "627433"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_117_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[117]
  self.Liv = l0.Client
  self:en_118()
  l0 = self[118]
  l0:Enable()
end
function export:f_35_Disabled()
  local l0
  self = self._graph
  self:en_35()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_35_Enabled()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Seconds = 5
  l0:Start()
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_121_Out
  l0:In()
end
function export:f_34_Destructable()
  local l0
  self = self._graph
  l0 = self[17]
  l0:ShowMissionComplete()
end
function export:f_85_Disabled()
  local l0
  self = self._graph
  self:en_85()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_72_TalkFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372054161862346"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = -2
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_40_Out_0()
  local l0
  self = self._graph
  l0 = self[74]
  l0:Start()
end
function export:f_40_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372051980679173"
  l0:Activate()
end
function export:f_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_43_Out_1()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  l0:Stop()
end
function export:f_13_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_110_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:In()
end
function export:f_96_Enabled()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Seconds = 6
  l0:Start()
end
function export:f_96_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_107_Out_0
  l0.Out[1] = self.f_107_Out_1
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052167992994"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Disable()
end
function export:f_118_ClientBailedOut()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:ClientBailedOut()
end
function export:f_118_ClientDeath()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:ClientDead()
end
function export:f_118_Disabled()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Remove()
end
function export:f_118_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:PlayerAbandonedVehicle()
end
function export:f_118_VehicleUnusable()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:VehicleUnusable()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Integer = self.CPIndex
  l0.Case[0] = 2
  l0.Case[1] = 4
  l0.Case[2] = 5
  l0.Case[3] = 8
  l0.Case[4] = 10
  l0.Case[5] = 14
  l0.Case[6] = 15
  l0.Case[7] = 17
  l0.Case[8] = 18
  l0.Case[9] = 21
  l0.Case[10] = 28
  l0:In()
end
function export:f_113_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:In()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "RatingTip_AirTime",
    id = "551693"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_26_Indestructable()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Client = self.Liv
  l0.DropOffIcon = "9223372046987693874"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
  l0:Enable()
end
function export:en_94()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113388"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_94_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_82()
  local l0
  l0 = self[82]
  l0.Trigger = "9223372052168063913"
end
function export:en_79()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063572"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_79_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_87()
  local l0
  l0 = self[87]
  l0.Trigger = "9223372052168063917"
end
function export:en_18()
  local l0
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = DummyFunction
  l0.OnCheckpointReached = self.f_18_OnCheckpointReached
  l0.OnDestinationReached = self.f_18_OnDestinationReached
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi10_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464802"
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149902"
end
function export:en_88()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113373"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_88_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_81()
  local l0
  l0 = self[81]
  l0.Trigger = "9223372052167994011"
end
function export:en_19()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064397"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_19_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Liv
end
function export:en_90()
  local l0
  l0 = self[90]
  l0.Trigger = "9223372052168064395"
end
function export:en_91()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113381"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_91_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_97()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064409"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_97_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_15()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063919"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_35()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168064404"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = self.f_35_Enabled
  l0.Disabled = self.f_35_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
end
function export:en_85()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372066181113371"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_85_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.PathOrStart = "9223372050129417781"
  l0.Destination = "9223372046987693874"
end
function export:en_96()
  local l0
  l0 = self[96]
  l0.Trigger = "9223372052168064406"
end
function export:en_118()
  local l0
  l0 = self[118]
  l0.Client = self.Liv
  l0.Config = "TaxiRideGameplayBrick.9223372057399402695"
end
function export:en_33()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372052168063915"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
_compilerVersion = 4
