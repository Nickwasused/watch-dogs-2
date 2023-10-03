export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/263603219.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/638086499.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1038561728.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3884384578.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4080018232.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "Taxi09_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main"
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372046858868495"
  self.ClientCLO = "9223372046858693747"
  self.RobotAreaFound = 0
  self.RobotCLO = "9223372046858872551"
  self.Robot = nil
  self.Taxi09_SearchArea_1 = "9223372046858868494"
  self.Taxi09_SearchArea_2 = "9223372046858870247"
  self.MissionTarget_Taxi09_Icon_SearchArea_1 = "9223372046858868822"
  self.MissionTarget_Taxi09_Icon_SearchArea_2 = "9223372046858870249"
  self.MissionTarget_Taxi09_Icon_SearchArea_3 = "9223372046858870538"
  self.GIC_Users = {}
  self.Doc = nil
  self.SearchTimer = 0
  self.A2_Visible = 0
  self.A3_Visible = 0
  self.A1_Visible = 0
  self.InteractionID = 0
  self.box_SetBoolean_v2_82 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_82
  l0._graph = self
  l0._name = "box_SetBoolean_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|56132814"
  l0.Out = self.f_box_SetBoolean_v2_82_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_82_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_82_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_82_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_82_SetFromBool
  self.box_MissionLayer_v2_51 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_51
  l0._graph = self
  l0._name = "box_MissionLayer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|99912564"
  l0.Loaded = self.f_box_MissionLayer_v2_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_76 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_76
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|155378378"
  l0.Out = self.f_box_MissionCheckpointReach_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_SetBoolean_v2_14 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_14
  l0._graph = self
  l0._name = "box_SetBoolean_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|155482104"
  l0.Out = self.f_box_SetBoolean_v2_14_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_14_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_14_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_14_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_14_SetFromBool
  self.box_TaxiRatingController_72 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_72
  l0._graph = self
  l0._name = "box_TaxiRatingController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|156350728"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_72_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_PlayDialog_v2_15 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_15
  l0._graph = self
  l0._name = "box_PlayDialog_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|171268119"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_15_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|186030038"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_PlayDialog_v2_66 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_66
  l0._graph = self
  l0._name = "box_PlayDialog_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|204382519"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|216423901"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SwitchOutput_v3_193 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_193
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|217532671"
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_193_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_193_Output_1
  l0.Output[2] = self.f_box_SwitchOutput_v3_193_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_LogicGate_v2_48 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_48
  l0._graph = self
  l0._name = "box_LogicGate_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|230951197"
  l0.Out = self.f_box_LogicGate_v2_48_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_48_Closed
  self.box_MissionCheckpointReach_94 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_94
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|241882204"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_94_AllCheckpointsDisabled
  self.box_SetBoolean_v2_79 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_79
  l0._graph = self
  l0._name = "box_SetBoolean_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|243997469"
  l0.Out = self.f_box_SetBoolean_v2_79_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_79_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_79_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_79_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_79_SetFromBool
  self.box_MissionLayer_v2_91 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_91
  l0._graph = self
  l0._name = "box_MissionLayer_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|310435043"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_91_Unloaded
  l0.Reseted = DummyFunction
  self.box_Taxi_AbortMission_73 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_73
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|384596404"
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|393766766"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_MissionLayer_v2_23 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_23
  l0._graph = self
  l0._name = "box_MissionLayer_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|421297959"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_23_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_110 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_110
  l0._graph = self
  l0._name = "box_MultipleOR_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|427820109"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_110_Out
  self.box_SetBoolean_v2_19 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_19
  l0._graph = self
  l0._name = "box_SetBoolean_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|437502922"
  l0.Out = self.f_box_SetBoolean_v2_19_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_19_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_19_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_19_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_19_SetFromBool
  self.box_GameplayInteractionController_2 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_2
  l0._graph = self
  l0._name = "box_GameplayInteractionController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|458155529"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_2_Started
  l0.Stopped = DummyFunction
  self.box_LogicGate_v2_46 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_46
  l0._graph = self
  l0._name = "box_LogicGate_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|498333090"
  l0.Out = self.f_box_LogicGate_v2_46_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_46_Closed
  self.box_TaxiStrategiesController_4 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_4
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|510677148"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_4_Paused
  l0.Resumed = DummyFunction
  self.box_TaxiRidePickUpController_78 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_78
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|557157204"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRidePickUpController_78_Disabled
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_78_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_78_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_78_ClientConversationFinised
  self.box_MultipleOR_103 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_103
  l0._graph = self
  l0._name = "box_MultipleOR_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|557693931"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_103_Out
  self.box_Taxi_SearchArea_123 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_123
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|569117179"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_box_Taxi_SearchArea_123_EnteredArea
  l0.ExitedArea = self.f_box_Taxi_SearchArea_123_ExitedArea
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|569326155"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_175 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_175
  l0._graph = self
  l0._name = "box_SetBoolean_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|582343794"
  l0.Out = self.f_box_SetBoolean_v2_175_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_175_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_175_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_175_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_175_SetFromBool
  self.box_Timer_v2_126 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_126
  l0._graph = self
  l0._name = "box_Timer_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|606546216"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_126_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_126_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|612650181"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_TaxiStrategiesController_74 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_74
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|616697917"
  l0.Started = self.f_box_TaxiStrategiesController_74_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_114 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_114
  l0._graph = self
  l0._name = "box_MultipleOR_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|658104983"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_114_Out
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|666689733"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_118 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_118
  l0._graph = self
  l0._name = "box_MultipleOR_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|666862678"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_118_Out
  self.box_Taxi_SearchArea_158 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_158
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|769596921"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_box_Taxi_SearchArea_158_EnteredArea
  l0.ExitedArea = self.f_box_Taxi_SearchArea_158_ExitedArea
  self.box_MissionController_v4_92 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_92
  l0._graph = self
  l0._name = "box_MissionController_v4_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|806928625"
  self.box_MultipleOR_50 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_50
  l0._graph = self
  l0._name = "box_MultipleOR_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|862835224"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_50_Out
  self.box_MissionController_v4_32 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_32
  l0._graph = self
  l0._name = "box_MissionController_v4_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|873621826"
  self.box_DriveAndTalk_21 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_21
  l0._graph = self
  l0._name = "box_DriveAndTalk_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|971190465"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_SetBoolean_v2_57 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_57
  l0._graph = self
  l0._name = "box_SetBoolean_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|971386898"
  l0.Out = self.f_box_SetBoolean_v2_57_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_57_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_57_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_57_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_57_SetFromBool
  self.box_MultipleOR_98 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_98
  l0._graph = self
  l0._name = "box_MultipleOR_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|992779092"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_98_Out
  self.box_SetBoolean_v2_59 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1021287414"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_GameplayInteractionController_88 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_88
  l0._graph = self
  l0._name = "box_GameplayInteractionController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1061304598"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self.box_PlayDialog_v2_81 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_81
  l0._graph = self
  l0._name = "box_PlayDialog_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1075878264"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_135 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_135
  l0._graph = self
  l0._name = "box_Timer_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1105266001"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_135_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_75 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_75
  l0._graph = self
  l0._name = "box_SetBoolean_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1121922439"
  l0.Out = self.f_box_SetBoolean_v2_75_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_75_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_75_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_75_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_75_SetFromBool
  self.box_LogicGate_v2_52 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_52
  l0._graph = self
  l0._name = "box_LogicGate_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1123339703"
  l0.Out = self.f_box_LogicGate_v2_52_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_52_Closed
  self.box_SetBoolean_v2_8 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1135059091"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_PlayDialog_v2_64 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_64
  l0._graph = self
  l0._name = "box_PlayDialog_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1162083949"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_65 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_65
  l0._graph = self
  l0._name = "box_PlayDialog_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1222423686"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_LogicGate_v2_37 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_37
  l0._graph = self
  l0._name = "box_LogicGate_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1250702604"
  l0.Out = self.f_box_LogicGate_v2_37_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_37_Closed
  self.box_TaxiStrategiesController_3 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_3
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1256414273"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_3_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_Timer_v2_95 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_95
  l0._graph = self
  l0._name = "box_Timer_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1299111683"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LogicGate_v2_83 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_83
  l0._graph = self
  l0._name = "box_LogicGate_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1306432189"
  l0.Out = self.f_box_LogicGate_v2_83_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_83_Closed
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1324620823"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_117 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_117
  l0._graph = self
  l0._name = "box_MultipleOR_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1341619940"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_117_Out
  self.box_DriveAndTalk_28 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_28
  l0._graph = self
  l0._name = "box_DriveAndTalk_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1363782438"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_CLOController_54 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_54
  l0._graph = self
  l0._name = "box_CLOController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1401122271"
  l0.Activated = self.f_box_CLOController_54_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_54_OnUserInPlace
  self.box_ListWriter_55 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_55
  l0._graph = self
  l0._name = "box_ListWriter_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1415090193"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_55_Added
  l0.Removed = self.f_box_ListWriter_55_Removed
  l0.Out = self.f_box_ListWriter_55_Out
  self.box_DriveAndTalk_31 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_31
  l0._graph = self
  l0._name = "box_DriveAndTalk_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1419451649"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_16 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_16
  l0._graph = self
  l0._name = "box_DriveAndTalk_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1436681692"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_16_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_16_TalkFailed
  self.box_LogicGate_v2_39 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_39
  l0._graph = self
  l0._name = "box_LogicGate_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1493643569"
  l0.Out = self.f_box_LogicGate_v2_39_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_39_Closed
  self.box_MultipleOR_104 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_104
  l0._graph = self
  l0._name = "box_MultipleOR_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1530122982"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_104_Out
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1551618042"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_MultipleOR_41 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_41
  l0._graph = self
  l0._name = "box_MultipleOR_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1556403713"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_41_Out
  self.box_SetBoolean_v2_80 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_80
  l0._graph = self
  l0._name = "box_SetBoolean_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1572219496"
  l0.Out = self.f_box_SetBoolean_v2_80_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_80_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_80_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_80_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_80_SetFromBool
  self.box_VehicleMonitor_v3_10 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_10
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1601608026"
  l0.Enabled = self.f_box_VehicleMonitor_v3_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_10_Enter
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_box_VehicleMonitor_v3_10_Exiting
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_SetBoolean_v2_53 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_53
  l0._graph = self
  l0._name = "box_SetBoolean_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1613247831"
  l0.Out = self.f_box_SetBoolean_v2_53_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_53_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_53_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_53_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_53_SetFromBool
  self.box_Proximity_Monitor_109 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_109
  l0._graph = self
  l0._name = "box_Proximity_Monitor_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1615180679"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_109_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_109_ExitRadius
  self.box_MissionMessageController_v3_45 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_45
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1634061862"
  l0.Out = self.f_box_MissionMessageController_v3_45_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_60 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_60
  l0._graph = self
  l0._name = "box_SetBoolean_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1639389347"
  l0.Out = self.f_box_SetBoolean_v2_60_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_60_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_60_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_60_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_60_SetFromBool
  self.box_SetBoolean_v2_12 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_12
  l0._graph = self
  l0._name = "box_SetBoolean_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1675709731"
  l0.Out = self.f_box_SetBoolean_v2_12_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_12_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_12_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_12_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_12_SetFromBool
  self.box_Taxi_SearchArea_143 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.debug.lua")
  l0 = self.box_Taxi_SearchArea_143
  l0._graph = self
  l0._name = "box_Taxi_SearchArea_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1690830317"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_box_Taxi_SearchArea_143_EnteredArea
  l0.ExitedArea = self.f_box_Taxi_SearchArea_143_ExitedArea
  self.box_TaxiRatingController_5 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_5
  l0._graph = self
  l0._name = "box_TaxiRatingController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1718482006"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_5_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1732378418"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_18_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_TaxiRideVehicleMonitor_69 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_69
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1732887157"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_69_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_69_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_69_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_69_PlayerAbandonedVehicle
  self.box_TaxiStrategiesController_96 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_96
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1744778383"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_96_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_102 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_102
  l0._graph = self
  l0._name = "box_MultipleOR_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1750473634"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_102_Out
  self.box_Timer_v2_153 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_153
  l0._graph = self
  l0._name = "box_Timer_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1752115086"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_153_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_153_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_116 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_116
  l0._graph = self
  l0._name = "box_MultipleOR_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1784247254"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_116_Out
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1844636123"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1851260300"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TutorialController_97 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_97
  l0._graph = self
  l0._name = "box_TutorialController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1855562024"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_DriveAndTalk_25 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_25
  l0._graph = self
  l0._name = "box_DriveAndTalk_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1875120604"
  l0.Started = self.f_box_DriveAndTalk_25_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_25_TalkFailed
  self.box_Timer_v2_42 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_42
  l0._graph = self
  l0._name = "box_Timer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1914535316"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_33 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_33
  l0._graph = self
  l0._name = "box_SetBoolean_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1915444706"
  l0.Out = self.f_box_SetBoolean_v2_33_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_33_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_33_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_33_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_33_SetFromBool
  self.box_DriveAndTalk_22 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_22
  l0._graph = self
  l0._name = "box_DriveAndTalk_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1917666202"
  l0.Started = self.f_box_DriveAndTalk_22_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_22_TalkFailed
  self.box_MissionMessageController_v3_77 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_77
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1930888806"
  l0.Out = self.f_box_MissionMessageController_v3_77_Out
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_40 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1932938431"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideReachDestinationMonitor_40_Disabled
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_40_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_40_ClientDropOff
  self.box_SetBoolean_v2_24 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_24
  l0._graph = self
  l0._name = "box_SetBoolean_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1945157315"
  l0.Out = self.f_box_SetBoolean_v2_24_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_24_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_24_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_24_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_24_SetFromBool
  self.box_PawnHealthMonitor_v3_90 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_90
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2034650389"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_90_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MultipleOR_205 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_205
  l0._graph = self
  l0._name = "box_MultipleOR_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2039879872"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_205_Out
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2073678891"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_35_Out
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
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1439214801", "1439214801", "Taxi09_Main", "CheckPoint_0", "box_MultipleOR_20.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1596258987", "1596258987", "Taxi09_Main", "In", "box_MultipleOR_20.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_174_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_48()
  l0 = self.box_LogicGate_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1707970968", "1707970968", "Taxi09_Main", "box_Ordered_Output_174.Out", "box_LogicGate_v2_48.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_174_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_46()
  l0 = self.box_LogicGate_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1534863651", "1534863651", "Taxi09_Main", "box_Ordered_Output_174.Out", "box_LogicGate_v2_46.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_174_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_39()
  l0 = self.box_LogicGate_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|709675190", "709675190", "Taxi09_Main", "box_Ordered_Output_174.Out", "box_LogicGate_v2_39.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_82_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.A1_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2070203451", "2070203451", "Taxi09_Main", "box_SetBoolean_v2_82.SetFalse", "box_SetBoolean_v2_57.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_82_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.A1_Visible = l0.Target
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_10()
  l0 = self.box_VehicleMonitor_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|920294357", "920294357", "Taxi09_Main", "box_Ordered_Output_13.Out", "box_VehicleMonitor_v3_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|577100160"
  l0.Out = self.f_box_Simple_Node_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1796430552", "1796430552", "Taxi09_Main", "box_Ordered_Output_13.Out", "box_Simple_Node_34.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_51_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|564240099"
  l0.Out = self.f_box_Get_Player_ID_17_Out
  l0 = self.box_MissionLayer_v2_51
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2016276145", "2016276145", "Taxi09_Main", "box_MissionLayer_v2_51.Loaded", "box_Get_Player_ID_17.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  l0.Bool = 0
  l0 = self.box_MissionCheckpointReach_76
  l1 = self.box_SetBoolean_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1166385100", "1166385100", "Taxi09_Main", "box_MissionCheckpointReach_76.Out", "box_SetBoolean_v2_75.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_SetBoolean_v2_14_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_14_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_14_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_14_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.A3_Visible = l0.Target
  self:OnEnter_box_TaxiRidePickUpController_78()
  l1 = self.box_TaxiRidePickUpController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1407447006", "1407447006", "Taxi09_Main", "box_SetBoolean_v2_14.SetTrue", "box_TaxiRidePickUpController_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_14_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_14
  self.A3_Visible = l0.Target
end
function export:f_box_TaxiRatingController_72_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_74
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0 = self.box_TaxiRatingController_72
  l1 = self.box_TaxiStrategiesController_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|497933712", "497933712", "Taxi09_Main", "box_TaxiRatingController_72.RatingReset", "box_TaxiStrategiesController_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_15_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_5
  l0.MissionName = self.Mission
  l0 = self.box_PlayDialog_v2_15
  l1 = self.box_TaxiRatingController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|819133680", "819133680", "Taxi09_Main", "box_PlayDialog_v2_15.Finished", "box_TaxiRatingController_5.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_51
  l0.LayerName = "Taxi09_Main"
  l0 = self.box_MultipleOR_20
  l1 = self.box_MissionLayer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1248247302", "1248247302", "Taxi09_Main", "box_MultipleOR_20.Out", "box_MissionLayer_v2_51.Load", l0, l1)
  l1:Load()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_28()
  l0 = self.box_Timer_v2_30
  l1 = self.box_DriveAndTalk_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1430049147", "1430049147", "Taxi09_Main", "box_Timer_v2_30.TimeElapsed", "box_DriveAndTalk_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_193_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_65
  l0.SoundId = "soundbinary/638086499.bnk"
  l0.Queue = 1
  l0 = self.box_SwitchOutput_v3_193
  l1 = self.box_PlayDialog_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1401722422", "1401722422", "Taxi09_Main", "box_SwitchOutput_v3_193.Output", "box_PlayDialog_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_193_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_64
  l0.SoundId = "soundbinary/263603219.bnk"
  l0.Queue = 1
  l0 = self.box_SwitchOutput_v3_193
  l1 = self.box_PlayDialog_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1372300437", "1372300437", "Taxi09_Main", "box_SwitchOutput_v3_193.Output", "box_PlayDialog_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_193_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_66
  l0.SoundId = "soundbinary/1038561728.bnk"
  l0.Queue = 1
  l0 = self.box_SwitchOutput_v3_193
  l1 = self.box_PlayDialog_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1287209241", "1287209241", "Taxi09_Main", "box_SwitchOutput_v3_193.Output", "box_PlayDialog_v2_66.Start", l0, l1)
  l1:Start()
end
function export:f_box_LogicGate_v2_48_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_LogicGate_v2_48
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|63740844", "63740844", "Taxi09_Main", "box_LogicGate_v2_48.Closed", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_48_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_LogicGate_v2_48
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1176482799", "1176482799", "Taxi09_Main", "box_LogicGate_v2_48.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionCheckpointReach_94_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_91
  l0.LayerName = "Taxi09_Main"
  l0 = self.box_MissionCheckpointReach_94
  l1 = self.box_MissionLayer_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1544720738", "1544720738", "Taxi09_Main", "box_MissionCheckpointReach_94.AllCheckpointsDisabled", "box_MissionLayer_v2_91.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_SetBoolean_v2_79_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_79_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.A3_Visible = l0.Target
  self:OnEnter_box_Timer_v2_126()
  l1 = self.box_Timer_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1796954279", "1796954279", "Taxi09_Main", "box_SetBoolean_v2_79.SetFalse", "box_Timer_v2_126.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_79_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_79_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_79_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_79
  self.A3_Visible = l0.Target
end
function export:f_box_Simple_Node_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1977805342"
  l0.Out = self.f_box_Simple_Node_112_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|646302717", "646302717", "Taxi09_Main", "box_Simple_Node_111.Out", "box_Simple_Node_112.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_91_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_92
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailRobotDestroyed",
    id = "688544"
  }
  l0 = self.box_MissionLayer_v2_91
  l1 = self.box_MissionController_v4_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2013246043", "2013246043", "Taxi09_Main", "box_MissionLayer_v2_91.Unloaded", "box_MissionController_v4_92.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|760245761", "760245761", "Taxi09_Main", "box_Ordered_Output_100.Out", "box_OnceOnly_v3_9.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|106532269", "106532269", "Taxi09_Main", "box_Ordered_Output_100.Out", "box_MultipleOR_98.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_100_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_103()
  l0 = self.box_MultipleOR_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1285054712", "1285054712", "Taxi09_Main", "box_Ordered_Output_100.Out", "box_MultipleOR_103.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_100_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1803216548", "1803216548", "Taxi09_Main", "box_Ordered_Output_100.Out", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_37()
  l0 = self.box_LogicGate_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2102077917", "2102077917", "Taxi09_Main", "box_Ordered_Output_58.Out", "box_LogicGate_v2_37.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2137495263"
  l0.Out = self.f_box_Simple_Node_86_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1829677648", "1829677648", "Taxi09_Main", "box_Ordered_Output_58.Out", "box_Simple_Node_86.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|14105017", "14105017", "Taxi09_Main", "box_Ordered_Output_58.Out", "box_MultipleOR_102.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Boolean_v2_38_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_37()
  l0 = self.box_LogicGate_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|506421902", "506421902", "Taxi09_Main", "box_Compare_Boolean_v2_38.A_is_True", "box_LogicGate_v2_37.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_29
  l1 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|896278410", "896278410", "Taxi09_Main", "box_MultipleOR_29.Out", "box_MultipleOR_50.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_99_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1936015123", "1936015123", "Taxi09_Main", "box_Ordered_Output_99.Out", "box_OnceOnly_v3_7.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_99_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|596769026", "596769026", "Taxi09_Main", "box_Ordered_Output_99.Out", "box_MultipleOR_98.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_99_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_104()
  l0 = self.box_MultipleOR_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|970937154", "970937154", "Taxi09_Main", "box_Ordered_Output_99.Out", "box_MultipleOR_104.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_23_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_23
  l1 = self.box_MissionController_v4_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|419486495", "419486495", "Taxi09_Main", "box_MissionLayer_v2_23.Unloaded", "box_MissionController_v4_32.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_110_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_90()
  l0 = self.box_MultipleOR_110
  l1 = self.box_PawnHealthMonitor_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1917963493", "1917963493", "Taxi09_Main", "box_MultipleOR_110.Out", "box_PawnHealthMonitor_v3_90.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_19_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.A3_Visible = l0.Target
  self:OnEnter_box_Timer_v2_135()
  l1 = self.box_Timer_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1142627543", "1142627543", "Taxi09_Main", "box_SetBoolean_v2_19.SetFalse", "box_Timer_v2_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_19_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_19_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_19
  self.A3_Visible = l0.Target
end
function export:f_box_GameplayInteractionController_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_2
  self.InteractionID = l0.interactionId
  l0 = self.box_DriveAndTalk_16
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372058556281612"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_2
  l1 = self.box_DriveAndTalk_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1104654446", "1104654446", "Taxi09_Main", "box_GameplayInteractionController_2.Started", "box_DriveAndTalk_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_LogicGate_v2_46_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_LogicGate_v2_46
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|404034455", "404034455", "Taxi09_Main", "box_LogicGate_v2_46.Closed", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_46_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_LogicGate_v2_46
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1202926115", "1202926115", "Taxi09_Main", "box_LogicGate_v2_46.Out", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiStrategiesController_4_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayInteractionController_88
  l0.InInteractionId = self.InteractionID
  l0 = self.box_TaxiStrategiesController_4
  l1 = self.box_GameplayInteractionController_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1862045501", "1862045501", "Taxi09_Main", "box_TaxiStrategiesController_4.Paused", "box_GameplayInteractionController_88.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetFloat_v2_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.SearchTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|549978639", "549978639", "Taxi09_Main", "box_SetFloat_v2_47.Out", "box_SetBoolean_v2_12.True", clone, l0)
  l0:True()
end
function export:f_box_TaxiRidePickUpController_78_ClientConversationFinised()
  local l0
  self = self._graph
  self:OnEnter_box_TaxiRidePickUpController_78()
  l0 = self.box_TaxiRidePickUpController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1803749317", "1803749317", "Taxi09_Main", "box_TaxiRidePickUpController_78.ClientConversationFinised", "box_TaxiRidePickUpController_78.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TaxiRidePickUpController_78_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_78
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_TaxiRatingController_72
  l0.MissionName = self.Mission
  l0 = self.box_TaxiRidePickUpController_78
  l1 = self.box_TaxiRatingController_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1061839124", "1061839124", "Taxi09_Main", "box_TaxiRidePickUpController_78.ClientPickedUp", "box_TaxiRatingController_72.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_TaxiRidePickUpController_78_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_78
  self.Doc = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_69()
  l1 = self.box_TaxiRideVehicleMonitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|40221045", "40221045", "Taxi09_Main", "box_TaxiRidePickUpController_78.ClientSpawned", "box_TaxiRideVehicleMonitor_69.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiRidePickUpController_78_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_55
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Doc
  l0 = self.box_TaxiRidePickUpController_78
  l1 = self.box_ListWriter_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|983584858", "983584858", "Taxi09_Main", "box_TaxiRidePickUpController_78.Disabled", "box_ListWriter_55.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_103_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_28()
  l0 = self.box_MultipleOR_103
  l1 = self.box_DriveAndTalk_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1338133265", "1338133265", "Taxi09_Main", "box_MultipleOR_103.Out", "box_DriveAndTalk_28.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Get_Player_ID_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1742288718", "1742288718", "Taxi09_Main", "box_Get_Player_ID_17.Out", "box_CinematicPrep_1.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|528211798", "528211798", "Taxi09_Main", "box_Ordered_Output_56.Out", "box_SetBoolean_v2_53.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1766474041", "1766474041", "Taxi09_Main", "box_Ordered_Output_56.Out", "box_MultipleOR_35.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_56_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|79633776", "79633776", "Taxi09_Main", "box_Ordered_Output_56.Out", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Taxi_SearchArea_123_EnteredArea()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|566791647"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_56_Out_2
  l0 = self.box_Taxi_SearchArea_123
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1355467190", "1355467190", "Taxi09_Main", "box_Taxi_SearchArea_123.EnteredArea", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Taxi_SearchArea_123_ExitedArea()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_126()
  l0 = self.box_Taxi_SearchArea_123
  l1 = self.box_Timer_v2_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|101599168", "101599168", "Taxi09_Main", "box_Taxi_SearchArea_123.ExitedArea", "box_Timer_v2_126.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_21
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149965"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_27
  l1 = self.box_DriveAndTalk_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|367342533", "367342533", "Taxi09_Main", "box_Timer_v2_27.TimeElapsed", "box_DriveAndTalk_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_69()
  l0 = self.box_TaxiRideVehicleMonitor_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1575137884", "1575137884", "Taxi09_Main", "box_Simple_Node_34.Out", "box_TaxiRideVehicleMonitor_69.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_175_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_175
  self.RobotAreaFound = l0.Target
  self:OnEnter_box_MultipleOR_102()
  l1 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|339693035", "339693035", "Taxi09_Main", "box_SetBoolean_v2_175.Out", "box_MultipleOR_102.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_175_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_175
  self.RobotAreaFound = l0.Target
end
function export:f_box_SetBoolean_v2_175_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_175
  self.RobotAreaFound = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1932521008"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0 = self.box_SetBoolean_v2_175
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2103396803", "2103396803", "Taxi09_Main", "box_SetBoolean_v2_175.SetFromBool", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_175_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_175
  self.RobotAreaFound = l0.Target
end
function export:f_box_SetBoolean_v2_175_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_175
  self.RobotAreaFound = l0.Target
end
function export:f_box_Timer_v2_126_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|394959267"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_99_Out_2
  l0 = self.box_Timer_v2_126
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|313191506", "313191506", "Taxi09_Main", "box_Timer_v2_126.Started", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_126_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149971"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_126
  l1 = self.box_DriveAndTalk_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2104024853", "2104024853", "Taxi09_Main", "box_Timer_v2_126.TimeElapsed", "box_DriveAndTalk_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_123()
  l0 = self.box_MultipleOR_6
  l1 = self.box_Taxi_SearchArea_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1920595965", "1920595965", "Taxi09_Main", "box_MultipleOR_6.Out", "box_Taxi_SearchArea_123.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TaxiStrategiesController_74_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_54
  l0.CLO = "9223372047360497298"
  l0 = self.box_TaxiStrategiesController_74
  l1 = self.box_CLOController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|187408773", "187408773", "Taxi09_Main", "box_TaxiStrategiesController_74.Started", "box_CLOController_54.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Boolean_v2_71_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_83()
  l0 = self.box_LogicGate_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1703257174", "1703257174", "Taxi09_Main", "box_Compare_Boolean_v2_71.A_is_True", "box_LogicGate_v2_83.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_114_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1484177522"
  l0.Out = self.f_box_Simple_Node_43_Out
  l0 = self.box_MultipleOR_114
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|205867251", "205867251", "Taxi09_Main", "box_MultipleOR_114.Out", "box_Simple_Node_43.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1608417732", "1608417732", "Taxi09_Main", "box_OnceOnly_v3_11.Out", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_118_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_118
  l1 = self.box_Timer_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1687946231", "1687946231", "Taxi09_Main", "box_MultipleOR_118.Out", "box_Timer_v2_42.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_95
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|150465303", "150465303", "Taxi09_Main", "box_Ordered_Output_115.Out", "box_Timer_v2_95.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1269239938", "1269239938", "Taxi09_Main", "box_Ordered_Output_115.Out", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Taxi_SearchArea_158_EnteredArea()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1974762130"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_70_Out_2
  l0 = self.box_Taxi_SearchArea_158
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1861307202", "1861307202", "Taxi09_Main", "box_Taxi_SearchArea_158.EnteredArea", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_Taxi_SearchArea_158_ExitedArea()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_153()
  l0 = self.box_Taxi_SearchArea_158
  l1 = self.box_Timer_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|716358085", "716358085", "Taxi09_Main", "box_Taxi_SearchArea_158.ExitedArea", "box_Timer_v2_153.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Compare_Boolean_v2_68_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_52()
  l0 = self.box_LogicGate_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1238643874", "1238643874", "Taxi09_Main", "box_Compare_Boolean_v2_68.A_is_True", "box_LogicGate_v2_52.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1376780902"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_172_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_172_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_172_Out_2
  l0 = self.box_MultipleOR_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1214718651", "1214718651", "Taxi09_Main", "box_MultipleOR_50.Out", "box_Ordered_Output_172.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_57_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_57_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.A2_Visible = l0.Target
  self:OnEnter_box_Timer_v2_153()
  l1 = self.box_Timer_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|538305459", "538305459", "Taxi09_Main", "box_SetBoolean_v2_57.SetFalse", "box_Timer_v2_153.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_57_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_57_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_57_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_57
  self.A2_Visible = l0.Target
end
function export:f_box_MultipleOR_98_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_97()
  l0 = self.box_MultipleOR_98
  l1 = self.box_TutorialController_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1436927608", "1436927608", "Taxi09_Main", "box_MultipleOR_98.Out", "box_TutorialController_97.Display", l0, l1)
  l1:Display()
end
function export:f_box_SetBoolean_v2_59_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.A2_Visible = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|342075525"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_58_Out_2
  l0 = self.box_SetBoolean_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1056329118", "1056329118", "Taxi09_Main", "box_SetBoolean_v2_59.SetTrue", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.A2_Visible = l0.Target
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_110()
  l0 = self.box_MultipleOR_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|221124799", "221124799", "Taxi09_Main", "box_Ordered_Output_107.Out", "box_MultipleOR_110.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|809387546", "809387546", "Taxi09_Main", "box_Ordered_Output_107.Out", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_107_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|246570236"
  l0.Out = self.f_box_Simple_Node_111_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1495889161", "1495889161", "Taxi09_Main", "box_Ordered_Output_107.Out", "box_Simple_Node_111.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_135_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|341089724"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_100_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_100_Out_3
  l0 = self.box_Timer_v2_135
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|15175186", "15175186", "Taxi09_Main", "box_Timer_v2_135.Started", "box_Ordered_Output_100.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_135_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1632042629"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0 = self.box_Timer_v2_135
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1458723430", "1458723430", "Taxi09_Main", "box_Timer_v2_135.TimeElapsed", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_75_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.RobotAreaFound = l0.Target
end
function export:f_box_SetBoolean_v2_75_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.RobotAreaFound = l0.Target
end
function export:f_box_SetBoolean_v2_75_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.RobotAreaFound = l0.Target
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 10
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|550386737"
  l0.Out = self.f_box_SetFloat_v2_47_Out
  l0 = self.box_SetBoolean_v2_75
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|675311928", "675311928", "Taxi09_Main", "box_SetBoolean_v2_75.SetFromBool", "box_SetFloat_v2_47.FromFloat", l0, l1)
  l1:FromFloat()
end
function export:f_box_SetBoolean_v2_75_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.RobotAreaFound = l0.Target
end
function export:f_box_SetBoolean_v2_75_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_75
  self.RobotAreaFound = l0.Target
end
function export:f_box_LogicGate_v2_52_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_48()
  l0 = self.box_LogicGate_v2_52
  l1 = self.box_LogicGate_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|867798852", "867798852", "Taxi09_Main", "box_LogicGate_v2_52.Closed", "box_LogicGate_v2_48.Close", l0, l1)
  l1:Close()
end
function export:f_box_LogicGate_v2_52_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_123()
  l0 = self.box_LogicGate_v2_52
  l1 = self.box_Taxi_SearchArea_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1008826522", "1008826522", "Taxi09_Main", "box_LogicGate_v2_52.Out", "box_Taxi_SearchArea_123.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.A2_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1358868728", "1358868728", "Taxi09_Main", "box_SetBoolean_v2_8.SetTrue", "box_SetBoolean_v2_14.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.A2_Visible = l0.Target
end
function export:f_box_Show_Or_Hide_All_UI_108_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_96
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|519474342", "519474342", "Taxi09_Main", "box_Show_Or_Hide_All_UI_108.Shown", "box_TaxiStrategiesController_96.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_LogicGate_v2_37_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_39()
  l0 = self.box_LogicGate_v2_37
  l1 = self.box_LogicGate_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|356454056", "356454056", "Taxi09_Main", "box_LogicGate_v2_37.Closed", "box_LogicGate_v2_39.Close", l0, l1)
  l1:Close()
end
function export:f_box_LogicGate_v2_37_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_158()
  l0 = self.box_LogicGate_v2_37
  l1 = self.box_Taxi_SearchArea_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1840832023", "1840832023", "Taxi09_Main", "box_LogicGate_v2_37.Out", "box_Taxi_SearchArea_158.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TaxiStrategiesController_3_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_3
  l1 = self.box_MissionMessageController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2143372790", "2143372790", "Taxi09_Main", "box_TaxiStrategiesController_3.Stopped", "box_MissionMessageController_v3_77.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Timer_v2_95_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1188360586"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_108_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_Timer_v2_95
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1393241081", "1393241081", "Taxi09_Main", "box_Timer_v2_95.TimeElapsed", "box_Show_Or_Hide_All_UI_108.Show", l0, l1)
  l1:Show()
end
function export:f_box_LogicGate_v2_83_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_46()
  l0 = self.box_LogicGate_v2_83
  l1 = self.box_LogicGate_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1694049735", "1694049735", "Taxi09_Main", "box_LogicGate_v2_83.Closed", "box_LogicGate_v2_46.Close", l0, l1)
  l1:Close()
end
function export:f_box_LogicGate_v2_83_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_143()
  l0 = self.box_LogicGate_v2_83
  l1 = self.box_Taxi_SearchArea_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1061374718", "1061374718", "Taxi09_Main", "box_LogicGate_v2_83.Out", "box_Taxi_SearchArea_143.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_OnceOnly_v3_7
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1224063198", "1224063198", "Taxi09_Main", "box_OnceOnly_v3_7.Out", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|938069333", "938069333", "Taxi09_Main", "box_Simple_Node_87.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_117_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_117
  l1 = self.box_Timer_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1878938069", "1878938069", "Taxi09_Main", "box_MultipleOR_117.Out", "box_Timer_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_172_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A1_Visible
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|823873994"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_68_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2136744053", "2136744053", "Taxi09_Main", "box_Ordered_Output_172.Out", "box_Compare_Boolean_v2_68.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_172_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A2_Visible
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|640567989"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_71_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1361983113", "1361983113", "Taxi09_Main", "box_Ordered_Output_172.Out", "box_Compare_Boolean_v2_71.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_172_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A3_Visible
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|359047175"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_38_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1632229557", "1632229557", "Taxi09_Main", "box_Ordered_Output_172.Out", "box_Compare_Boolean_v2_38.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_36_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1257617337", "1257617337", "Taxi09_Main", "box_Compare_Boolean_v2_36.A_is_False", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_54_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_10()
  l0 = self.box_CLOController_54
  l1 = self.box_VehicleMonitor_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|167910530", "167910530", "Taxi09_Main", "box_CLOController_54.Activated", "box_VehicleMonitor_v3_10.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_54
  self.Robot = l0.UserID
end
function export:f_box_ListWriter_55_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_55
  self.GIC_Users = l0.Target
  l0 = self.box_GameplayInteractionController_2
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_ListWriter_55
  l1 = self.box_GameplayInteractionController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1444495503", "1444495503", "Taxi09_Main", "box_ListWriter_55.Added", "box_GameplayInteractionController_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_55_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_55_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_55
  self.GIC_Users = l0.Target
end
function export:f_box_DriveAndTalk_16_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_DriveAndTalk_16
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|997420954", "997420954", "Taxi09_Main", "box_DriveAndTalk_16.TalkFailed", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_16_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_DriveAndTalk_16
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1860131011", "1860131011", "Taxi09_Main", "box_DriveAndTalk_16.TalkFinished", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|89773458"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1028774858", "1028774858", "Taxi09_Main", "box_Simple_Node_43.Out", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_LogicGate_v2_39_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_LogicGate_v2_39
  l1 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|336239510", "336239510", "Taxi09_Main", "box_LogicGate_v2_39.Closed", "box_MultipleOR_41.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_39_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_LogicGate_v2_39
  l1 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|910337820", "910337820", "Taxi09_Main", "box_LogicGate_v2_39.Out", "box_MultipleOR_41.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_104_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_31()
  l0 = self.box_MultipleOR_104
  l1 = self.box_DriveAndTalk_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|625341479", "625341479", "Taxi09_Main", "box_MultipleOR_104.Out", "box_DriveAndTalk_31.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1038667911", "1038667911", "Taxi09_Main", "box_Simple_Node_84.Out", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_76
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_1
  l1 = self.box_MissionCheckpointReach_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|334829981", "334829981", "Taxi09_Main", "box_CinematicPrep_1.PostOut", "box_MissionCheckpointReach_76.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_41_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_158()
  l0 = self.box_MultipleOR_41
  l1 = self.box_Taxi_SearchArea_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|77791163", "77791163", "Taxi09_Main", "box_MultipleOR_41.Out", "box_Taxi_SearchArea_158.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_80_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_80
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_80_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_80
  self.A1_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|766017104", "766017104", "Taxi09_Main", "box_SetBoolean_v2_80.SetFalse", "box_SetBoolean_v2_19.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_80_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_80
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_80_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_80
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_80_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_80
  self.A1_Visible = l0.Target
end
function export:f_box_VehicleMonitor_v3_10_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_45
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF090",
    item = "Objective_Reach",
    id = "630492"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_VehicleMonitor_v3_10
  l1 = self.box_MissionMessageController_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|811187214", "811187214", "Taxi09_Main", "box_VehicleMonitor_v3_10.Enabled", "box_MissionMessageController_v3_45.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_VehicleMonitor_v3_10_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RobotAreaFound
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1390900089"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleMonitor_v3_10
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|476032727", "476032727", "Taxi09_Main", "box_VehicleMonitor_v3_10.Enter", "box_Compare_Boolean_v2_36.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_10_Exiting()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RobotAreaFound
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1853782913"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_26_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleMonitor_v3_10
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1936670746", "1936670746", "Taxi09_Main", "box_VehicleMonitor_v3_10.Exiting", "box_Compare_Boolean_v2_26.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_53_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.A2_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1392670240", "1392670240", "Taxi09_Main", "box_SetBoolean_v2_53.SetFalse", "box_SetBoolean_v2_79.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_53_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_53_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.A2_Visible = l0.Target
end
function export:f_box_Proximity_Monitor_109_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_90()
  l0 = self.box_Proximity_Monitor_109
  l1 = self.box_PawnHealthMonitor_v3_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1362497749", "1362497749", "Taxi09_Main", "box_Proximity_Monitor_109.EnterRadius", "box_PawnHealthMonitor_v3_90.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_109_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_110()
  l0 = self.box_Proximity_Monitor_109
  l1 = self.box_MultipleOR_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1421865446", "1421865446", "Taxi09_Main", "box_Proximity_Monitor_109.ExitRadius", "box_MultipleOR_110.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_83()
  l0 = self.box_LogicGate_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1140689698", "1140689698", "Taxi09_Main", "box_Ordered_Output_44.Out", "box_LogicGate_v2_83.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_175
  l0.Bool = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1760224677", "1760224677", "Taxi09_Main", "box_Ordered_Output_44.Out", "box_SetBoolean_v2_175.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_81
  l0.Entity = self.Doc
  l0.SoundId = "soundbinary/4080018232.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2109529637", "2109529637", "Taxi09_Main", "box_Ordered_Output_44.Out", "box_PlayDialog_v2_81.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_45_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MissionMessageController_v3_45
  l1 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|536757333", "536757333", "Taxi09_Main", "box_MissionMessageController_v3_45.Out", "box_MultipleOR_29.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_60_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.A1_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1954493840", "1954493840", "Taxi09_Main", "box_SetBoolean_v2_60.SetTrue", "box_SetBoolean_v2_59.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_60_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_12_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.A1_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_12_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.A1_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|577284118", "577284118", "Taxi09_Main", "box_SetBoolean_v2_12.SetTrue", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_12_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_12
  self.A1_Visible = l0.Target
end
function export:f_box_Taxi_SearchArea_143_EnteredArea()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1841359919"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_67_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_67_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_67_Out_2
  l0 = self.box_Taxi_SearchArea_143
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|909807463", "909807463", "Taxi09_Main", "box_Taxi_SearchArea_143.EnteredArea", "box_Ordered_Output_67.In", l0, l1)
  l1:In()
end
function export:f_box_Taxi_SearchArea_143_ExitedArea()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_135()
  l0 = self.box_Taxi_SearchArea_143
  l1 = self.box_Timer_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1189526872", "1189526872", "Taxi09_Main", "box_Taxi_SearchArea_143.ExitedArea", "box_Timer_v2_135.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRatingController_5_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_3
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0 = self.box_TaxiRatingController_5
  l1 = self.box_TaxiStrategiesController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1400402551", "1400402551", "Taxi09_Main", "box_TaxiRatingController_5.RewardShown", "box_TaxiStrategiesController_3.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_18_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_15
  l0.SoundId = "soundbinary/3884384578.bnk"
  l0 = self.box_CLOController_18
  l1 = self.box_PlayDialog_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1623146331", "1623146331", "Taxi09_Main", "box_CLOController_18.UnspawnedUser", "box_PlayDialog_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideVehicleMonitor_69_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_73()
  l0 = self.box_TaxiRideVehicleMonitor_69
  l1 = self.box_Taxi_AbortMission_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1624849371", "1624849371", "Taxi09_Main", "box_TaxiRideVehicleMonitor_69.ClientBailedOut", "box_Taxi_AbortMission_73.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_69_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_73()
  l0 = self.box_TaxiRideVehicleMonitor_69
  l1 = self.box_Taxi_AbortMission_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|69674421", "69674421", "Taxi09_Main", "box_TaxiRideVehicleMonitor_69.ClientDeath", "box_Taxi_AbortMission_73.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_69_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_73()
  l0 = self.box_TaxiRideVehicleMonitor_69
  l1 = self.box_Taxi_AbortMission_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|260154871", "260154871", "Taxi09_Main", "box_TaxiRideVehicleMonitor_69.PlayerAbandonedVehicle", "box_Taxi_AbortMission_73.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_69_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_73()
  l0 = self.box_TaxiRideVehicleMonitor_69
  l1 = self.box_Taxi_AbortMission_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2094837669", "2094837669", "Taxi09_Main", "box_TaxiRideVehicleMonitor_69.VehicleUnusable", "box_Taxi_AbortMission_73.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_TaxiStrategiesController_96_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_96
  l1 = self.box_MissionCheckpointReach_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1587266336", "1587266336", "Taxi09_Main", "box_TaxiStrategiesController_96.Stopped", "box_MissionCheckpointReach_94.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_MultipleOR_102_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_97()
  l0 = self.box_MultipleOR_102
  l1 = self.box_TutorialController_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1464233087", "1464233087", "Taxi09_Main", "box_MultipleOR_102.Out", "box_TutorialController_97.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Timer_v2_153_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2066292150"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_101_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_101_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_101_Out_2
  l0 = self.box_Timer_v2_153
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|491728037", "491728037", "Taxi09_Main", "box_Timer_v2_153.Started", "box_Ordered_Output_101.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_153_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_22
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049052868101"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_153
  l1 = self.box_DriveAndTalk_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1636557801", "1636557801", "Taxi09_Main", "box_Timer_v2_153.TimeElapsed", "box_DriveAndTalk_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_116_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l0.Seconds = 3
  l0 = self.box_MultipleOR_116
  l1 = self.box_Timer_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|855602294", "855602294", "Taxi09_Main", "box_MultipleOR_116.Out", "box_Timer_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_52()
  l0 = self.box_LogicGate_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1029832058", "1029832058", "Taxi09_Main", "box_Ordered_Output_49.Out", "box_LogicGate_v2_52.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2147176854"
  l0.Out = self.f_box_Simple_Node_85_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1333045075", "1333045075", "Taxi09_Main", "box_Ordered_Output_49.Out", "box_Simple_Node_85.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_49_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_102()
  l0 = self.box_MultipleOR_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1542037260", "1542037260", "Taxi09_Main", "box_Ordered_Output_49.Out", "box_MultipleOR_102.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_67_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|787668823", "787668823", "Taxi09_Main", "box_Ordered_Output_67.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_67_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|425240250", "425240250", "Taxi09_Main", "box_Ordered_Output_67.Out", "box_SetBoolean_v2_80.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_67_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_41()
  l0 = self.box_MultipleOR_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|840212850", "840212850", "Taxi09_Main", "box_Ordered_Output_67.Out", "box_MultipleOR_41.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_OnceOnly_v3_9
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1744291965", "1744291965", "Taxi09_Main", "box_OnceOnly_v3_9.Out", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_SwitchOutput_v3_193
  l0.AutoReset = 1
  l0 = self.box_Timer_v2_105
  l1 = self.box_SwitchOutput_v3_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|444882596", "444882596", "Taxi09_Main", "box_Timer_v2_105.TimeElapsed", "box_SwitchOutput_v3_193.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_26_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|47835001"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_174_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_174_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_174_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|5485144", "5485144", "Taxi09_Main", "box_Compare_Boolean_v2_26.A_is_False", "box_Ordered_Output_174.In", clone, l0)
  l0:In()
end
function export:f_box_DriveAndTalk_25_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_SetBoolean_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|553752467", "553752467", "Taxi09_Main", "box_DriveAndTalk_25.Started", "box_SetBoolean_v2_33.True", l0, l1)
  l1:True()
end
function export:f_box_DriveAndTalk_25_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1369716409", "1369716409", "Taxi09_Main", "box_DriveAndTalk_25.TalkFailed", "box_MultipleOR_117.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_25_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|644859263", "644859263", "Taxi09_Main", "box_DriveAndTalk_25.TalkFinished", "box_MultipleOR_117.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_42_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DriveAndTalk_31()
  l0 = self.box_Timer_v2_42
  l1 = self.box_DriveAndTalk_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1587898916", "1587898916", "Taxi09_Main", "box_Timer_v2_42.TimeElapsed", "box_DriveAndTalk_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_33_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.A2_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.A2_Visible = l0.Target
  l1 = self.box_SetBoolean_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1058790690", "1058790690", "Taxi09_Main", "box_SetBoolean_v2_33.SetTrue", "box_SetBoolean_v2_24.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_33_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.A2_Visible = l0.Target
end
function export:f_box_DriveAndTalk_22_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_SetBoolean_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1962643026", "1962643026", "Taxi09_Main", "box_DriveAndTalk_22.Started", "box_SetBoolean_v2_60.True", l0, l1)
  l1:True()
end
function export:f_box_DriveAndTalk_22_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1661966268", "1661966268", "Taxi09_Main", "box_DriveAndTalk_22.TalkFailed", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_22_TalkFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_DriveAndTalk_22
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1426116236", "1426116236", "Taxi09_Main", "box_DriveAndTalk_22.TalkFinished", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_23
  l0.LayerName = "Taxi09_Main"
  l0 = self.box_MissionMessageController_v3_77
  l1 = self.box_MissionLayer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1191646136", "1191646136", "Taxi09_Main", "box_MissionMessageController_v3_77.Out", "box_MissionLayer_v2_23.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_40()
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1828966922", "1828966922", "Taxi09_Main", "box_Ordered_Output_93.Out", "box_TaxiRideReachDestinationMonitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_93_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_109()
  l0 = self.box_Proximity_Monitor_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1508816684", "1508816684", "Taxi09_Main", "box_Ordered_Output_93.Out", "box_Proximity_Monitor_109.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRideReachDestinationMonitor_40_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2074147516"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_113_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_113_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1137957489", "1137957489", "Taxi09_Main", "box_TaxiRideReachDestinationMonitor_40.ClientDropOff", "box_Ordered_Output_113.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_40_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  l0.User = self.Robot
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2120302631", "2120302631", "Taxi09_Main", "box_TaxiRideReachDestinationMonitor_40.Disabled", "box_CLOController_18.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_TaxiRideReachDestinationMonitor_40_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_4
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  l1 = self.box_TaxiStrategiesController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|184031294", "184031294", "Taxi09_Main", "box_TaxiRideReachDestinationMonitor_40.ReachDestination", "box_TaxiStrategiesController_4.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_SetBoolean_v2_24_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_24
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_24_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_24
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_24_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_24
  self.A3_Visible = l0.Target
end
function export:f_box_SetBoolean_v2_24_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_24
  self.A3_Visible = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1811010498"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_49_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_49_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_49_Out_2
  l0 = self.box_SetBoolean_v2_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1631563484", "1631563484", "Taxi09_Main", "box_SetBoolean_v2_24.SetTrue", "box_Ordered_Output_49.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_24_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_24
  self.A3_Visible = l0.Target
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|606746587", "606746587", "Taxi09_Main", "box_Ordered_Output_70.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|933720495", "933720495", "Taxi09_Main", "box_Ordered_Output_70.Out", "box_MultipleOR_35.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_70_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1118084753", "1118084753", "Taxi09_Main", "box_Ordered_Output_70.Out", "box_SetBoolean_v2_82.False", clone, l0)
  l0:False()
end
function export:f_box_Simple_Node_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_109()
  l0 = self.box_Proximity_Monitor_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|857972454", "857972454", "Taxi09_Main", "box_Simple_Node_112.Out", "box_Proximity_Monitor_109.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v3_90_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|718844067"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_115_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0 = self.box_PawnHealthMonitor_v3_90
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|410713318", "410713318", "Taxi09_Main", "box_PawnHealthMonitor_v3_90.Killed", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_205_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 0.2
  l0 = self.box_MultipleOR_205
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|2103359129", "2103359129", "Taxi09_Main", "box_MultipleOR_205.Out", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_101_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|450361215", "450361215", "Taxi09_Main", "box_Ordered_Output_101.Out", "box_OnceOnly_v3_11.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_101_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1032839710", "1032839710", "Taxi09_Main", "box_Ordered_Output_101.Out", "box_MultipleOR_98.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_101_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_103()
  l0 = self.box_MultipleOR_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1417665933", "1417665933", "Taxi09_Main", "box_Ordered_Output_101.Out", "box_MultipleOR_103.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_SearchArea_143()
  l0 = self.box_MultipleOR_35
  l1 = self.box_Taxi_SearchArea_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|466794599", "466794599", "Taxi09_Main", "box_MultipleOR_35.Out", "box_Taxi_SearchArea_143.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_113_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_40()
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|764975943", "764975943", "Taxi09_Main", "box_Ordered_Output_113.Out", "box_TaxiRideReachDestinationMonitor_40.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_113_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1041884158"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_107_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1576964776", "1576964776", "Taxi09_Main", "box_Ordered_Output_113.Out", "box_Ordered_Output_107.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_86_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1548156834"
  l0.Out = self.f_box_Simple_Node_84_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1057033214", "1057033214", "Taxi09_Main", "box_Simple_Node_86.Out", "box_Simple_Node_84.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1334103328"
  l0.Out = self.f_box_Simple_Node_87_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi09.domino|@Taxi09_Main|1898994199", "1898994199", "Taxi09_Main", "box_Simple_Node_85.Out", "box_Simple_Node_87.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_LogicGate_v2_48()
end
function export:OnEnter_box_Taxi_AbortMission_73()
  local l0
  l0 = self.box_Taxi_AbortMission_73
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi09_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360432920"
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149968"
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_MultipleOR_110()
end
function export:OnEnter_box_LogicGate_v2_46()
end
function export:OnEnter_box_TaxiRidePickUpController_78()
  local l0
  l0 = self.box_TaxiRidePickUpController_78
  l0.ClientClo = "9223372046858871345"
  l0.PickUpIcon = "9223372048443843204"
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:OnEnter_box_MultipleOR_103()
end
function export:OnEnter_box_Taxi_SearchArea_123()
  local l0
  l0 = self.box_Taxi_SearchArea_123
  l0.SearchArea = self.Taxi09_SearchArea_1
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_1
end
function export:OnEnter_box_Timer_v2_126()
  local l0
  l0 = self.box_Timer_v2_126
  l0.Seconds = self.SearchTimer
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_114()
end
function export:OnEnter_box_MultipleOR_118()
end
function export:OnEnter_box_Taxi_SearchArea_158()
  local l0
  l0 = self.box_Taxi_SearchArea_158
  l0.SearchArea = "9223372046858871196"
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_3
end
function export:OnEnter_box_MultipleOR_50()
end
function export:OnEnter_box_MultipleOR_98()
end
function export:OnEnter_box_Timer_v2_135()
  local l0
  l0 = self.box_Timer_v2_135
  l0.Seconds = self.SearchTimer
end
function export:OnEnter_box_LogicGate_v2_52()
end
function export:OnEnter_box_LogicGate_v2_37()
end
function export:OnEnter_box_LogicGate_v2_83()
end
function export:OnEnter_box_MultipleOR_117()
end
function export:OnEnter_box_DriveAndTalk_28()
  local l0
  l0 = self.box_DriveAndTalk_28
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149966"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_DriveAndTalk_31()
  local l0
  l0 = self.box_DriveAndTalk_31
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149967"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_LogicGate_v2_39()
end
function export:OnEnter_box_MultipleOR_104()
end
function export:OnEnter_box_MultipleOR_41()
end
function export:OnEnter_box_VehicleMonitor_v3_10()
  local l0
  l0 = self.box_VehicleMonitor_v3_10
  l0.Vehicle = self.PlayerVehicle
end
function export:OnEnter_box_Proximity_Monitor_109()
  local l0
  l0 = self.box_Proximity_Monitor_109
  l0.Entity1 = self.Robot
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 40
  l0.CheckNow = 1
end
function export:OnEnter_box_Taxi_SearchArea_143()
  local l0
  l0 = self.box_Taxi_SearchArea_143
  l0.SearchArea = self.Taxi09_SearchArea_2
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_2
end
function export:OnEnter_box_TaxiRideVehicleMonitor_69()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_69
  l0.Client = self.Doc
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:OnEnter_box_MultipleOR_102()
end
function export:OnEnter_box_Timer_v2_153()
  local l0
  l0 = self.box_Timer_v2_153
  l0.Seconds = self.SearchTimer
end
function export:OnEnter_box_MultipleOR_116()
end
function export:OnEnter_box_TutorialController_97()
  local l0
  l0 = self.box_TutorialController_97
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "SearchForRobot",
    id = "688538"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_40()
  local l0
  l0 = self.box_TaxiRideReachDestinationMonitor_40
  l0.Client = self.Doc
  l0.DropOffIcon = "9223372046858872966"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF090",
    item = "Objective_Keep_Searching",
    id = "630494"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:OnEnter_box_PawnHealthMonitor_v3_90()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_90
  l0.Pawn = self.Robot
end
function export:OnEnter_box_MultipleOR_205()
end
function export:OnEnter_box_MultipleOR_35()
end
_compilerVersion = 4
