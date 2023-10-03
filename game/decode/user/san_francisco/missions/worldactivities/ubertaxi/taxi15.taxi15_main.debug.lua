export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
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
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
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
  self._name = "Taxi15_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main"
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372048443777420"
  self.CPIndex = 0
  self.StuntRaceStarted = 0
  self.GIC_Users = {}
  self.Liv = nil
  self.RacePartStarted = 0
  self.box_TaxiRatingController_1 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_1
  l0._graph = self
  l0._name = "box_TaxiRatingController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|5274120"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_1_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MissionCheckpointReach_45 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_45
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|331479550"
  l0.Out = self.f_box_MissionCheckpointReach_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TaxiStrategiesController_89 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_89
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|411122522"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_89_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_DriveAndTalk_147 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_147
  l0._graph = self
  l0._name = "box_DriveAndTalk_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|437181965"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MultipleOR_28 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|509524739"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_TaxiRideReachDestinationMonitor_32 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_32
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|551311854"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_32_ClientDropOff
  self.box_TaxiRidePickUpController_126 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_126
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|616756091"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_126_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_126_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self.box_TaxiCheckpointController_128 = cbox:CreateBox("domino/System/TaxiCheckpointController.lua")
  l0 = self.box_TaxiCheckpointController_128
  l0._graph = self
  l0._name = "box_TaxiCheckpointController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|670497337"
  l0.Enabled = self.f_box_TaxiCheckpointController_128_Enabled
  l0.Disabled = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  self.box_TaxiRatingController_135 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_135
  l0._graph = self
  l0._name = "box_TaxiRatingController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|749158308"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_135_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiRatingController_20 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_20
  l0._graph = self
  l0._name = "box_TaxiRatingController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|868588404"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_20_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1100047173"
  l0.Loaded = self.f_box_MissionLayer_v2_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TaxiRideVehicleMonitor_4 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_4
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1277465731"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_4_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_4_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_4_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_4_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_4_PlayerAbandonedVehicle
  self.box_ListWriter_8 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_8
  l0._graph = self
  l0._name = "box_ListWriter_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1333133693"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_8_Added
  l0.Removed = self.f_box_ListWriter_8_Removed
  l0.Out = self.f_box_ListWriter_8_Out
  self.box_TriggerMonitor_v2_132 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_132
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1397478070"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_132_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_18 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_18
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1485128206"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_18_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1513779613"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_154 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_154
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1519086202"
  l0.Enabled = self.f_box_TriggerMonitor_v2_154_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_154_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_SetBoolean_v2_9 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_9
  l0._graph = self
  l0._name = "box_SetBoolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1542471640"
  l0.Out = self.f_box_SetBoolean_v2_9_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_9_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_9_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_9_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_9_SetFromBool
  self.box_TriggerMonitor_v2_143 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_143
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1564969427"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_143_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionController_v4_12 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_12
  l0._graph = self
  l0._name = "box_MissionController_v4_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1571196125"
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1579028655"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_2_Unloaded
  l0.Reseted = DummyFunction
  self.box_DriveAndTalk_146 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_146
  l0._graph = self
  l0._name = "box_DriveAndTalk_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1590742939"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_141 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_141
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1633675095"
  l0.Out = self.f_box_MissionMessageController_v3_141_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_138 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_138
  l0._graph = self
  l0._name = "box_DriveAndTalk_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1677381548"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TriggerMonitor_v2_131 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_131
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1746083029"
  l0.Enabled = self.f_box_TriggerMonitor_v2_131_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_131_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Taxi_AbortMission_133 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_133
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1763312341"
  self.box_CinematicPrep_142 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_142
  l0._graph = self
  l0._name = "box_CinematicPrep_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1767478199"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_142_PostOut
  self.box_MissionMessageController_v3_34 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_34
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1855004611"
  l0.Out = self.f_box_MissionMessageController_v3_34_Out
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_43 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_43
  l0._graph = self
  l0._name = "box_DriveAndTalk_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1855369203"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_144 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_144
  l0._graph = self
  l0._name = "box_DriveAndTalk_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1942877877"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_TriggerMonitor_v2_159 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_159
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1979103343"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_159_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_GameplayInteractionController_49 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_49
  l0._graph = self
  l0._name = "box_GameplayInteractionController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2083950507"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_TriggerMonitor_v2_16 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_16
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2112726470"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_DriveAndTalk_145 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_145
  l0._graph = self
  l0._name = "box_DriveAndTalk_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2119980102"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_145_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Integer_Select_134 = cbox:CreateBox("domino/System/IntegerSelect.lua")
  l0 = self.box_Integer_Select_134
  l0._graph = self
  l0._name = "box_Integer_Select_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2125678444"
  l0._DynamicAnchors = {Case = 12, Match = 12}
  l0.Out = DummyFunction
  l0.Match[0] = self.f_box_Integer_Select_134_Match_0
  l0.Match[1] = self.f_box_Integer_Select_134_Match_1
  l0.Match[2] = self.f_box_Integer_Select_134_Match_2
  l0.Match[3] = self.f_box_Integer_Select_134_Match_3
  l0.Match[4] = self.f_box_Integer_Select_134_Match_4
  l0.Match[5] = self.f_box_Integer_Select_134_Match_5
  l0.Match[6] = self.f_box_Integer_Select_134_Match_6
  l0.Match[7] = self.f_box_Integer_Select_134_Match_7
  l0.Match[8] = self.f_box_Integer_Select_134_Match_8
  l0.Match[9] = self.f_box_Integer_Select_134_Match_9
  l0.Match[10] = self.f_box_Integer_Select_134_Match_10
  l0.Match[11] = self.f_box_Integer_Select_134_Match_11
  l0.None = DummyFunction
  self.box_TaxiStrategiesController_127 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_127
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2138841302"
  l0.Started = self.f_box_TaxiStrategiesController_127_Started
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
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|677282898", "677282898", "Taxi15_Main", "CheckPoint_0", "box_MultipleOR_28.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1805264972", "1805264972", "Taxi15_Main", "In", "box_MultipleOR_28.Input", self, l0)
  l0:Input(0)
end
function export:f_box_TaxiRatingController_1_RatingReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|721440157"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = self.f_box_Vehicle_Controller_6_Indestructable
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
  l0 = self.box_TaxiRatingController_1
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1321443355", "1321443355", "Taxi15_Main", "box_TaxiRatingController_1.RatingReset", "box_Vehicle_Controller_6.SetAsIndestructable", l0, l1)
  l1:SetAsIndestructable()
end
function export:f_box_3DGPSController_27_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1843709429"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1838627146", "1838627146", "Taxi15_Main", "box_3DGPSController_27.Disabled", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372057856895684"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|42050044"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_27_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|261276060", "261276060", "Taxi15_Main", "box_Simple_Node_119.Out", "box_3DGPSController_27.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_3DGPSController_155_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_155()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|968310193", "968310193", "Taxi15_Main", "box_3DGPSController_155.Disabled", "box_3DGPSController_155.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_25_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_25()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1926738606", "1926738606", "Taxi15_Main", "box_3DGPSController_25.Disabled", "box_3DGPSController_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_50()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2109958064", "2109958064", "Taxi15_Main", "box_Ordered_Output_130.Out", "box_3DGPSController_50.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_143()
  l0 = self.box_TriggerMonitor_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|208242401", "208242401", "Taxi15_Main", "box_Ordered_Output_130.Out", "box_TriggerMonitor_v2_143.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_45
  l1 = self.box_SetBoolean_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1461558566", "1461558566", "Taxi15_Main", "box_MissionCheckpointReach_45.Out", "box_SetBoolean_v2_9.False", l0, l1)
  l1:False()
end
function export:f_box_Simple_Node_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|852154365"
  l0.Out = self.f_box_Simple_Node_137_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|343496650", "343496650", "Taxi15_Main", "box_Simple_Node_115.Out", "box_Simple_Node_137.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiStrategiesController_89_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895688"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|727344390"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_5_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0 = self.box_TaxiStrategiesController_89
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|490183518", "490183518", "Taxi15_Main", "box_TaxiStrategiesController_89.Stopped", "box_3DGPSController_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_14()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1288923292", "1288923292", "Taxi15_Main", "box_Ordered_Output_21.Out", "box_3DGPSController_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|822933148", "822933148", "Taxi15_Main", "box_Ordered_Output_21.Out", "box_TriggerMonitor_v2_13.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_3DGPSController_11_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_11()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|317504121", "317504121", "Taxi15_Main", "box_3DGPSController_11.Disabled", "box_3DGPSController_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiCheckpointMonitor_67_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_20
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1138243779", "1138243779", "Taxi15_Main", "box_TaxiCheckpointMonitor_67.Enabled", "box_TaxiRatingController_20.ResetRating", clone, l0)
  l0:ResetRating()
end
function export:f_box_TaxiCheckpointMonitor_67_OnCheckpointReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  self.CPIndex = l0.CheckpointIndex
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Integer_Select_134
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2064903780", "2064903780", "Taxi15_Main", "box_TaxiCheckpointMonitor_67.OnCheckpointReached", "box_Integer_Select_134.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiCheckpointMonitor_67_OnDestinationReached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointMonitor_67()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1662000799", "1662000799", "Taxi15_Main", "box_TaxiCheckpointMonitor_67.OnDestinationReached", "box_TaxiCheckpointMonitor_67.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_124_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_4()
  l0 = self.box_TaxiRideVehicleMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|977335733", "977335733", "Taxi15_Main", "box_Simple_Node_124.Out", "box_TaxiRideVehicleMonitor_4.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "Taxi15_Main"
  l0 = self.box_MultipleOR_28
  l1 = self.box_MissionLayer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|920188587", "920188587", "Taxi15_Main", "box_MultipleOR_28.Out", "box_MissionLayer_v2_17.Load", l0, l1)
  l1:Load()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_128()
  l0 = self.box_TaxiCheckpointController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2124609347", "2124609347", "Taxi15_Main", "box_Simple_Node_26.Out", "box_TaxiCheckpointController_128.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_32_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1661948453"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|316756454", "316756454", "Taxi15_Main", "box_TaxiRideReachDestinationMonitor_32.ClientDropOff", "box_Ordered_Output_29.In", l0, l1)
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
  self:OnEnter_box_3DGPSController_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|610981992", "610981992", "Taxi15_Main", "box_Ordered_Output_158.Out", "box_3DGPSController_25.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_158_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_159()
  l0 = self.box_TriggerMonitor_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|96164843", "96164843", "Taxi15_Main", "box_Ordered_Output_158.Out", "box_TriggerMonitor_v2_159.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_126_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_126
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_MissionMessageController_v3_141
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF150",
    item = "Objective_Jump",
    id = "630502"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_TaxiRidePickUpController_126
  l1 = self.box_MissionMessageController_v3_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1671877037", "1671877037", "Taxi15_Main", "box_TaxiRidePickUpController_126.ClientPickedUp", "box_MissionMessageController_v3_141.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TaxiRidePickUpController_126_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_126
  self.Liv = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_4()
  l1 = self.box_TaxiRideVehicleMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|786938743", "786938743", "Taxi15_Main", "box_TaxiRidePickUpController_126.ClientSpawned", "box_TaxiRideVehicleMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_3DGPSController_19_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_19()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|50659839", "50659839", "Taxi15_Main", "box_3DGPSController_19.Disabled", "box_3DGPSController_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiCheckpointController_128_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1351247015"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_TaxiCheckpointController_128
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1781465759", "1781465759", "Taxi15_Main", "box_TaxiCheckpointController_128.Enabled", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ListWriter_8()
  l0 = self.box_ListWriter_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1897564192", "1897564192", "Taxi15_Main", "box_Ordered_Output_10.Out", "box_ListWriter_8.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_1
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1278022312", "1278022312", "Taxi15_Main", "box_Ordered_Output_10.Out", "box_TaxiRatingController_1.ResetRating", clone, l0)
  l0:ResetRating()
end
function export:f_box_Vehicle_Controller_6_Indestructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_128()
  l0 = self.box_TaxiCheckpointController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|996869676", "996869676", "Taxi15_Main", "box_Vehicle_Controller_6.Indestructable", "box_TaxiCheckpointController_128.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRatingController_135
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|323966875", "323966875", "Taxi15_Main", "box_3DGPSController_5.Disabled", "box_TaxiRatingController_135.ShowReward", clone, l0)
  l0:ShowReward()
end
function export:f_box_TaxiRatingController_135_RewardShown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PlayerVehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|874614215"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = self.f_box_Vehicle_Controller_117_Destructable
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
  l0 = self.box_TaxiRatingController_135
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|287286322", "287286322", "Taxi15_Main", "box_TaxiRatingController_135.RewardShown", "box_Vehicle_Controller_117.SetAsDestructable", l0, l1)
  l1:SetAsDestructable()
end
function export:f_box_Simple_Node_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|505907749"
  l0.Out = self.f_box_Simple_Node_124_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2099743610", "2099743610", "Taxi15_Main", "box_Simple_Node_137.Out", "box_Simple_Node_124.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRatingController_20_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_127
  l0.Config = "TaxiRideStrategyConfig.9223372048443777421"
  l0 = self.box_TaxiRatingController_20
  l1 = self.box_TaxiStrategiesController_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1424970715", "1424970715", "Taxi15_Main", "box_TaxiRatingController_20.RatingReset", "box_TaxiStrategiesController_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_Vehicle_Controller_117_Destructable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1026581317", "1026581317", "Taxi15_Main", "box_Vehicle_Controller_117.Destructable", "box_MissionMessageController_v3_34.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_Simple_Node_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_32
  l0.Client = self.Liv
  l0.DropOffIcon = "9223372048443779261"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|420024675", "420024675", "Taxi15_Main", "box_Simple_Node_104.Out", "box_TaxiRideReachDestinationMonitor_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_17_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2010573804"
  l0.Out = self.f_box_Get_Player_ID_15_Out
  l0 = self.box_MissionLayer_v2_17
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1266016775", "1266016775", "Taxi15_Main", "box_MissionLayer_v2_17.Loaded", "box_Get_Player_ID_15.In", l0, l1)
  l1:In()
end
function export:f_box_3DGPSController_129_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_129()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1916463594", "1916463594", "Taxi15_Main", "box_3DGPSController_129.Disabled", "box_3DGPSController_129.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_14_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_14()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1542787168", "1542787168", "Taxi15_Main", "box_3DGPSController_14.Disabled", "box_3DGPSController_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRideVehicleMonitor_4_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_133()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|61145625", "61145625", "Taxi15_Main", "box_TaxiRideVehicleMonitor_4.ClientBailedOut", "box_Taxi_AbortMission_133.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_4_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_133()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1422733058", "1422733058", "Taxi15_Main", "box_TaxiRideVehicleMonitor_4.ClientDeath", "box_Taxi_AbortMission_133.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_4_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_8()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_ListWriter_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1624089749", "1624089749", "Taxi15_Main", "box_TaxiRideVehicleMonitor_4.Disabled", "box_ListWriter_8.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_4_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_133()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|786547018", "786547018", "Taxi15_Main", "box_TaxiRideVehicleMonitor_4.PlayerAbandonedVehicle", "box_Taxi_AbortMission_133.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_4_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_133()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|102370045", "102370045", "Taxi15_Main", "box_TaxiRideVehicleMonitor_4.VehicleUnusable", "box_Taxi_AbortMission_133.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_ListWriter_8_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_49()
  l1 = self.box_GameplayInteractionController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1747569039", "1747569039", "Taxi15_Main", "box_ListWriter_8.Added", "box_GameplayInteractionController_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_8_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_8
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_8_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_8
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_49()
  l1 = self.box_GameplayInteractionController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1348601615", "1348601615", "Taxi15_Main", "box_ListWriter_8.Removed", "box_GameplayInteractionController_49.Stop", l0, l1)
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
  self:OnEnter_box_3DGPSController_153()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1149695290", "1149695290", "Taxi15_Main", "box_Ordered_Output_23.Out", "box_3DGPSController_153.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_18()
  l0 = self.box_TriggerMonitor_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1424328897", "1424328897", "Taxi15_Main", "box_Ordered_Output_23.Out", "box_TriggerMonitor_v2_18.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointController_128()
  l0 = self.box_TaxiCheckpointController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|717436597", "717436597", "Taxi15_Main", "box_Ordered_Output_31.Out", "box_TaxiCheckpointController_128.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiCheckpointMonitor_67()
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|825645200", "825645200", "Taxi15_Main", "box_Ordered_Output_31.Out", "box_TaxiCheckpointMonitor_67.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_132_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1482248624"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_TriggerMonitor_v2_132
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1301894299", "1301894299", "Taxi15_Main", "box_TriggerMonitor_v2_132.Enter", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_148_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_154()
  l0 = self.box_TriggerMonitor_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|472871589", "472871589", "Taxi15_Main", "box_Ordered_Output_148.Out", "box_TriggerMonitor_v2_154.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_148_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_155()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1725536775", "1725536775", "Taxi15_Main", "box_Ordered_Output_148.Out", "box_3DGPSController_155.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_129()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1315826394", "1315826394", "Taxi15_Main", "box_Ordered_Output_70.Out", "box_3DGPSController_129.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_132()
  l0 = self.box_TriggerMonitor_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1265602482", "1265602482", "Taxi15_Main", "box_Ordered_Output_70.Out", "box_TriggerMonitor_v2_132.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_18_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1336967044"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_TriggerMonitor_v2_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1245066396", "1245066396", "Taxi15_Main", "box_TriggerMonitor_v2_18.Enter", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|450611218"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_TriggerMonitor_v2_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|271361608", "271361608", "Taxi15_Main", "box_TriggerMonitor_v2_13.Enter", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_154_Enabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_147
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645931"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_TriggerMonitor_v2_154
  l1 = self.box_DriveAndTalk_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2016507927", "2016507927", "Taxi15_Main", "box_TriggerMonitor_v2_154.Enabled", "box_DriveAndTalk_147.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_154_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1430671271"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_148_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_148_Out_1
  l0 = self.box_TriggerMonitor_v2_154
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|399485855", "399485855", "Taxi15_Main", "box_TriggerMonitor_v2_154.Enter", "box_Ordered_Output_148.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_9_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.RacePartStarted = l0.Target
  l0 = self.box_TaxiRidePickUpController_126
  l0.ClientClo = "9223372048443778029"
  l0.PickUpIcon = "9223372048443778035"
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
  l0 = self.box_SetBoolean_v2_9
  l1 = self.box_TaxiRidePickUpController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|995757928", "995757928", "Taxi15_Main", "box_SetBoolean_v2_9.SetFalse", "box_TaxiRidePickUpController_126.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_9_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_9_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.RacePartStarted = l0.Target
end
function export:f_box_SetBoolean_v2_9_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_9
  self.RacePartStarted = l0.Target
end
function export:f_box_TriggerMonitor_v2_143_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|169430740"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_130_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_130_Out_1
  l0 = self.box_TriggerMonitor_v2_143
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1385225209", "1385225209", "Taxi15_Main", "box_TriggerMonitor_v2_143.Enter", "box_Ordered_Output_130.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_19()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1987216374", "1987216374", "Taxi15_Main", "box_Ordered_Output_22.Out", "box_3DGPSController_19.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_16()
  l0 = self.box_TriggerMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1093755030", "1093755030", "Taxi15_Main", "box_Ordered_Output_22.Out", "box_TriggerMonitor_v2_16.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_2_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionController_v4_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|306411235", "306411235", "Taxi15_Main", "box_MissionLayer_v2_2.Unloaded", "box_MissionController_v4_12.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Simple_Node_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_120()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2027464536", "2027464536", "Taxi15_Main", "box_Simple_Node_93.Out", "box_3DGPSController_120.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1728789693"
  l0.Out = self.f_box_Simple_Node_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|687976735", "687976735", "Taxi15_Main", "box_Simple_Node_106.Out", "box_Simple_Node_44.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_141_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|707880227"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_MissionMessageController_v3_141
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|410210599", "410210599", "Taxi15_Main", "box_MissionMessageController_v3_141.Out", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_89
  l0.Config = "TaxiRideStrategyConfig.9223372047360464802"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1055520662", "1055520662", "Taxi15_Main", "box_Ordered_Output_29.Out", "box_TaxiStrategiesController_89.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|351007773"
  l0.Out = self.f_box_Simple_Node_115_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|651225318", "651225318", "Taxi15_Main", "box_Ordered_Output_29.Out", "box_Simple_Node_115.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|509533039"
  l0.Out = self.f_box_Simple_Node_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|946037238", "946037238", "Taxi15_Main", "box_Simple_Node_44.Out", "box_Simple_Node_26.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_131_Enabled()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_138
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645927"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_TriggerMonitor_v2_131
  l1 = self.box_DriveAndTalk_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2112808950", "2112808950", "Taxi15_Main", "box_TriggerMonitor_v2_131.Enabled", "box_DriveAndTalk_138.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_131_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2078948902"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_TriggerMonitor_v2_131
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2121738874", "2121738874", "Taxi15_Main", "box_TriggerMonitor_v2_131.Enter", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_142_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_45
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_142
  l1 = self.box_MissionCheckpointReach_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1852636021", "1852636021", "Taxi15_Main", "box_CinematicPrep_142.PostOut", "box_MissionCheckpointReach_45.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1010515476"
  l0.Out = self.f_box_Simple_Node_104_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|115381819", "115381819", "Taxi15_Main", "box_Ordered_Output_3.Out", "box_Simple_Node_104.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1625938836"
  l0.Out = self.f_box_Simple_Node_106_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|441008457", "441008457", "Taxi15_Main", "box_Ordered_Output_3.Out", "box_Simple_Node_106.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Taxi15_Main"
  l0 = self.box_MissionMessageController_v3_34
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|141078430", "141078430", "Taxi15_Main", "box_MissionMessageController_v3_34.Out", "box_MissionLayer_v2_2.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TriggerMonitor_v2_159_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|577458922"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_158_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_158_Out_1
  l0 = self.box_TriggerMonitor_v2_159
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|170543922", "170543922", "Taxi15_Main", "box_TriggerMonitor_v2_159.Enter", "box_Ordered_Output_158.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_142
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1942783652", "1942783652", "Taxi15_Main", "box_Get_Player_ID_15.Out", "box_CinematicPrep_142.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_11()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1913643867", "1913643867", "Taxi15_Main", "box_Ordered_Output_42.Out", "box_3DGPSController_11.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_131()
  l0 = self.box_TriggerMonitor_v2_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|196167692", "196167692", "Taxi15_Main", "box_Ordered_Output_42.Out", "box_TriggerMonitor_v2_131.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_3DGPSController_120_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_120()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1137559688", "1137559688", "Taxi15_Main", "box_3DGPSController_120.Disabled", "box_3DGPSController_120.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_153_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_153()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|508742493", "508742493", "Taxi15_Main", "box_3DGPSController_153.Disabled", "box_3DGPSController_153.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_3DGPSController_50_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_50()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1620566252", "1620566252", "Taxi15_Main", "box_3DGPSController_50.Disabled", "box_3DGPSController_50.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_16_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1568060337"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_TriggerMonitor_v2_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|595879922", "595879922", "Taxi15_Main", "box_TriggerMonitor_v2_16.Enter", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_145_TalkFinished()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_146
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645930"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_DriveAndTalk_145
  l1 = self.box_DriveAndTalk_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1288314428", "1288314428", "Taxi15_Main", "box_DriveAndTalk_145.TalkFinished", "box_DriveAndTalk_146.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_134_Match_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_143()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2093663456", "2093663456", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_143.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_1()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_43
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645926"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Integer_Select_134
  l1 = self.box_DriveAndTalk_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1500408853", "1500408853", "Taxi15_Main", "box_Integer_Select_134.Match", "box_DriveAndTalk_43.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_134_Match_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_159()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|569647387", "569647387", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_159.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_3()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_132()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1626185605", "1626185605", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_132.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_4()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_131()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1261373263", "1261373263", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_131.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_5()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_144
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645928"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Integer_Select_134
  l1 = self.box_DriveAndTalk_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1811144763", "1811144763", "Taxi15_Main", "box_Integer_Select_134.Match", "box_DriveAndTalk_144.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_134_Match_6()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|488194303", "488194303", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_7()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_16()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|917299194", "917299194", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_8()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_18()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|587406991", "587406991", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_9()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'DriveAndTalk')-- Comment: I'll record the whole ride. So don't be camera shy.Uhm. Okay")
  l0 = self.box_DriveAndTalk_145
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372052661645929"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
  l0 = self.box_Integer_Select_134
  l1 = self.box_DriveAndTalk_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|291572764", "291572764", "Taxi15_Main", "box_Integer_Select_134.Match", "box_DriveAndTalk_145.Start", l0, l1)
  l1:Start()
end
function export:f_box_Integer_Select_134_Match_10()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_154()
  l0 = self.box_Integer_Select_134
  l1 = self.box_TriggerMonitor_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|981766235", "981766235", "Taxi15_Main", "box_Integer_Select_134.Match", "box_TriggerMonitor_v2_154.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Select_134_Match_11()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|110046958"
  l0.Out = self.f_box_Simple_Node_119_Out
  l0 = self.box_Integer_Select_134
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|205809569", "205809569", "Taxi15_Main", "box_Integer_Select_134.Match", "box_Simple_Node_119.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiStrategiesController_127_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1583869514"
  l0.Out = self.f_box_Simple_Node_93_Out
  l0 = self.box_TaxiStrategiesController_127
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|307813628", "307813628", "Taxi15_Main", "box_TaxiStrategiesController_127.Started", "box_Simple_Node_93.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_3DGPSController_155()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895684"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|146806015"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_155_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_25()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895655"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|147326412"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_25_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_11()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383476"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|467227534"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_11_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TaxiCheckpointMonitor_67()
  local l0
  l0 = Boxes[PathID("domino/System/TaxiCheckpointMonitor.lua")]
  l0._graph = self
  l0._name = "box_TaxiCheckpointMonitor_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|468189535"
  l0.Enabled = self.f_box_TaxiCheckpointMonitor_67_Enabled
  l0.Disabled = DummyFunction
  l0.OnCheckpointReached = self.f_box_TaxiCheckpointMonitor_67_OnCheckpointReached
  l0.OnDestinationReached = self.f_box_TaxiCheckpointMonitor_67_OnDestinationReached
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_3DGPSController_19()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383500"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|618214898"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_19_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TaxiCheckpointController_128()
  local l0
  l0 = self.box_TaxiCheckpointController_128
  l0.PathOrStart = "9223372057856894086"
  l0.Destination = "9223372048443779261"
end
function export:OnEnter_box_3DGPSController_129()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895661"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1175750853"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_129_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_14()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372059922383495"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|1229827340"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_14_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TaxiRideVehicleMonitor_4()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_4
  l0.Client = self.Liv
  l0.Config = "TaxiRideGameplayBrick.9223372057515645989"
end
function export:OnEnter_box_ListWriter_8()
  local l0
  l0 = self.box_ListWriter_8
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Liv
end
function export:OnEnter_box_TriggerMonitor_v2_132()
  local l0
  l0 = self.box_TriggerMonitor_v2_132
  l0.Trigger = "9223372058036716476"
end
function export:OnEnter_box_TriggerMonitor_v2_18()
  local l0
  l0 = self.box_TriggerMonitor_v2_18
  l0.Trigger = "9223372059922383502"
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372059922383490"
end
function export:OnEnter_box_TriggerMonitor_v2_154()
  local l0
  l0 = self.box_TriggerMonitor_v2_154
  l0.Trigger = "9223372057856895681"
end
function export:OnEnter_box_TriggerMonitor_v2_143()
  local l0
  l0 = self.box_TriggerMonitor_v2_143
  l0.Trigger = "9223372057856895639"
end
function export:OnEnter_box_TriggerMonitor_v2_131()
  local l0
  l0 = self.box_TriggerMonitor_v2_131
  l0.Trigger = "9223372057856895665"
end
function export:OnEnter_box_Taxi_AbortMission_133()
  local l0
  l0 = self.box_Taxi_AbortMission_133
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi10_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360464802"
  l0.Pawn1 = self.Liv
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149902"
end
function export:OnEnter_box_TriggerMonitor_v2_159()
  local l0
  l0 = self.box_TriggerMonitor_v2_159
  l0.Trigger = "9223372057856895649"
end
function export:OnEnter_box_GameplayInteractionController_49()
  local l0
  l0 = self.box_GameplayInteractionController_49
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372052209434196"
end
function export:OnEnter_box_3DGPSController_120()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895634"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2087843930"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_120_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_153()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895679"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2091359489"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_153_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_3DGPSController_50()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = nil
  l0.Path = "9223372057856895637"
  l0.Index = nil
  l0.PathType = "Custom"
  l0._graph = self
  l0._name = "box_3DGPSController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi15.domino|@Taxi15_Main|2100018130"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_3DGPSController_50_Disabled
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_16()
  local l0
  l0 = self.box_TriggerMonitor_v2_16
  l0.Trigger = "9223372059922383497"
end
_compilerVersion = 4
