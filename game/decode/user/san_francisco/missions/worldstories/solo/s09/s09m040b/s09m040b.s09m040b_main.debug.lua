export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  cbox:RegisterBox("domino/System/PrepareClueController.lua")
  cbox:RegisterBox("domino/System/PrepareClueMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040b/S09M040B_VID_Mosaic03-OS.S09M040B_VID_Mosaic03-OS_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
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
  self._name = "S09M040b_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main"
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
  self.box_Prepare_Convoy_130 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_130
  l0._graph = self
  l0._name = "box_Prepare_Convoy_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|5911997"
  l0.Out = DummyFunction
  l0.Prepped = self.f_box_Prepare_Convoy_130_Prepped
  l0.Started = self.f_box_Prepare_Convoy_130_Started
  l0.ConvoyStarted = DummyFunction
  l0.ConvoyStopped = DummyFunction
  l0.ConvoyAggro = DummyFunction
  l0.ConvoyAggroNotPlayer = DummyFunction
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_130_ConvoyStuck
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_130_NPCsUnassigned
  l0.DestinationReached = DummyFunction
  self.box_SnapAndBind_27 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_27
  l0._graph = self
  l0._name = "box_SnapAndBind_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|65884163"
  l0.Attached = self.f_box_SnapAndBind_27_Attached
  self.box_AISquadRelationshipController_124 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_124
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|78184720"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_124_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_SnapAndBind_14 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_14
  l0._graph = self
  l0._name = "box_SnapAndBind_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|81078043"
  l0.Attached = self.f_box_SnapAndBind_14_Attached
  self.box_ListWriter_127 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_127
  l0._graph = self
  l0._name = "box_ListWriter_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|97492656"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_127_Added
  l0.Removed = self.f_box_ListWriter_127_Removed
  l0.Out = self.f_box_ListWriter_127_Out
  self.box_S09M040B_VID_Mosaic03_OS_Main_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040b/S09M040B_VID_Mosaic03-OS.S09M040B_VID_Mosaic03-OS_Main.debug.lua")
  l0 = self.box_S09M040B_VID_Mosaic03_OS_Main_8
  l0._graph = self
  l0._name = "box_S09M040B_VID_Mosaic03_OS_Main_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|168134137"
  l0.EndVideo = self.f_box_S09M040B_VID_Mosaic03_OS_Main_8_EndVideo
  l0.VideoStarted = self.f_box_S09M040B_VID_Mosaic03_OS_Main_8_VideoStarted
  self.box_Timer_v2_135 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_135
  l0._graph = self
  l0._name = "box_Timer_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|206304433"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_43 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_43
  l0._graph = self
  l0._name = "box_OnceOnly_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|213525722"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_43_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_99 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_99
  l0._graph = self
  l0._name = "box_PlaySound_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|272114070"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_74 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_74
  l0._graph = self
  l0._name = "box_MissionLayer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|309796146"
  l0.Loaded = self.f_box_MissionLayer_v2_74_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v4_9 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_9
  l0._graph = self
  l0._name = "box_MapPointController_v4_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|364115413"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_AISquadStateMonitor_64 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_64
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|388137959"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_64_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_64_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_64_VanishState
  l0.None = DummyFunction
  self.box_CinematicPrep_83 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_83
  l0._graph = self
  l0._name = "box_CinematicPrep_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|403538860"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_83_PostOut
  self.box_Prepare_Convoy_131 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_131
  l0._graph = self
  l0._name = "box_Prepare_Convoy_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|413703991"
  l0.Out = self.f_box_Prepare_Convoy_131_Out
  l0.Prepped = self.f_box_Prepare_Convoy_131_Prepped
  l0.Started = self.f_box_Prepare_Convoy_131_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_131_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_131_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_131_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_131_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_131_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_131_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_131_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_131_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_131_DestinationReached
  self.box_MissionCheckpointReach_76 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_76
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|417431288"
  l0.Out = self.f_box_MissionCheckpointReach_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Mission_End_149 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_149
  l0._graph = self
  l0._name = "box_Mission_End_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|442731195"
  self.box_PrepareClueMonitor_110 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_110
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|465033139"
  l0.Enabled = self.f_box_PrepareClueMonitor_110_Enabled
  l0.Disabled = self.f_box_PrepareClueMonitor_110_Disabled
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_110_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self.box_TutorialController_45 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_45
  l0._graph = self
  l0._name = "box_TutorialController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|496890738"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_45_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_151 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_151
  l0._graph = self
  l0._name = "box_MultipleOR_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|509586760"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_151_Out
  self.box_MissionLayer_v2_81 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_81
  l0._graph = self
  l0._name = "box_MissionLayer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|543777901"
  l0.Loaded = self.f_box_MissionLayer_v2_81_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_140 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_140
  l0._graph = self
  l0._name = "box_CinematicPrep_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|565325854"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_140_PostOut
  self.box_PhoneCommunicationController_128 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_128
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|613418633"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_128_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_128_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_17 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_17
  l0._graph = self
  l0._name = "box_MissionLayer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|616760083"
  l0.Loaded = self.f_box_MissionLayer_v2_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|620875681"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_OnceOnly_v3_169 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_169
  l0._graph = self
  l0._name = "box_OnceOnly_v3_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|623833133"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_169_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_141 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_141
  l0._graph = self
  l0._name = "box_MultipleOR_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|632051747"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_141_Out
  self.box_ListWriter_116 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_116
  l0._graph = self
  l0._name = "box_ListWriter_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|642297874"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_116_Added
  l0.Removed = self.f_box_ListWriter_116_Removed
  l0.Out = self.f_box_ListWriter_116_Out
  self.box_PrepareClueMonitor_95 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_95
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|729674092"
  l0.Enabled = self.f_box_PrepareClueMonitor_95_Enabled
  l0.Disabled = self.f_box_PrepareClueMonitor_95_Disabled
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_95_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self.box_PhoneCommunicationController_126 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_126
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|750196055"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_126_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_221 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_221
  l0._graph = self
  l0._name = "box_MultipleOR_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|759084587"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_221_Out
  self.box_PlayDialog_v2_144 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_144
  l0._graph = self
  l0._name = "box_PlayDialog_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|792094869"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Prepare_EngageMonitor_123 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  l0 = self.box_Prepare_EngageMonitor_123
  l0._graph = self
  l0._name = "box_Prepare_EngageMonitor_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|817352849"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Engaged = self.f_box_Prepare_EngageMonitor_123_Engaged
  self.box_PhoneCommunicationController_24 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_24
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|864994585"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_24_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_24_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Vehicle_Failure_1 = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  l0 = self.box_Vehicle_Failure_1
  l0._graph = self
  l0._name = "box_Vehicle_Failure_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|878831376"
  l0.Started = self.f_box_Vehicle_Failure_1_Started
  l0.Stopped = self.f_box_Vehicle_Failure_1_Stopped
  l0.Fail = DummyFunction
  self.box_MissionCheckpointReach_80 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_80
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|904013286"
  l0.Out = self.f_box_MissionCheckpointReach_80_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_AISquadStateMonitor_11 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_11
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|916291270"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_11_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_11_VanishState
  l0.None = DummyFunction
  self.box_PrepareClueMonitor_32 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_32
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|920730721"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueMonitor_32_Disabled
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_32_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = DummyFunction
  self.box_OnceOnly_v3_133 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_133
  l0._graph = self
  l0._name = "box_OnceOnly_v3_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|944254322"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_133_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_105 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_105
  l0._graph = self
  l0._name = "box_Timer_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|981376211"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|999922373"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_59 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_59
  l0._graph = self
  l0._name = "box_ListWriter_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1031377206"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_59_Added
  l0.Removed = self.f_box_ListWriter_59_Removed
  l0.Out = self.f_box_ListWriter_59_Out
  self.box_PlaySound_v2_113 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_113
  l0._graph = self
  l0._name = "box_PlaySound_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1080233408"
  l0.Out = self.f_box_PlaySound_v2_113_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_36 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_36
  l0._graph = self
  l0._name = "box_OnceOnly_v3_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1119853701"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_36_Out
  l0.ResetOut = DummyFunction
  self.box_TutorialController_87 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_87
  l0._graph = self
  l0._name = "box_TutorialController_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1140165186"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_87_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Delivery_Gameplay_28 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_28
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1145437577"
  l0.Started = self.f_box_Delivery_Gameplay_28_Started
  l0.Stopped = self.f_box_Delivery_Gameplay_28_Stopped
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_28_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = self.f_box_Delivery_Gameplay_28_TeamSpeakFinished
  self.box_VehicleMonitor_v3_71 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_71
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1181520666"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_71_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_71_Entered
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
  self.box_MultipleOR_91 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_91
  l0._graph = self
  l0._name = "box_MultipleOR_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1189609478"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_91_Out
  self.box_Prepare_Convoy_129 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_129
  l0._graph = self
  l0._name = "box_Prepare_Convoy_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1234571216"
  l0.Out = self.f_box_Prepare_Convoy_129_Out
  l0.Prepped = self.f_box_Prepare_Convoy_129_Prepped
  l0.Started = self.f_box_Prepare_Convoy_129_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_129_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_129_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_129_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_129_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_129_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_129_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_129_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_129_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_129_DestinationReached
  self.box_SetBoolean_v2_73 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_73
  l0._graph = self
  l0._name = "box_SetBoolean_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1242496371"
  l0.Out = self.f_box_SetBoolean_v2_73_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_73_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_73_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_73_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_73_SetFromBool
  self.box_Multiple_AND_158 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_158
  l0._graph = self
  l0._name = "box_Multiple_AND_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1250366474"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_158_Out
  self.box_Multiple_AND_121 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_121
  l0._graph = self
  l0._name = "box_Multiple_AND_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1258446325"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_121_Out
  self.box_MapPointController_v4_16 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_16
  l0._graph = self
  l0._name = "box_MapPointController_v4_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1280281131"
  l0.Shown = self.f_box_MapPointController_v4_16_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionZone_154 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_154
  l0._graph = self
  l0._name = "box_MissionZone_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1296710408"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_101 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_101
  l0._graph = self
  l0._name = "box_PlaySound_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1301397717"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PrepareClueMonitor_23 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_23
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1339358574"
  l0.Enabled = self.f_box_PrepareClueMonitor_23_Enabled
  l0.Disabled = self.f_box_PrepareClueMonitor_23_Disabled
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_23_DiscoveredClue
  l0.UndiscoveredClue = DummyFunction
  l0.DiscoveredAllClues = self.f_box_PrepareClueMonitor_23_DiscoveredAllClues
  self.box_MultipleOR_29 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_29
  l0._graph = self
  l0._name = "box_MultipleOR_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1340138619"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_29_Out
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1343907737"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_SnapAndBind_19 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_19
  l0._graph = self
  l0._name = "box_SnapAndBind_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1354622996"
  l0.Attached = self.f_box_SnapAndBind_19_Attached
  self.box_TutorialController_142 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_142
  l0._graph = self
  l0._name = "box_TutorialController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1378171093"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_box_TutorialController_142_MessageCompleted
  self.box_PlaySound_v2_106 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_106
  l0._graph = self
  l0._name = "box_PlaySound_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1408363381"
  l0.Out = self.f_box_PlaySound_v2_106_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MapPointController_v4_33 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_33
  l0._graph = self
  l0._name = "box_MapPointController_v4_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1499875078"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PlaySound_v2_115 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_115
  l0._graph = self
  l0._name = "box_PlaySound_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1518801274"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_93 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1548252405"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_MissionZone_7 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_7
  l0._graph = self
  l0._name = "box_MissionZone_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1609801130"
  l0.Enabled = self.f_box_MissionZone_7_Enabled
  l0.Disabled = self.f_box_MissionZone_7_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PGTController_v2_5 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_5
  l0._graph = self
  l0._name = "box_PGTController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1649601305"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_5_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PlaySound_v2_86 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_86
  l0._graph = self
  l0._name = "box_PlaySound_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1695797952"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_143 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_143
  l0._graph = self
  l0._name = "box_ListWriter_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1699720852"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_143_Added
  l0.Removed = self.f_box_ListWriter_143_Removed
  l0.Out = self.f_box_ListWriter_143_Out
  self.box_Multiple_AND_58 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_58
  l0._graph = self
  l0._name = "box_Multiple_AND_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1745044870"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_58_Out
  self.box_GetNPC_139 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_139
  l0._graph = self
  l0._name = "box_GetNPC_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1759701490"
  l0.GotNPCList = self.f_box_GetNPC_139_GotNPCList
  self.box_PlayDialog_v2_136 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_136
  l0._graph = self
  l0._name = "box_PlayDialog_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1763909943"
  l0.Started = self.f_box_PlayDialog_v2_136_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_GetNPC_77 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_77
  l0._graph = self
  l0._name = "box_GetNPC_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1772986699"
  l0.GotNPCList = self.f_box_GetNPC_77_GotNPCList
  self.box_RewardController_v3_55 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_55
  l0._graph = self
  l0._name = "box_RewardController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1798772036"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_55_RewardsExecuted
  self.box_MissionZone_2 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_2
  l0._graph = self
  l0._name = "box_MissionZone_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1809124761"
  l0.Enabled = self.f_box_MissionZone_2_Enabled
  l0.Disabled = self.f_box_MissionZone_2_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_134 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_134
  l0._graph = self
  l0._name = "box_PlaySound_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1837260580"
  l0.Out = self.f_box_PlaySound_v2_134_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_70 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_70
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1852560239"
  l0.Out = self.f_box_MissionMessageController_v3_70_Out
  l0.MessageCompleted = DummyFunction
  self.box_PGTController_v2_207 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_207
  l0._graph = self
  l0._name = "box_PGTController_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1858739326"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_207_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_OnceOnly_v3_31 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_31
  l0._graph = self
  l0._name = "box_OnceOnly_v3_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1909735001"
  l0._DynamicAnchors = {In = 1}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_96 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_96
  l0._graph = self
  l0._name = "box_OnceOnly_v3_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1911024602"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_96_Out
  l0.ResetOut = DummyFunction
  self.box_SnapAndBind_10 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_10
  l0._graph = self
  l0._name = "box_SnapAndBind_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1915453380"
  l0.Attached = DummyFunction
  self.box_Network_Surfing_Monitor_98 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_98
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1940181374"
  l0.Enabled = self.f_box_Network_Surfing_Monitor_98_Enabled
  l0.Disabled = self.f_box_Network_Surfing_Monitor_98_Disabled
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_98_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = self.f_box_Network_Surfing_Monitor_98_OnNetworkSurfingDeactivated
  self.box_OnceOnly_v3_75 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_75
  l0._graph = self
  l0._name = "box_OnceOnly_v3_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1959737229"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_75_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_160 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_160
  l0._graph = self
  l0._name = "box_Timer_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1964921276"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_160_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_40 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_40
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2010126300"
  l0.Out = self.f_box_MissionMessageController_v3_40_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_78 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_78
  l0._graph = self
  l0._name = "box_PlaySound_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2010511631"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_25 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_25
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2055626492"
  l0.Out = self.f_box_MissionMessageController_v3_25_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2090573847"
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
  l0 = self.box_MissionLayer_v2_74
  l0.LayerName = "S09M040b_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1147573350", "1147573350", "S09M040b_Main", "CheckPoint_0", "box_MissionLayer_v2_74.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_81
  l0.LayerName = "S09M040b_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|122276282", "122276282", "S09M040b_Main", "CheckPoint_1", "box_MissionLayer_v2_81.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_149()
  l0 = self.box_Mission_End_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|996821848", "996821848", "S09M040b_Main", "CheckPoint_2", "box_Mission_End_149.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_17
  l0.LayerName = "S09M040b_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|86584432", "86584432", "S09M040b_Main", "In", "box_MissionLayer_v2_17.Load", self, l0)
  l0:Load()
end
function export:f_box_Prepare_Convoy_130_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|833783722"
  l0.Out = self.f_box_Simple_Node_53_Out
  l0 = self.box_Prepare_Convoy_130
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1643857910", "1643857910", "S09M040b_Main", "box_Prepare_Convoy_130.ConvoyStuck", "box_Simple_Node_53.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_130_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|696267933"
  l0.Out = self.f_box_Simple_Node_65_Out
  l0 = self.box_Prepare_Convoy_130
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1108121761", "1108121761", "S09M040b_Main", "box_Prepare_Convoy_130.NPCsUnassigned", "box_Simple_Node_65.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_130_Prepped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_131()
  l0 = self.box_Prepare_Convoy_130
  l1 = self.box_Prepare_Convoy_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1826885853", "1826885853", "S09M040b_Main", "box_Prepare_Convoy_130.Prepped", "box_Prepare_Convoy_131.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Prepare_Convoy_130_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_135
  l0.Seconds = 5
  l0 = self.box_Prepare_Convoy_130
  l1 = self.box_Timer_v2_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1029376388", "1029376388", "S09M040b_Main", "box_Prepare_Convoy_130.Started", "box_Timer_v2_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1269601746"
  l0.Out = self.f_box_Simple_Node_56_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|268428738", "268428738", "S09M040b_Main", "box_Simple_Node_153.Out", "box_Simple_Node_56.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_7()
  l0 = self.box_MissionZone_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|111309298", "111309298", "S09M040b_Main", "box_Simple_Node_48.Out", "box_MissionZone_7.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|27098591"
  l0.Out = self.f_box_Simple_Node_153_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1129385436", "1129385436", "S09M040b_Main", "box_Simple_Node_47.Out", "box_Simple_Node_153.In", clone, l0)
  l0:In()
end
function export:f_box_SnapAndBind_27_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_134
  l0.Entity = "9223372065754426524"
  l0.SoundId = "soundbinary/4077607045.bnk"
  l0 = self.box_SnapAndBind_27
  l1 = self.box_PlaySound_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|330839342", "330839342", "S09M040b_Main", "box_SnapAndBind_27.Attached", "box_PlaySound_v2_134.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadRelationshipController_124_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1743169847"
  l0.Out = self.f_box_Simple_Node_60_Out
  l0 = self.box_AISquadRelationshipController_124
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1149172067", "1149172067", "S09M040b_Main", "box_AISquadRelationshipController_124.RelationshipSet", "box_Simple_Node_60.In", l0, l1)
  l1:In()
end
function export:f_box_SnapAndBind_14_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_9
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0 = self.box_SnapAndBind_14
  l1 = self.box_MapPointController_v4_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|180416032", "180416032", "S09M040b_Main", "box_SnapAndBind_14.Attached", "box_MapPointController_v4_9.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_127_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_127
  self.T13_SecondCar = l0.Target
  l0 = self.box_ListWriter_143
  l0.Input = self.AmbulanceCar
  l0.Data[0] = "9223372046943894507"
  l0 = self.box_ListWriter_127
  l1 = self.box_ListWriter_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|751440472", "751440472", "S09M040b_Main", "box_ListWriter_127.Added", "box_ListWriter_143.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_127_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_127
  self.T13_SecondCar = l0.Target
end
function export:f_box_ListWriter_127_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_127
  self.T13_SecondCar = l0.Target
end
function export:f_box_DPad_Hackable_Controller_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_5
  l0.PGTMissionArea = "9223372060782821061"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1223237251", "1223237251", "S09M040b_Main", "box_DPad_Hackable_Controller_66.Out", "box_PGTController_v2_5.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_55
  l0.ItemDB = "Items.9223372059111819878"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|873446686", "873446686", "S09M040b_Main", "box_Ordered_Output_100.Out", "box_RewardController_v3_55.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_101
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|356913752", "356913752", "S09M040b_Main", "box_Ordered_Output_100.Out", "box_PlaySound_v2_101.Play", clone, l0)
  l0:Play()
end
function export:f_box_S09M040B_VID_Mosaic03_OS_Main_8_EndVideo()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_58()
  l0 = self.box_S09M040B_VID_Mosaic03_OS_Main_8
  l1 = self.box_Multiple_AND_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1315672716", "1315672716", "S09M040b_Main", "box_S09M040B_VID_Mosaic03_OS_Main_8.EndVideo", "box_Multiple_AND_58.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_S09M040B_VID_Mosaic03_OS_Main_8_VideoStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_126
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347659"
  l0 = self.box_S09M040B_VID_Mosaic03_OS_Main_8
  l1 = self.box_PhoneCommunicationController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|271189090", "271189090", "S09M040b_Main", "box_S09M040B_VID_Mosaic03_OS_Main_8.VideoStarted", "box_PhoneCommunicationController_126.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMusicController_108_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_113
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1156117165", "1156117165", "S09M040b_Main", "box_MissionMusicController_108.Activated", "box_PlaySound_v2_113.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_135_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_131()
  l0 = self.box_Timer_v2_135
  l1 = self.box_Prepare_Convoy_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|211278860", "211278860", "S09M040b_Main", "box_Timer_v2_135.TimeElapsed", "box_Prepare_Convoy_131.Start", l0, l1)
  l1:Start()
end
function export:f_box_PrepareClueController_118_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_142
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Notification010",
    item = "Notification",
    id = "642279"
  }
  l0.Duration = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1482102566", "1482102566", "S09M040b_Main", "box_PrepareClueController_118.Disabled", "box_TutorialController_142.Display", clone, l0)
  l0:Display()
end
function export:f_box_OnceOnly_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060782821061"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1803773681"
  l0.Out = self.f_box_AI_Agent_Zone_37_Out
  l0 = self.box_OnceOnly_v3_43
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|150982114", "150982114", "S09M040b_Main", "box_OnceOnly_v3_43.Out", "box_AI_Agent_Zone_37.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_155_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1597038640"
  l0.Out = self.f_box_Simple_Node_156_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1517477939", "1517477939", "S09M040b_Main", "box_Simple_Node_155.Out", "box_Simple_Node_156.In", clone, l0)
  l0:In()
end
function export:f_box_PrepareClueController_120_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ExtraCluesToDisable
  l0._graph = self
  l0._name = "box_PrepareClueController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1859744420"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_145_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1158009316", "1158009316", "S09M040b_Main", "box_PrepareClueController_120.Activated", "box_PrepareClueController_145.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PrepareClueController_6_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ClueGuards
  l0._graph = self
  l0._name = "box_PrepareClueController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|253120839"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_120_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|597596893", "597596893", "S09M040b_Main", "box_PrepareClueController_6.Activated", "box_PrepareClueController_120.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Simple_Node_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1893572041", "1893572041", "S09M040b_Main", "box_Simple_Node_61.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_74_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1100477360"
  l0.Out = self.f_box_Get_Player_ID_137_Out
  l0 = self.box_MissionLayer_v2_74
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|999722010", "999722010", "S09M040b_Main", "box_MissionLayer_v2_74.Loaded", "box_Get_Player_ID_137.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_133()
  l0 = self.box_OnceOnly_v3_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1537689366", "1537689366", "S09M040b_Main", "box_SetFloat_v2_72.Out", "box_OnceOnly_v3_133.In", clone, l0)
  l0:In(0)
end
function export:f_box_PrepareClueController_117_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072557568800"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1514617832"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_21_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1442383178", "1442383178", "S09M040b_Main", "box_PrepareClueController_117.Activated", "box_PrepareClueController_21.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_27
  l0.Parent = self.Ambulance
  l0.Child = "9223372065754426524"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1636885731", "1636885731", "S09M040b_Main", "box_Ordered_Output_20.Out", "box_SnapAndBind_27.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_130()
  l0 = self.box_Prepare_Convoy_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|398771997", "398771997", "S09M040b_Main", "box_Ordered_Output_20.Out", "box_Prepare_Convoy_130.Prep", clone, l0)
  l0:Prep()
end
function export:f_box_Simple_Node_157_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_158()
  l0 = self.box_Multiple_AND_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|586993531", "586993531", "S09M040b_Main", "box_Simple_Node_157.Out", "box_Multiple_AND_158.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_PrepareClueController_103_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072149534519"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1945747646"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_119_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|139057804", "139057804", "S09M040b_Main", "box_PrepareClueController_103.Activated", "box_PrepareClueController_119.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_AISquadStateMonitor_64_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_AISquadStateMonitor_64
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2027921552", "2027921552", "S09M040b_Main", "box_AISquadStateMonitor_64.CombatState", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_64_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_AISquadStateMonitor_64
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1429498556", "1429498556", "S09M040b_Main", "box_AISquadStateMonitor_64.SearchState", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_64_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_64
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|51144024", "51144024", "S09M040b_Main", "box_AISquadStateMonitor_64.VanishState", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_83_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_83
  l1 = self.box_SetBoolean_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1181692666", "1181692666", "S09M040b_Main", "box_CinematicPrep_83.PostOut", "box_SetBoolean_v2_73.True", l0, l1)
  l1:True()
end
function export:f_box_Prepare_Convoy_131_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|415685938"
  l0.Out = self.f_box_Simple_Node_51_Out
  l0 = self.box_Prepare_Convoy_131
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1171612521", "1171612521", "S09M040b_Main", "box_Prepare_Convoy_131.ConvoyStuck", "box_Simple_Node_51.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_131_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|307102992"
  l0.Out = self.f_box_Simple_Node_61_Out
  l0 = self.box_Prepare_Convoy_131
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|903215320", "903215320", "S09M040b_Main", "box_Prepare_Convoy_131.NPCsUnassigned", "box_Simple_Node_61.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_131_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
  self:OnEnter_box_AISquadRelationshipController_124()
  l1 = self.box_AISquadRelationshipController_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|367587457", "367587457", "S09M040b_Main", "box_Prepare_Convoy_131.Prepped", "box_AISquadRelationshipController_124.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_Prepare_Convoy_131_Started()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_131_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_131
  self.CTDriver1 = l0.VipID
  self.CTCar1 = l0.VipVehicleID
end
function export:f_box_Simple_Node_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1743005126", "1743005126", "S09M040b_Main", "box_Simple_Node_51.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionCheckpointReach_76_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_2()
  l0 = self.box_MissionCheckpointReach_76
  l1 = self.box_MissionZone_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|430501400", "430501400", "S09M040b_Main", "box_MissionCheckpointReach_76.Out", "box_MissionZone_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|38611099"
  l0.Out = self.f_box_Simple_Node_48_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2056391308", "2056391308", "S09M040b_Main", "box_Simple_Node_152.Out", "box_Simple_Node_48.In", clone, l0)
  l0:In()
end
function export:f_box_PrepareClueController_150_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0._name = "box_PrepareClueController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1926453986"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_50_Disabled
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|75163498", "75163498", "S09M040b_Main", "box_PrepareClueController_150.Disabled", "box_PrepareClueController_50.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PrepareClueMonitor_110_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146211"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|327399619"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_117_Activated
  l0 = self.box_PrepareClueMonitor_110
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|394220141", "394220141", "S09M040b_Main", "box_PrepareClueMonitor_110.Disabled", "box_PrepareClueController_117.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PrepareClueMonitor_110_DiscoveredClue()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_110()
  l0 = self.box_PrepareClueMonitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|753663961", "753663961", "S09M040b_Main", "box_PrepareClueMonitor_110.DiscoveredClue", "box_PrepareClueMonitor_110.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PrepareClueMonitor_110_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_32()
  l0 = self.box_PrepareClueMonitor_110
  l1 = self.box_PrepareClueMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1745636673", "1745636673", "S09M040b_Main", "box_PrepareClueMonitor_110.Enabled", "box_PrepareClueMonitor_32.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_45_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Delivery_Gameplay_28()
  l0 = self.box_TutorialController_45
  l1 = self.box_Delivery_Gameplay_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1229668741", "1229668741", "S09M040b_Main", "box_TutorialController_45.DisplayRequested", "box_Delivery_Gameplay_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_151_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_87()
  l0 = self.box_MultipleOR_151
  l1 = self.box_TutorialController_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|124827121", "124827121", "S09M040b_Main", "box_MultipleOR_151.Out", "box_TutorialController_87.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MissionLayer_v2_81_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1136315774"
  l0.Out = self.f_box_Get_Player_ID_79_Out
  l0 = self.box_MissionLayer_v2_81
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|842785724", "842785724", "S09M040b_Main", "box_MissionLayer_v2_81.Loaded", "box_Get_Player_ID_79.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_140_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_CinematicPrep_140
  l1 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1729712443", "1729712443", "S09M040b_Main", "box_CinematicPrep_140.PostOut", "box_MultipleOR_141.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_128_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_PhoneCommunicationController_128
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|464046522", "464046522", "S09M040b_Main", "box_PhoneCommunicationController_128.OnCommunicationFinished", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_128_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|692882421"
  l0.Out = self.f_box_Simple_Node_175_Out
  l0 = self.box_PhoneCommunicationController_128
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1976597758", "1976597758", "S09M040b_Main", "box_PhoneCommunicationController_128.OnCommunicationStarted", "box_Simple_Node_175.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_17_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1925497476"
  l0.Out = self.f_box_Get_Player_ID_44_Out
  l0 = self.box_MissionLayer_v2_17
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1014698961", "1014698961", "S09M040b_Main", "box_MissionLayer_v2_17.Loaded", "box_Get_Player_ID_44.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_121()
  l0 = self.box_Multiple_AND_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1881578558", "1881578558", "S09M040b_Main", "box_AI_Agent_Zone_3.Out", "box_Multiple_AND_121.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_80
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_82
  l1 = self.box_MissionCheckpointReach_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1147229219", "1147229219", "S09M040b_Main", "box_MultipleOR_82.Out", "box_MissionCheckpointReach_80.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_169_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0._name = "box_PrepareClueController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1055545885"
  l0.Enabled = self.f_box_PrepareClueController_4_Enabled
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0 = self.box_OnceOnly_v3_169
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|319981267", "319981267", "S09M040b_Main", "box_OnceOnly_v3_169.Out", "box_PrepareClueController_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_141
  l1 = self.box_S09M040B_VID_Mosaic03_OS_Main_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1035125612", "1035125612", "S09M040b_Main", "box_MultipleOR_141.Out", "box_S09M040B_VID_Mosaic03_OS_Main_8.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_116_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_116
  self.AmbulancePassenger = l0.Target
  l0 = self.box_ListWriter_127
  l0.Input = self.T13_SecondCar
  l0.Data[0] = "9223372072149534522"
  l0.Data[1] = "9223372046726189815"
  l0 = self.box_ListWriter_116
  l1 = self.box_ListWriter_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|494317641", "494317641", "S09M040b_Main", "box_ListWriter_116.Added", "box_ListWriter_127.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_116_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.AmbulancePassenger = l0.Target
end
function export:f_box_ListWriter_116_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_116
  self.AmbulancePassenger = l0.Target
end
function export:f_box_Simple_Node_175_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1641474664"
  l0.Out = self.f_box_Simple_Node_172_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|514550843", "514550843", "S09M040b_Main", "box_Simple_Node_175.Out", "box_Simple_Node_172.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1760426294", "1760426294", "S09M040b_Main", "box_Simple_Node_65.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_PrepareClueMonitor_95_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146201"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|732165116"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0 = self.box_PrepareClueMonitor_95
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1314678309", "1314678309", "S09M040b_Main", "box_PrepareClueMonitor_95.Disabled", "box_PrepareClueController_102.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PrepareClueMonitor_95_DiscoveredClue()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_95()
  l0 = self.box_PrepareClueMonitor_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2017759686", "2017759686", "S09M040b_Main", "box_PrepareClueMonitor_95.DiscoveredClue", "box_PrepareClueMonitor_95.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PrepareClueMonitor_95_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_110()
  l0 = self.box_PrepareClueMonitor_95
  l1 = self.box_PrepareClueMonitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2117799846", "2117799846", "S09M040b_Main", "box_PrepareClueMonitor_95.Enabled", "box_PrepareClueMonitor_110.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PhoneCommunicationController_126_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_58()
  l0 = self.box_PhoneCommunicationController_126
  l1 = self.box_Multiple_AND_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1085855364", "1085855364", "S09M040b_Main", "box_PhoneCommunicationController_126.OnCommunicationFinished", "box_Multiple_AND_58.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MultipleOR_221_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_87()
  l0 = self.box_MultipleOR_221
  l1 = self.box_TutorialController_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2085640885", "2085640885", "S09M040b_Main", "box_MultipleOR_221.Out", "box_TutorialController_87.Display", l0, l1)
  l1:Display()
end
function export:f_box_Prepare_EngageMonitor_123_Engaged()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1122552981"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_46_Out_2
  l0 = self.box_Prepare_EngageMonitor_123
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|649854284", "649854284", "S09M040b_Main", "box_Prepare_EngageMonitor_123.Engaged", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|825634536", "825634536", "S09M040b_Main", "box_Simple_Node_53.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_PhoneCommunicationController_24_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1036413577"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_112_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_112_Out_1
  l0 = self.box_PhoneCommunicationController_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|561214369", "561214369", "S09M040b_Main", "box_PhoneCommunicationController_24.OnCommunicationFinished", "box_Ordered_Output_112.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_24_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_33
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0 = self.box_PhoneCommunicationController_24
  l1 = self.box_MapPointController_v4_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|392937887", "392937887", "S09M040b_Main", "box_PhoneCommunicationController_24.StartCommunicationOut", "box_MapPointController_v4_33.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Vehicle_Failure_1_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1061104699"
  l0.Activated = self.f_box_MissionMusicController_69_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_Vehicle_Failure_1
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1264847120", "1264847120", "S09M040b_Main", "box_Vehicle_Failure_1.Started", "box_MissionMusicController_69.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Vehicle_Failure_1_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Ambulance
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|144379636"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = self.f_box_DPad_Hackable_Controller_66_Out
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_Vehicle_Failure_1
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1437233548", "1437233548", "S09M040b_Main", "box_Vehicle_Failure_1.Stopped", "box_DPad_Hackable_Controller_66.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_MissionCheckpointReach_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_25
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective090",
    item = "Objective",
    id = "642402"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_80
  l1 = self.box_MissionMessageController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1984846307", "1984846307", "S09M040b_Main", "box_MissionCheckpointReach_80.Out", "box_MissionMessageController_v3_25.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_AISquadStateMonitor_11_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_115
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AISquadStateMonitor_11
  l1 = self.box_PlaySound_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|414681429", "414681429", "S09M040b_Main", "box_AISquadStateMonitor_11.CombatState", "box_PlaySound_v2_115.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_11_VanishState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_99
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_AISquadStateMonitor_11
  l1 = self.box_PlaySound_v2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1574985700", "1574985700", "S09M040b_Main", "box_AISquadStateMonitor_11.VanishState", "box_PlaySound_v2_99.Play", l0, l1)
  l1:Play()
end
function export:f_box_PrepareClueMonitor_32_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146209"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|373397246"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_103_Activated
  l0 = self.box_PrepareClueMonitor_32
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1927491522", "1927491522", "S09M040b_Main", "box_PrepareClueMonitor_32.Disabled", "box_PrepareClueController_103.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PrepareClueMonitor_32_DiscoveredClue()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_32()
  l0 = self.box_PrepareClueMonitor_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1392343012", "1392343012", "S09M040b_Main", "box_PrepareClueMonitor_32.DiscoveredClue", "box_PrepareClueMonitor_32.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_133_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372070820947008"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2135255890"
  l0.Out = self.f_box_AI_Agent_Zone_18_Out
  l0 = self.box_OnceOnly_v3_133
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2107683148", "2107683148", "S09M040b_Main", "box_OnceOnly_v3_133.Out", "box_AI_Agent_Zone_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_132_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 30
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1720818384"
  l0.Out = self.f_box_SetFloat_v2_138_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1038608293", "1038608293", "S09M040b_Main", "box_Compare_Boolean_v2_132.A_is_False", "box_SetFloat_v2_138.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Boolean_v2_132_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|318774909"
  l0.Out = self.f_box_SetFloat_v2_72_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|106312", "106312", "S09M040b_Main", "box_Compare_Boolean_v2_132.A_is_True", "box_SetFloat_v2_72.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Timer_v2_105_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_121()
  l0 = self.box_Timer_v2_105
  l1 = self.box_Multiple_AND_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2117935892", "2117935892", "S09M040b_Main", "box_Timer_v2_105.TimeElapsed", "box_Multiple_AND_121.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CollisionController_12_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_10
  l0.Parent = self.Ambulance
  l0.Child = self.DeadBodyAmbulance
  l0.yPosOffset = -1
  l0.zPosOffset = 0.75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2011284420", "2011284420", "S09M040b_Main", "box_CollisionController_12.CollisionsDisabled", "box_SnapAndBind_10.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_ListWriter_59_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_59
  self.Snipers = l0.Target
  l0 = self.box_ListWriter_116
  l0.Input = self.AmbulancePassenger
  l0.Data[0] = "9223372072149534306"
  l0 = self.box_ListWriter_59
  l1 = self.box_ListWriter_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1300908394", "1300908394", "S09M040b_Main", "box_ListWriter_59.Added", "box_ListWriter_116.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_59_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.Snipers = l0.Target
end
function export:f_box_ListWriter_59_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.Snipers = l0.Target
end
function export:f_box_Ordered_Output_112_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_144
  l0.SoundId = "soundbinary/1006438201.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|497769932", "497769932", "S09M040b_Main", "box_Ordered_Output_112.Out", "box_PlayDialog_v2_144.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_112_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_78
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1287994249", "1287994249", "S09M040b_Main", "box_Ordered_Output_112.Out", "box_PlaySound_v2_78.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_109_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Start Delivery immediatly after convoy starts", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Start Delivery immediatly after convoy starts")
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1712135076"
  l0.Out = self.f_box_Simple_Node_107_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1420348570", "1420348570", "S09M040b_Main", "box_Ordered_Output_109.Out", "box_Simple_Node_107.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_109_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_130()
  l0 = self.box_Prepare_Convoy_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|706589612", "706589612", "S09M040b_Main", "box_Ordered_Output_109.Out", "box_Prepare_Convoy_130.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2110256893"
  l0.Out = self.f_box_Simple_Node_146_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|851813773", "851813773", "S09M040b_Main", "box_Simple_Node_147.Out", "box_Simple_Node_146.In", clone, l0)
  l0:In()
end
function export:f_box_PrepareClueController_4_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PrepareClueMonitor_23()
  l0 = self.box_PrepareClueMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1770019801", "1770019801", "S09M040b_Main", "box_PrepareClueController_4.Enabled", "box_PrepareClueMonitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMusicController_69_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_86
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1109252670", "1109252670", "S09M040b_Main", "box_MissionMusicController_69.Activated", "box_PlaySound_v2_86.Play", clone, l0)
  l0:Play()
end
function export:f_box_Vehicle_Controller_15_Undeflatable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|347756673"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1693998396", "1693998396", "S09M040b_Main", "box_Vehicle_Controller_15.Undeflatable", "box_Ordered_Output_20.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_113_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_PlaySound_v2_113
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1120662500", "1120662500", "S09M040b_Main", "box_PlaySound_v2_113.Out", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_140
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1646578893", "1646578893", "S09M040b_Main", "box_Get_Player_ID_137.Out", "box_CinematicPrep_140.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_OnceOnly_v3_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1812783577"
  l0.Out = self.f_box_Simple_Node_42_Out
  l0 = self.box_OnceOnly_v3_36
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1887256445", "1887256445", "S09M040b_Main", "box_OnceOnly_v3_36.Out", "box_Simple_Node_42.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_24
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055886457213"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|28128006", "28128006", "S09M040b_Main", "box_Ordered_Output_46.Out", "box_PhoneCommunicationController_24.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_46_Out_1()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|43428935"
  l0.Out = self.f_box_Simple_Node_47_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|586986197", "586986197", "S09M040b_Main", "box_Ordered_Output_46.Out", "box_Simple_Node_47.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1270711303"
  l0.Out = self.f_box_Simple_Node_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1258241063", "1258241063", "S09M040b_Main", "box_Ordered_Output_46.Out", "box_Simple_Node_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1053704124"
  l0.Out = self.f_box_Simple_Node_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|427247180", "427247180", "S09M040b_Main", "box_Ordered_Output_90.Out", "box_Simple_Node_147.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|519743582", "519743582", "S09M040b_Main", "box_Ordered_Output_90.Out", "box_MultipleOR_93.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_90_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_149()
  l0 = self.box_Mission_End_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1260535252", "1260535252", "S09M040b_Main", "box_Ordered_Output_90.Out", "box_Mission_End_149.End", clone, l0)
  l0:End()
end
function export:f_box_Get_Player_ID_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.clues
  l0._graph = self
  l0._name = "box_PrepareClueController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|279901771"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_6_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1849158257", "1849158257", "S09M040b_Main", "box_Get_Player_ID_79.Out", "box_PrepareClueController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TutorialController_87_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_87
  l1 = self.box_OnceOnly_v3_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1193748006", "1193748006", "S09M040b_Main", "box_TutorialController_87.DisplayRequested", "box_OnceOnly_v3_169.In", l0, l1)
  l1:In(0)
end
function export:f_box_Delivery_Gameplay_28_AllDeliveryCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_Delivery_Gameplay_28()
  l0 = self.box_Delivery_Gameplay_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1494938627", "1494938627", "S09M040b_Main", "box_Delivery_Gameplay_28.AllDeliveryCompleted", "box_Delivery_Gameplay_28.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Delivery_Gameplay_28_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1662902321"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_88_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_88_Out_1
  l0 = self.box_Delivery_Gameplay_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|874939965", "874939965", "S09M040b_Main", "box_Delivery_Gameplay_28.Started", "box_Ordered_Output_88.In", l0, l1)
  l1:In()
end
function export:f_box_Delivery_Gameplay_28_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1833481062"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_97_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_97_Out_1
  l0 = self.box_Delivery_Gameplay_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1184858457", "1184858457", "S09M040b_Main", "box_Delivery_Gameplay_28.Stopped", "box_Ordered_Output_97.In", l0, l1)
  l1:In()
end
function export:f_box_Delivery_Gameplay_28_TeamSpeakFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|154622220"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0 = self.box_Delivery_Gameplay_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|957535766", "957535766", "S09M040b_Main", "box_Delivery_Gameplay_28.TeamSpeakFinished", "box_Ordered_Output_100.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_71_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_64()
  l0 = self.box_VehicleMonitor_v3_71
  l1 = self.box_AISquadStateMonitor_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1981880487", "1981880487", "S09M040b_Main", "box_VehicleMonitor_v3_71.Disabled", "box_AISquadStateMonitor_64.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_71_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1872016326"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_VehicleMonitor_v3_71
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1199561651", "1199561651", "S09M040b_Main", "box_VehicleMonitor_v3_71.Entered", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_91_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_91
  l1 = self.box_OnceOnly_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|625861592", "625861592", "S09M040b_Main", "box_MultipleOR_91.Out", "box_OnceOnly_v3_75.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_114_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_129()
  l0 = self.box_Prepare_Convoy_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1880354972", "1880354972", "S09M040b_Main", "box_Simple_Node_114.Out", "box_Prepare_Convoy_129.Start", clone, l0)
  l0:Start()
end
function export:f_box_Prepare_Convoy_129_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1674686454"
  l0.Out = self.f_box_Simple_Node_52_Out
  l0 = self.box_Prepare_Convoy_129
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1566452547", "1566452547", "S09M040b_Main", "box_Prepare_Convoy_129.ConvoyStuck", "box_Simple_Node_52.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_129_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1842342731"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  l0 = self.box_Prepare_Convoy_129
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|603678438", "603678438", "S09M040b_Main", "box_Prepare_Convoy_129.NPCsUnassigned", "box_Ordered_Output_68.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_129_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Ambulance
  l0._graph = self
  l0._name = "box_Vehicle_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1063707148"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = self.f_box_Vehicle_Controller_15_Undeflatable
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_Prepare_Convoy_129
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|969141250", "969141250", "S09M040b_Main", "box_Prepare_Convoy_129.Prepped", "box_Vehicle_Controller_15.SetTyresUndeflatable", l0, l1)
  l1:SetTyresUndeflatable()
end
function export:f_box_Prepare_Convoy_129_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1052945570"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_109_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_109_Out_1
  l0 = self.box_Prepare_Convoy_129
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|118184519", "118184519", "S09M040b_Main", "box_Prepare_Convoy_129.Started", "box_Ordered_Output_109.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_129_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_129_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_129
  self.AmbDriver = l0.VipID
  self.Ambulance = l0.VipVehicleID
end
function export:f_box_SetBoolean_v2_73_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|171475675"
  l0.Activated = self.f_box_MissionMusicController_108_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_SetBoolean_v2_73
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1483428026", "1483428026", "S09M040b_Main", "box_SetBoolean_v2_73.SetTrue", "box_MissionMusicController_108.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetBoolean_v2_73_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.Checkpoint = l0.Target
end
function export:f_box_Multiple_AND_158_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_154()
  l0 = self.box_Multiple_AND_158
  l1 = self.box_MissionZone_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2109684084", "2109684084", "S09M040b_Main", "box_Multiple_AND_158.Out", "box_MissionZone_154.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_121_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1921127833"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_84_Deactivated
  l0 = self.box_Multiple_AND_121
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1098769309", "1098769309", "S09M040b_Main", "box_Multiple_AND_121.Out", "box_MissionMusicController_84.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Simple_Node_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_2()
  l0 = self.box_MissionZone_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1402650094", "1402650094", "S09M040b_Main", "box_Simple_Node_56.Out", "box_MissionZone_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|425751725"
  l0.Out = self.f_box_Simple_Node_152_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|418591907", "418591907", "S09M040b_Main", "box_Simple_Node_38.Out", "box_Simple_Node_152.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v4_16_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_7()
  l0 = self.box_MapPointController_v4_16
  l1 = self.box_MissionZone_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|845841488", "845841488", "S09M040b_Main", "box_MapPointController_v4_16.Shown", "box_MissionZone_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PrepareClueMonitor_23_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_128
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347660"
  l0 = self.box_PrepareClueMonitor_23
  l1 = self.box_PhoneCommunicationController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|240951315", "240951315", "S09M040b_Main", "box_PrepareClueMonitor_23.Disabled", "box_PhoneCommunicationController_128.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PrepareClueMonitor_23_DiscoveredAllClues()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_23()
  l0 = self.box_PrepareClueMonitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1113571567", "1113571567", "S09M040b_Main", "box_PrepareClueMonitor_23.DiscoveredAllClues", "box_PrepareClueMonitor_23.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PrepareClueMonitor_23_DiscoveredClue()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective020",
    item = "Objective",
    id = "355202"
  }
  l0 = self.box_PrepareClueMonitor_23
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1944167942", "1944167942", "S09M040b_Main", "box_PrepareClueMonitor_23.DiscoveredClue", "box_MissionMessageController_v3_26.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PrepareClueMonitor_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_95()
  l0 = self.box_PrepareClueMonitor_23
  l1 = self.box_PrepareClueMonitor_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|158646206", "158646206", "S09M040b_Main", "box_PrepareClueMonitor_23.Enabled", "box_PrepareClueMonitor_95.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_29
  l1 = self.box_OnceOnly_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|373651591", "373651591", "S09M040b_Main", "box_MultipleOR_29.Out", "box_OnceOnly_v3_43.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_30
  l1 = self.box_OnceOnly_v3_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|54152733", "54152733", "S09M040b_Main", "box_MultipleOR_30.Out", "box_OnceOnly_v3_31.In", l0, l1)
  l1:In(0)
end
function export:f_box_SnapAndBind_19_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_16
  l0.MapPoint = "9223372046877511137"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0 = self.box_SnapAndBind_19
  l1 = self.box_MapPointController_v4_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1486462421", "1486462421", "S09M040b_Main", "box_SnapAndBind_19.Attached", "box_MapPointController_v4_16.Show", l0, l1)
  l1:Show()
end
function export:f_box_TutorialController_142_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_40
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective040",
    item = "Objective",
    id = "355204"
  }
  l0 = self.box_TutorialController_142
  l1 = self.box_MissionMessageController_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1315173403", "1315173403", "S09M040b_Main", "box_TutorialController_142.MessageCompleted", "box_MissionMessageController_v3_40.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PlaySound_v2_106_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_160
  l0.Seconds = 2
  l0 = self.box_PlaySound_v2_106
  l1 = self.box_Timer_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1773676980", "1773676980", "S09M040b_Main", "box_PlaySound_v2_106.Out", "box_Timer_v2_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_MapPointController_v4_33_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ExtraCluesToDisable
  l0._graph = self
  l0._name = "box_PrepareClueController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|443060781"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_150_Disabled
  l0.Activated = DummyFunction
  l0 = self.box_MapPointController_v4_33
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|713080205", "713080205", "S09M040b_Main", "box_MapPointController_v4_33.Hidden", "box_PrepareClueController_150.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_154()
  l0 = self.box_MissionZone_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|48211005", "48211005", "S09M040b_Main", "box_Simple_Node_39.Out", "box_MissionZone_154.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PrepareClueController_21_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372052171146967"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2091081093"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|987697832", "987697832", "S09M040b_Main", "box_PrepareClueController_21.Activated", "box_PrepareClueController_122.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_93
  l1 = self.box_OnceOnly_v3_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1865353820", "1865353820", "S09M040b_Main", "box_MultipleOR_93.Out", "box_OnceOnly_v3_96.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMusicController_54_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_106
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1725098702", "1725098702", "S09M040b_Main", "box_MissionMusicController_54.Activated", "box_PlaySound_v2_106.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_156_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_158()
  l0 = self.box_Multiple_AND_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|238746824", "238746824", "S09M040b_Main", "box_Simple_Node_156.Out", "box_Multiple_AND_158.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MissionZone_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|370072309"
  l0.Out = self.f_box_Simple_Node_157_Out
  l0 = self.box_MissionZone_7
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1048418108", "1048418108", "S09M040b_Main", "box_MissionZone_7.Disabled", "box_Simple_Node_157.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_7_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_83
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionZone_7
  l1 = self.box_CinematicPrep_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|121040807", "121040807", "S09M040b_Main", "box_MissionZone_7.Enabled", "box_CinematicPrep_83.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_172_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Network_Surfing_Monitor_98()
  l0 = self.box_Network_Surfing_Monitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|832317312", "832317312", "S09M040b_Main", "box_Simple_Node_172.Out", "box_Network_Surfing_Monitor_98.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PGTController_v2_5_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060782821061"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|617840424"
  l0.Out = self.f_box_AI_Agent_Zone_3_Out
  l0 = self.box_PGTController_v2_5
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1025749380", "1025749380", "S09M040b_Main", "box_PGTController_v2_5.Aborted", "box_AI_Agent_Zone_3.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1212225290"
  l0.Out = self.f_box_Simple_Node_114_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|155956541", "155956541", "S09M040b_Main", "box_Ordered_Output_13.Out", "box_Simple_Node_114.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_139
  l0.Affiliation = "T_13"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1072740892", "1072740892", "S09M040b_Main", "box_Ordered_Output_13.Out", "box_GetNPC_139.GetEnemiesAlive", clone, l0)
  l0:GetEnemiesAlive()
end
function export:f_box_Ordered_Output_88_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Failure_1()
  l0 = self.box_Vehicle_Failure_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1455070955", "1455070955", "S09M040b_Main", "box_Ordered_Output_88.Out", "box_Vehicle_Failure_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_88_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_71()
  l0 = self.box_VehicleMonitor_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2091662146", "2091662146", "S09M040b_Main", "box_Ordered_Output_88.Out", "box_VehicleMonitor_v3_71.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ReinforcementSystemController_v2_92_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_92()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1216719166", "1216719166", "S09M040b_Main", "box_ReinforcementSystemController_v2_92.ReinforcingStarted", "box_ReinforcementSystemController_v2_92.AddScriptedAgents", clone, l0)
  l0:AddScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_92_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_92()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|202192020", "202192020", "S09M040b_Main", "box_ReinforcementSystemController_v2_92.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_92.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_Simple_Node_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1561231526", "1561231526", "S09M040b_Main", "box_Simple_Node_52.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_ListWriter_143_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_143
  self.AmbulanceCar = l0.Target
  self:OnEnter_box_Prepare_Convoy_129()
  l1 = self.box_Prepare_Convoy_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1010583824", "1010583824", "S09M040b_Main", "box_ListWriter_143.Added", "box_Prepare_Convoy_129.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_ListWriter_143_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_143
  self.AmbulanceCar = l0.Target
end
function export:f_box_ListWriter_143_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_143
  self.AmbulanceCar = l0.Target
end
function export:f_box_Simple_Node_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1869717582"
  l0.Out = self.f_box_Simple_Node_111_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1646991163", "1646991163", "S09M040b_Main", "box_Simple_Node_107.Out", "box_Simple_Node_111.In", clone, l0)
  l0:In()
end
function export:f_box_SetFloat_v2_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_133()
  l0 = self.box_OnceOnly_v3_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1512732429", "1512732429", "S09M040b_Main", "box_SetFloat_v2_138.Out", "box_OnceOnly_v3_133.In", clone, l0)
  l0:In(1)
end
function export:f_box_Simple_Node_60_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1652399868"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1452954415", "1452954415", "S09M040b_Main", "box_Simple_Node_60.Out", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_76
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_Multiple_AND_58
  l1 = self.box_MissionCheckpointReach_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|974205288", "974205288", "S09M040b_Main", "box_Multiple_AND_58.Out", "box_MissionCheckpointReach_76.In", l0, l1)
  l1:In()
end
function export:f_box_GetNPC_139_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_139
  self.drivers = l0.NPCList
  self:OnEnter_box_PGTController_v2_207()
  l1 = self.box_PGTController_v2_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1625709366", "1625709366", "S09M040b_Main", "box_GetNPC_139.GotNPCList", "box_PGTController_v2_207.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_136_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_14
  l0.Parent = "9223372046943895163"
  l0.Child = "9223372046877511137"
  l0.zPosOffset = 0.5
  l0 = self.box_PlayDialog_v2_136
  l1 = self.box_SnapAndBind_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1272741917", "1272741917", "S09M040b_Main", "box_PlayDialog_v2_136.Started", "box_SnapAndBind_14.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_GetNPC_77_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_77
  self.AliveT13 = l0.NPCList
  self:OnEnter_box_ReinforcementSystemController_v2_92()
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|393647211", "393647211", "S09M040b_Main", "box_GetNPC_77.GotNPCList", "box_ReinforcementSystemController_v2_92.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_RewardController_v3_55_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_105
  l0.Seconds = 10
  l0 = self.box_RewardController_v3_55
  l1 = self.box_Timer_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|312979266", "312979266", "S09M040b_Main", "box_RewardController_v3_55.RewardsExecuted", "box_Timer_v2_105.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_Agent_Zone_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateMonitor_11
  l0.Affiliation = "T_13"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|232433677", "232433677", "S09M040b_Main", "box_AI_Agent_Zone_37.Out", "box_AISquadStateMonitor_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionZone_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|217513805"
  l0.Out = self.f_box_Simple_Node_155_Out
  l0 = self.box_MissionZone_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1546899924", "1546899924", "S09M040b_Main", "box_MissionZone_2.Disabled", "box_Simple_Node_155.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_2_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1576905244"
  l0.Activated = self.f_box_MissionMusicController_54_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_MissionZone_2
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1764911521", "1764911521", "S09M040b_Main", "box_MissionZone_2.Enabled", "box_MissionMusicController_54.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1505550756"
  l0.Out = self.f_box_Simple_Node_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1524707049", "1524707049", "S09M040b_Main", "box_Simple_Node_42.Out", "box_Simple_Node_39.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_97_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Failure_1()
  l0 = self.box_Vehicle_Failure_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|524309489", "524309489", "S09M040b_Main", "box_Ordered_Output_97.Out", "box_Vehicle_Failure_1.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_97_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_71()
  l0 = self.box_VehicleMonitor_v3_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1884365743", "1884365743", "S09M040b_Main", "box_Ordered_Output_97.Out", "box_VehicleMonitor_v3_71.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_134_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.DeadBodyAmbulance
  l0.Collisionable = 0
  l0._graph = self
  l0._name = "box_CollisionController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1011609459"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_12_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_PlaySound_v2_134
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1625706593", "1625706593", "S09M040b_Main", "box_PlaySound_v2_134.Out", "box_CollisionController_12.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_62
  l0.Entity = "9223372065754426524"
  l0.SoundId = "soundbinary/3734033751.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|533171158", "533171158", "S09M040b_Main", "box_Ordered_Output_68.Out", "box_PlaySound_v2_62.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_68_Out_1()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2078725518"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|136795341", "136795341", "S09M040b_Main", "box_Ordered_Output_68.Out", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_98()
  l0 = self.box_MissionMessageController_v3_70
  l1 = self.box_Network_Surfing_Monitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|74182381", "74182381", "S09M040b_Main", "box_MissionMessageController_v3_70.Out", "box_Network_Surfing_Monitor_98.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_207_AllSpawned()
  local l0
  self = self._graph
  self:OnEnter_box_PGTController_v2_207()
  l0 = self.box_PGTController_v2_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|901163500", "901163500", "S09M040b_Main", "box_PGTController_v2_207.AllSpawned", "box_PGTController_v2_207.AddScriptedAgents", l0, l0)
  l0:AddScriptedAgents()
end
function export:f_box_PrepareClueController_145_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_19
  l0.Parent = "9223372046943895163"
  l0.Child = "9223372046877511137"
  l0.zPosOffset = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2012570187", "2012570187", "S09M040b_Main", "box_PrepareClueController_145.Activated", "box_SnapAndBind_19.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Simple_Node_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_45
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Notification020",
    item = "Notification",
    id = "642280"
  }
  l0.Duration = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|676591595", "676591595", "S09M040b_Main", "box_Simple_Node_111.Out", "box_TutorialController_45.Display", clone, l0)
  l0:Display()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_64()
  l0 = self.box_AISquadStateMonitor_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2103900609", "2103900609", "S09M040b_Main", "box_Ordered_Output_35.Out", "box_AISquadStateMonitor_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1942266327", "1942266327", "S09M040b_Main", "box_Ordered_Output_35.Out", "box_OnceOnly_v3_36.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v3_96_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_92()
  l0 = self.box_OnceOnly_v3_96
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1240560726", "1240560726", "S09M040b_Main", "box_OnceOnly_v3_96.Out", "box_ReinforcementSystemController_v2_92.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_MissionMusicController_84_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1128431314"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_90_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1421417962", "1421417962", "S09M040b_Main", "box_MissionMusicController_84.Deactivated", "box_Ordered_Output_90.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_141()
  l0 = self.box_MultipleOR_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|863936030", "863936030", "S09M040b_Main", "box_Get_Player_ID_44.Out", "box_MultipleOR_141.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PrepareClueController_50_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.ClueGuards
  l0._graph = self
  l0._name = "box_PrepareClueController_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|213275554"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_118_Disabled
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1816970106", "1816970106", "S09M040b_Main", "box_PrepareClueController_50.Disabled", "box_PrepareClueController_118.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Network_Surfing_Monitor_98_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_151()
  l0 = self.box_Network_Surfing_Monitor_98
  l1 = self.box_MultipleOR_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1891943252", "1891943252", "S09M040b_Main", "box_Network_Surfing_Monitor_98.Disabled", "box_MultipleOR_151.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Network_Surfing_Monitor_98_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_221()
  l0 = self.box_Network_Surfing_Monitor_98
  l1 = self.box_MultipleOR_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1948768552", "1948768552", "S09M040b_Main", "box_Network_Surfing_Monitor_98.Enabled", "box_MultipleOR_221.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Network_Surfing_Monitor_98_OnNetworkSurfingActivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_151()
  l0 = self.box_Network_Surfing_Monitor_98
  l1 = self.box_MultipleOR_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|2118426762", "2118426762", "S09M040b_Main", "box_Network_Surfing_Monitor_98.OnNetworkSurfingActivated", "box_MultipleOR_151.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Network_Surfing_Monitor_98_OnNetworkSurfingDeactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_221()
  l0 = self.box_Network_Surfing_Monitor_98
  l1 = self.box_MultipleOR_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|659758913", "659758913", "S09M040b_Main", "box_Network_Surfing_Monitor_98.OnNetworkSurfingDeactivated", "box_MultipleOR_221.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PrepareClueController_119_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_136
  l0.SoundId = "soundbinary/1273586476.bnk"
  l0.DialogPriority = "Idle"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1773136354", "1773136354", "S09M040b_Main", "box_PrepareClueController_119.Activated", "box_PlayDialog_v2_136.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_77
  l0.Affiliation = "T_13"
  l0 = self.box_OnceOnly_v3_75
  l1 = self.box_GetNPC_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|787446456", "787446456", "S09M040b_Main", "box_OnceOnly_v3_75.Out", "box_GetNPC_77.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_Timer_v2_160_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_70
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.Objectives.Objective020",
    item = "Objective",
    id = "355202"
  }
  l0.IncrementalObjectiveTotal = 5
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_160
  l1 = self.box_MissionMessageController_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1547614482", "1547614482", "S09M040b_Main", "box_Timer_v2_160.Started", "box_MissionMessageController_v3_70.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_59
  l0.Input = self.Snipers
  l0.Data[0] = "9223372046726189780"
  l0.Data[1] = "9223372051982258445"
  l0 = self.box_MissionMessageController_v3_40
  l1 = self.box_ListWriter_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|250344413", "250344413", "S09M040b_Main", "box_MissionMessageController_v3_40.Out", "box_ListWriter_59.Add", l0, l1)
  l1:Add()
end
function export:f_box_MissionMessageController_v3_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|949806905"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_132_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_132_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionMessageController_v3_25
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1026226666", "1026226666", "S09M040b_Main", "box_MissionMessageController_v3_25.Out", "box_Compare_Boolean_v2_132.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_29()
  l0 = self.box_MultipleOR_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|480359868", "480359868", "S09M040b_Main", "box_Simple_Node_67.Out", "box_MultipleOR_29.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Simple_Node_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadRelationshipController_124()
  l0 = self.box_AISquadRelationshipController_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1436339", "1436339", "S09M040b_Main", "box_Simple_Node_146.Out", "box_AISquadRelationshipController_124.ResetRelationship", clone, l0)
  l0:ResetRelationship()
end
function export:f_box_AI_Agent_Zone_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Prepare_EngageMonitor_123
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|519057692", "519057692", "S09M040b_Main", "box_AI_Agent_Zone_18.Out", "box_Prepare_EngageMonitor_123.Enable", clone, l0)
  l0:Enable()
end
function export:OnEnter_box_Prepare_Convoy_130()
  local l0
  l0 = self.box_Prepare_Convoy_130
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
function export:OnEnter_box_AISquadRelationshipController_124()
  local l0
  l0 = self.box_AISquadRelationshipController_124
  l0.Affiliation = "T_13"
  l0.Relationship = "Threat"
end
function export:OnEnter_box_AISquadStateMonitor_64()
  local l0
  l0 = self.box_AISquadStateMonitor_64
  l0.Affiliation = "T_13"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_Prepare_Convoy_131()
  local l0
  l0 = self.box_Prepare_Convoy_131
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
function export:OnEnter_box_Mission_End_149()
  local l0
  l0 = self.box_Mission_End_149
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S09M040b_Main"
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372053628941255"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_PrepareClueMonitor_110()
  local l0
  l0 = self.box_PrepareClueMonitor_110
  l0.Clue = "9223372050514922322"
end
function export:OnEnter_box_MultipleOR_151()
end
function export:OnEnter_box_MultipleOR_82()
end
function export:OnEnter_box_MultipleOR_141()
end
function export:OnEnter_box_PrepareClueMonitor_95()
  local l0
  l0 = self.box_PrepareClueMonitor_95
  l0.Clue = "9223372052171145443"
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_221()
end
function export:OnEnter_box_Vehicle_Failure_1()
  local l0
  l0 = self.box_Vehicle_Failure_1
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
function export:OnEnter_box_PrepareClueMonitor_32()
  local l0
  l0 = self.box_PrepareClueMonitor_32
  l0.Clue = "9223372046943895163"
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_133()
end
function export:OnEnter_box_TutorialController_87()
  local l0
  l0 = self.box_TutorialController_87
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040b.EXTRA.MissionHint",
    item = "NetHackHint",
    id = "402850"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Delivery_Gameplay_28()
  local l0
  l0 = self.box_Delivery_Gameplay_28
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
function export:OnEnter_box_VehicleMonitor_v3_71()
  local l0
  l0 = self.box_VehicleMonitor_v3_71
  l0.Vehicle = self.Ambulance
end
function export:OnEnter_box_MultipleOR_91()
end
function export:OnEnter_box_Prepare_Convoy_129()
  local l0
  l0 = self.box_Prepare_Convoy_129
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
function export:OnEnter_box_Multiple_AND_158()
end
function export:OnEnter_box_Multiple_AND_121()
end
function export:OnEnter_box_MissionZone_154()
  local l0
  l0 = self.box_MissionZone_154
  l0.MissionArea = "9223372069266910882"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_PrepareClueMonitor_23()
  local l0
  l0 = self.box_PrepareClueMonitor_23
  l0.ClueList = self.clues
end
function export:OnEnter_box_MultipleOR_29()
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_MissionZone_7()
  local l0
  l0 = self.box_MissionZone_7
  l0.MissionArea = "9223372047857482344"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_ReinforcementSystemController_v2_92()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
  l0.AgentList = self.AliveT13
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040b\\S09M040b.domino|@S09M040b_Main|1672851175"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_92_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_92_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_Multiple_AND_58()
end
function export:OnEnter_box_MissionZone_2()
  local l0
  l0 = self.box_MissionZone_2
  l0.MissionArea = "9223372047857482344"
  l0.MissionLayer = "S09M040b_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_PGTController_v2_207()
  local l0
  l0 = self.box_PGTController_v2_207
  l0.PGTMissionArea = "9223372060782821061"
  l0.AgentList = self.drivers
end
function export:OnEnter_box_Network_Surfing_Monitor_98()
  local l0
  l0 = self.box_Network_Surfing_Monitor_98
  l0.CheckNow = 1
end
_compilerVersion = 4
