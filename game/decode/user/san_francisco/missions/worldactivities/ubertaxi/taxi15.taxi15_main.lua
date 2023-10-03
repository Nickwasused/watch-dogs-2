export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/IntegerSelect.lua")
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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372048443777420"
  self.CPIndex = 0
  self.StuntRaceStarted = 0
  self.GIC_Users = {}
  self.Liv = nil
  self.RacePartStarted = 0
  self[1] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[1]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_1_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[45] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[89] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[89]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_89_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[147] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[147]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_28_Out
  self[32] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_32_ClientDropOff
  self[126] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[126]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_126_ClientSpawned
  l0.ClientPickedUp = self.f_126_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self[128] = cbox:CreateBox("domino/System/TaxiCheckpointController.lua")
  l0 = self[128]
  l0._graph = self
  l0.Enabled = self.f_128_Enabled
  l0.Disabled = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  self[135] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[135]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_135_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[20] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[20]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_20_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = self.f_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_4_Disabled
  l0.ClientDeath = self.f_4_ClientDeath
  l0.VehicleUnusable = self.f_4_VehicleUnusable
  l0.ClientBailedOut = self.f_4_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_4_PlayerAbandonedVehicle
  self[8] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_8_Added
  l0.Removed = self.f_8_Removed
  l0.Out = self.f_8_Out
  self[132] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_132_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[18] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_18_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[154] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[154]
  l0._graph = self
  l0.Enabled = self.f_154_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_154_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[9] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.SetTrue = self.f_9_SetTrue
  l0.SetFalse = self.f_9_SetFalse
  l0.Toggled = self.f_9_Toggled
  l0.SetFromBool = self.f_9_SetFromBool
  self[143] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[143]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_143_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[12]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_2_Unloaded
  l0.Reseted = DummyFunction
  self[146] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[146]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[141] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[141]
  l0._graph = self
  l0.Out = self.f_141_Out
  l0.MessageCompleted = DummyFunction
  self[138] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[138]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[131] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[131]
  l0._graph = self
  l0.Enabled = self.f_131_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_131_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[133] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[133]
  l0._graph = self
  self[142] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[142]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_142_PostOut
  self[34] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.MessageCompleted = DummyFunction
  self[43] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[144] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[144]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[159] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[159]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_159_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[49] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[145] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[145]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_145_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[134] = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self[134]
  l0._graph = self
  l0._DynamicAnchors = {Case = 12, Match = 12}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_134_Match_0
  l0.Match[1] = self.f_134_Match_1
  l0.Match[2] = self.f_134_Match_2
  l0.Match[3] = self.f_134_Match_3
  l0.Match[4] = self.f_134_Match_4
  l0.Match[5] = self.f_134_Match_5
  l0.Match[6] = self.f_134_Match_6
  l0.Match[7] = self.f_134_Match_7
  l0.Match[8] = self.f_134_Match_8
  l0.Match[9] = self.f_134_Match_9
  l0.Match[10] = self.f_134_Match_10
  l0.Match[11] = self.f_134_Match_11
  l0.None = DummyFunction
  self[127] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[127]
  l0._graph = self
  l0.Started = self.f_127_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
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
  l0 = self[28]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[28]
  l0:Input(0)
end
function export:f_1_RatingReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_6_Indestructable
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
function export:f_27_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372057856895684"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_27_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Disable()
end
function export:f_155_Disabled()
  local l0
  self = self._graph
  self:en_155()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_130_Out_0()
  local l0
  self = self._graph
  self:en_50()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_130_Out_1()
  local l0
  self = self._graph
  self:en_143()
  l0 = self[143]
  l0:Disable()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:False()
end
function export:f_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_137_Out
  l0:In()
end
function export:f_89_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895688"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0:Disable()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_67_Enabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_67_OnCheckpointReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  self.CPIndex = l0.CheckpointIndex
  l0 = self[134]
  l0.Integer = self.CPIndex
  l0.Case[0] = 0
  l0.Case[1] = 1
  l0.Case[2] = 2
  l0.Case[3] = 4
  l0.Case[4] = 5
  l0.Case[5] = 6
  l0.Case[6] = 7
  l0.Case[7] = 8
  l0.Case[8] = 10
  l0.Case[9] = 11
  l0.Case[10] = 15
  l0.Case[11] = 20
  l0:In()
end
function export:f_67_OnDestinationReached()
  local l0
  self = self._graph
  self:en_67()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0:Disable()
end
function export:f_124_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.LayerName = "Taxi15_Main"
  l0:Load()
end
function export:f_26_Out()
  local l0
  self = self._graph
  self:en_128()
  l0 = self[128]
  l0:Disable()
end
function export:f_32_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_29_Out_0
  l0.Out[1] = self.f_29_Out_1
  l0:In()
end
function export:f_158_Out_0()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_158_Out_1()
  local l0
  self = self._graph
  self:en_159()
  l0 = self[159]
  l0:Disable()
end
function export:f_126_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[126]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[141]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF150",
    item = "Objective_Jump",
    id = "630502"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_126_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[126]
  self.Liv = l0.Client
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_19_Disabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_128_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Add()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_6_Indestructable()
  local l0
  self = self._graph
  self:en_128()
  l0 = self[128]
  l0:Enable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[135]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_135_RewardShown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_117_Destructable
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
function export:f_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_124_Out
  l0:In()
end
function export:f_20_RatingReset()
  local l0
  self = self._graph
  l0 = self[127]
  l0.Config = "TaxiRideStrategyConfig.9223372048443777421"
  l0:Start()
end
function export:f_117_Destructable()
  local l0
  self = self._graph
  l0 = self[34]
  l0:ShowMissionComplete()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Client = self.Liv
  l0.DropOffIcon = "9223372048443779261"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
  l0:Enable()
end
function export:f_17_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_129_Disabled()
  local l0
  self = self._graph
  self:en_129()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_14_Disabled()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_4_ClientBailedOut()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:ClientBailedOut()
end
function export:f_4_ClientDeath()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:ClientDead()
end
function export:f_4_Disabled()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Remove()
end
function export:f_4_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:PlayerAbandonedVehicle()
end
function export:f_4_VehicleUnusable()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:VehicleUnusable()
end
function export:f_8_Added()
  local l0
  self = self._graph
  l0 = self[8]
  self.GIC_Users = l0.Target
  self:en_49()
  l0 = self[49]
  l0:Start()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.GIC_Users = l0.Target
end
function export:f_8_Removed()
  local l0
  self = self._graph
  l0 = self[8]
  self.GIC_Users = l0.Target
  self:en_49()
  l0 = self[49]
  l0:Stop()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  self:en_153()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  self:en_128()
  l0 = self[128]
  l0:Show()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_67()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0:Enable()
end
function export:f_132_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0:In()
end
function export:f_148_Out_0()
  local l0
  self = self._graph
  self:en_154()
  l0 = self[154]
  l0:Disable()
end
function export:f_148_Out_1()
  local l0
  self = self._graph
  self:en_155()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_70_Out_0()
  local l0
  self = self._graph
  self:en_129()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  self:en_132()
  l0 = self[132]
  l0:Disable()
end
function export:f_18_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_13_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_154_Enabled()
  local l0
  self = self._graph
  l0 = self[147]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645931"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_154_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_148_Out_0
  l0.Out[1] = self.f_148_Out_1
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[9]
  self.RacePartStarted = l0.Target
end
function export:f_9_SetFalse()
  local l0
  self = self._graph
  l0 = self[9]
  self.RacePartStarted = l0.Target
  l0 = self[126]
  l0.ClientClo = "9223372048443778029"
  l0.PickUpIcon = "9223372048443778035"
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
  l0:Enable()
end
function export:f_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self[9]
  self.RacePartStarted = l0.Target
end
function export:f_9_SetTrue()
  local l0
  self = self._graph
  l0 = self[9]
  self.RacePartStarted = l0.Target
end
function export:f_9_Toggled()
  local l0
  self = self._graph
  l0 = self[9]
  self.RacePartStarted = l0.Target
end
function export:f_143_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_130_Out_0
  l0.Out[1] = self.f_130_Out_1
  l0:In()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Disable()
end
function export:f_2_Unloaded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Succeed()
end
function export:f_93_Out()
  local l0
  self = self._graph
  self:en_120()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_29_Out_0()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  l0:Stop()
end
function export:f_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_115_Out
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_131_Enabled()
  local l0
  self = self._graph
  l0 = self[138]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645927"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_131_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_142_PostOut()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0:In()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_106_Out
  l0:In()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Taxi15_Main"
  l0:Unload()
end
function export:f_159_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_158_Out_0
  l0.Out[1] = self.f_158_Out_1
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[142]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  self:en_11()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Disable()
end
function export:f_120_Disabled()
  local l0
  self = self._graph
  self:en_120()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_153_Disabled()
  local l0
  self = self._graph
  self:en_153()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_50_Disabled()
  local l0
  self = self._graph
  self:en_50()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_16_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_145_TalkFinished()
  local l0
  self = self._graph
  l0 = self[146]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645930"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_134_Match_0()
  local l0
  self = self._graph
  self:en_143()
  l0 = self[143]
  l0:Enable()
end
function export:f_134_Match_1()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645926"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_134_Match_2()
  local l0
  self = self._graph
  self:en_159()
  l0 = self[159]
  l0:Enable()
end
function export:f_134_Match_3()
  local l0
  self = self._graph
  self:en_132()
  l0 = self[132]
  l0:Enable()
end
function export:f_134_Match_4()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Enable()
end
function export:f_134_Match_5()
  local l0
  self = self._graph
  l0 = self[144]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645928"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_134_Match_6()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_134_Match_7()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Enable()
end
function export:f_134_Match_8()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_134_Match_9()
  local l0
  self = self._graph
  l0 = self[145]
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645929"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0:Start()
end
function export:f_134_Match_10()
  local l0
  self = self._graph
  self:en_154()
  l0 = self[154]
  l0:Enable()
end
function export:f_134_Match_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_119_Out
  l0:In()
end
function export:f_127_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_93_Out
  l0:In()
end
function export:en_155()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895684"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_155_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_25()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895655"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_11()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383476"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_67()
  local l0
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0._graph = self
  l0.Enabled = self.f_67_Enabled
  l0.Disabled = DummyFunction
  l0.OnCheckpointReached = self.f_67_OnCheckpointReached
  l0.OnDestinationReached = self.f_67_OnDestinationReached
end
function export:en_19()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383500"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_19_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_128()
  local l0
  l0 = self[128]
  l0.PathOrStart = "9223372057856894086"
  l0.Destination = "9223372048443779261"
end
function export:en_129()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895661"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_129_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_14()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383495"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_14_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Client = self.Liv
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Liv
end
function export:en_132()
  local l0
  l0 = self[132]
  l0.Trigger = "9223372058036716476"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.Trigger = "9223372059922383502"
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Trigger = "9223372059922383490"
end
function export:en_154()
  local l0
  l0 = self[154]
  l0.Trigger = "9223372057856895681"
end
function export:en_143()
  local l0
  l0 = self[143]
  l0.Trigger = "9223372057856895639"
end
function export:en_131()
  local l0
  l0 = self[131]
  l0.Trigger = "9223372057856895665"
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi10_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464802"
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149902"
end
function export:en_159()
  local l0
  l0 = self[159]
  l0.Trigger = "9223372057856895649"
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
end
function export:en_120()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895634"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_120_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_153()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895679"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_153_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_50()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895637"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_50_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Trigger = "9223372059922383497"
end
_compilerVersion = 4
