export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.MissionLayer = "Taxi17_Main"
  self.Mission = "MissionList.9223372047771319827"
  self.CPIndex = 0
  self.GIC_Users = {}
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
  self[16] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_16_Unloaded
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[13] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_13_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_13_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[44] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_44_Added
  l0.Removed = self.f_44_Removed
  l0.Out = self.f_44_Out
  self[24] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[24]
  l0._graph = self
  self[33] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[33]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_33_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[26] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_26_Paused
  l0.Resumed = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.ClientDeath = self.f_4_ClientDeath
  l0.VehicleUnusable = self.f_4_VehicleUnusable
  l0.ClientBailedOut = self.f_4_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_4_PlayerAbandonedVehicle
  self[32] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.MessageCompleted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_30_Disabled
  l0.ClientSpawned = self.f_30_ClientSpawned
  l0.ClientPickedUp = self.f_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_30_ClientConversationFinised
  self[20] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_20_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[5] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[5]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_5_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_11_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_11_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[7] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[7]
  l0._graph = self
  l0.Attached = self.f_7_Attached
  self[41] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[41]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[17] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = self.f_17_Disabled
  l0.ReachDestination = self.f_17_ReachDestination
  l0.ClientDropOff = DummyFunction
  self[36] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_36_ClientDropOff
  self[28] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_28_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[2]
  l0._graph = self
  self[25] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
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
  l0 = self[10]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[10]
  l0:Input(0)
end
function export:f_16_Unloaded()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Succeed()
end
function export:f_8_PostOut()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_13_Stopped()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Stop()
end
function export:f_13_TalkFinished()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_44_Added()
  local l0
  self = self._graph
  l0 = self[44]
  self.GIC_Users = l0.Target
  self:en_25()
  l0 = self[25]
  l0:Start()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[44]
  self.GIC_Users = l0.Target
end
function export:f_44_Removed()
  local l0
  self = self._graph
  l0 = self[44]
  self.GIC_Users = l0.Target
end
function export:f_33_RewardShown()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  l0:Stop()
end
function export:f_26_Paused()
  local l0
  self = self._graph
  l0 = self[33]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_4_ClientBailedOut()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:ClientBailedOut()
end
function export:f_4_ClientDeath()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:ClientDead()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_4_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:PlayerAbandonedVehicle()
end
function export:f_4_VehicleUnusable()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:VehicleUnusable()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_30_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_30_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[30]
  self.PlayerVehicle = l0.Vehicle
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_30_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[30]
  self.Client = l0.Client
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_30_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Seconds = 7
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  l0:Pause()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF170",
    item = "Objective_Drive_Slowly",
    id = "630506"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047771319829"
  l0:Attach()
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Stop()
end
function export:f_18_Out_2()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Stop()
end
function export:f_20_Started()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0:Add()
end
function export:f_20_TimeElapsed()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Start()
end
function export:f_5_RatingReset()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  l0:Start()
end
function export:f_11_Stopped()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Stop()
end
function export:f_11_TalkFinished()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Start()
end
function export:f_7_Attached()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372047771319829"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF170",
    item = "Objective_Drive_Slowly",
    id = "630506"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
  l0:Enable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_17_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0.Out[2] = self.f_18_Out_2
  l0:In()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_17_ReachDestination()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_36_ClientDropOff()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_28_Stopped()
  local l0
  self = self._graph
  l0 = self[32]
  l0:ShowMissionComplete()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[8]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149925"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149924"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.ClientClo = "9223372047771319805"
  l0.PickUpIcon = "9223372047771319802"
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149923"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Client = self.Client
  l0.DropOffIcon = "9223372047771319829"
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF170",
    item = "Objective_Drive_Slowly",
    id = "630506"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372061887226738"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149926"
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372059873283181"
end
_compilerVersion = 4
