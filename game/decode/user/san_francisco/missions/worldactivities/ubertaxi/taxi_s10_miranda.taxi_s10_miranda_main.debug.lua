export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi_S10_Miranda_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main"
  self.PlayerEntity = nil
  self.TalkStarted = 0
  self.MirandaEntity = nil
  self.vehiclePlayer = nil
  self.PlayerVehicle = nil
  self.MirandaTemp = nil
  self.Vehicle_Icon = nil
  self.DestReached = 0
  self.VehicleState = 4
  self.EnterCarFirstTime = 0
  self.LastVehiclePlayer = nil
  self.InFelony = 0
  self.TalkersDT = {}
  self.MirandaDestinationReached = 0
  self.InVehicle = 0
  self.box_CinematicPrep_29 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_29
  l0._graph = self
  l0._name = "box_CinematicPrep_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|16028867"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_29_PostOut
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|124347163"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_9_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionController_v4_59 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_59
  l0._graph = self
  l0._name = "box_MissionController_v4_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|135807944"
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|197129882"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_72 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_72
  l0._graph = self
  l0._name = "box_CinematicPrep_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|217799873"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_72_PostOut
  self.box_DriveAndTalk_47 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_47
  l0._graph = self
  l0._name = "box_DriveAndTalk_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|222897095"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_47_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_12 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_12
  l0._graph = self
  l0._name = "box_CLOController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|248757211"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_12_OnUserInPlace
  self.box_Interact_Gameplay_48 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_48
  l0._graph = self
  l0._name = "box_Interact_Gameplay_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|255191162"
  l0.Started = self.f_box_Interact_Gameplay_48_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_48_Interacted
  self.box_DriveAndTalk_41 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_41
  l0._graph = self
  l0._name = "box_DriveAndTalk_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|265635466"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_41_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_VehicleSeatingController_53 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_53
  l0._graph = self
  l0._name = "box_VehicleSeatingController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|283594361"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_box_VehicleSeatingController_53_Out
  self.box_TutorialController_19 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_19
  l0._graph = self
  l0._name = "box_TutorialController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|296032102"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_19_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_19_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_13 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_13
  l0._graph = self
  l0._name = "box_SetBoolean_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|314628275"
  l0.Out = self.f_box_SetBoolean_v2_13_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_13_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_13_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_13_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_13_SetFromBool
  self.box_CinematicPrep_40 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_40
  l0._graph = self
  l0._name = "box_CinematicPrep_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|349089934"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_40_PostOut
  self.box_MultipleOR_100 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_100
  l0._graph = self
  l0._name = "box_MultipleOR_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|378503177"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_100_Out
  self.box_Delivery_Gameplay_46 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_46
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|446945358"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_46_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_OnceOnly_v3_24 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_24
  l0._graph = self
  l0._name = "box_OnceOnly_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|448434169"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_24_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_83 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_83
  l0._graph = self
  l0._name = "box_PlaySequence_v5_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|466201329"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_83_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_83_Finished
  self.box_MissionController_v4_85 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_85
  l0._graph = self
  l0._name = "box_MissionController_v4_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|495365317"
  self.box_VehicleSeatingController_33 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_33
  l0._graph = self
  l0._name = "box_VehicleSeatingController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|497503024"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_box_VehicleSeatingController_33_Out
  self.box_CinematicPrep_51 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_51
  l0._graph = self
  l0._name = "box_CinematicPrep_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|514717344"
  l0.PreOut = self.f_box_CinematicPrep_51_PreOut
  l0.PostOut = DummyFunction
  self.box_ListWriter_111 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_111
  l0._graph = self
  l0._name = "box_ListWriter_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|541902383"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_111_Added
  l0.Removed = self.f_box_ListWriter_111_Removed
  l0.Out = self.f_box_ListWriter_111_Out
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|601870202"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_21 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_21
  l0._graph = self
  l0._name = "box_OnceOnly_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|652041259"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_21_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|658824445"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_87 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_87
  l0._graph = self
  l0._name = "box_SetBoolean_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|672722044"
  l0.Out = self.f_box_SetBoolean_v2_87_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_87_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_87_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_87_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_87_SetFromBool
  self.box_Mission_End_6 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_6
  l0._graph = self
  l0._name = "box_Mission_End_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|694312615"
  self.box_CLOController_102 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_102
  l0._graph = self
  l0._name = "box_CLOController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|731457048"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_102_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_VehicleMonitor_v3_61 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_61
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|743058532"
  l0.Enabled = self.f_box_VehicleMonitor_v3_61_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_61_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_61_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_61_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_61_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_61_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v3_61_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MissionController_v4_43 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_43
  l0._graph = self
  l0._name = "box_MissionController_v4_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|750438549"
  self.box_MissionLayer_v2_18 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_18
  l0._graph = self
  l0._name = "box_MissionLayer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|753043171"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_18_Unloaded
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_62 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_62
  l0._graph = self
  l0._name = "box_Multiple_AND_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|834284375"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_62_Out
  self.box_VehicleSeatingController_82 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_82
  l0._graph = self
  l0._name = "box_VehicleSeatingController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|847543822"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = self.f_box_VehicleSeatingController_82_Out
  self.box_DriveAndTalk_49 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_49
  l0._graph = self
  l0._name = "box_DriveAndTalk_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|874853549"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_49_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PawnHealthMonitor_v4_50 = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_50
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|898464773"
  l0.Enabled = self.f_box_PawnHealthMonitor_v4_50_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v4_50_Disabled
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_50_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_CinematicPrep_88 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_88
  l0._graph = self
  l0._name = "box_CinematicPrep_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|903217777"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_88_PostOut
  self.box_MissionLayer_v2_57 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_57
  l0._graph = self
  l0._name = "box_MissionLayer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|907569216"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_57_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_26 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_26
  l0._graph = self
  l0._name = "box_CinematicPrep_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|929130832"
  l0.PreOut = self.f_box_CinematicPrep_26_PreOut
  l0.PostOut = DummyFunction
  self.box_CLOController_75 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_75
  l0._graph = self
  l0._name = "box_CLOController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|997643319"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_75_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_71 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_71
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1005230799"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TimerToScreen_14 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_14
  l0._graph = self
  l0._name = "box_TimerToScreen_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1054524271"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_14_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_14_TimeElapsed
  self.box_VehicleMonitor_v3_70 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_70
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1131944908"
  l0.Enabled = self.f_box_VehicleMonitor_v3_70_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_70_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_box_VehicleMonitor_v3_70_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_70_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_70_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = self.f_box_VehicleMonitor_v3_70_FullTakedown
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_CinematicPrep_35 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_35
  l0._graph = self
  l0._name = "box_CinematicPrep_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1178484355"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_35_PostOut
  self.box_MissionCheckpointReach_16 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_16
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1233088429"
  l0.Out = self.f_box_MissionCheckpointReach_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Player_Proximity_Monitor_5 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_5
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1291080413"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_5_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_5_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_5_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CinematicPrep_30 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_30
  l0._graph = self
  l0._name = "box_CinematicPrep_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1298297951"
  l0.PreOut = self.f_box_CinematicPrep_30_PreOut
  l0.PostOut = DummyFunction
  self.box_DriveAndTalk_44 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_44
  l0._graph = self
  l0._name = "box_DriveAndTalk_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1350827255"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_44_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Timer_v2_107 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_107
  l0._graph = self
  l0._name = "box_Timer_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1351516458"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_107_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1371828070"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_31_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_23 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_23
  l0._graph = self
  l0._name = "box_CLOController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1382465338"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_23_OnUserInPlace
  self.box_MultipleOR_45 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1417509978"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_CinematicPrep_80 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_80
  l0._graph = self
  l0._name = "box_CinematicPrep_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1428964410"
  l0.PreOut = self.f_box_CinematicPrep_80_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_91 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_91
  l0._graph = self
  l0._name = "box_MultipleOR_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1433565495"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_91_Out
  self.box_MultipleOR_54 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_54
  l0._graph = self
  l0._name = "box_MultipleOR_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1441587375"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_54_Out
  self.box_CLOController_34 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_34
  l0._graph = self
  l0._name = "box_CLOController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1458106439"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_34_OnUserInPlace
  self.box_OnceOnly_v3_90 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_90
  l0._graph = self
  l0._name = "box_OnceOnly_v3_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1467426487"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_90_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_105 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_105
  l0._graph = self
  l0._name = "box_CLOController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1471635126"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_105_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_Buddy_Controller_117 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_117
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1525363482"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_117_IsWaiting
  l0.Assigned = DummyFunction
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1553646793"
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1557860072"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_CLOController_36 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_36
  l0._graph = self
  l0._name = "box_CLOController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1566778246"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_36_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_63 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1611126672"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_MissionController_v4_74 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_74
  l0._graph = self
  l0._name = "box_MissionController_v4_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1646310287"
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1662311565"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_79 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_79
  l0._graph = self
  l0._name = "box_SetBoolean_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1722832516"
  l0.Out = self.f_box_SetBoolean_v2_79_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_79_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_79_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_79_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_79_SetFromBool
  self.box_TutorialController_76 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_76
  l0._graph = self
  l0._name = "box_TutorialController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1740591239"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_76_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_76_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_55 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_55
  l0._graph = self
  l0._name = "box_CLOController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1758007336"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_55_OnUserInPlace
  self.box_MultipleOR_106 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_106
  l0._graph = self
  l0._name = "box_MultipleOR_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1764071435"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_106_Out
  self.box_PlaySequence_v5_25 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_25
  l0._graph = self
  l0._name = "box_PlaySequence_v5_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1778993536"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_25_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_25_Finished
  self.box_CLOController_97 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_97
  l0._graph = self
  l0._name = "box_CLOController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1786674198"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_97_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Delivery_Gameplay_60 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_60
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1793100989"
  l0.Started = self.f_box_Delivery_Gameplay_60_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_60_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_Timer_v2_58 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_58
  l0._graph = self
  l0._name = "box_Timer_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1797224217"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_58_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_56 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_56
  l0._graph = self
  l0._name = "box_CLOController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1810333076"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_56_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1873001012"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_28_PostOut
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1960462681"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_11_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1998072866"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TimerToScreen_73 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_73
  l0._graph = self
  l0._name = "box_TimerToScreen_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2066128241"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_73_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_73_TimeElapsed
  self.box_GameplayInteractionController_112 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_112
  l0._graph = self
  l0._name = "box_GameplayInteractionController_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2068231048"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_112_Started
  l0.Stopped = DummyFunction
  self.box_CLOController_81 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_81
  l0._graph = self
  l0._name = "box_CLOController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2078508243"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_81_OnUserInPlace
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2142274653"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
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
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "Taxi_S10_Miranda_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2022798548", "2022798548", "Taxi_S10_Miranda_Main", "CheckPoint_0", "box_MissionLayer_v2_7.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_6()
  l0 = self.box_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1576702692", "1576702692", "Taxi_S10_Miranda_Main", "CheckPoint_1", "box_Mission_End_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "Taxi_S10_Miranda_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1706044271", "1706044271", "Taxi_S10_Miranda_Main", "In", "box_MissionLayer_v2_4.Load", self, l0)
  l0:Load()
end
function export:f_box_AI_Agent_Zone_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.PlayerVehicle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|191815524"
  l0.Is_nil = self.f_box_Test_if_Nil_98_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_98_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|495400127", "495400127", "Taxi_S10_Miranda_Main", "box_AI_Agent_Zone_92.Out", "box_Test_if_Nil_98.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_29_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|612424727"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_94_Popped
  l0 = self.box_CinematicPrep_29
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|36892026", "36892026", "Taxi_S10_Miranda_Main", "box_CinematicPrep_29.PostOut", "box_SetActionMap_v2_94.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_SetActionMap_v2_96_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_6()
  l0 = self.box_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1392872960", "1392872960", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_96.Popped", "box_Mission_End_6.End", clone, l0)
  l0:End()
end
function export:f_box_SetActionMap_v2_77_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_58()
  l0 = self.box_Timer_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|722505378", "722505378", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_77.Popped", "box_Timer_v2_58.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_SetActionMap_v2_77_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_58()
  l0 = self.box_Timer_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|194342702", "194342702", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_77.Pushed", "box_Timer_v2_58.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_9_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_56
  l0.User = self.vehiclePlayer
  l0 = self.box_CLOController_9
  l1 = self.box_CLOController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|803150034", "803150034", "Taxi_S10_Miranda_Main", "box_CLOController_9.UnspawnedUser", "box_CLOController_56.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_ForcePawnsVehicleStop_v2_116_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|319291135", "319291135", "Taxi_S10_Miranda_Main", "box_ForcePawnsVehicleStop_v2_116.Stopped", "box_MissionMessageController_v3_15.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Test_if_Nil_98_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|27131286", "27131286", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_98.Is_nil", "box_MultipleOR_100.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_98_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_97
  l0.User = self.PlayerVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1368108613", "1368108613", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_98.Is_not_nil", "box_CLOController_97.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1143170399"
  l0.Out = self.f_box_Get_Player_ID_27_Out
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1555927625", "1555927625", "Taxi_S10_Miranda_Main", "box_MissionLayer_v2_7.Loaded", "box_Get_Player_ID_27.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_72_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|932629400"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_52_Popped
  l0 = self.box_CinematicPrep_72
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1867700238", "1867700238", "Taxi_S10_Miranda_Main", "box_CinematicPrep_72.PostOut", "box_SetActionMap_v2_52.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_Test_if_Nil_103_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_106()
  l0 = self.box_MultipleOR_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1160551140", "1160551140", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_103.Is_nil", "box_MultipleOR_106.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_103_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_105
  l0.User = self.MirandaTemp
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1563676068", "1563676068", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_103.Is_not_nil", "box_CLOController_105.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_DriveAndTalk_47_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_41
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881603"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0 = self.box_DriveAndTalk_47
  l1 = self.box_DriveAndTalk_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1247803327", "1247803327", "Taxi_S10_Miranda_Main", "box_DriveAndTalk_47.TalkFinished", "box_DriveAndTalk_41.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_12_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_12
  self.PlayerVehicle = l0.UserID
  l0 = self.box_CinematicPrep_35
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_12
  l1 = self.box_CinematicPrep_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1792094270", "1792094270", "Taxi_S10_Miranda_Main", "box_CLOController_12.OnUserInPlace", "box_CinematicPrep_35.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Interact_Gameplay_48_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_48()
  l0 = self.box_Interact_Gameplay_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|462360624", "462360624", "Taxi_S10_Miranda_Main", "box_Interact_Gameplay_48.Interacted", "box_Interact_Gameplay_48.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_48_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_70()
  l0 = self.box_Interact_Gameplay_48
  l1 = self.box_VehicleMonitor_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1284902926", "1284902926", "Taxi_S10_Miranda_Main", "box_Interact_Gameplay_48.Started", "box_VehicleMonitor_v3_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DriveAndTalk_41_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_49
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881604"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0 = self.box_DriveAndTalk_41
  l1 = self.box_DriveAndTalk_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1968694724", "1968694724", "Taxi_S10_Miranda_Main", "box_DriveAndTalk_41.TalkFinished", "box_DriveAndTalk_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingController_53_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_11()
  l0 = self.box_VehicleSeatingController_53
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|603721508", "603721508", "Taxi_S10_Miranda_Main", "box_VehicleSeatingController_53.Out", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_19_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_14()
  l0 = self.box_TutorialController_19
  l1 = self.box_TimerToScreen_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1344007529", "1344007529", "Taxi_S10_Miranda_Main", "box_TutorialController_19.DisplayRequested", "box_TimerToScreen_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_19_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_14()
  l0 = self.box_TutorialController_19
  l1 = self.box_TimerToScreen_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|655396038", "655396038", "Taxi_S10_Miranda_Main", "box_TutorialController_19.NotificationHidden", "box_TimerToScreen_14.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Flying_Drone_Controller_65_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_36
  l0.User = self.PlayerVehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|673706238", "673706238", "Taxi_S10_Miranda_Main", "box_Flying_Drone_Controller_65.CalledBack", "box_CLOController_36.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_SetBoolean_v2_13_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.EnterCarFirstTime = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.EnterCarFirstTime = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.EnterCarFirstTime = l0.Target
end
function export:f_box_SetBoolean_v2_13_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.EnterCarFirstTime = l0.Target
  self:OnEnter_box_TutorialController_19()
  l1 = self.box_TutorialController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1535222326", "1535222326", "Taxi_S10_Miranda_Main", "box_SetBoolean_v2_13.SetTrue", "box_TutorialController_19.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_SetBoolean_v2_13_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_13
  self.EnterCarFirstTime = l0.Target
end
function export:f_box_CinematicPrep_40_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_CinematicPrep_40
  l1 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|460428356", "460428356", "Taxi_S10_Miranda_Main", "box_CinematicPrep_40.PostOut", "box_MultipleOR_54.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_100_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.vehiclePlayer
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1283017417"
  l0.Is_nil = self.f_box_Test_if_Nil_99_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_99_Is_not_nil
  l0 = self.box_MultipleOR_100
  l1 = Boxes[PathID("domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|831551678", "831551678", "Taxi_S10_Miranda_Main", "box_MultipleOR_100.Out", "box_Test_if_Nil_99.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_113_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|696108463", "696108463", "Taxi_S10_Miranda_Main", "box_Simple_Node_113.Out", "box_MultipleOR_91.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Delivery_Gameplay_46_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1572048568"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_Delivery_Gameplay_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1848327692", "1848327692", "Taxi_S10_Miranda_Main", "box_Delivery_Gameplay_46.AllDeliveryCompleted", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_34
  l0.CLO = "9223372056544232738"
  l0 = self.box_OnceOnly_v3_24
  l1 = self.box_CLOController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1478571263", "1478571263", "Taxi_S10_Miranda_Main", "box_OnceOnly_v3_24.Out", "box_CLOController_34.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_83_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_90()
  l0 = self.box_PlaySequence_v5_83
  l1 = self.box_OnceOnly_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1263810009", "1263810009", "Taxi_S10_Miranda_Main", "box_PlaySequence_v5_83.Finished", "box_OnceOnly_v3_90.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_83_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_90()
  l0 = self.box_PlaySequence_v5_83
  l1 = self.box_OnceOnly_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|910397694", "910397694", "Taxi_S10_Miranda_Main", "box_PlaySequence_v5_83.Skipped", "box_OnceOnly_v3_90.In", l0, l1)
  l1:In(0)
end
function export:f_box_AI_Agent_Zone_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.User = self.MirandaTemp
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1967161079", "1967161079", "Taxi_S10_Miranda_Main", "box_AI_Agent_Zone_69.Out", "box_CLOController_9.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_VehicleSeatingController_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_82
  l0.Vehicle = self.vehiclePlayer
  l0.Pawn = self.MirandaTemp
  l0.Seat = "RearPassengerRight"
  l0 = self.box_VehicleSeatingController_33
  l1 = self.box_VehicleSeatingController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|635657401", "635657401", "Taxi_S10_Miranda_Main", "box_VehicleSeatingController_33.Out", "box_VehicleSeatingController_82.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Show_Or_Hide_All_UI_38_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|925811348"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|637199601", "637199601", "Taxi_S10_Miranda_Main", "box_Show_Or_Hide_All_UI_38.Hidden", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_51_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1450535794"
  l0.CalledBack = self.f_box_Toy_Car_Controller_67_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0 = self.box_CinematicPrep_51
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|195557255", "195557255", "Taxi_S10_Miranda_Main", "box_CinematicPrep_51.PreOut", "box_Toy_Car_Controller_67.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_ListWriter_111_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_111
  self.TalkersDT = l0.Target
  self:OnEnter_box_GameplayInteractionController_112()
  l1 = self.box_GameplayInteractionController_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1018249237", "1018249237", "Taxi_S10_Miranda_Main", "box_ListWriter_111.Added", "box_GameplayInteractionController_112.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_111_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_111
  self.TalkersDT = l0.Target
end
function export:f_box_ListWriter_111_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_111
  self.TalkersDT = l0.Target
end
function export:f_box_AI_Agent_Zone_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_12
  l0.CLO = "9223372056544149341"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2077881888", "2077881888", "Taxi_S10_Miranda_Main", "box_AI_Agent_Zone_78.Out", "box_CLOController_12.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|909457705"
  l0.Out = self.f_box_Simple_Node_101_Out
  l0 = self.box_MissionMessageController_v3_15
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1236612150", "1236612150", "Taxi_S10_Miranda_Main", "box_MissionMessageController_v3_15.Out", "box_Simple_Node_101.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_94_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|413502465", "413502465", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_94.Popped", "box_MissionController_v4_10.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_OnceOnly_v3_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Delivery_Gameplay_46
  l0.VehicleEntity = self.PlayerVehicle
  l0.DestinationTrigger = "9223372071473207633"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 0
  l0.ForceStopBrake = "Hard"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective020",
    item = "Objective",
    id = "359059"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective020",
    item = "Objective",
    id = "359059"
  }
  l0 = self.box_OnceOnly_v3_21
  l1 = self.box_Delivery_Gameplay_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|682254234", "682254234", "Taxi_S10_Miranda_Main", "box_OnceOnly_v3_21.Out", "box_Delivery_Gameplay_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_111
  l0.Input = self.TalkersDT
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.MirandaTemp
  l0 = self.box_OnceOnly_v3_2
  l1 = self.box_ListWriter_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1833766906", "1833766906", "Taxi_S10_Miranda_Main", "box_OnceOnly_v3_2.Out", "box_ListWriter_111.Add", l0, l1)
  l1:Add()
end
function export:f_box_SetBoolean_v2_87_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.InVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.InVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.InVehicle = l0.Target
end
function export:f_box_SetBoolean_v2_87_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.InVehicle = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1471671192"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0 = self.box_SetBoolean_v2_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1269315603", "1269315603", "Taxi_S10_Miranda_Main", "box_SetBoolean_v2_87.SetTrue", "box_Ordered_Output_86.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_87_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_87
  self.InVehicle = l0.Target
end
function export:f_box_CLOController_102_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_CLOController_102
  l1 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1893325068", "1893325068", "Taxi_S10_Miranda_Main", "box_CLOController_102.UnspawnedUser", "box_MultipleOR_104.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_61_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1179193501", "1179193501", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.Enabled", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_VehicleMonitor_v3_61_Entered()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_87()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_SetBoolean_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|72444795", "72444795", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.Entered", "box_SetBoolean_v2_87.True", l0, l1)
  l1:True()
end
function export:f_box_VehicleMonitor_v3_61_Exiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_87()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_SetBoolean_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1507186231", "1507186231", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.Exiting", "box_SetBoolean_v2_87.False", l0, l1)
  l1:False()
end
function export:f_box_VehicleMonitor_v3_61_FullTakedown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|533067234", "533067234", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.FullTakedown", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v3_61_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|400456013", "400456013", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.IsUnderwater", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_61_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|771033772", "771033772", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.IsUnusable", "box_MultipleOR_84.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v3_61_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_76()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_TutorialController_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1302853747", "1302853747", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_61.Leave", "box_TutorialController_76.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionLayer_v2_18_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_29
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_18
  l1 = self.box_CinematicPrep_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|460057119", "460057119", "Taxi_S10_Miranda_Main", "box_MissionLayer_v2_18.Unloaded", "box_CinematicPrep_29.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Cinema_Zone_Cleanup_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_25
  l0.SceneEntity = "9223372056544150074"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_Mirandas_Driver_CINEMA/s10_mirandas_driver_cinema.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|775909453", "775909453", "Taxi_S10_Miranda_Main", "box_Cinema_Zone_Cleanup_32.Out", "box_PlaySequence_v5_25.Start", clone, l0)
  l0:Start()
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
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372065596322563"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|547042149"
  l0.Out = self.f_box_AI_Agent_Zone_78_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2106245620", "2106245620", "Taxi_S10_Miranda_Main", "box_Get_Player_ID_1.Out", "box_AI_Agent_Zone_78.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Multiple_AND_62_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|505245362"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_38_Hidden
  l0 = self.box_Multiple_AND_62
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1398106194", "1398106194", "Taxi_S10_Miranda_Main", "box_Multiple_AND_62.Out", "box_Show_Or_Hide_All_UI_38.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VehicleSeatingController_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_117
  l0.NPC = self.MirandaTemp
  l0 = self.box_VehicleSeatingController_82
  l1 = self.box_AI_Buddy_Controller_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1964734065", "1964734065", "Taxi_S10_Miranda_Main", "box_VehicleSeatingController_82.Out", "box_AI_Buddy_Controller_117.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_Show_Or_Hide_All_UI_37_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_26
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|317232193", "317232193", "Taxi_S10_Miranda_Main", "box_Show_Or_Hide_All_UI_37.Hidden", "box_CinematicPrep_26.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_DriveAndTalk_49_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_44
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881605"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0 = self.box_DriveAndTalk_49
  l1 = self.box_DriveAndTalk_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2049602483", "2049602483", "Taxi_S10_Miranda_Main", "box_DriveAndTalk_49.TalkFinished", "box_DriveAndTalk_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_PawnHealthMonitor_v4_50_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_5()
  l0 = self.box_PawnHealthMonitor_v4_50
  l1 = self.box_Player_Proximity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|385037795", "385037795", "Taxi_S10_Miranda_Main", "box_PawnHealthMonitor_v4_50.Disabled", "box_Player_Proximity_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v4_50_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_5()
  l0 = self.box_PawnHealthMonitor_v4_50
  l1 = self.box_Player_Proximity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1787989638", "1787989638", "Taxi_S10_Miranda_Main", "box_PawnHealthMonitor_v4_50.Enabled", "box_Player_Proximity_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v4_50_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_59
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0 = self.box_PawnHealthMonitor_v4_50
  l1 = self.box_MissionController_v4_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1036209846", "1036209846", "Taxi_S10_Miranda_Main", "box_PawnHealthMonitor_v4_50.Killed", "box_MissionController_v4_59.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_CinematicPrep_88_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1405259327"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_42_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_88
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1507439885", "1507439885", "Taxi_S10_Miranda_Main", "box_CinematicPrep_88.PostOut", "box_Show_Or_Hide_All_UI_42.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_57_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_72
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_57
  l1 = self.box_CinematicPrep_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2015642727", "2015642727", "Taxi_S10_Miranda_Main", "box_MissionLayer_v2_57.Unloaded", "box_CinematicPrep_72.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_101_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_62()
  l0 = self.box_Multiple_AND_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|255242626", "255242626", "Taxi_S10_Miranda_Main", "box_Simple_Node_101.Out", "box_Multiple_AND_62.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayInteractionController_112()
  l0 = self.box_GameplayInteractionController_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1884003559", "1884003559", "Taxi_S10_Miranda_Main", "box_Ordered_Output_3.Out", "box_GameplayInteractionController_112.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_61()
  l0 = self.box_VehicleMonitor_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1126599244", "1126599244", "Taxi_S10_Miranda_Main", "box_Ordered_Output_3.Out", "box_VehicleMonitor_v3_61.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_51
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|983989594", "983989594", "Taxi_S10_Miranda_Main", "box_Ordered_Output_3.Out", "box_CinematicPrep_51.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_26_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1399097910"
  l0.CalledBack = self.f_box_Toy_Car_Controller_64_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  l0 = self.box_CinematicPrep_26
  l1 = Boxes[PathID("domino/System/ToyCarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1899903121", "1899903121", "Taxi_S10_Miranda_Main", "box_CinematicPrep_26.PreOut", "box_Toy_Car_Controller_64.CallBack", l0, l1)
  l1:CallBack()
end
function export:f_box_SetActionMap_v2_52_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1364557922", "1364557922", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_52.Popped", "box_MissionController_v4_74.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_CLOController_75_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_57
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0 = self.box_CLOController_75
  l1 = self.box_MissionLayer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1901858640", "1901858640", "Taxi_S10_Miranda_Main", "box_CLOController_75.UnspawnedUser", "box_MissionLayer_v2_57.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_TimerToScreen_14_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetActionMap_v2_93()
  l0 = self.box_TimerToScreen_14
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|378067048", "378067048", "Taxi_S10_Miranda_Main", "box_TimerToScreen_14.Stopped", "box_SetActionMap_v2_93.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_TimerToScreen_14_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetActionMap_v2_93()
  l0 = self.box_TimerToScreen_14
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1917055973", "1917055973", "Taxi_S10_Miranda_Main", "box_TimerToScreen_14.TimeElapsed", "box_SetActionMap_v2_93.Push", l0, l1)
  l1:Push()
end
function export:f_box_Simple_Node_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|441102138"
  l0.Out = self.f_box_Simple_Node_113_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1943578145", "1943578145", "Taxi_S10_Miranda_Main", "box_Simple_Node_108.Out", "box_Simple_Node_113.In", clone, l0)
  l0:In()
end
function export:f_box_SetActionMap_v2_95_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|155616983"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_116_Stopped
  l0.ResetOut = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1118046026", "1118046026", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_95.Pushed", "box_ForcePawnsVehicleStop_v2_116.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_VehicleMonitor_v3_70_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1670152773", "1670152773", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.Enabled", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v3_70_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1141315636"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_VehicleMonitor_v3_70
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1070406306", "1070406306", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.Entered", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_70_Exiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|40563699", "40563699", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.Exiting", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_70_FullTakedown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|400166174", "400166174", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.FullTakedown", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v3_70_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1502251469", "1502251469", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.IsUnderwater", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_70_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_VehicleMonitor_v3_70
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|674109828", "674109828", "Taxi_S10_Miranda_Main", "box_VehicleMonitor_v3_70.IsUnusable", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetActionMap_v2_93_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_107()
  l0 = self.box_Timer_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1351106849", "1351106849", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_93.Popped", "box_Timer_v2_107.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_SetActionMap_v2_93_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_107()
  l0 = self.box_Timer_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|801406522", "801406522", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_93.Pushed", "box_Timer_v2_107.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|649924753", "649924753", "Taxi_S10_Miranda_Main", "box_Ordered_Output_20.Out", "box_OnceOnly_v3_21.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_13
  l0.Bool = self.EnterCarFirstTime
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1101677534", "1101677534", "Taxi_S10_Miranda_Main", "box_Ordered_Output_20.Out", "box_SetBoolean_v2_13.True", clone, l0)
  l0:True()
end
function export:f_box_Get_Player_ID_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372065596322563"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|9189494"
  l0.Out = self.f_box_AI_Agent_Zone_92_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1945003404", "1945003404", "Taxi_S10_Miranda_Main", "box_Get_Player_ID_27.Out", "box_AI_Agent_Zone_92.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Flying_Drone_Controller_66_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372055532596591"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|473892511"
  l0.Out = self.f_box_AI_Agent_Zone_69_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|489923620", "489923620", "Taxi_S10_Miranda_Main", "box_Flying_Drone_Controller_66.CalledBack", "box_AI_Agent_Zone_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_35_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_54()
  l0 = self.box_CinematicPrep_35
  l1 = self.box_MultipleOR_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1745316794", "1745316794", "Taxi_S10_Miranda_Main", "box_CinematicPrep_35.PostOut", "box_MultipleOR_54.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionCheckpointReach_16_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_48()
  l0 = self.box_MissionCheckpointReach_16
  l1 = self.box_Interact_Gameplay_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|581060407", "581060407", "Taxi_S10_Miranda_Main", "box_MissionCheckpointReach_16.Out", "box_Interact_Gameplay_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_Test_if_Nil_99_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|765318934", "765318934", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_99.Is_nil", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_102
  l0.User = self.vehiclePlayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|668429641", "668429641", "Taxi_S10_Miranda_Main", "box_Test_if_Nil_99.Is_not_nil", "box_CLOController_102.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Player_Proximity_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Proximity_Monitor_5
  l1 = self.box_SetBoolean_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2060546268", "2060546268", "Taxi_S10_Miranda_Main", "box_Player_Proximity_Monitor_5.Disabled", "box_SetBoolean_v2_79.True", l0, l1)
  l1:True()
end
function export:f_box_Player_Proximity_Monitor_5_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_61()
  l0 = self.box_Player_Proximity_Monitor_5
  l1 = self.box_VehicleMonitor_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1553968661", "1553968661", "Taxi_S10_Miranda_Main", "box_Player_Proximity_Monitor_5.Enabled", "box_VehicleMonitor_v3_61.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_5_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055532596591"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
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
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|885426909"
  l0.Out = DummyFunction
  l0 = self.box_Player_Proximity_Monitor_5
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1197160698", "1197160698", "Taxi_S10_Miranda_Main", "box_Player_Proximity_Monitor_5.EnterRadius", "box_Lanes_Restrictions_Control_8.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_30_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  l0.User = self.PlayerVehicle
  l0 = self.box_CinematicPrep_30
  l1 = self.box_CLOController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|518111152", "518111152", "Taxi_S10_Miranda_Main", "box_CinematicPrep_30.PreOut", "box_CLOController_31.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Compare_Boolean_v2_89_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1094179086"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_95_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|940314570", "940314570", "Taxi_S10_Miranda_Main", "box_Compare_Boolean_v2_89.A_and_B", "box_SetActionMap_v2_95.Push", clone, l0)
  l0:Push()
end
function export:f_box_DriveAndTalk_44_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_62()
  l0 = self.box_DriveAndTalk_44
  l1 = self.box_Multiple_AND_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|492206182", "492206182", "Taxi_S10_Miranda_Main", "box_DriveAndTalk_44.TalkFinished", "box_Multiple_AND_62.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_107_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_30
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_107
  l1 = self.box_CinematicPrep_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|235457398", "235457398", "Taxi_S10_Miranda_Main", "box_Timer_v2_107.TimeElapsed", "box_CinematicPrep_30.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_CLOController_31_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_18
  l0.LayerName = "Taxi_S10_Miranda_Main"
  l0 = self.box_CLOController_31
  l1 = self.box_MissionLayer_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|928849687", "928849687", "Taxi_S10_Miranda_Main", "box_CLOController_31.UnspawnedUser", "box_MissionLayer_v2_18.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_CLOController_23_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_23
  self.PlayerVehicle = l0.UserID
  l0 = self.box_CinematicPrep_40
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_23
  l1 = self.box_CinematicPrep_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1580261244", "1580261244", "Taxi_S10_Miranda_Main", "box_CLOController_23.OnUserInPlace", "box_CinematicPrep_40.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Toy_Car_Controller_64_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|302364052"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_65_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|955227052", "955227052", "Taxi_S10_Miranda_Main", "box_Toy_Car_Controller_64.CalledBack", "box_Flying_Drone_Controller_65.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Show_Or_Hide_All_UI_42_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|68779843"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_96_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1979028174", "1979028174", "Taxi_S10_Miranda_Main", "box_Show_Or_Hide_All_UI_42.Shown", "box_SetActionMap_v2_96.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_43
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0 = self.box_MultipleOR_45
  l1 = self.box_MissionController_v4_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1572184988", "1572184988", "Taxi_S10_Miranda_Main", "box_MultipleOR_45.Out", "box_MissionController_v4_43.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_CinematicPrep_80_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_75
  l0.User = self.vehiclePlayer
  l0 = self.box_CinematicPrep_80
  l1 = self.box_CLOController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1392488217", "1392488217", "Taxi_S10_Miranda_Main", "box_CinematicPrep_80.PreOut", "box_CLOController_75.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MultipleOR_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InVehicle
  l0.B = self.MirandaDestinationReached
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1304663559"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = self.f_box_Compare_Boolean_v2_89_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_91
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|167682807", "167682807", "Taxi_S10_Miranda_Main", "box_MultipleOR_91.Out", "box_Compare_Boolean_v2_89.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_16
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_54
  l1 = self.box_MissionCheckpointReach_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1705741453", "1705741453", "Taxi_S10_Miranda_Main", "box_MultipleOR_54.Out", "box_MissionCheckpointReach_16.In", l0, l1)
  l1:In()
end
function export:f_box_Toy_Car_Controller_67_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1147591520"
  l0.CalledBack = self.f_box_Flying_Drone_Controller_66_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1071821717", "1071821717", "Taxi_S10_Miranda_Main", "box_Toy_Car_Controller_67.CalledBack", "box_Flying_Drone_Controller_66.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_CLOController_34_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_34
  self.vehiclePlayer = l0.UserID
  l0 = self.box_CLOController_81
  l0.CLO = "9223372046876295800"
  l0 = self.box_CLOController_34
  l1 = self.box_CLOController_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1548422340", "1548422340", "Taxi_S10_Miranda_Main", "box_CLOController_34.OnUserInPlace", "box_CLOController_81.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_90_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  l0.CLO = "9223372057833950995"
  l0 = self.box_OnceOnly_v3_90
  l1 = self.box_CLOController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|142695386", "142695386", "Taxi_S10_Miranda_Main", "box_OnceOnly_v3_90.Out", "box_CLOController_55.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_105_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_106()
  l0 = self.box_CLOController_105
  l1 = self.box_MultipleOR_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1783227728", "1783227728", "Taxi_S10_Miranda_Main", "box_CLOController_105.UnspawnedUser", "box_MultipleOR_106.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_76()
  l0 = self.box_TutorialController_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|989912025", "989912025", "Taxi_S10_Miranda_Main", "box_Ordered_Output_86.Out", "box_TutorialController_76.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|176838499", "176838499", "Taxi_S10_Miranda_Main", "box_Ordered_Output_86.Out", "box_MultipleOR_91.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_17_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_71
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective015",
    item = "Notification",
    id = "637981"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2012999374", "2012999374", "Taxi_S10_Miranda_Main", "box_Compare_Boolean_v2_17.A_is_False", "box_MissionMessageController_v3_71.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Compare_Boolean_v2_17_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_19()
  l0 = self.box_TutorialController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1781054717", "1781054717", "Taxi_S10_Miranda_Main", "box_Compare_Boolean_v2_17.A_is_True", "box_TutorialController_19.Display", clone, l0)
  l0:Display()
end
function export:f_box_AI_Buddy_Controller_117_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_68
  l0.Seconds = 2
  l0 = self.box_AI_Buddy_Controller_117
  l1 = self.box_Timer_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1439214033", "1439214033", "Taxi_S10_Miranda_Main", "box_AI_Buddy_Controller_117.IsWaiting", "box_Timer_v2_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_85
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0 = self.box_MultipleOR_84
  l1 = self.box_MissionController_v4_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|422830062", "422830062", "Taxi_S10_Miranda_Main", "box_MultipleOR_84.Out", "box_MissionController_v4_85.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_CLOController_36_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372056544150455"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|769876773"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_32_Out
  l0 = self.box_CLOController_36
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1536821735", "1536821735", "Taxi_S10_Miranda_Main", "box_CLOController_36.UnspawnedUser", "box_Cinema_Zone_Cleanup_32.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_70()
  l0 = self.box_VehicleMonitor_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1160774454", "1160774454", "Taxi_S10_Miranda_Main", "box_Ordered_Output_22.Out", "box_VehicleMonitor_v3_70.Disable", clone, l0)
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
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1696929303"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_109_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|414644509", "414644509", "Taxi_S10_Miranda_Main", "box_Ordered_Output_22.Out", "box_SetActionMap_v2_109.Push", clone, l0)
  l0:Push()
end
function export:f_box_MultipleOR_63_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.EnterCarFirstTime
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1523201270"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_17_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_17_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_63
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|803013614", "803013614", "Taxi_S10_Miranda_Main", "box_MultipleOR_63.Out", "box_Compare_Boolean_v2_17.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_110_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Delivery_Gameplay_60
  l0.VehicleEntity = self.vehiclePlayer
  l0.DestinationTrigger = "9223372071645955187"
  l0.NbToDeliver = 1
  l0.AcceptedReliability = "Broken"
  l0.VehicleMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.DestinationMarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 1
  l0.ForceStopBrake = "Hard"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective030",
    item = "Objective",
    id = "605732"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S10.S10M020.Objectives.Objective030",
    item = "Objective",
    id = "605732"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|57511370", "57511370", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_110.Popped", "box_Delivery_Gameplay_60.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1946601467", "1946601467", "Taxi_S10_Miranda_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_109_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|849843158"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_37_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1150136472", "1150136472", "Taxi_S10_Miranda_Main", "box_SetActionMap_v2_109.Pushed", "box_Show_Or_Hide_All_UI_37.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetBoolean_v2_79_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.MirandaDestinationReached = l0.Target
end
function export:f_box_SetBoolean_v2_79_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.MirandaDestinationReached = l0.Target
end
function export:f_box_SetBoolean_v2_79_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.MirandaDestinationReached = l0.Target
end
function export:f_box_SetBoolean_v2_79_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.MirandaDestinationReached = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1065895232"
  l0.Out = self.f_box_Simple_Node_108_Out
  l0 = self.box_SetBoolean_v2_79
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1294654331", "1294654331", "Taxi_S10_Miranda_Main", "box_SetBoolean_v2_79.SetTrue", "box_Simple_Node_108.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_79_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.MirandaDestinationReached = l0.Target
end
function export:f_box_TutorialController_76_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_73()
  l0 = self.box_TutorialController_76
  l1 = self.box_TimerToScreen_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|373233332", "373233332", "Taxi_S10_Miranda_Main", "box_TutorialController_76.DisplayRequested", "box_TimerToScreen_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_76_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_73()
  l0 = self.box_TutorialController_76
  l1 = self.box_TimerToScreen_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1426747607", "1426747607", "Taxi_S10_Miranda_Main", "box_TutorialController_76.NotificationHidden", "box_TimerToScreen_73.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_55_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_55
  self.LastVehiclePlayer = l0.UserID
  l0 = self.box_VehicleSeatingController_53
  l0.Vehicle = self.LastVehiclePlayer
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_55
  l1 = self.box_VehicleSeatingController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1694807924", "1694807924", "Taxi_S10_Miranda_Main", "box_CLOController_55.OnUserInPlace", "box_VehicleSeatingController_53.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Show_Or_Hide_All_UI_39_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1633901896"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_110_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|305524455", "305524455", "Taxi_S10_Miranda_Main", "box_Show_Or_Hide_All_UI_39.Shown", "box_SetActionMap_v2_110.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_MultipleOR_106_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_23
  l0.CLO = "9223372056544149341"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_MultipleOR_106
  l1 = self.box_CLOController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|247330781", "247330781", "Taxi_S10_Miranda_Main", "box_MultipleOR_106.Out", "box_CLOController_23.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_25_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_24()
  l0 = self.box_PlaySequence_v5_25
  l1 = self.box_OnceOnly_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|183685879", "183685879", "Taxi_S10_Miranda_Main", "box_PlaySequence_v5_25.Finished", "box_OnceOnly_v3_24.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_25_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_24()
  l0 = self.box_PlaySequence_v5_25
  l1 = self.box_OnceOnly_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|574478184", "574478184", "Taxi_S10_Miranda_Main", "box_PlaySequence_v5_25.Skipped", "box_OnceOnly_v3_24.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOController_97_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_CLOController_97
  l1 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|224489444", "224489444", "Taxi_S10_Miranda_Main", "box_CLOController_97.UnspawnedUser", "box_MultipleOR_100.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Delivery_Gameplay_60_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v4_50()
  l0 = self.box_Delivery_Gameplay_60
  l1 = self.box_PawnHealthMonitor_v4_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|926248981", "926248981", "Taxi_S10_Miranda_Main", "box_Delivery_Gameplay_60.AllDeliveryCompleted", "box_PawnHealthMonitor_v4_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Delivery_Gameplay_60_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v4_50()
  l0 = self.box_Delivery_Gameplay_60
  l1 = self.box_PawnHealthMonitor_v4_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|808981751", "808981751", "Taxi_S10_Miranda_Main", "box_Delivery_Gameplay_60.Started", "box_PawnHealthMonitor_v4_50.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_58_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_80
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_58
  l1 = self.box_CinematicPrep_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|143012215", "143012215", "Taxi_S10_Miranda_Main", "box_Timer_v2_58.TimeElapsed", "box_CinematicPrep_80.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_CLOController_56_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_83
  l0.SceneEntity = "9223372047682966032"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_MirandaCab_CIN/s10_mirandacab_cin.seq"
  l0 = self.box_CLOController_56
  l1 = self.box_PlaySequence_v5_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2087923624", "2087923624", "Taxi_S10_Miranda_Main", "box_CLOController_56.UnspawnedUser", "box_PlaySequence_v5_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_28_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1762980736"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_39_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_28
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1565492865", "1565492865", "Taxi_S10_Miranda_Main", "box_CinematicPrep_28.PostOut", "box_Show_Or_Hide_All_UI_39.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_11_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_88
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_11
  l1 = self.box_CinematicPrep_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1783189356", "1783189356", "Taxi_S10_Miranda_Main", "box_Timer_v2_11.Stopped", "box_CinematicPrep_88.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_11()
  l0 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|2057619237", "2057619237", "Taxi_S10_Miranda_Main", "box_Timer_v2_11.TimeElapsed", "box_Timer_v2_11.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_68
  l1 = self.box_CinematicPrep_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1574733392", "1574733392", "Taxi_S10_Miranda_Main", "box_Timer_v2_68.TimeElapsed", "box_CinematicPrep_28.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TimerToScreen_73_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetActionMap_v2_77()
  l0 = self.box_TimerToScreen_73
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|841686638", "841686638", "Taxi_S10_Miranda_Main", "box_TimerToScreen_73.Stopped", "box_SetActionMap_v2_77.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_TimerToScreen_73_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetActionMap_v2_77()
  l0 = self.box_TimerToScreen_73
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|901154356", "901154356", "Taxi_S10_Miranda_Main", "box_TimerToScreen_73.TimeElapsed", "box_SetActionMap_v2_77.Push", l0, l1)
  l1:Push()
end
function export:f_box_GameplayInteractionController_112_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_47
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.MirandaTemp
  l0.Conversation = "ConversationSetting.9223372052387881602"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.vehiclePlayer
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
  l0 = self.box_GameplayInteractionController_112
  l1 = self.box_DriveAndTalk_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1401683346", "1401683346", "Taxi_S10_Miranda_Main", "box_GameplayInteractionController_112.Started", "box_DriveAndTalk_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_81_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_81
  self.MirandaTemp = l0.UserID
  l0 = self.box_VehicleSeatingController_33
  l0.Vehicle = self.vehiclePlayer
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_81
  l1 = self.box_VehicleSeatingController_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|558715391", "558715391", "Taxi_S10_Miranda_Main", "box_CLOController_81.OnUserInPlace", "box_VehicleSeatingController_33.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MirandaTemp
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|222481157"
  l0.Is_nil = self.f_box_Test_if_Nil_103_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_103_Is_not_nil
  l0 = self.box_MultipleOR_104
  l1 = Boxes[PathID("domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|606393168", "606393168", "Taxi_S10_Miranda_Main", "box_MultipleOR_104.Out", "box_Test_if_Nil_103.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_SetActionMap_v2_77()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|85781819"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_77_Pushed
  l0.Popped = self.f_box_SetActionMap_v2_77_Popped
end
function export:OnEnter_box_Interact_Gameplay_48()
  local l0
  l0 = self.box_Interact_Gameplay_48
  l0.Entity = self.PlayerVehicle
  l0.IsManagingInteraction = 0
  l0.MarkerEntity = "9223372056544150084"
  l0.PlayerOnly = 1
end
function export:OnEnter_box_TutorialController_19()
  local l0
  l0 = self.box_TutorialController_19
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "GetbackInVehicle",
    id = "544597"
  }
  l0.Duration = 16
end
function export:OnEnter_box_MultipleOR_100()
end
function export:OnEnter_box_OnceOnly_v3_24()
end
function export:OnEnter_box_SetBoolean_v2_87()
end
function export:OnEnter_box_Mission_End_6()
  local l0
  l0 = self.box_Mission_End_6
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "Taxi_S10_Miranda_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_VehicleMonitor_v3_61()
  local l0
  l0 = self.box_VehicleMonitor_v3_61
  l0.Vehicle = self.vehiclePlayer
  l0.CheckNow = 1
end
function export:OnEnter_box_Multiple_AND_62()
end
function export:OnEnter_box_PawnHealthMonitor_v4_50()
  local l0
  l0 = self.box_PawnHealthMonitor_v4_50
  l0.Pawn = self.MirandaTemp
end
function export:OnEnter_box_TimerToScreen_14()
  local l0
  l0 = self.box_TimerToScreen_14
  l0.Seconds = 15
end
function export:OnEnter_box_VehicleMonitor_v3_70()
  local l0
  l0 = self.box_VehicleMonitor_v3_70
  l0.Vehicle = self.PlayerVehicle
  l0.CheckNow = 1
end
function export:OnEnter_box_SetActionMap_v2_93()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "no_controls"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi_S10_Miranda.domino|@Taxi_S10_Miranda_Main|1134924219"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_93_Pushed
  l0.Popped = self.f_box_SetActionMap_v2_93_Popped
end
function export:OnEnter_box_Player_Proximity_Monitor_5()
  local l0
  l0 = self.box_Player_Proximity_Monitor_5
  l0.TargetEntity = "9223372071645955187"
  l0.Radius = 125
  l0.MonitorConnectedJumper = 0
  l0.MonitorConnectedDrone = 0
end
function export:OnEnter_box_Timer_v2_107()
  local l0
  l0 = self.box_Timer_v2_107
  l0.Seconds = 0.5
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_MultipleOR_91()
end
function export:OnEnter_box_MultipleOR_54()
end
function export:OnEnter_box_OnceOnly_v3_90()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_TutorialController_76()
  local l0
  l0 = self.box_TutorialController_76
  l0.Notification = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "GetbackInVehicle",
    id = "544597"
  }
  l0.Duration = 16
end
function export:OnEnter_box_MultipleOR_106()
end
function export:OnEnter_box_Timer_v2_58()
  local l0
  l0 = self.box_Timer_v2_58
  l0.Seconds = 0.5
end
function export:OnEnter_box_Timer_v2_11()
end
function export:OnEnter_box_TimerToScreen_73()
  local l0
  l0 = self.box_TimerToScreen_73
  l0.Seconds = 15
end
function export:OnEnter_box_GameplayInteractionController_112()
  local l0
  l0 = self.box_GameplayInteractionController_112
  l0.Users = self.TalkersDT
  l0.RuleConfig = "GameplayConversationSettings.9223372066855953761"
end
function export:OnEnter_box_MultipleOR_104()
end
_compilerVersion = 4
