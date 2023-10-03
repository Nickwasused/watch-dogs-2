export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
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
  self._name = "Taxi12_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main"
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
  self.box_Multiple_AND_17 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_17
  l0._graph = self
  l0._name = "box_Multiple_AND_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|245872"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_17_Out
  self.box_GameplayInteractionController_106 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_106
  l0._graph = self
  l0._name = "box_GameplayInteractionController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|67544224"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_106_Started
  l0.Stopped = DummyFunction
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|69293646"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_SetBoolean_v2_43 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_43
  l0._graph = self
  l0._name = "box_SetBoolean_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|103575740"
  l0.Out = self.f_box_SetBoolean_v2_43_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_43_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_43_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_43_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_43_SetFromBool
  self.box_MultipleOR_131 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_131
  l0._graph = self
  l0._name = "box_MultipleOR_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|129448991"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_131_Out
  self.box_TaxiRideReachDestinationMonitor_18 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|143874546"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_18_ReachDestination
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_18_ClientDropOff
  self.box_PlayDialog_v2_121 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_121
  l0._graph = self
  l0._name = "box_PlayDialog_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|173057618"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_121_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_121_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_133 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_133
  l0._graph = self
  l0._name = "box_PlayDialog_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|219435906"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_133_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_133_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|229068816"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_TaxiRideReachDestinationMonitor_6 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|297154416"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = DummyFunction
  l0.ClientDropOff = self.f_box_TaxiRideReachDestinationMonitor_6_ClientDropOff
  self.box_SetBoolean_v2_46 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_46
  l0._graph = self
  l0._name = "box_SetBoolean_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|329826857"
  l0.Out = self.f_box_SetBoolean_v2_46_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_46_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_46_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_46_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_46_SetFromBool
  self.box_PlayDialog_v2_124 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_124
  l0._graph = self
  l0._name = "box_PlayDialog_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|405679298"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_124_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_124_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiStrategiesController_114 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_114
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|408248070"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_114_Paused
  l0.Resumed = DummyFunction
  self.box_TaxiRatingController_99 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_99
  l0._graph = self
  l0._name = "box_TaxiRatingController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|433180170"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_box_TaxiRatingController_99_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_ListReaderSoundID_117 = cbox:CreateBox("domino/System/Lists/ListReader_SoundID.lua")
  l0 = self.box_ListReaderSoundID_117
  l0._graph = self
  l0._name = "box_ListReaderSoundID_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|481781384"
  l0.Out = self.f_box_ListReaderSoundID_117_Out
  l0.EndOfList = self.f_box_ListReaderSoundID_117_EndOfList
  self.box_GameplayInteractionController_23 = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self.box_GameplayInteractionController_23
  l0._graph = self
  l0._name = "box_GameplayInteractionController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|508490743"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayInteractionController_23_Started
  l0.Stopped = DummyFunction
  self.box_TaxiStrategiesController_79 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_79
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|551066587"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = self.f_box_TaxiStrategiesController_79_Resumed
  self.box_Timer_v2_19 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_19
  l0._graph = self
  l0._name = "box_Timer_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|588142959"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_19_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_108 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_108
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|593686094"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_108_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_MissionLayer_v2_104 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_104
  l0._graph = self
  l0._name = "box_MissionLayer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|616555051"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_104_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_44 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|686095702"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_TaxiStrategiesController_94 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_94
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|742878102"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_box_TaxiStrategiesController_94_Paused
  l0.Resumed = DummyFunction
  self.box_PlayDialog_v2_132 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_132
  l0._graph = self
  l0._name = "box_PlayDialog_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|748802006"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_132_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_132_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_130 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_130
  l0._graph = self
  l0._name = "box_PlayDialog_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|803223925"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_38 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_38
  l0._graph = self
  l0._name = "box_OnceOnly_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|819164350"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_38_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_123 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_123
  l0._graph = self
  l0._name = "box_PlayDialog_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|841045951"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_123_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_123_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TaxiStrategiesController_103 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_103
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|879769944"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_TaxiStrategiesController_103_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_TaxiStrategiesController_54 = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self.box_TaxiStrategiesController_54
  l0._graph = self
  l0._name = "box_TaxiStrategiesController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|955341189"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|975340291"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_MultipleOR_96 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_96
  l0._graph = self
  l0._name = "box_MultipleOR_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|993869736"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_96_Out
  self.box_Timer_v2_134 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_134
  l0._graph = self
  l0._name = "box_Timer_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1087204268"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_134_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRidePickUpController_27 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_27
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1151663749"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_27_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_27_ClientPickedUp
  l0.ClientConversationFinised = DummyFunction
  self.box_MissionMessageController_v3_62 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_62
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1173805868"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_62_MessageCompleted
  self.box_MissionMessageController_v3_93 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_93
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1190064046"
  l0.Out = self.f_box_MissionMessageController_v3_93_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1205523726"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_DriveAndTalk_14 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_14
  l0._graph = self
  l0._name = "box_DriveAndTalk_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1210891225"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_Taxi_AbortMission_35 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_35
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1215686737"
  self.box_DriveAndTalk_29 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_29
  l0._graph = self
  l0._name = "box_DriveAndTalk_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1260906062"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_29_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_MultipleOR_115 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_115
  l0._graph = self
  l0._name = "box_MultipleOR_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1273091046"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_115_Out
  self.box_Timer_v2_119 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_119
  l0._graph = self
  l0._name = "box_Timer_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1367927422"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_119_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SnapAndBind_11 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_11
  l0._graph = self
  l0._name = "box_SnapAndBind_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1370466311"
  l0.Attached = DummyFunction
  self.box_CinematicPrep_57 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_57
  l0._graph = self
  l0._name = "box_CinematicPrep_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1428807282"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_57_PostOut
  self.box_ListWriter_26 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_26
  l0._graph = self
  l0._name = "box_ListWriter_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1457821492"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_26_Added
  l0.Removed = self.f_box_ListWriter_26_Removed
  l0.Out = self.f_box_ListWriter_26_Out
  self.box_DriveAndTalk_61 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_61
  l0._graph = self
  l0._name = "box_DriveAndTalk_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1472027599"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_FelonyTargetMonitor_40 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_40
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1520717677"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_box_FelonyTargetMonitor_40_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyTargetMonitor_40_Chasing
  l0.Searching = DummyFunction
  l0.Evaded = self.f_box_FelonyTargetMonitor_40_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_TaxiRideVehicleMonitor_53 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_53
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1521464770"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_53_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_53_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_53_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_53_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_53_PlayerAbandonedVehicle
  self.box_DriveAndTalk_9 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_9
  l0._graph = self
  l0._name = "box_DriveAndTalk_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1526142658"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_9_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_ListWriterSoundID_136 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_136
  l0._graph = self
  l0._name = "box_ListWriterSoundID_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1550139815"
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_box_ListWriterSoundID_136_Added
  l0.Removed = self.f_box_ListWriterSoundID_136_Removed
  l0.Out = self.f_box_ListWriterSoundID_136_Out
  self.box_MissionController_v4_101 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_101
  l0._graph = self
  l0._name = "box_MissionController_v4_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1645430775"
  self.box_TaxiRatingController_55 = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self.box_TaxiRatingController_55
  l0._graph = self
  l0._name = "box_TaxiRatingController_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1677408428"
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_box_TaxiRatingController_55_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self.box_PlayDialog_v2_135 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_135
  l0._graph = self
  l0._name = "box_PlayDialog_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1700113887"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_135_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = self.f_box_PlayDialog_v2_135_PriorityFailed
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1714204617"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TaxiRidePickUpController_30 = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self.box_TaxiRidePickUpController_30
  l0._graph = self
  l0._name = "box_TaxiRidePickUpController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1718077185"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientSpawned = self.f_box_TaxiRidePickUpController_30_ClientSpawned
  l0.ClientPickedUp = self.f_box_TaxiRidePickUpController_30_ClientPickedUp
  l0.ClientConversationFinised = self.f_box_TaxiRidePickUpController_30_ClientConversationFinised
  self.box_Taxi_AbortMission_52 = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.debug.lua")
  l0 = self.box_Taxi_AbortMission_52
  l0._graph = self
  l0._name = "box_Taxi_AbortMission_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1759980519"
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1788046625"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_56 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_56
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1801156883"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TaxiRideReachDestinationMonitor_111 = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self.box_TaxiRideReachDestinationMonitor_111
  l0._graph = self
  l0._name = "box_TaxiRideReachDestinationMonitor_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1821064640"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ReachDestination = self.f_box_TaxiRideReachDestinationMonitor_111_ReachDestination
  l0.ClientDropOff = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1889268859"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_Timer_v2_127 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_127
  l0._graph = self
  l0._name = "box_Timer_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1889490370"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_127_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_7 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_7
  l0._graph = self
  l0._name = "box_ListWriter_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1896000217"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_7_Added
  l0.Removed = self.f_box_ListWriter_7_Removed
  l0.Out = self.f_box_ListWriter_7_Out
  self.box_TaxiRideVehicleMonitor_3 = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self.box_TaxiRideVehicleMonitor_3
  l0._graph = self
  l0._name = "box_TaxiRideVehicleMonitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1962721882"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TaxiRideVehicleMonitor_3_Disabled
  l0.ClientDeath = self.f_box_TaxiRideVehicleMonitor_3_ClientDeath
  l0.VehicleUnusable = self.f_box_TaxiRideVehicleMonitor_3_VehicleUnusable
  l0.ClientBailedOut = self.f_box_TaxiRideVehicleMonitor_3_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_box_TaxiRideVehicleMonitor_3_PlayerAbandonedVehicle
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1972870602"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_97 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_97
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1981659905"
  l0.Out = self.f_box_MissionMessageController_v3_97_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2007698214"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_DriveAndTalk_81 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_81
  l0._graph = self
  l0._name = "box_DriveAndTalk_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2034489518"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_81_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_DriveAndTalk_25 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_25
  l0._graph = self
  l0._name = "box_DriveAndTalk_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2067353525"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_box_DriveAndTalk_25_TalkFailed
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2108956004"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_95 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_95
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2109498445"
  l0.Out = self.f_box_MissionCheckpointReach_95_Out
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
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|927676188", "927676188", "Taxi12_Main", "CheckPoint_0", "box_MultipleOR_96.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_96()
  l0 = self.box_MultipleOR_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1607080240", "1607080240", "Taxi12_Main", "In", "box_MultipleOR_96.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Multiple_AND_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_71
  l0.Seconds = 10
  l0 = self.box_Multiple_AND_17
  l1 = self.box_Timer_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|495014409", "495014409", "Taxi12_Main", "box_Multiple_AND_17.Out", "box_Timer_v2_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_106_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_81
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149939"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_106
  l1 = self.box_DriveAndTalk_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1312573897", "1312573897", "Taxi12_Main", "box_GameplayInteractionController_106.Started", "box_DriveAndTalk_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_124
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/2612066200.bnk"
  l0 = self.box_MultipleOR_32
  l1 = self.box_PlayDialog_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1646349684", "1646349684", "Taxi12_Main", "box_MultipleOR_32.Out", "box_PlayDialog_v2_124.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_43_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.Police = l0.Target
  l0 = self.box_MissionMessageController_v3_56
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "EscapePolice",
    id = "333925"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_SetBoolean_v2_43
  l1 = self.box_MissionMessageController_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|683493560", "683493560", "Taxi12_Main", "box_SetBoolean_v2_43.SetTrue", "box_MissionMessageController_v3_56.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_SetBoolean_v2_43_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.Police = l0.Target
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|934751144"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1306932861", "1306932861", "Taxi12_Main", "box_Ordered_Output_24.Out", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1756497583"
  l0.Out = self.f_box_Simple_Node_64_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|366757067", "366757067", "Taxi12_Main", "box_Ordered_Output_24.Out", "box_Simple_Node_64.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_131_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1487559959"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_116_Popped
  l0 = self.box_MultipleOR_131
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1953805487", "1953805487", "Taxi12_Main", "box_MultipleOR_131.Out", "box_SetActionMap_v2_116.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_TaxiRideReachDestinationMonitor_18_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|449464494"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2101109983", "2101109983", "Taxi12_Main", "box_TaxiRideReachDestinationMonitor_18.ClientDropOff", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_18_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|109042682"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1815124377", "1815124377", "Taxi12_Main", "box_TaxiRideReachDestinationMonitor_18.ReachDestination", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_121_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PlayDialog_v2_121
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|930410924", "930410924", "Taxi12_Main", "box_PlayDialog_v2_121.Finished", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_121_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PlayDialog_v2_121
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|303254655", "303254655", "Taxi12_Main", "box_PlayDialog_v2_121.PriorityFailed", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListLength_120_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_ListLength_120_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  l0.Min = 1
  l0.Max = self.BarkCount
  l0._graph = self
  l0._name = "box_Random_Integer_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2126357471"
  l0.Out = self.f_box_Random_Integer_128_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2025977081", "2025977081", "Taxi12_Main", "box_ListLength_120.NotEmpty", "box_Random_Integer_128.In", clone, l0)
  l0:In()
end
function export:f_box_ListLength_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.BarkCount = l0.Length
end
function export:f_box_PlayDialog_v2_133_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_PlayDialog_v2_133
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1558646040", "1558646040", "Taxi12_Main", "box_PlayDialog_v2_133.Finished", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_133_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_PlayDialog_v2_133
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|807769151", "807769151", "Taxi12_Main", "box_PlayDialog_v2_133.PriorityFailed", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|794668992", "794668992", "Taxi12_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1052906986"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_90_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_90_Out_3
  l0 = self.box_MultipleOR_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|944196356", "944196356", "Taxi12_Main", "box_MultipleOR_20.Out", "box_Ordered_Output_90.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetMonitor_40()
  l0 = self.box_FelonyTargetMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|484286236", "484286236", "Taxi12_Main", "box_Simple_Node_47.Out", "box_FelonyTargetMonitor_40.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_94
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|712565220", "712565220", "Taxi12_Main", "box_Ordered_Output_10.Out", "box_TaxiStrategiesController_94.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|585936269"
  l0.Out = self.f_box_Simple_Node_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|413593522", "413593522", "Taxi12_Main", "box_Ordered_Output_10.Out", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_TaxiRideReachDestinationMonitor_6_ClientDropOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|293409183"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|909009573", "909009573", "Taxi12_Main", "box_TaxiRideReachDestinationMonitor_6.ClientDropOff", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372047582725860"
  l0._graph = self
  l0._name = "box_Set_Entity_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1409708891"
  l0.Out = self.f_box_Set_Entity_113_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|124632740", "124632740", "Taxi12_Main", "box_Ordered_Output_82.Out", "box_Set_Entity_113.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|940631020", "940631020", "Taxi12_Main", "box_Ordered_Output_82.Out", "box_Multiple_AND_17.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_SetBoolean_v2_46_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.Police = l0.Target
  self:OnEnter_box_FelonyTargetMonitor_40()
  l1 = self.box_FelonyTargetMonitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1730300612", "1730300612", "Taxi12_Main", "box_SetBoolean_v2_46.SetFalse", "box_FelonyTargetMonitor_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_46_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.Police = l0.Target
end
function export:f_box_SetBoolean_v2_46_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.Police = l0.Target
end
function export:f_box_PlayDialog_v2_124_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlayDialog_v2_124
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1087736966", "1087736966", "Taxi12_Main", "box_PlayDialog_v2_124.Finished", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_124_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PlayDialog_v2_124
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1906852967", "1906852967", "Taxi12_Main", "box_PlayDialog_v2_124.PriorityFailed", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TaxiStrategiesController_114_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_114
  l1 = self.box_SetBoolean_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1689425951", "1689425951", "Taxi12_Main", "box_TaxiStrategiesController_114.Paused", "box_SetBoolean_v2_46.False", l0, l1)
  l1:False()
end
function export:f_box_TaxiRatingController_99_RewardShown()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_103
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0 = self.box_TaxiRatingController_99
  l1 = self.box_TaxiStrategiesController_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1553909037", "1553909037", "Taxi12_Main", "box_TaxiRatingController_99.RewardShown", "box_TaxiStrategiesController_103.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|568673660"
  l0.Out = self.f_box_Simple_Node_59_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1040652166", "1040652166", "Taxi12_Main", "box_Ordered_Output_37.Out", "box_Simple_Node_59.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiStrategiesController_114
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|159794494", "159794494", "Taxi12_Main", "box_Ordered_Output_37.Out", "box_TaxiStrategiesController_114.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_ListReaderSoundID_117_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_117
  l1 = self.box_PlayDialog_v2_130
  l1.SoundId = l0.SoundID
end
function export:f_box_ListReaderSoundID_117_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListReaderSoundID_117
  l1 = self.box_PlayDialog_v2_130
  l1.SoundId = l0.SoundID
  l1.Entity = self.ClientCoach
  l0 = self.box_ListReaderSoundID_117
  l1 = self.box_PlayDialog_v2_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2075188770", "2075188770", "Taxi12_Main", "box_ListReaderSoundID_117.Out", "box_PlayDialog_v2_130.Start", l0, l1)
  l1:Start()
end
function export:f_box_GameplayInteractionController_23_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_25
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149937"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_GameplayInteractionController_23
  l1 = self.box_DriveAndTalk_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1189109741", "1189109741", "Taxi12_Main", "box_GameplayInteractionController_23.Started", "box_DriveAndTalk_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Police
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1569717490"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_42_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1005300771", "1005300771", "Taxi12_Main", "box_Ordered_Output_39.Out", "box_Compare_Boolean_v2_42.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRidePickUpController_27
  l0.ClientClo = "9223372048443731083"
  l0.PickUpIcon = "9223372047582725866"
  l0.ShowPickUpIcon = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402308"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|261517625", "261517625", "Taxi12_Main", "box_Ordered_Output_39.Out", "box_TaxiRidePickUpController_27.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Set_Entity_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Destination_Bar_ = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1368180671", "1368180671", "Taxi12_Main", "box_Set_Entity_112.Out", "box_MultipleOR_115.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_TaxiStrategiesController_79_Resumed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1132446820"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_TaxiStrategiesController_79
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1652718766", "1652718766", "Taxi12_Main", "box_TaxiStrategiesController_79.Resumed", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1113884511"
  l0.Out = self.f_box_Simple_Node_69_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|630375551", "630375551", "Taxi12_Main", "box_Simple_Node_59.Out", "box_Simple_Node_69.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|599059882"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1112247291", "1112247291", "Taxi12_Main", "box_Simple_Node_8.Out", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_19_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_7()
  l0 = self.box_Timer_v2_19
  l1 = self.box_ListWriter_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2084969319", "2084969319", "Taxi12_Main", "box_Timer_v2_19.TimeElapsed", "box_ListWriter_7.Add", l0, l1)
  l1:Add()
end
function export:f_box_TaxiRideReachDestinationMonitor_108_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|783822246"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_108
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1706096090", "1706096090", "Taxi12_Main", "box_TaxiRideReachDestinationMonitor_108.ReachDestination", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_53()
  l0 = self.box_TaxiRideVehicleMonitor_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|918942857", "918942857", "Taxi12_Main", "box_Simple_Node_5.Out", "box_TaxiRideVehicleMonitor_53.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_104_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_104
  l1 = self.box_MissionController_v4_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1198153967", "1198153967", "Taxi12_Main", "box_MissionLayer_v2_104.Unloaded", "box_MissionController_v4_101.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_44
  l1 = self.box_OnceOnly_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|903197293", "903197293", "Taxi12_Main", "box_MultipleOR_44.Out", "box_OnceOnly_v3_38.In", l0, l1)
  l1:In(0)
end
function export:f_box_TaxiStrategiesController_94_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_99
  l0.MissionName = self.Mission
  l0 = self.box_TaxiStrategiesController_94
  l1 = self.box_TaxiRatingController_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|946135775", "946135775", "Taxi12_Main", "box_TaxiStrategiesController_94.Paused", "box_TaxiRatingController_99.ShowReward", l0, l1)
  l1:ShowReward()
end
function export:f_box_PlayDialog_v2_132_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_PlayDialog_v2_132
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|991652995", "991652995", "Taxi12_Main", "box_PlayDialog_v2_132.Finished", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_132_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_PlayDialog_v2_132
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|54804737", "54804737", "Taxi12_Main", "box_PlayDialog_v2_132.PriorityFailed", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = "9223372047582725807"
  l0._graph = self
  l0._name = "box_Set_Entity_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|547127323"
  l0.Out = self.f_box_Set_Entity_112_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|851606392", "851606392", "Taxi12_Main", "box_Ordered_Output_41.Out", "box_Set_Entity_112.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_17()
  l0 = self.box_Multiple_AND_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1624081734", "1624081734", "Taxi12_Main", "box_Ordered_Output_41.Out", "box_Multiple_AND_17.Condition", clone, l0)
  l0:Condition(0)
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
  l0 = self.box_CinematicPrep_57
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1771128838", "1771128838", "Taxi12_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_57.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_OnceOnly_v3_38_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|528812696"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0 = self.box_OnceOnly_v3_38
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|685150533", "685150533", "Taxi12_Main", "box_OnceOnly_v3_38.Out", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_123_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_PlayDialog_v2_123
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1582509497", "1582509497", "Taxi12_Main", "box_PlayDialog_v2_123.Finished", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlayDialog_v2_123_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_PlayDialog_v2_123
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1260263347", "1260263347", "Taxi12_Main", "box_PlayDialog_v2_123.PriorityFailed", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TaxiStrategiesController_103_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_103
  l1 = self.box_MissionMessageController_v3_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|857063177", "857063177", "Taxi12_Main", "box_TaxiStrategiesController_103.Stopped", "box_MissionMessageController_v3_93.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1304270650"
  l0.Out = self.f_box_Simple_Node_65_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|428616153", "428616153", "Taxi12_Main", "box_Simple_Node_67.Out", "box_Simple_Node_65.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_127
  l0.Seconds = 2
  l0 = self.box_MultipleOR_33
  l1 = self.box_Timer_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|371527291", "371527291", "Taxi12_Main", "box_MultipleOR_33.Out", "box_Timer_v2_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_96_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Taxi12_Main"
  l0 = self.box_MultipleOR_96
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|856655201", "856655201", "Taxi12_Main", "box_MultipleOR_96.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_108()
  l0 = self.box_TaxiRideReachDestinationMonitor_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|751476389", "751476389", "Taxi12_Main", "box_Ordered_Output_90.Out", "box_TaxiRideReachDestinationMonitor_108.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_111()
  l0 = self.box_TaxiRideReachDestinationMonitor_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1959307969", "1959307969", "Taxi12_Main", "box_Ordered_Output_90.Out", "box_TaxiRideReachDestinationMonitor_111.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_90_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: I'll go drag him out.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaxiRideReachDestinationMonitor')-- Comment: I'll go drag him out.")
  l0 = self.box_TaxiRideReachDestinationMonitor_18
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725866"
  l0.LastDestination = 1
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1705026334", "1705026334", "Taxi12_Main", "box_Ordered_Output_90.Out", "box_TaxiRideReachDestinationMonitor_18.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_90_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_15
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|568547372", "568547372", "Taxi12_Main", "box_Ordered_Output_90.Out", "box_Timer_v2_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_111()
  l0 = self.box_TaxiRideReachDestinationMonitor_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1563742904", "1563742904", "Taxi12_Main", "box_Simple_Node_45.Out", "box_TaxiRideReachDestinationMonitor_111.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_134_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_132
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/614818790.bnk"
  l0 = self.box_Timer_v2_134
  l1 = self.box_PlayDialog_v2_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1922907275", "1922907275", "Taxi12_Main", "box_Timer_v2_134.TimeElapsed", "box_PlayDialog_v2_132.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_3()
  l0 = self.box_TaxiRideVehicleMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|155817566", "155817566", "Taxi12_Main", "box_Simple_Node_69.Out", "box_TaxiRideVehicleMonitor_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_19
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|164753910", "164753910", "Taxi12_Main", "box_Ordered_Output_12.Out", "box_Timer_v2_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TaxiRideReachDestinationMonitor_6
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1436031423", "1436031423", "Taxi12_Main", "box_Ordered_Output_12.Out", "box_TaxiRideReachDestinationMonitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TaxiRidePickUpController_27_ClientPickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_27
  self.PlayerVehicle = l0.Vehicle
  l0 = self.box_TaxiStrategiesController_79
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0 = self.box_TaxiRidePickUpController_27
  l1 = self.box_TaxiStrategiesController_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|314952492", "314952492", "Taxi12_Main", "box_TaxiRidePickUpController_27.ClientPickedUp", "box_TaxiStrategiesController_79.Resume", l0, l1)
  l1:Resume()
end
function export:f_box_TaxiRidePickUpController_27_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_27
  self.ClientCarson = l0.Client
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2030900620"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0 = self.box_TaxiRidePickUpController_27
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|766123888", "766123888", "Taxi12_Main", "box_TaxiRidePickUpController_27.ClientSpawned", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_62_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_MissionMessageController_v3_62
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|589865852", "589865852", "Taxi12_Main", "box_MissionMessageController_v3_62.MessageCompleted", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_v3_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_104
  l0.LayerName = "Taxi12_Main"
  l0 = self.box_MissionMessageController_v3_93
  l1 = self.box_MissionLayer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2087686044", "2087686044", "Taxi12_Main", "box_MissionMessageController_v3_93.Out", "box_MissionLayer_v2_104.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_9
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372060678040943"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_15
  l1 = self.box_DriveAndTalk_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|757886057", "757886057", "Taxi12_Main", "box_Timer_v2_15.TimeElapsed", "box_DriveAndTalk_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_29_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_22
  l0.Seconds = 5
  l0 = self.box_DriveAndTalk_29
  l1 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2045094699", "2045094699", "Taxi12_Main", "box_DriveAndTalk_29.TalkFinished", "box_Timer_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_115_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic_nocameralock"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1998780515"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_4_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_MultipleOR_115
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1872444984", "1872444984", "Taxi12_Main", "box_MultipleOR_115.Out", "box_SetActionMap_v2_4.Push", l0, l1)
  l1:Push()
end
function export:f_box_Simple_Node_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideReachDestinationMonitor_108()
  l0 = self.box_TaxiRideReachDestinationMonitor_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|550274011", "550274011", "Taxi12_Main", "box_Simple_Node_65.Out", "box_TaxiRideReachDestinationMonitor_108.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_119_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_136
  l0.Input = self.WronLocationBark
  l0.SoundID[0] = "soundbinary/1076075987.bnk"
  l0.SoundID[1] = "soundbinary/3122818565.bnk"
  l0.SoundID[2] = "soundbinary/3122818565.bnk"
  l0.SoundID[3] = "soundbinary/520810366.bnk"
  l0 = self.box_Timer_v2_119
  l1 = self.box_ListWriterSoundID_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1048878309", "1048878309", "Taxi12_Main", "box_Timer_v2_119.TimeElapsed", "box_ListWriterSoundID_136.Add", l0, l1)
  l1:Add()
end
function export:f_box_Set_Entity_113_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Destination_Bar_ = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_115()
  l0 = self.box_MultipleOR_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1004693845", "1004693845", "Taxi12_Main", "box_Set_Entity_113.Out", "box_MultipleOR_115.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_57_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_95
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_57
  l1 = self.box_MissionCheckpointReach_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1197030528", "1197030528", "Taxi12_Main", "box_CinematicPrep_57.PostOut", "box_MissionCheckpointReach_95.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_26_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_26
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_23()
  l1 = self.box_GameplayInteractionController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1741673815", "1741673815", "Taxi12_Main", "box_ListWriter_26.Added", "box_GameplayInteractionController_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_26_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_26
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_26_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_26
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_23()
  l1 = self.box_GameplayInteractionController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1194607895", "1194607895", "Taxi12_Main", "box_ListWriter_26.Removed", "box_GameplayInteractionController_23.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetActionMap_v2_116_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_119
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|419733654", "419733654", "Taxi12_Main", "box_SetActionMap_v2_116.Popped", "box_Timer_v2_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_FelonyTargetMonitor_40_Chasing()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyTargetMonitor_40
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|922005074", "922005074", "Taxi12_Main", "box_FelonyTargetMonitor_40.Chasing", "box_SetBoolean_v2_43.True", l0, l1)
  l1:True()
end
function export:f_box_FelonyTargetMonitor_40_Evaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_62
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "PickupSingleClient",
    id = "20000189"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_FelonyTargetMonitor_40
  l1 = self.box_MissionMessageController_v3_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|765073954", "765073954", "Taxi12_Main", "box_FelonyTargetMonitor_40.Evaded", "box_MissionMessageController_v3_62.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_FelonyTargetMonitor_40_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_FelonyTargetMonitor_40
  l1 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|806957367", "806957367", "Taxi12_Main", "box_FelonyTargetMonitor_40.None", "box_MultipleOR_44.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TaxiRideVehicleMonitor_53_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_52()
  l0 = self.box_TaxiRideVehicleMonitor_53
  l1 = self.box_Taxi_AbortMission_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2018828462", "2018828462", "Taxi12_Main", "box_TaxiRideVehicleMonitor_53.ClientBailedOut", "box_Taxi_AbortMission_52.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_53_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_52()
  l0 = self.box_TaxiRideVehicleMonitor_53
  l1 = self.box_Taxi_AbortMission_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|817377476", "817377476", "Taxi12_Main", "box_TaxiRideVehicleMonitor_53.ClientDeath", "box_Taxi_AbortMission_52.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_53_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_7()
  l0 = self.box_TaxiRideVehicleMonitor_53
  l1 = self.box_ListWriter_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|383334037", "383334037", "Taxi12_Main", "box_TaxiRideVehicleMonitor_53.Disabled", "box_ListWriter_7.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_53_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_52()
  l0 = self.box_TaxiRideVehicleMonitor_53
  l1 = self.box_Taxi_AbortMission_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|96562051", "96562051", "Taxi12_Main", "box_TaxiRideVehicleMonitor_53.PlayerAbandonedVehicle", "box_Taxi_AbortMission_52.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_53_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_52()
  l0 = self.box_TaxiRideVehicleMonitor_53
  l1 = self.box_Taxi_AbortMission_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|614214914", "614214914", "Taxi12_Main", "box_TaxiRideVehicleMonitor_53.VehicleUnusable", "box_Taxi_AbortMission_52.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_DriveAndTalk_9_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l0.Seconds = 10
  l0 = self.box_DriveAndTalk_9
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1471039297", "1471039297", "Taxi12_Main", "box_DriveAndTalk_9.TalkFinished", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriterSoundID_136_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_136
  self.WronLocationBark = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.WronLocationBark
  l0._graph = self
  l0._name = "box_ListLength_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|216358475"
  l0.Out = self.f_box_ListLength_120_Out
  l0.Empty = self.f_box_ListLength_120_Empty
  l0.NotEmpty = self.f_box_ListLength_120_NotEmpty
  l0 = self.box_ListWriterSoundID_136
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|356169990", "356169990", "Taxi12_Main", "box_ListWriterSoundID_136.Added", "box_ListLength_120.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_ListWriterSoundID_136_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_136
  self.WronLocationBark = l0.Target
end
function export:f_box_ListWriterSoundID_136_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_136
  self.WronLocationBark = l0.Target
end
function export:f_box_Compare_Entity_v2_109_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_123
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/199611726.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|934308242", "934308242", "Taxi12_Main", "box_Compare_Entity_v2_109.Equal", "box_PlayDialog_v2_123.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Entity_v2_109_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_133
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/199611726.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|221516456", "221516456", "Taxi12_Main", "box_Compare_Entity_v2_109.NotEqual", "box_PlayDialog_v2_133.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_97
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF120",
    item = "Objective_01",
    id = "579973"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|462123651", "462123651", "Taxi12_Main", "box_Ordered_Output_28.Out", "box_MissionMessageController_v3_97.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|796330838", "796330838", "Taxi12_Main", "box_Ordered_Output_28.Out", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_42_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_11
  l0.Parent = self.PlayerVehicle
  l0.Child = "9223372047582725866"
  l0.xPosOffset = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1045729863", "1045729863", "Taxi12_Main", "box_Compare_Boolean_v2_42.A_is_False", "box_SnapAndBind_11.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_TaxiRatingController_55_RatingReset()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiStrategiesController_54
  l0.Config = "TaxiRideStrategyConfig.9223372047582725733"
  l0 = self.box_TaxiRatingController_55
  l1 = self.box_TaxiStrategiesController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1437430741", "1437430741", "Taxi12_Main", "box_TaxiRatingController_55.RatingReset", "box_TaxiStrategiesController_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_135_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_PlayDialog_v2_135
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1104956130", "1104956130", "Taxi12_Main", "box_PlayDialog_v2_135.Finished", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayDialog_v2_135_PriorityFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_131()
  l0 = self.box_PlayDialog_v2_135
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|855545640", "855545640", "Taxi12_Main", "box_PlayDialog_v2_135.PriorityFailed", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_29
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612308751"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_21
  l1 = self.box_DriveAndTalk_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|139761027", "139761027", "Taxi12_Main", "box_Timer_v2_21.TimeElapsed", "box_DriveAndTalk_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRidePickUpController_30_ClientConversationFinised()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_26()
  l0 = self.box_TaxiRidePickUpController_30
  l1 = self.box_ListWriter_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|275972163", "275972163", "Taxi12_Main", "box_TaxiRidePickUpController_30.ClientConversationFinised", "box_ListWriter_26.Add", l0, l1)
  l1:Add()
end
function export:f_box_TaxiRidePickUpController_30_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.PlayerVehicle = l0.Vehicle
end
function export:f_box_TaxiRidePickUpController_30_ClientSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  self.ClientCoach = l0.Client
  self:OnEnter_box_TaxiRideVehicleMonitor_3()
  l1 = self.box_TaxiRideVehicleMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1619411062", "1619411062", "Taxi12_Main", "box_TaxiRidePickUpController_30.ClientSpawned", "box_TaxiRideVehicleMonitor_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1067095102"
  l0.Out = self.f_box_Simple_Node_45_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|783953793", "783953793", "Taxi12_Main", "box_Simple_Node_64.Out", "box_Simple_Node_45.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_61
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372059612308752"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_22
  l1 = self.box_DriveAndTalk_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1897243359", "1897243359", "Taxi12_Main", "box_Timer_v2_22.TimeElapsed", "box_DriveAndTalk_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_TaxiRideReachDestinationMonitor_111_ReachDestination()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|311904494"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0 = self.box_TaxiRideReachDestinationMonitor_111
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|290560522", "290560522", "Taxi12_Main", "box_TaxiRideReachDestinationMonitor_111.ReachDestination", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_121
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/2612066200.bnk"
  l0 = self.box_MultipleOR_34
  l1 = self.box_PlayDialog_v2_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|606102067", "606102067", "Taxi12_Main", "box_MultipleOR_34.Out", "box_PlayDialog_v2_121.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_127_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_135
  l0.Entity = self.ClientCoach
  l0.SoundId = "soundbinary/614818790.bnk"
  l0 = self.box_Timer_v2_127
  l1 = self.box_PlayDialog_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2004823031", "2004823031", "Taxi12_Main", "box_Timer_v2_127.TimeElapsed", "box_PlayDialog_v2_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_7_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_7
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_106()
  l1 = self.box_GameplayInteractionController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2010575245", "2010575245", "Taxi12_Main", "box_ListWriter_7.Added", "box_GameplayInteractionController_106.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_7_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_7
  self.GIC_Users = l0.Target
end
function export:f_box_ListWriter_7_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_7
  self.GIC_Users = l0.Target
  self:OnEnter_box_GameplayInteractionController_106()
  l1 = self.box_GameplayInteractionController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2108536463", "2108536463", "Taxi12_Main", "box_ListWriter_7.Removed", "box_GameplayInteractionController_106.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TaxiRideVehicleMonitor_3_ClientBailedOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_35()
  l0 = self.box_TaxiRideVehicleMonitor_3
  l1 = self.box_Taxi_AbortMission_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1500070498", "1500070498", "Taxi12_Main", "box_TaxiRideVehicleMonitor_3.ClientBailedOut", "box_Taxi_AbortMission_35.ClientBailedOut", l0, l1)
  l1:ClientBailedOut()
end
function export:f_box_TaxiRideVehicleMonitor_3_ClientDeath()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_35()
  l0 = self.box_TaxiRideVehicleMonitor_3
  l1 = self.box_Taxi_AbortMission_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|116787300", "116787300", "Taxi12_Main", "box_TaxiRideVehicleMonitor_3.ClientDeath", "box_Taxi_AbortMission_35.ClientDead", l0, l1)
  l1:ClientDead()
end
function export:f_box_TaxiRideVehicleMonitor_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ListWriter_26()
  l0 = self.box_TaxiRideVehicleMonitor_3
  l1 = self.box_ListWriter_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1279699091", "1279699091", "Taxi12_Main", "box_TaxiRideVehicleMonitor_3.Disabled", "box_ListWriter_26.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TaxiRideVehicleMonitor_3_PlayerAbandonedVehicle()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_35()
  l0 = self.box_TaxiRideVehicleMonitor_3
  l1 = self.box_Taxi_AbortMission_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|201878496", "201878496", "Taxi12_Main", "box_TaxiRideVehicleMonitor_3.PlayerAbandonedVehicle", "box_Taxi_AbortMission_35.PlayerAbandonedVehicle", l0, l1)
  l1:PlayerAbandonedVehicle()
end
function export:f_box_TaxiRideVehicleMonitor_3_VehicleUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Taxi_AbortMission_35()
  l0 = self.box_TaxiRideVehicleMonitor_3
  l1 = self.box_Taxi_AbortMission_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1347167620", "1347167620", "Taxi12_Main", "box_TaxiRideVehicleMonitor_3.VehicleUnusable", "box_Taxi_AbortMission_35.VehicleUnusable", l0, l1)
  l1:VehicleUnusable()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = "9223372047582725866"
  l0.Path = nil
  l0.Index = nil
  l0.PathType = "Player"
  l0._graph = self
  l0._name = "box_3DGPSController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1192837333"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
  l0 = self.box_Timer_v2_71
  l1 = Boxes[PathID("domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|198253476", "198253476", "Taxi12_Main", "box_Timer_v2_71.TimeElapsed", "box_3DGPSController_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRatingController_55
  l0.MissionName = self.Mission
  l0 = self.box_MissionMessageController_v3_97
  l1 = self.box_TaxiRatingController_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|159480653", "159480653", "Taxi12_Main", "box_MissionMessageController_v3_97.Out", "box_TaxiRatingController_55.ResetRating", l0, l1)
  l1:ResetRating()
end
function export:f_box_SetActionMap_v2_4_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Destination_Bar_
  l0.Entity2 = "9223372047582725807"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1553849785"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_109_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_109_NotEqual
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2024262073", "2024262073", "Taxi12_Main", "box_SetActionMap_v2_4.Pushed", "box_Compare_Entity_v2_109.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_134
  l0.Seconds = 2
  l0 = self.box_MultipleOR_36
  l1 = self.box_Timer_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|325021629", "325021629", "Taxi12_Main", "box_MultipleOR_36.Out", "box_Timer_v2_134.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TaxiRideVehicleMonitor_53()
  l0 = self.box_TaxiRideVehicleMonitor_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|730669223", "730669223", "Taxi12_Main", "box_Ordered_Output_48.Out", "box_TaxiRideVehicleMonitor_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|235896692"
  l0.Out = self.f_box_Simple_Node_47_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1295292831", "1295292831", "Taxi12_Main", "box_Ordered_Output_48.Out", "box_Simple_Node_47.In", clone, l0)
  l0:In()
end
function export:f_box_DriveAndTalk_81_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_21
  l0.Seconds = 5
  l0 = self.box_DriveAndTalk_81
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|2097905989", "2097905989", "Taxi12_Main", "box_DriveAndTalk_81.TalkFinished", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_DriveAndTalk_25_TalkFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_DriveAndTalk_25
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|727559021", "727559021", "Taxi12_Main", "box_DriveAndTalk_25.TalkFailed", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DriveAndTalk_25_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1558759155"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0 = self.box_DriveAndTalk_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|505396373", "505396373", "Taxi12_Main", "box_DriveAndTalk_25.TalkFinished", "box_Ordered_Output_28.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_14
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149938"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0 = self.box_Timer_v2_13
  l1 = self.box_DriveAndTalk_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1008279409", "1008279409", "Taxi12_Main", "box_Timer_v2_13.TimeElapsed", "box_DriveAndTalk_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TaxiRidePickUpController_30
  l0.ClientClo = "9223372047582725738"
  l0.PickUpIcon = "9223372047582725735"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
  l0 = self.box_MissionCheckpointReach_95
  l1 = self.box_TaxiRidePickUpController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|1812312966", "1812312966", "Taxi12_Main", "box_MissionCheckpointReach_95.Out", "box_TaxiRidePickUpController_30.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Random_Integer_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomInteger.lua")]
  self.BarkCount = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListReaderSoundID_117
  l0.Input = self.WronLocationBark
  l0.Index = self.BarkCount
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\UberTaxi\\Taxi12.domino|@Taxi12_Main|342067224", "342067224", "Taxi12_Main", "box_Random_Integer_128.Out", "box_ListReaderSoundID_117.Read", clone, l0)
  l0:Read()
end
function export:OnEnter_box_Multiple_AND_17()
end
function export:OnEnter_box_GameplayInteractionController_106()
  local l0
  l0 = self.box_GameplayInteractionController_106
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_MultipleOR_131()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_GameplayInteractionController_23()
  local l0
  l0 = self.box_GameplayInteractionController_23
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_108()
  local l0
  DrawTextToScreen("Comment: I'll go drag him out.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaxiRideReachDestinationMonitor')-- Comment: I'll go drag him out.")
  l0 = self.box_TaxiRideReachDestinationMonitor_108
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725807"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_MultipleOR_96()
end
function export:OnEnter_box_Taxi_AbortMission_35()
  local l0
  l0 = self.box_Taxi_AbortMission_35
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi12_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582725733"
  l0.Pawn1 = self.ClientCoach
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149933"
end
function export:OnEnter_box_MultipleOR_115()
end
function export:OnEnter_box_ListWriter_26()
  local l0
  l0 = self.box_ListWriter_26
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.ClientCoach
end
function export:OnEnter_box_FelonyTargetMonitor_40()
  local l0
  l0 = self.box_FelonyTargetMonitor_40
  l0.Target = self.PlayerEntity
  l0.FelonyType = "Police"
  l0.CheckNow = 1
end
function export:OnEnter_box_TaxiRideVehicleMonitor_53()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_53
  l0.Client = self.ClientCarson
  l0.Config = "TaxiRideGameplayBrick.9223372057399402308"
end
function export:OnEnter_box_Taxi_AbortMission_52()
  local l0
  l0 = self.box_Taxi_AbortMission_52
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi12_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047582725733"
  l0.Pawn1 = self.ClientCarson
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149933"
end
function export:OnEnter_box_TaxiRideReachDestinationMonitor_111()
  local l0
  DrawTextToScreen("Comment: I'll go drag him out.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaxiRideReachDestinationMonitor')-- Comment: I'll go drag him out.")
  l0 = self.box_TaxiRideReachDestinationMonitor_111
  l0.Client = self.ClientCoach
  l0.DropOffIcon = "9223372047582725860"
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_ListWriter_7()
  local l0
  l0 = self.box_ListWriter_7
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.ClientCarson
end
function export:OnEnter_box_TaxiRideVehicleMonitor_3()
  local l0
  l0 = self.box_TaxiRideVehicleMonitor_3
  l0.Client = self.ClientCoach
  l0.Config = "TaxiRideGameplayBrick.9223372057399402310"
end
function export:OnEnter_box_MultipleOR_36()
end
_compilerVersion = 4
