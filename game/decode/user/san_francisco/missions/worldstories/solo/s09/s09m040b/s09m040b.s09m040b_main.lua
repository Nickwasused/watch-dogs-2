export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.lua")
  cbox:RegisterBox("domino/System/PrepareClueController.lua")
  cbox:RegisterBox("domino/System/PrepareClueMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040b/S09M040B_VID_Mosaic03-OS.S09M040B_VID_Mosaic03-OS_Main.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1006438201.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1273586476.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4077607045.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3734033751.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.enemy09 = nil
  self.enemy03 = nil
  self.enemy12 = nil
  self.truck_health = 0
  self.enemy05 = nil
  self.enemy04 = nil
  self.enemy08 = nil
  self.enemy06 = nil
  self.enemy07 = nil
  self.enemy02 = nil
  self.enemy10 = nil
  self.enemy01 = nil
  self.enemy11 = nil
  self.TempEntity = nil
  self.pgt = {}
  self.accessIDgiver = nil
  self.dead = 0
  self.driver = nil
  self.Temp = nil
  self.truck2 = nil
  self.driver2 = nil
  self.SwitchDoor1 = 0
  self.SwitchDoor2 = 0
  self.OneClue1 = 0
  self.OneClue2 = 0
  self.drivers = {}
  self.CarTezca1 = {}
  self.CarTezca2 = {}
  self.CarCorrupt1 = {}
  self.AmbulanceDriver = {}
  self.Tezcas = {}
  self.CorruptCops = {}
  self.clues = {
    "9223372046726189783",
    "9223372046943895163",
    "9223372047156343748",
    "9223372050514922322",
    "9223372052171145443"
  }
  self.CarCorrupt2 = {}
  self.ClueGuards = {
    "9223372052171146209",
    "9223372052171146211",
    "9223372052171146967",
    "9223372052171146201"
  }
  self.PGT = {}
  self.AllEnemies = {}
  self.cc1 = nil
  self.cc2 = nil
  self.ct1 = nil
  self.ct2 = nil
  self.AllCars = {}
  self.FleeDriver = nil
  self.playerVehicle = nil
  self.FleeDriverCC1 = nil
  self.FleeDriverCC2 = nil
  self.Ambulance = nil
  self.FleeDriverCT1 = nil
  self.FleeDriverCT2 = nil
  self.ContainerCar = nil
  self.TempDriver = nil
  self.PlayerVehicle = nil
  self.CorruptCopTalker = nil
  self.T13Talker = nil
  self.AmbDriver = nil
  self.AmbulanceConvoy = 0
  self.CCCar1 = nil
  self.CCDriver1 = nil
  self.CCCar2 = nil
  self.CCDriver2 = nil
  self.CTDriver1 = nil
  self.CTCar1 = nil
  self.CTCar2 = nil
  self.CTDriver2 = nil
  self.AmbulanceID = 0
  self.CC1 = 0
  self.CC1ID = 0
  self.CC2ID = 0
  self.CT1ID = 0
  self.CT2ID = 0
  self.AmbDriverPatrol = {}
  self.AmbDriverStuck = {}
  self.CC1Patrol = {}
  self.CC1Stuck = {}
  self.CC2Stuck = {}
  self.CCPatrol2 = {}
  self.CTPatrol1 = {}
  self.CTStuck1 = {}
  self.CTPatrol2 = {}
  self.CTStuck2 = {}
  self.CT2FollowerCar = {}
  self.CT2FollowerNPC = {}
  self.SniperPatrol1 = {}
  self.SniperPatrol2 = {}
  self.SniperPatrol3 = {}
  self.SniperStuck1 = {}
  self.SniperStuck2 = {}
  self.SniperStuck3 = {}
  self.S1ID = 0
  self.Sniper1 = nil
  self.Sniper2 = nil
  self.S2ID = 0
  self.Sniper3 = nil
  self.S3ID = 0
  self.xPos = 0
  self.yPos = 0
  self.xPos1 = 0
  self.yPos1 = 0
  self.TezcasPGT = {}
  self.CorrupCopsPGT = {}
  self.xRotAmb = 0
  self.zPosAmb = 0
  self.yPosAmb = 0
  self.xPosAmb = 0
  self.zRotAmb = 0
  self.yRotAmb = 0
  self.talkers = {}
  self.Snipers = {}
  self.SniperCarFollower = {}
  self.allNpcs = {}
  self.EscortCar = {}
  self.AmbulancePassenger = {}
  self.AmbulanceCar = {}
  self.CTPassenger = {}
  self.AnotherSniper = {}
  self.CTPass = nil
  self.EngageTimer = 0
  self.Checkpoint = 0
  self.DeadBodyAmbulance = "9223372062745018125"
  self.HealthCT = 0
  self.HealthCC = 0
  self.RedArea = "9223372047699655525"
  self.AliveT13 = {}
  self.T13_SecondCar = {}
  self.ExtraCluesToDisable = {
    "9223372072557568800",
    "9223372072149534519"
  }
  self[130] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[130]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Prepped = self.f_130_Prepped
  l0.Started = self.f_130_Started
  l0.ConvoyStarted = DummyFunction
  l0.ConvoyStopped = DummyFunction
  l0.ConvoyAggro = DummyFunction
  l0.ConvoyAggroNotPlayer = DummyFunction
  l0.ConvoyStuck = self.f_130_ConvoyStuck
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  l0.NPCsUnassigned = self.f_130_NPCsUnassigned
  l0.DestinationReached = DummyFunction
  self[27] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[27]
  l0._graph = self
  l0.Attached = self.f_27_Attached
  self[124] = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self[124]
  l0._graph = self
  l0.RelationshipSet = self.f_124_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[14]
  l0._graph = self
  l0.Attached = self.f_14_Attached
  self[127] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[127]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_127_Added
  l0.Removed = self.f_127_Removed
  l0.Out = self.f_127_Out
  self[8] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040b/S09M040B_VID_Mosaic03-OS.S09M040B_VID_Mosaic03-OS_Main.lua")
  l0 = self[8]
  l0._graph = self
  l0.EndVideo = self.f_8_EndVideo
  l0.VideoStarted = self.f_8_VideoStarted
  self[135] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[43] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_43_Out
  l0.ResetOut = DummyFunction
  self[99] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[99]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[74] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Loaded = self.f_74_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[9]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[64] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[64]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_64_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_64_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_64_VanishState
  l0.None = DummyFunction
  self[83] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[83]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_83_PostOut
  self[131] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[131]
  l0._graph = self
  l0.Out = self.f_131_Out
  l0.Prepped = self.f_131_Prepped
  l0.Started = self.f_131_Started
  l0.ConvoyStarted = self.f_131_ConvoyStarted
  l0.ConvoyStopped = self.f_131_ConvoyStopped
  l0.ConvoyAggro = self.f_131_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_131_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_131_ConvoyStuck
  l0.VIPDied = self.f_131_VIPDied
  l0.VipVehicleDestroyed = self.f_131_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_131_NPCsUnassigned
  l0.DestinationReached = self.f_131_DestinationReached
  self[76] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[149] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[149]
  l0._graph = self
  self[110] = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self[110]
  l0._graph = self
  l0.Enabled = self.f_110_Enabled
  l0.Disabled = self.f_110_Disabled
  l0.DiscoveredClue = self.f_110_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self[45] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_45_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[151] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[151]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_151_Out
  self[81] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Loaded = self.f_81_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[140] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[140]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_140_PostOut
  self[128] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[128]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_128_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_128_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = self.f_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[82] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[82]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_82_Out
  self[169] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[169]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_169_Out
  l0.ResetOut = DummyFunction
  self[141] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[141]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_141_Out
  self[116] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_116_Added
  l0.Removed = self.f_116_Removed
  l0.Out = self.f_116_Out
  self[95] = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self[95]
  l0._graph = self
  l0.Enabled = self.f_95_Enabled
  l0.Disabled = self.f_95_Disabled
  l0.DiscoveredClue = self.f_95_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self[126] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[126]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_126_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[221] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[221]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_221_Out
  self[144] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[123] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.lua")
  l0 = self[123]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Engaged = self.f_123_Engaged
  self[24] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[24]
  l0._graph = self
  l0.StartCommunicationOut = self.f_24_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_24_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = self.f_1_Stopped
  l0.Fail = DummyFunction
  self[80] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = self.f_80_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[11] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_11_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_11_VanishState
  l0.None = DummyFunction
  self[32] = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_32_Disabled
  l0.DiscoveredClue = self.f_32_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self[133] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[133]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_133_Out
  l0.ResetOut = DummyFunction
  self[105] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[59] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_59_Added
  l0.Removed = self.f_59_Removed
  l0.Out = self.f_59_Out
  self[113] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[113]
  l0._graph = self
  l0.Out = self.f_113_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[36] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_36_Out
  l0.ResetOut = DummyFunction
  self[87] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_87_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = self.f_28_Started
  l0.Stopped = self.f_28_Stopped
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_28_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = self.f_28_TeamSpeakFinished
  self[71] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[71]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_71_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_71_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
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
  self[91] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_91_Out
  self[129] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[129]
  l0._graph = self
  l0.Out = self.f_129_Out
  l0.Prepped = self.f_129_Prepped
  l0.Started = self.f_129_Started
  l0.ConvoyStarted = self.f_129_ConvoyStarted
  l0.ConvoyStopped = self.f_129_ConvoyStopped
  l0.ConvoyAggro = self.f_129_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_129_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_129_ConvoyStuck
  l0.VIPDied = self.f_129_VIPDied
  l0.VipVehicleDestroyed = self.f_129_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_129_NPCsUnassigned
  l0.DestinationReached = self.f_129_DestinationReached
  self[73] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = self.f_73_Out
  l0.SetTrue = self.f_73_SetTrue
  l0.SetFalse = self.f_73_SetFalse
  l0.Toggled = self.f_73_Toggled
  l0.SetFromBool = self.f_73_SetFromBool
  self[158] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[158]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_158_Out
  self[121] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[121]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_121_Out
  self[16] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = self.f_16_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[154] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[154]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[101] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.DiscoveredClue = self.f_23_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = self.f_23_DiscoveredAllClues
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_29_Out
  self[30] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_30_Out
  self[19] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[19]
  l0._graph = self
  l0.Attached = self.f_19_Attached
  self[142] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[142]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_142_MessageCompleted
  self[106] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = self.f_106_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[33] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[33]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[115] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[93] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[93]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_93_Out
  self[7] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = self.f_5_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[86] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[143] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[143]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_143_Added
  l0.Removed = self.f_143_Removed
  l0.Out = self.f_143_Out
  self[58] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_58_Out
  self[139] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[139]
  l0._graph = self
  l0.GotNPCList = self.f_139_GotNPCList
  self[136] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Started = self.f_136_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[77] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[77]
  l0._graph = self
  l0.GotNPCList = self.f_77_GotNPCList
  self[55] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_55_RewardsExecuted
  self[2] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[134] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = self.f_134_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[70] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.MessageCompleted = DummyFunction
  self[207] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[207]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_207_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[31] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  self[96] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[96]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_96_Out
  l0.ResetOut = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[10]
  l0._graph = self
  l0.Attached = DummyFunction
  self[98] = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = self.f_98_Enabled
  l0.Disabled = self.f_98_Disabled
  l0.OnNetworkSurfingActivated = self.f_98_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = self.f_98_OnNetworkSurfingDeactivated
  self[75] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[75]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_75_Out
  l0.ResetOut = DummyFunction
  self[160] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[160]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_160_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.MessageCompleted = DummyFunction
  self[78] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[78]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.MessageCompleted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0 = self[74]
  l0.LayerName = "S09M040b_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[81]
  l0.LayerName = "S09M040b_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_149()
  l0 = self[149]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[17]
  l0.LayerName = "S09M040b_Main"
  l0:Load()
end
function export:f_130_ConvoyStuck()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0:In()
end
function export:f_130_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0:In()
end
function export:f_130_Prepped()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Prep()
end
function export:f_130_Started()
  local l0
  self = self._graph
  l0 = self[135]
  l0.Seconds = 5
  l0:Start()
end
function export:f_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0:In()
end
function export:f_48_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_153_Out
  l0:In()
end
function export:f_27_Attached()
  local l0
  self = self._graph
  l0 = self[134]
  l0.Entity = "9223372065754426524"
  l0.SoundId = "soundbinary/4077607045.bnk"
  l0:Play()
end
function export:f_124_RelationshipSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0:In()
end
function export:f_14_Attached()
  local l0
  self = self._graph
  l0 = self[9]
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0:Show()
end
function export:f_127_Added()
  local l0
  self = self._graph
  l0 = self[127]
  self.T13_SecondCar = l0.Target
  l0 = self[143]
  l0.Input = self.AmbulanceCar
  l0.Data[0] = "9223372046943894507"
  l0:Add()
end
function export:f_127_Out()
  local l0
  self = self._graph
  l0 = self[127]
  self.T13_SecondCar = l0.Target
end
function export:f_127_Removed()
  local l0
  self = self._graph
  l0 = self[127]
  self.T13_SecondCar = l0.Target
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.PGTMissionArea = "9223372060782821061"
  l0:Abort()
end
function export:f_100_Out_0()
  local l0
  self = self._graph
  l0 = self[55]
  l0.ItemDB = "Items.9223372059111819878"
  l0:ExecuteRewards()
end
function export:f_100_Out_1()
  local l0
  self = self._graph
  l0 = self[101]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_8_EndVideo()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Condition(0)
end
function export:f_8_VideoStarted()
  local l0
  self = self._graph
  l0 = self[126]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347659"
  l0:StartCommunication()
end
function export:f_108_Activated()
  local l0
  self = self._graph
  l0 = self[113]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_135_TimeElapsed()
  local l0
  self = self._graph
  self:en_131()
  l0 = self[131]
  l0:Start()
end
function export:f_118_Disabled()
  local l0
  self = self._graph
  l0 = self[142]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Notification010",
    item = "Notification",
    id = "642279"
  }
  l0.Duration = 5
  l0:Display()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060782821061"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:Enable()
end
function export:f_155_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_156_Out
  l0:In()
end
function export:f_120_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ExtraCluesToDisable
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_145_Activated
  l0:Activate()
end
function export:f_6_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ClueGuards
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_120_Activated
  l0:Activate()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_74_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_137_Out
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  l0 = self[133]
  l0:In(0)
end
function export:f_117_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072557568800"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_21_Activated
  l0:Activate()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Parent = self.Ambulance
  l0.Child = "9223372065754426524"
  l0:Attach()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Prep()
end
function export:f_157_Out()
  local l0
  self = self._graph
  l0 = self[158]
  l0:Condition(0)
end
function export:f_103_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072149534519"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_119_Activated
  l0:Activate()
end
function export:f_64_CombatState()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Input(0)
end
function export:f_64_SearchState()
  local l0
  self = self._graph
  l0 = self[91]
  l0:Input(1)
end
function export:f_64_VanishState()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(0)
end
function export:f_83_PostOut()
  local l0
  self = self._graph
  l0 = self[73]
  l0:True()
end
function export:f_131_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:In()
end
function export:f_131_DestinationReached()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0:In()
end
function export:f_131_Out()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_Prepped()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  self:en_124()
  l0 = self[124]
  l0:SetRelationship()
end
function export:f_131_Started()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_VIPDied()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_131_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[131]
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(1)
end
function export:f_76_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0:In()
end
function export:f_150_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_50_Disabled
  l0.Activated = DummyFunction
  l0:Disable()
end
function export:f_110_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146211"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_117_Activated
  l0:Activate()
end
function export:f_110_DiscoveredClue()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Disable()
end
function export:f_110_Enabled()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_45_DisplayRequested()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Start()
end
function export:f_151_Out()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:HideNotification()
end
function export:f_81_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0:In()
end
function export:f_140_PostOut()
  local l0
  self = self._graph
  l0 = self[141]
  l0:Input(1)
end
function export:f_128_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[82]
  l0:Input(0)
end
function export:f_128_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_175_Out
  l0:In()
end
function export:f_17_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[121]
  l0:Condition(0)
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_169_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0:Enable()
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In()
end
function export:f_116_Added()
  local l0
  self = self._graph
  l0 = self[116]
  self.AmbulancePassenger = l0.Target
  l0 = self[127]
  l0.Input = self.T13_SecondCar
  l0.Data[0] = "9223372072149534522"
  l0.Data[1] = "9223372046726189815"
  l0:Add()
end
function export:f_116_Out()
  local l0
  self = self._graph
  l0 = self[116]
  self.AmbulancePassenger = l0.Target
end
function export:f_116_Removed()
  local l0
  self = self._graph
  l0 = self[116]
  self.AmbulancePassenger = l0.Target
end
function export:f_175_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_172_Out
  l0:In()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(3)
end
function export:f_95_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146201"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0:Activate()
end
function export:f_95_DiscoveredClue()
  local l0
  self = self._graph
  self:en_95()
  l0 = self[95]
  l0:Disable()
end
function export:f_95_Enabled()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Enable()
end
function export:f_126_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Condition(1)
end
function export:f_221_Out()
  local l0
  self = self._graph
  self:en_87()
  l0 = self[87]
  l0:Display()
end
function export:f_123_Engaged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0.Out[2] = self.f_46_Out_2
  l0:In()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(3)
end
function export:f_24_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_112_Out_0
  l0.Out[1] = self.f_112_Out_1
  l0:In()
end
function export:f_24_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[33]
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0:Hide()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_69_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_1_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Ambulance
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = self.f_66_Out
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective090",
    item = "Objective",
    id = "642402"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_11_CombatState()
  local l0
  self = self._graph
  l0 = self[115]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_11_VanishState()
  local l0
  self = self._graph
  l0 = self[99]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_32_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146209"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_103_Activated
  l0:Activate()
end
function export:f_32_DiscoveredClue()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_133_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372070820947008"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:Enable()
end
function export:f_132_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 30
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_138_Out
  l0:FromFloat()
end
function export:f_132_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_72_Out
  l0:FromFloat()
end
function export:f_105_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[121]
  l0:Condition(1)
end
function export:f_12_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Parent = self.Ambulance
  l0.Child = self.DeadBodyAmbulance
  l0.yPosOffset = -1
  l0.zPosOffset = 0.75
  l0:Attach()
end
function export:f_59_Added()
  local l0
  self = self._graph
  l0 = self[59]
  self.Snipers = l0.Target
  l0 = self[116]
  l0.Input = self.AmbulancePassenger
  l0.Data[0] = "9223372072149534306"
  l0:Add()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.Snipers = l0.Target
end
function export:f_59_Removed()
  local l0
  self = self._graph
  l0 = self[59]
  self.Snipers = l0.Target
end
function export:f_112_Out_0()
  local l0
  self = self._graph
  l0 = self[144]
  l0.SoundId = "soundbinary/1006438201.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_112_Out_1()
  local l0
  self = self._graph
  l0 = self[78]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_109_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_107_Out
  l0:In()
end
function export:f_109_Out_1()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Start()
end
function export:f_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_146_Out
  l0:In()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_69_Activated()
  local l0
  self = self._graph
  l0 = self[86]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_15_Undeflatable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_113_Out()
  local l0
  self = self._graph
  l0 = self[82]
  l0:Input(1)
end
function export:f_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[140]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:In()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[24]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055886457213"
  l0:StartCommunication()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:In()
end
function export:f_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_147_Out
  l0:In()
end
function export:f_90_Out_1()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(1)
end
function export:f_90_Out_2()
  local l0
  self = self._graph
  self:en_149()
  l0 = self[149]
  l0:End()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_6_Activated
  l0:Activate()
end
function export:f_87_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[169]
  l0:In(0)
end
function export:f_28_AllDeliveryCompleted()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Stop()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_88_Out_0
  l0.Out[1] = self.f_88_Out_1
  l0:In()
end
function export:f_28_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_97_Out_0
  l0.Out[1] = self.f_97_Out_1
  l0:In()
end
function export:f_28_TeamSpeakFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_100_Out_0
  l0.Out[1] = self.f_100_Out_1
  l0:In()
end
function export:f_71_Disabled()
  local l0
  self = self._graph
  self:en_64()
  l0 = self[64]
  l0:Disable()
end
function export:f_71_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_91_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0:In(0)
end
function export:f_114_Out()
  local l0
  self = self._graph
  self:en_129()
  l0 = self[129]
  l0:Start()
end
function export:f_129_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:In()
end
function export:f_129_DestinationReached()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = self.f_68_Out_1
  l0:In()
end
function export:f_129_Out()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_Prepped()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Ambulance
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = self.f_15_Undeflatable
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:SetTyresUndeflatable()
end
function export:f_129_Started()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_109_Out_0
  l0.Out[1] = self.f_109_Out_1
  l0:In()
end
function export:f_129_VIPDied()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_129_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[129]
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_73_Out()
  local l0
  self = self._graph
  l0 = self[73]
  self.Checkpoint = l0.Target
end
function export:f_73_SetFalse()
  local l0
  self = self._graph
  l0 = self[73]
  self.Checkpoint = l0.Target
end
function export:f_73_SetFromBool()
  local l0
  self = self._graph
  l0 = self[73]
  self.Checkpoint = l0.Target
end
function export:f_73_SetTrue()
  local l0
  self = self._graph
  l0 = self[73]
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_108_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_73_Toggled()
  local l0
  self = self._graph
  l0 = self[73]
  self.Checkpoint = l0.Target
end
function export:f_158_Out()
  local l0
  self = self._graph
  self:en_154()
  l0 = self[154]
  l0:Enable()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_84_Deactivated
  l0:Deactivate()
end
function export:f_56_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_152_Out
  l0:In()
end
function export:f_16_Shown()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = self[128]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347660"
  l0:StartCommunication()
end
function export:f_23_DiscoveredAllClues()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_23_DiscoveredClue()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective020",
    item = "Objective",
    id = "355202"
  }
  l0:IncrementObjective()
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  self:en_95()
  l0 = self[95]
  l0:Enable()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0:In(0)
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In(0)
end
function export:f_19_Attached()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0:Show()
end
function export:f_142_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective040",
    item = "Objective",
    id = "355204"
  }
  l0:ShowNewObjective()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[160]
  l0.Seconds = 2
  l0:Start()
end
function export:f_33_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ExtraCluesToDisable
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_150_Disabled
  l0.Activated = DummyFunction
  l0:Disable()
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_154()
  l0 = self[154]
  l0:Disable()
end
function export:f_21_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146967"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0:Activate()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[96]
  l0:In(0)
end
function export:f_54_Activated()
  local l0
  self = self._graph
  l0 = self[106]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_156_Out()
  local l0
  self = self._graph
  l0 = self[158]
  l0:Condition(1)
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_157_Out
  l0:In()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  l0 = self[83]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_172_Out()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Disable()
end
function export:f_5_Aborted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060782821061"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:Disable()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_114_Out
  l0:In()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[139]
  l0.Affiliation = "T_13"
  l0:GetEnemiesAlive()
end
function export:f_88_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_88_Out_1()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:Enable()
end
function export:f_92_ReinforcingStarted()
  local l0
  self = self._graph
  self:en_92()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AddScriptedAgents()
end
function export:f_92_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_92()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(4)
end
function export:f_143_Added()
  local l0
  self = self._graph
  l0 = self[143]
  self.AmbulanceCar = l0.Target
  self:en_129()
  l0 = self[129]
  l0:Prep()
end
function export:f_143_Out()
  local l0
  self = self._graph
  l0 = self[143]
  self.AmbulanceCar = l0.Target
end
function export:f_143_Removed()
  local l0
  self = self._graph
  l0 = self[143]
  self.AmbulanceCar = l0.Target
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_111_Out
  l0:In()
end
function export:f_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  l0 = self[133]
  l0:In(1)
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_139_GotNPCList()
  local l0
  self = self._graph
  l0 = self[139]
  self.drivers = l0.NPCList
  self:en_207()
  l0 = self[207]
  l0:Start()
end
function export:f_136_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Parent = "9223372046943895163"
  l0.Child = "9223372046877511137"
  l0.zPosOffset = 0.5
  l0:Attach()
end
function export:f_77_GotNPCList()
  local l0
  self = self._graph
  l0 = self[77]
  self.AliveT13 = l0.NPCList
  self:en_92()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StartReinforcing()
end
function export:f_55_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[105]
  l0.Seconds = 10
  l0:Start()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Affiliation = "T_13"
  l0:Enable()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_155_Out
  l0:In()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_54_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:In()
end
function export:f_97_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_97_Out_1()
  local l0
  self = self._graph
  self:en_71()
  l0 = self[71]
  l0:Disable()
end
function export:f_134_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.DeadBodyAmbulance
  l0.Collisionable = 0
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_12_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_68_Out_0()
  local l0
  self = self._graph
  l0 = self[62]
  l0.Entity = "9223372065754426524"
  l0.SoundId = "soundbinary/3734033751.bnk"
  l0:Play()
end
function export:f_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_67_Out
  l0:In()
end
function export:f_70_Out()
  local l0
  self = self._graph
  self:en_98()
  l0 = self[98]
  l0:Enable()
end
function export:f_207_AllSpawned()
  local l0
  self = self._graph
  self:en_207()
  l0 = self[207]
  l0:AddScriptedAgents()
end
function export:f_145_Activated()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Parent = "9223372046943895163"
  l0.Child = "9223372046877511137"
  l0.zPosOffset = 0.5
  l0:Attach()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Notification020",
    item = "Notification",
    id = "642280"
  }
  l0.Duration = 10
  l0:Display()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_64()
  l0 = self[64]
  l0:Enable()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In(0)
end
function export:f_96_Out()
  local l0
  self = self._graph
  self:en_92()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StopReinforcing()
end
function export:f_84_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_90_Out_0
  l0.Out[1] = self.f_90_Out_1
  l0.Out[2] = self.f_90_Out_2
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[141]
  l0:Input(0)
end
function export:f_50_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ClueGuards
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_118_Disabled
  l0.Activated = DummyFunction
  l0:Disable()
end
function export:f_98_Disabled()
  local l0
  self = self._graph
  l0 = self[151]
  l0:Input(1)
end
function export:f_98_Enabled()
  local l0
  self = self._graph
  l0 = self[221]
  l0:Input(0)
end
function export:f_98_OnNetworkSurfingActivated()
  local l0
  self = self._graph
  l0 = self[151]
  l0:Input(0)
end
function export:f_98_OnNetworkSurfingDeactivated()
  local l0
  self = self._graph
  l0 = self[221]
  l0:Input(1)
end
function export:f_119_Activated()
  local l0
  self = self._graph
  l0 = self[136]
  l0.SoundId = "soundbinary/1273586476.bnk"
  l0.DialogPriority = "Idle"
  l0.Queue = 1
  l0:Start()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Affiliation = "T_13"
  l0:GetEnemiesAlive()
end
function export:f_160_Started()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective020",
    item = "Objective",
    id = "355202"
  }
  l0.IncrementalObjectiveTotal = 5
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Input = self.Snipers
  l0.Data[0] = "9223372046726189780"
  l0.Data[1] = "9223372051982258445"
  l0:Add()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_132_A_is_True
  l0.A_is_False = self.f_132_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(4)
end
function export:f_146_Out()
  local l0
  self = self._graph
  self:en_124()
  l0 = self[124]
  l0:ResetRelationship()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[123]
  l0.HintEngageable = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.EXTRA.ObjectiveCounters",
    item = "EngageHint",
    id = "511489"
  }
  l0.HintOutOfArea = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.EXTRA.ObjectiveCounters",
    item = "EngageUnavailableHint",
    id = "652716"
  }
  l0.ProgressBarText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Engage",
    id = "317607"
  }
  l0.MissionArea = "9223372070820947537"
  l0.TextDelay = self.EngageTimer
  l0:Enable()
end
function export:en_130()
  local l0
  l0 = self[130]
  l0.VipVehicleCLO = "9223372050385091837"
  l0.VipCLO = "9223372052171146969"
  l0.Vip_WanderZone = "9223372072557566535"
  l0.EscortCLO_FrontPassenger = "9223372051982258445"
  l0.EscortFrontPassenger_WanderZone = "9223372060782821059"
  l0.FrontPassenger_WithVIP = 0
  l0.EscortCLO_RearLeftPassenger = "9223372072149534522"
  l0.EscortRearLeftPassenger_WanderZone = "9223372060782821059"
  l0.EscortCLO_RearRightPassenger = "9223372046726189780"
  l0.EscortRearRightPassenger_WanderZone = "9223372060993857414"
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372057147933596"
  l0.Updated_Destination = "9223372070820947003"
  l0.AutoUnassign = 1
  l0.Affiliation = "T_13"
  l0.UpdatedWanderZone = "9223372072979500167"
  l0.IgnorePlayer = 0
end
function export:en_124()
  local l0
  l0 = self[124]
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
end
function export:en_64()
  local l0
  l0 = self[64]
  l0.Affiliation = "T_13"
  l0.CheckStateNow = 1
end
function export:en_131()
  local l0
  l0 = self[131]
  l0.VipVehicleCLO = "9223372051982258448"
  l0.VipCLO = "9223372052171146973"
  l0.Vip_WanderZone = "9223372070820948116"
  l0.EscortCLO_FrontPassenger = "9223372046726189815"
  l0.EscortFrontPassenger_WanderZone = "9223372060993857418"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372057147933600"
  l0.Updated_Destination = "9223372070820947002"
  l0.AutoUnassign = 1
  l0.Affiliation = "T_13"
  l0.UpdatedWanderZone = "9223372072979500158"
  l0.IgnorePlayer = 0
end
function export:en_149()
  local l0
  l0 = self[149]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S09M040b_Main"
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372053628941255"
  l0.ShowMissionComplete = 1
end
function export:en_110()
  local l0
  l0 = self[110]
  l0.Clue = "9223372050514922322"
end
function export:en_95()
  local l0
  l0 = self[95]
  l0.Clue = "9223372052171145443"
  l0.CheckNow = 1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.VehicleEntity = self.Ambulance
  l0.Fail_IfUnusable = 1
  l0.Fail_IfStuck = 1
  l0.Unusable_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.EXTRA.MissionHint",
    item = "MissionFail",
    id = "402852"
  }
  l0.Stuck_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.EXTRA.MissionHint",
    item = "MissionFail",
    id = "402852"
  }
  l0.FaiIfUnloaded = 1
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.Clue = "9223372046943895163"
  l0.CheckNow = 1
end
function export:en_87()
  local l0
  l0 = self[87]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.EXTRA.MissionHint",
    item = "NetHackHint",
    id = "402850"
  }
  l0.Duration = -1
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.VehicleEntity = self.Ambulance
  l0.DestinationTrigger = "9223372048282145888"
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
  l0.GetOutToComplete = 1
  l0.ForceStopAtDestination = 1
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective060",
    item = "Objective",
    id = "355206"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective040",
    item = "Objective",
    id = "355204"
  }
  l0.TeamSpeakPostEscape = "PhoneCommunicationSettingsDb.9223372048421347661"
end
function export:en_71()
  local l0
  l0 = self[71]
  l0.Vehicle = self.Ambulance
end
function export:en_129()
  local l0
  l0 = self[129]
  l0.VipVehicleCLO = "9223372046943894507"
  l0.VipCLO = "9223372048156567642"
  l0.Vip_WanderZone = "9223372072557566528"
  l0.EscortCLO_FrontPassenger = "9223372072149534306"
  l0.EscortFrontPassenger_WanderZone = "9223372070820947805"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372057147933594"
  l0.Updated_Destination = "9223372070673010723"
  l0.AutoUnassign = 1
  l0.Affiliation = "T_13"
  l0.UpdatedWanderZone = "9223372072979500148"
  l0.IgnorePlayer = 0
end
function export:en_154()
  local l0
  l0 = self[154]
  l0.MissionArea = "9223372069266910882"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.ClueList = self.clues
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.MissionArea = "9223372047857482344"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_92()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
  l0.AgentList = self.AliveT13
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_92_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_92_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.MissionArea = "9223372047857482344"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_207()
  local l0
  l0 = self[207]
  l0.PGTMissionArea = "9223372060782821061"
  l0.AgentList = self.drivers
end
function export:en_98()
  local l0
  l0 = self[98]
  l0.CheckNow = 1
end
_compilerVersion = 4
