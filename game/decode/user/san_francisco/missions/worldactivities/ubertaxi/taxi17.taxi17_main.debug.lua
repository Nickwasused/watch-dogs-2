export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi17_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main"
  self.PlayerEntity = nil
  self.Client = nil
  self.PlayerVehicle = nil
  self.MissionLayer = "Taxi17_Main"
  self.Mission = "MissionList.9223372047771319827"
  self.CPIndex = 0
  self.GIC_Users = {}
  self.box_DriveAndTalk_14 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_14
  l0._graph = self
  l0._name = "box_DriveAndTalk_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|38404260"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionLayer_v2_16 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_16
  l0._graph = self
  l0._name = "box_MissionLayer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|58814973"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_16_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|142778158"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_DriveAndTalk_13 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_13
  l0._graph = self
  l0._name = "box_DriveAndTalk_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|193346533"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_13_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_13_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|221076383"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_44 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_44
  l0._graph = self
  l0._name = "box_ListWriter_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|254545951"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_44_Added
  l0.Removed = self.f_box_ListWriter_44_Removed
  l0.Out = self.f_box_ListWriter_44_Out
  self.box_MissionController_v4_24 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_24
  l0._graph = self
  l0._name = "box_MissionController_v4_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|446264482"
  self.box_TaxiRatingController_33 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_33
  l0._graph = self
  l0._name = "box_TaxiRatingController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|533059405"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_33_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_TaxiStrategiesController_26 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_26
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|589774928"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_26_Paused
  l0.Resumed = DummyFunction
  self.box_TaxiRideVehicleMonitor_4 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_4
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|594696650"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_4_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_4_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_4_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_4_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_4_PlayerAbandonedVehicle
  self.box_MissionMessageController_v3_32 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_32
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|903697002"
  l0.Out = self.f_box_MissionMessageController_v3_32_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRidePickUpController_30 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_30
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|993709314"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_30_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_30_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_30_ClientConversationFinised
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1100407601"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_20_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRatingController_5 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_5
  l0._graph = self
  l0._name = "box_TaxiRatingController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1312794213"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_5_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_DriveAndTalk_11 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_11
  l0._graph = self
  l0._name = "box_DriveAndTalk_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1348634086"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_DriveAndTalk_11_Stopped
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_11_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SnapAndBind_7 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_7
  l0._graph = self
  l0._name = "box_SnapAndBind_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1442096561"
  l0.Attached = self.f_box_SnapAndBind_7_Attached
  self.box_TaxiStrategiesController_41 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_41
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1788965434"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MissionLayer_v2_15 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_15
  l0._graph = self
  l0._name = "box_MissionLayer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1829441122"
  l0.Loaded = self.f_box_MissionLayer_v2_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1834434032"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_TaxiRideReachDestinationMonitor_17 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_17
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1866647627"
  l0.Enabled = self.f_box_TaxiRideReachDestinationMonitor_17_Enabled
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_17_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_17_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_36 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_36
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1879122713"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_36_ClientDropOff
  self.box_TaxiStrategiesController_28 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_28
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1880180931"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_28_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Taxi_AbortMission_2 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_2
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1894848430"
  self.box_GameplayInteractionController_25 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_25
  l0._graph = self
  l0._name = "box_GameplayInteractionController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2045386963"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2112763665"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|852683037", "852683037", "Taxi17_Main", "CheckPoint_0", "box_MultipleOR_10.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1228006241", "1228006241", "Taxi17_Main", "In", "box_MultipleOR_10.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_16_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_16
  l1 = self.box_MissionController_v4_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|959339671", "959339671", "Taxi17_Main", "box_MissionLayer_v2_16.Unloaded", "box_MissionController_v4_24.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_8
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|685446422", "685446422", "Taxi17_Main", "box_CinematicPrep_8.PostOut", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_DriveAndTalk_13_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_14()
  l0 = self.box_DriveAndTalk_13
  l1 = self.box_DriveAndTalk_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|384359489", "384359489", "Taxi17_Main", "box_DriveAndTalk_13.Stopped", "box_DriveAndTalk_14.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_13_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_14()
  l0 = self.box_DriveAndTalk_13
  l1 = self.box_DriveAndTalk_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|751982120", "751982120", "Taxi17_Main", "box_DriveAndTalk_13.TalkFinished", "box_DriveAndTalk_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_5
  l0.MissionName = self.Mission
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_TaxiRatingController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1041523944", "1041523944", "Taxi17_Main", "box_MissionMessageController_v3_1.Out", "box_TaxiRatingController_5.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_ListWriter_44_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_44
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_25()
  l1 = self.box_GameplayInteractionController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1452898119", "1452898119", "Taxi17_Main", "box_ListWriter_44.Added", "box_GameplayInteractionController_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_44_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_44
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_44_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_44
  self.GIC_Users = l0.Target
end
function export:f_box_TaxiRatingController_33_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_28
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  l0 = self.box_TaxiRatingController_33
  l1 = self.box_TaxiStrategiesController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|712623614", "712623614", "Taxi17_Main", "box_TaxiRatingController_33.RewardShown", "box_TaxiStrategiesController_28.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiStrategiesController_26_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_33
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_26
  l1 = self.box_TaxiRatingController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2103716508", "2103716508", "Taxi17_Main", "box_TaxiStrategiesController_26.Paused", "box_TaxiRatingController_33.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_TaxiRideVehicleMonitor_4_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_2()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1604456258", "1604456258", "Taxi17_Main", "box_TaxiRideVehicleMonitor_4.ClientBailedOut", "box_Taxi_AbortMission_2.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_4_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_2()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1728967868", "1728967868", "Taxi17_Main", "box_TaxiRideVehicleMonitor_4.ClientDeath", "box_Taxi_AbortMission_2.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1448917589"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|487992723", "487992723", "Taxi17_Main", "box_TaxiRideVehicleMonitor_4.Disabled", "box_Simple_Node_3.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideVehicleMonitor_4_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_2()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2039643404", "2039643404", "Taxi17_Main", "box_TaxiRideVehicleMonitor_4.PlayerAbandonedVehicle", "box_Taxi_AbortMission_2.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_4_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_2()
  l0 = self.box_TaxiRideVehicleMonitor_4
  l1 = self.box_Taxi_AbortMission_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2109494481", "2109494481", "Taxi17_Main", "box_TaxiRideVehicleMonitor_4.VehicleUnusable", "box_Taxi_AbortMission_2.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_MissionMessageController_v3_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_16
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_v3_32
  l1 = self.box_MissionLayer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1988972241", "1988972241", "Taxi17_Main", "box_MissionMessageController_v3_32.Out", "box_MissionLayer_v2_16.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TaxiRidePickUpController_30_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_30()
  l0 = self.box_TaxiRidePickUpController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|845016405", "845016405", "Taxi17_Main", "box_TaxiRidePickUpController_30.ClientConversationFinised", "box_TaxiRidePickUpController_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_30_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.PlayerVehicle = l0.Vehicle
  self:OnEnter_box_TaxiRideReachDestinationMonitor_17()
  l1 = self.box_TaxiRideReachDestinationMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|429638807", "429638807", "Taxi17_Main", "box_TaxiRidePickUpController_30.ClientPickedUp", "box_TaxiRideReachDestinationMonitor_17.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_30_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.Client = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_4()
  l1 = self.box_TaxiRideVehicleMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1732777700", "1732777700", "Taxi17_Main", "box_TaxiRidePickUpController_30.ClientSpawned", "box_TaxiRideVehicleMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_30_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_20
  l0.Seconds = 7
  l0 = self.box_TaxiRidePickUpController_30
  l1 = self.box_Timer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1614354788", "1614354788", "Taxi17_Main", "box_TaxiRidePickUpController_30.Disabled", "box_Timer_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_26
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1235655073", "1235655073", "Taxi17_Main", "box_Simple_Node_12.Out", "box_TaxiStrategiesController_26.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF170",
    item = "Objective_Drive_Slowly",
    id = "630506"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|128749708", "128749708", "Taxi17_Main", "box_Simple_Node_6.Out", "box_MissionMessageController_v3_1.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_7
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047771319829"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1293393857", "1293393857", "Taxi17_Main", "box_Ordered_Output_18.Out", "box_SnapAndBind_7.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DriveAndTalk_11()
  l0 = self.box_DriveAndTalk_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|109009595", "109009595", "Taxi17_Main", "box_Ordered_Output_18.Out", "box_DriveAndTalk_11.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_25()
  l0 = self.box_GameplayInteractionController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1969167654", "1969167654", "Taxi17_Main", "box_Ordered_Output_18.Out", "box_GameplayInteractionController_25.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_20_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_44
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Client
  l0 = self.box_Timer_v2_20
  l1 = self.box_ListWriter_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1070985616", "1070985616", "Taxi17_Main", "box_Timer_v2_20.Started", "box_ListWriter_44.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_11()
  l0 = self.box_Timer_v2_20
  l1 = self.box_DriveAndTalk_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|661828008", "661828008", "Taxi17_Main", "box_Timer_v2_20.TimeElapsed", "box_DriveAndTalk_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRatingController_5_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_41
  l0.Config = "TaxiRideStrategyConfig.9223372061887226738"
  l0 = self.box_TaxiRatingController_5
  l1 = self.box_TaxiStrategiesController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1930735410", "1930735410", "Taxi17_Main", "box_TaxiRatingController_5.RatingReset", "box_TaxiStrategiesController_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_11_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_13()
  l0 = self.box_DriveAndTalk_11
  l1 = self.box_DriveAndTalk_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2140042153", "2140042153", "Taxi17_Main", "box_DriveAndTalk_11.Stopped", "box_DriveAndTalk_13.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_DriveAndTalk_11_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_13()
  l0 = self.box_DriveAndTalk_11
  l1 = self.box_DriveAndTalk_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1896432049", "1896432049", "Taxi17_Main", "box_DriveAndTalk_11.TalkFinished", "box_DriveAndTalk_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_SnapAndBind_7_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRideReachDestinationMonitor_36
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
  l0 = self.box_SnapAndBind_7
  l1 = self.box_TaxiRideReachDestinationMonitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|353741790", "353741790", "Taxi17_Main", "box_SnapAndBind_7.Attached", "box_TaxiRideReachDestinationMonitor_36.Enable", l0, l1)
  l1:Enable()
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
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1064681691"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1641687497", "1641687497", "Taxi17_Main", "box_Simple_Node_3.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_15_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2102012567"
  l0.Out = self.f_box_Get_Player_ID_22_Out
  l0 = self.box_MissionLayer_v2_15
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1939552863", "1939552863", "Taxi17_Main", "box_MissionLayer_v2_15.Loaded", "box_Get_Player_ID_22.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_15
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionLayer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1470992579", "1470992579", "Taxi17_Main", "box_MultipleOR_10.Out", "box_MissionLayer_v2_15.Load", l0, l1)
  l1:Load()
end
function export:f_box_TaxiRideReachDestinationMonitor_17_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1096360285"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  l0 = self.box_TaxiRideReachDestinationMonitor_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1327431484", "1327431484", "Taxi17_Main", "box_TaxiRideReachDestinationMonitor_17.Disabled", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_17_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1095756829"
  l0.Out = self.f_box_Simple_Node_6_Out
  l0 = self.box_TaxiRideReachDestinationMonitor_17
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1059243911", "1059243911", "Taxi17_Main", "box_TaxiRideReachDestinationMonitor_17.Enabled", "box_Simple_Node_6.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_17_ReachDestination()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRideReachDestinationMonitor_17()
  l0 = self.box_TaxiRideReachDestinationMonitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|447703734", "447703734", "Taxi17_Main", "box_TaxiRideReachDestinationMonitor_17.ReachDestination", "box_TaxiRideReachDestinationMonitor_17.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRideReachDestinationMonitor_36_ClientDropOff()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRideVehicleMonitor_4()
  l0 = self.box_TaxiRideReachDestinationMonitor_36
  l1 = self.box_TaxiRideVehicleMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|2080010626", "2080010626", "Taxi17_Main", "box_TaxiRideReachDestinationMonitor_36.ClientDropOff", "box_TaxiRideVehicleMonitor_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiStrategiesController_28_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_28
  l1 = self.box_MissionMessageController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1635578404", "1635578404", "Taxi17_Main", "box_TaxiStrategiesController_28.Stopped", "box_MissionMessageController_v3_32.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Get_Player_ID_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1395689393", "1395689393", "Taxi17_Main", "box_Get_Player_ID_22.Out", "box_CinematicPrep_8.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_30()
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_TaxiRidePickUpController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi17.domino|@Taxi17_Main|1120751208", "1120751208", "Taxi17_Main", "box_MissionCheckpointReach_9.Out", "box_TaxiRidePickUpController_30.Enable", l0, l1)
  l1:Enable()
end
function export:OnEnter_box_DriveAndTalk_14()
  local l0
  l0 = self.box_DriveAndTalk_14
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149925"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_13()
  local l0
  l0 = self.box_DriveAndTalk_13
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149924"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_TaxiRideVehicleMonitor_4()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_4
  l0.Client = self.Client
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
end
function export:OnEnter_box_TaxiRidePickUpController_30()
  local l0
  l0 = self.box_TaxiRidePickUpController_30
  l0.ClientClo = "9223372047771319805"
  l0.PickUpIcon = "9223372047771319802"
  l0.Config = "TaxiRideGameplayBrick.9223372057720086784"
end
function export:OnEnter_box_DriveAndTalk_11()
  local l0
  l0 = self.box_DriveAndTalk_11
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149923"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_17()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_17
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
function export:OnEnter_box_Taxi_AbortMission_2()
  local l0
  l0 = self.box_Taxi_AbortMission_2
  l0.MissionName = self.Mission
  l0.LayerName = self.MissionLayer
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372061887226738"
  l0.Pawn1 = self.Client
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149926"
end
function export:OnEnter_box_GameplayInteractionController_25()
  local l0
  l0 = self.box_GameplayInteractionController_25
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372059873283181"
end
_compilerVersion = 4
