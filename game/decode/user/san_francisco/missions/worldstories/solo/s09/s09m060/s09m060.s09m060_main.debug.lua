export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/DeadBodyUnspawnController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/HelicopterBhvController.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListFinder.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v4.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDominoAnimation.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.debug.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060_VID_Dusan911-FS.S09M060_VID_Dusan911-FS_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060-VID_Mosaic04-OS.S09M060-VID_Mosaic04-OS_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityAlarmPanelController.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.debug.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:LoadResource("soundbinary/2279351574.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/309936221.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4218005335.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1675478180.bnk", "CSoundResource")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s09/s09_m060_clo-guard-locked-up-loop.move.bin", "CMoveResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3146619725.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1645157565.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/843918289.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/618878867.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3985820291.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S09M060_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main"
  self.AddHelper = {}
  self.Alarms = {
    "9223372049080293865"
  }
  self.AlarmSound = 0
  self.Alerted = 0
  self.AllClosed = 0
  self.AssignRetries = 7
  self.AtractorsList = {
    "9223372049841651166",
    "9223372049841653679",
    "9223372049841653681",
    "9223372055462905229",
    "9223372055462905227"
  }
  self.BackupAccessCode = nil
  self.BuddyAiTagPoints = {
    "9223372053009762885",
    "9223372053009762887",
    "9223372053009762889",
    "9223372053009762891",
    "9223372053009762893",
    "9223372053009762895",
    "9223372053009762899",
    "9223372053009762901",
    "9223372053009762903",
    "9223372053009762905",
    "9223372053009762907",
    "9223372053009762909",
    "9223372053009762911",
    "9223372053009762913",
    "9223372053009762915",
    "9223372053009762917",
    "9223372053009762919",
    "9223372053009762921",
    "9223372053009762923",
    "9223372053009762925",
    "9223372053009762927",
    "9223372053009762929",
    "9223372053009762931"
  }
  self.CellBlockTriggers = {
    "9223372046153685257",
    "9223372046153683254"
  }
  self.CellDoorOpened = 0
  self.CellDoorsList = {
    "9223372047437784057",
    "9223372049526729681",
    "9223372049526730294",
    "9223372049526730617",
    "9223372049526730631",
    "9223372049734142549",
    "9223372049801066922"
  }
  self.CellLeft = 0
  self.CellOpenSwitch = 0
  self.CellPath = "9223372046946126480"
  self.Checkpoint = 0
  self.CheckPointString = ""
  self.CheckPoliceInside = nil
  self.CluesList = {
    "9223372046153681643",
    "9223372046829559079",
    "9223372046829559083",
    "9223372046829559085",
    "9223372046829559087",
    "9223372048013305256",
    "9223372049672192944",
    "9223372046829559081",
    "9223372049801224667",
    "9223372049801224675",
    "9223372049841650743",
    "9223372049841650736",
    "9223372049841653690"
  }
  self.CluesListNoChief = {
    "9223372046829559079",
    "9223372046829559085"
  }
  self.CluesListWarden = {
    "9223372049841650736",
    "9223372049841650743"
  }
  self.CluesListYard = {
    "9223372049801224667",
    "9223372049801224675"
  }
  self.ClueSwitchList = {
    "9223372046829559081",
    "9223372049672192944"
  }
  self.Complete = 0
  self.ControlRoomUnlock = "9223372046153657152"
  self.Cop1 = nil
  self.Cop2 = nil
  self.Cop3 = nil
  self.Cop4 = nil
  self.DistanceToPGT = 0
  self.DistanceToWitness = 0
  self.DistChiefPlayer = 0
  self.DoorStim = nil
  self.DoorSwitchPath = 0
  self.EngagePressed = 0
  self.exit = 0
  self.ExitBoat1 = nil
  self.ExitBoat2 = nil
  self.ExitBoat3 = nil
  self.ExitBoat4 = nil
  self.FelonyT1Exit = 0
  self.FelonyT2Exit = 0
  self.FirstClueWarden = nil
  self.FirstClueYard = nil
  self.GotBoat = 0
  self.HallwayDoorPC = "9223372049734221024"
  self.HallwayDoors = {
    "9223372049734217538",
    "9223372049734217532",
    "9223372049734221026",
    "9223372050332386409",
    "9223372049734210544"
  }
  self.HallwayDoorsList = {
    "9223372049734210536",
    "9223372049734210534",
    "9223372049734210542",
    "9223372049734210540",
    "9223372049734210554",
    "9223372049734210552",
    "9223372049734221024",
    "9223372049734221022",
    "9223372049734217530",
    "9223372049734217528",
    "9223372049734217536",
    "9223372049734217534"
  }
  self.HandcuffsOff = 0
  self.Helper = nil
  self.InsideCell = nil
  self.Jumper = 0
  self.LeavePrison = nil
  self.noLos = 0
  self.NPCsList = {}
  self.NPCsListAlreadyThere = {}
  self.NPCsPGTList = {}
  self.NPCsPGTListWarden = {}
  self.NPCsPGTListYard = {}
  self.NPCsReactList = {}
  self.OpenAllCells = "9223372049606708634"
  self.PGT2Killed = nil
  self.PlayerEntity = nil
  self.PlayerHealth = 0
  self.playerVehicle = nil
  self.PoliceChief = nil
  self.PoliceChiefDead = 0
  self.PoliceChiefKilled = 0
  self.PrisonerEscaped = 0
  self.RoofAccessTriggers = {
    "9223372055244943802",
    "9223372055244945308",
    "9223372055244945310"
  }
  self.RoofTopY = "9223372049734372867"
  self.Salesman = nil
  self.ScriptedAgents = {}
  self.SwitchDoorsList = {
    "9223372049734217536",
    "9223372049734217530",
    "9223372049734210542",
    "9223372050332386407",
    "9223372057657403954",
    "9223372057657403968",
    "9223372057657403959",
    "9223372057657403748"
  }
  self.TempBoatsIcons = {
    section = "PROFILER_SPECIFIC.OBJECTS.VEHICLES.Sea_SportBoat_01",
    item = "Description",
    id = "403313"
  }
  self.TempClue = nil
  self.TempCopTrapped = nil
  self.TempDialog = "9223372048405497333"
  self.TempDoor = nil
  self.TempEntity = nil
  self.TempEntityA = nil
  self.TempEntityB = nil
  self.TempEntityC = nil
  self.TempEntityD = nil
  self.TempEntityDoi = nil
  self.TempExit = 0
  self.TempExitTop = 0
  self.TempFloat = 0
  self.TempHeli1 = nil
  self.TempHeli2 = nil
  self.TempHeli3 = nil
  self.TempHour = 0
  self.TempInteger = 0
  self.TempList = {}
  self.TempMinutes = 0
  self.TempNPC = nil
  self.TempNPC2ndFloor = nil
  self.TempNPC2ndFloorCheck = nil
  self.TempPGT = nil
  self.TempString = ""
  self.TempTagpint = nil
  self.TimeOfDayHour = 22
  self.TimeOfDayMinutes = 30
  self.tmpClient = nil
  self.TrappedInsideTriggerList = {
    "9223372049080144629",
    "9223372055462905134",
    "9223372055462905168",
    "9223372055462905179",
    "9223372055462905187",
    "9223372055462905189",
    "9223372055462905201",
    "9223372055462905217"
  }
  self.WardenAccess = 0
  self.WardenClueProfiled = 0
  self.WardenDoor1 = "9223372050332386407"
  self.WardenDoor2 = "9223372049734210542"
  self.WitnessExitCell = 0
  self.WitnessNPC = nil
  self.YardAccess = 0
  self.YardClueProfiled = 0
  self.YardDoor1 = "9223372049734217536"
  self.YardDoor2 = "9223372049734217530"
  self.HeliReinforcement = {}
  self.AliveNPCs = {}
  self.AIInCell = nil
  self.HeliNPC = nil
  self.FelonyReinf = {}
  self.Collider_Dock02 = nil
  self.Collider_Dock03 = nil
  self.ManualReinfo_Dock01_A = nil
  self.ManualReinfo_Dock01_B = nil
  self.ManualReinfo_Dock02_A = nil
  self.ManualReinfo_Dock02_B = nil
  self.ManualReinfo_Dock03_A = nil
  self.ManualReinfo_Dock03_B = nil
  self.DockReinfos02 = {}
  self.DockReinfos01 = {}
  self.DockReinfo03 = {}
  self.Chopper = {}
  self.ChopperState = 0
  self.sniper = nil
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|23826706"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_CinematicPrep_154 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_154
  l0._graph = self
  l0._name = "box_CinematicPrep_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|35045244"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_154_PostOut
  self.box_AISquadStateMonitor_110 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_110
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|38689662"
  l0.Enabled = self.f_box_AISquadStateMonitor_110_Enabled
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_110_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_110_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_110_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_110_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_InteractionScriptMonitor_v2_203 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_203
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|43649084"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_203_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_203_InteractionStarted
  l0.InteractionFailed = self.f_box_InteractionScriptMonitor_v2_203_InteractionFailed
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_203_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MultipleOR_410 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_410
  l0._graph = self
  l0._name = "box_MultipleOR_410"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|49121772"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_410_Out
  self.box_PhoneCommunicationController_81 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_81
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|62212217"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Interact_Gameplay_47 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_47
  l0._graph = self
  l0._name = "box_Interact_Gameplay_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|77218228"
  l0.Started = self.f_box_Interact_Gameplay_47_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_47_Interacted
  self.box_PlaySound_v2_342 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_342
  l0._graph = self
  l0._name = "box_PlaySound_v2_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|87449439"
  l0.Out = self.f_box_PlaySound_v2_342_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_LogicGate_v2_21 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_21
  l0._graph = self
  l0._name = "box_LogicGate_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|133872444"
  l0.Out = self.f_box_LogicGate_v2_21_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_RewardController_v3_88 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_88
  l0._graph = self
  l0._name = "box_RewardController_v3_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|135076819"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_88_RewardsExecuted
  self.box_ListWriter_398 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_398
  l0._graph = self
  l0._name = "box_ListWriter_398"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|150474769"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_398_Added
  l0.Removed = self.f_box_ListWriter_398_Removed
  l0.Out = self.f_box_ListWriter_398_Out
  self.box_MultipleOR_143 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_143
  l0._graph = self
  l0._name = "box_MultipleOR_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|177670996"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_143_Out
  self.box_CLOController_348 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_348
  l0._graph = self
  l0._name = "box_CLOController_348"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|178261177"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_348_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AISquadStateMonitor_193 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_193
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|182009247"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_193_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_193_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_193_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_193_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_AISquadStateMonitor_213 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_213
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|182779998"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_213_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_213_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_213_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_213_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_Timer_v2_29 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_29
  l0._graph = self
  l0._name = "box_Timer_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|186227329"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_29_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_190 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_190
  l0._graph = self
  l0._name = "box_Timer_v2_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|195378139"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_190_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AISquadStateMonitor_295 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_295
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|247089332"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_295_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_295_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_295_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_295_VanishState
  l0.None = DummyFunction
  self.box_VehicleSeatingController_198 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_198
  l0._graph = self
  l0._name = "box_VehicleSeatingController_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|249061724"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_198_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_234 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_234
  l0._graph = self
  l0._name = "box_CLOController_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|254284314"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_234_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_407 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_407
  l0._graph = self
  l0._name = "box_PlaySequence_v5_407"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|259055473"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_407_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_407_Finished
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|259092442"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMonitor_33 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_33
  l0._graph = self
  l0._name = "box_MissionMonitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|266143715"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_box_MissionMonitor_33_Completed
  l0.NotCompleted = self.f_box_MissionMonitor_33_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self.box_AISquadStateMonitor_266 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_266
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|267580614"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_266_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_266_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_266_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_266_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_Timer_v2_175 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_175
  l0._graph = self
  l0._name = "box_Timer_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|269814360"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_175_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_302 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_302
  l0._graph = self
  l0._name = "box_CLOController_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|284477955"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_302_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PhoneCommunicationController_422 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_422
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_422"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|293977507"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_422_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_422_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PGTController_v2_171 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_171
  l0._graph = self
  l0._name = "box_PGTController_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|297833045"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_171_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_221 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_221
  l0._graph = self
  l0._name = "box_MultipleOR_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|309940883"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_221_Out
  self.box_OnceOnly_v3_122 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_122
  l0._graph = self
  l0._name = "box_OnceOnly_v3_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|321786213"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_122_Out
  l0.ResetOut = DummyFunction
  self.box_MissionCheckpointReach_148 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_148
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|350888452"
  l0.Out = self.f_box_MissionCheckpointReach_148_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_GetNPC_62 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_62
  l0._graph = self
  l0._name = "box_GetNPC_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|351810273"
  l0.GotNPCList = self.f_box_GetNPC_62_GotNPCList
  self.box_MissionLayer_v2_152 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_152
  l0._graph = self
  l0._name = "box_MissionLayer_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|372345527"
  l0.Loaded = self.f_box_MissionLayer_v2_152_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_GetNPC_77 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_77
  l0._graph = self
  l0._name = "box_GetNPC_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|375791292"
  l0.GotNPCList = self.f_box_GetNPC_77_GotNPCList
  self.box_MultipleOR_93 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|380041526"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_ListWriter_165 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_165
  l0._graph = self
  l0._name = "box_ListWriter_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|387219316"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_165_Added
  l0.Removed = self.f_box_ListWriter_165_Removed
  l0.Out = self.f_box_ListWriter_165_Out
  self.box_Timer_v2_130 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_130
  l0._graph = self
  l0._name = "box_Timer_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|401935023"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_130_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_119 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_119
  l0._graph = self
  l0._name = "box_CLOController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|419971623"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_119_OnUserInPlace
  self.box_PhoneCommunicationController_58 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_58
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|425452657"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_58_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_292 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_292
  l0._graph = self
  l0._name = "box_SetBoolean_v2_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|441750771"
  l0.Out = self.f_box_SetBoolean_v2_292_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_292_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_292_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_292_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_292_SetFromBool
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|449182457"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_HackableController_v2_136 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_136
  l0._graph = self
  l0._name = "box_HackableController_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|456281666"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_136_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|466047203"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_25_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_28 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_28
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|499178463"
  l0.Out = self.f_box_MissionMessageController_v3_28_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|499249602"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_HackableController_v2_144 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_144
  l0._graph = self
  l0._name = "box_HackableController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|513535809"
  l0.Enabled = self.f_box_HackableController_v2_144_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PoliceTrapped_68 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.debug.lua")
  l0 = self.box_PoliceTrapped_68
  l0._graph = self
  l0._name = "box_PoliceTrapped_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|523714260"
  l0.Out = self.f_box_PoliceTrapped_68_Out
  l0.Trapped = DummyFunction
  self.box_OnceOnly_v3_215 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_215
  l0._graph = self
  l0._name = "box_OnceOnly_v3_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|529125361"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_215_Out
  l0.ResetOut = DummyFunction
  self.box_PoliceTrapped_71 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.debug.lua")
  l0 = self.box_PoliceTrapped_71
  l0._graph = self
  l0._name = "box_PoliceTrapped_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|538870531"
  l0.Out = self.f_box_PoliceTrapped_71_Out
  l0.Trapped = DummyFunction
  self.box_ListWriter_131 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_131
  l0._graph = self
  l0._name = "box_ListWriter_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|550040677"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_131_Added
  l0.Removed = self.f_box_ListWriter_131_Removed
  l0.Out = self.f_box_ListWriter_131_Out
  self.box_Intel_Controller_149 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_149
  l0._graph = self
  l0._name = "box_Intel_Controller_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|552534346"
  l0.Enabled = self.f_box_Intel_Controller_149_Enabled
  l0.Disabled = DummyFunction
  self.box_CLOController_117 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_117
  l0._graph = self
  l0._name = "box_CLOController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|553968381"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_117_OnUserInPlace
  self.box_OnceOnly_v3_274 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_274
  l0._graph = self
  l0._name = "box_OnceOnly_v3_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|573848901"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_274_Out
  l0.ResetOut = DummyFunction
  self.box_HelicopterBhvController_220 = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_220
  l0._graph = self
  l0._name = "box_HelicopterBhvController_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|582808707"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self.box_ListWriter_128 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_128
  l0._graph = self
  l0._name = "box_ListWriter_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|585495342"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_128_Added
  l0.Removed = self.f_box_ListWriter_128_Removed
  l0.Out = self.f_box_ListWriter_128_Out
  self.box_MissionMessageController_v3_101 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_101
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|604032581"
  l0.Out = self.f_box_MissionMessageController_v3_101_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_272 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_272
  l0._graph = self
  l0._name = "box_OnceOnly_v3_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|616377089"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_272_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_156 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_156
  l0._graph = self
  l0._name = "box_Timer_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|638884122"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_156_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AISquadStateMonitor_286 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_286
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|652268287"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_286_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_286_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_286_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_286_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_VehicleMonitor_v3_240 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_240
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|684484080"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = self.f_box_VehicleMonitor_v3_240_StateChange
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_240_IsUnusable
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
  self.box_OnceOnly_v3_107 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_107
  l0._graph = self
  l0._name = "box_OnceOnly_v3_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|687395695"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_107_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_124 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_124
  l0._graph = self
  l0._name = "box_CLOController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|695573716"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_124_OnUserInPlace
  self.box_Security_Alarm_Panel_Controller_109 = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self.box_Security_Alarm_Panel_Controller_109
  l0._graph = self
  l0._name = "box_Security_Alarm_Panel_Controller_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|705192244"
  l0.Activated = self.f_box_Security_Alarm_Panel_Controller_109_Activated
  l0.Deactivated = DummyFunction
  self.box_CinematicPrep_408 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_408
  l0._graph = self
  l0._name = "box_CinematicPrep_408"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|706228454"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_408_PostOut
  self.box_PlaySound_v2_37 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_37
  l0._graph = self
  l0._name = "box_PlaySound_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|722001202"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_37_Started
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_263 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_263
  l0._graph = self
  l0._name = "box_OnceOnly_v3_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|728544224"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_263_Out
  l0.ResetOut = DummyFunction
  self.box_AISquadStateMonitor_270 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_270
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|732283086"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_270_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_270_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_270_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_270_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_OnceOnly_v3_268 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_268
  l0._graph = self
  l0._name = "box_OnceOnly_v3_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|734583534"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_268_Out
  l0.ResetOut = DummyFunction
  self.box_GetNPC_112 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_112
  l0._graph = self
  l0._name = "box_GetNPC_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|751250880"
  l0.GotNPCList = self.f_box_GetNPC_112_GotNPCList
  self.box_CLOController_138 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_138
  l0._graph = self
  l0._name = "box_CLOController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|753574673"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_138_OnUserInPlace
  self.box_OnceOnly_v3_300 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_300
  l0._graph = self
  l0._name = "box_OnceOnly_v3_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|769507842"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_300_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_210 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_210
  l0._graph = self
  l0._name = "box_OnceOnly_v3_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|785509303"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_210_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_126 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_126
  l0._graph = self
  l0._name = "box_ListWriter_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|787450749"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_126_Added
  l0.Removed = self.f_box_ListWriter_126_Removed
  l0.Out = self.f_box_ListWriter_126_Out
  self.box_CinematicPrep_96 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_96
  l0._graph = self
  l0._name = "box_CinematicPrep_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|795173936"
  l0.PreOut = self.f_box_CinematicPrep_96_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionZone_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_38
  l0._graph = self
  l0._name = "box_MissionZone_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|805614628"
  l0.Enabled = self.f_box_MissionZone_38_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_Moveable_Entity_Monitor_22 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_22
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|807637610"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_22_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_22_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_22_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_AISquadStateController_199 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_199
  l0._graph = self
  l0._name = "box_AISquadStateController_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|815068761"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = self.f_box_AISquadStateController_199_SearchOverrideParamsSet
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_PlayDialog_v2_363 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_363
  l0._graph = self
  l0._name = "box_PlayDialog_v2_363"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|824134624"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_363_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_141 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_141
  l0._graph = self
  l0._name = "box_Multiple_AND_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|834272408"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_141_Out
  self.box_CLOController_337 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_337
  l0._graph = self
  l0._name = "box_CLOController_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|847009066"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_337_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_19 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_19
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|851693950"
  l0.Out = self.f_box_MissionCheckpointReach_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_244 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_244
  l0._graph = self
  l0._name = "box_CLOController_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|864910560"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_244_OnUserInPlace
  self.box_OnceOnly_v3_65 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_65
  l0._graph = self
  l0._name = "box_OnceOnly_v3_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|869503232"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_65_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|873350610"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_217 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_217
  l0._graph = self
  l0._name = "box_CinematicPrep_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|881779382"
  l0.PreOut = self.f_box_CinematicPrep_217_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_147 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_147
  l0._graph = self
  l0._name = "box_MultipleOR_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|885850569"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_147_Out
  self.box_MultipleOR_229 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_229
  l0._graph = self
  l0._name = "box_MultipleOR_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|888669283"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_229_Out
  self.box_MultipleOR_282 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_282
  l0._graph = self
  l0._name = "box_MultipleOR_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|893894535"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_282_Out
  self.box_Multiple_AND_133 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_133
  l0._graph = self
  l0._name = "box_Multiple_AND_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|899395072"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_133_Out
  self.box_TriggerMonitor_v2_401 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_401
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_401"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|902575948"
  l0.Enabled = self.f_box_TriggerMonitor_v2_401_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_401_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_401_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_401_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_401_Use
  self.box_MissionCheckpointReach_79 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_79
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|902674656"
  l0.Out = self.f_box_MissionCheckpointReach_79_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PawnHealthMonitor_v4_251 = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self.box_PawnHealthMonitor_v4_251
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v4_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|907291779"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v4_251_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_HackableController_v2_273 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_273
  l0._graph = self
  l0._name = "box_HackableController_v2_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|928153357"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_273_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_262 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_262
  l0._graph = self
  l0._name = "box_OnceOnly_v3_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|966200554"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_262_Out
  l0.ResetOut = DummyFunction
  self.box_Hackable_Monitor_239 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_239
  l0._graph = self
  l0._name = "box_Hackable_Monitor_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|987861794"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_239_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AISquadStateMonitor_212 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_212
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|988762591"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_212_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_212_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_212_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_212_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_CLOController_61 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_61
  l0._graph = self
  l0._name = "box_CLOController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|993974034"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_61_OnUserInPlace
  self.box_Timer_v2_55 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_55
  l0._graph = self
  l0._name = "box_Timer_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1009533023"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_55_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_197 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_197
  l0._graph = self
  l0._name = "box_Multiple_AND_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1013033245"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_197_Out
  self.box_HackableController_v2_195 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_195
  l0._graph = self
  l0._name = "box_HackableController_v2_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1041136567"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_195_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Proximity_Monitor_83 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_83
  l0._graph = self
  l0._name = "box_Proximity_Monitor_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1065041014"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_83_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_83_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1071923934"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_116_OnUserInPlace
  self.box_TwoExitsMonitor_287 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.debug.lua")
  l0 = self.box_TwoExitsMonitor_287
  l0._graph = self
  l0._name = "box_TwoExitsMonitor_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1078057397"
  l0.Enabled = self.f_box_TwoExitsMonitor_287_Enabled
  l0.Disabled = self.f_box_TwoExitsMonitor_287_Disabled
  l0.FirstDoorExit = self.f_box_TwoExitsMonitor_287_FirstDoorExit
  l0.SecondDoorExit = self.f_box_TwoExitsMonitor_287_SecondDoorExit
  l0.NoExit = self.f_box_TwoExitsMonitor_287_NoExit
  l0.ExitChanged = self.f_box_TwoExitsMonitor_287_ExitChanged
  self.box_AISquadStateController_52 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_52
  l0._graph = self
  l0._name = "box_AISquadStateController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1080149948"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = self.f_box_AISquadStateController_52_SquadBhvParamsSet
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_CLOController_339 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_339
  l0._graph = self
  l0._name = "box_CLOController_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1092244618"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_339_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PoliceTrapped_48 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.debug.lua")
  l0 = self.box_PoliceTrapped_48
  l0._graph = self
  l0._name = "box_PoliceTrapped_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1094519840"
  l0.Out = self.f_box_PoliceTrapped_48_Out
  l0.Trapped = DummyFunction
  self.box_SetBoolean_v2_289 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_289
  l0._graph = self
  l0._name = "box_SetBoolean_v2_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1098986336"
  l0.Out = self.f_box_SetBoolean_v2_289_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_289_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_289_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_289_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_289_SetFromBool
  self.box_AISquadStateController_56 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_56
  l0._graph = self
  l0._name = "box_AISquadStateController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1101441633"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_AISquadStateMonitor_280 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_280
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1107412071"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_280_VanishState
  l0.None = self.f_box_AISquadStateMonitor_280_None
  self.box_SetBoolean_v2_139 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_139
  l0._graph = self
  l0._name = "box_SetBoolean_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1123713713"
  l0.Out = self.f_box_SetBoolean_v2_139_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_139_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_139_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_139_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_139_SetFromBool
  self.box_CLOController_123 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_123
  l0._graph = self
  l0._name = "box_CLOController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1148417415"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_123_OnUserInPlace
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1159469850"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_S09M060_VID_Dusan911_FS_Main_269 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060_VID_Dusan911-FS.S09M060_VID_Dusan911-FS_Main.debug.lua")
  l0 = self.box_S09M060_VID_Dusan911_FS_Main_269
  l0._graph = self
  l0._name = "box_S09M060_VID_Dusan911_FS_Main_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1163615582"
  l0.EndVideo = self.f_box_S09M060_VID_Dusan911_FS_Main_269_EndVideo
  self.box_TriggerMonitor_v2_134 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_134
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1177434130"
  l0.Enabled = self.f_box_TriggerMonitor_v2_134_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_134_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_134_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_134_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_134_Use
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1182266966"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_44_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_51 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_51
  l0._graph = self
  l0._name = "box_SetBoolean_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1190014699"
  l0.Out = self.f_box_SetBoolean_v2_51_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_51_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_51_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_51_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_51_SetFromBool
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1199876517"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_277 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_277
  l0._graph = self
  l0._name = "box_OnceOnly_v3_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1202513939"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_277_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_179 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_179
  l0._graph = self
  l0._name = "box_Timer_v2_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1203740809"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_179_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_179_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_129 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_129
  l0._graph = self
  l0._name = "box_MultipleOR_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1206155952"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_129_Out
  self.box_Multiple_AND_186 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_186
  l0._graph = self
  l0._name = "box_Multiple_AND_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1243916583"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_186_Out
  self.box_MissionLayer_v2_250 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_250
  l0._graph = self
  l0._name = "box_MissionLayer_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1247782876"
  l0.Loaded = self.f_box_MissionLayer_v2_250_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_OnceOnly_v3_265 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_265
  l0._graph = self
  l0._name = "box_OnceOnly_v3_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1253276768"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_265_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_475 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_475
  l0._graph = self
  l0._name = "box_SetBoolean_v2_475"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1256627403"
  l0.Out = self.f_box_SetBoolean_v2_475_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_475_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_475_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_475_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_475_SetFromBool
  self.box_OnceOnly_v3_297 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_297
  l0._graph = self
  l0._name = "box_OnceOnly_v3_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1261433251"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_297_Out
  l0.ResetOut = DummyFunction
  self.box_ReinforcementSystemMonitor_v2_259 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_259
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1272649041"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_259_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_259_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_97 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_97
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1276632948"
  l0.Enabled = self.f_box_TriggerMonitor_v2_97_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_97_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_97_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_97_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_97_Use
  self.box_OnceOnly_v3_298 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_298
  l0._graph = self
  l0._name = "box_OnceOnly_v3_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1277197097"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_298_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_204 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_204
  l0._graph = self
  l0._name = "box_PlaySound_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1300743046"
  l0.Out = self.f_box_PlaySound_v2_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_102 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_102
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1301168706"
  l0.Enabled = self.f_box_TriggerMonitor_v2_102_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_102_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_102_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_102_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_102_Use
  self.box_AISquadStateMonitor_219 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_219
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1308155693"
  l0.Enabled = self.f_box_AISquadStateMonitor_219_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_219_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_219_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_219_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_219_VanishState
  l0.None = DummyFunction
  self.box_ListWriter_67 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_67
  l0._graph = self
  l0._name = "box_ListWriter_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1309319650"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_67_Added
  l0.Removed = self.f_box_ListWriter_67_Removed
  l0.Out = self.f_box_ListWriter_67_Out
  self.box_OnceOnly_v3_245 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_245
  l0._graph = self
  l0._name = "box_OnceOnly_v3_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1325978525"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_245_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_178 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_178
  l0._graph = self
  l0._name = "box_HackableController_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1329483582"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = self.f_box_HackableController_v2_178_OccludableSet
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_157 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_157
  l0._graph = self
  l0._name = "box_Timer_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1331148238"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PawnHealthMonitor_v3_425 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_425
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_425"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1338015944"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_425_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_425_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_425_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_AISquadStateMonitor_50 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_50
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1339615060"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_50_VanishState
  l0.None = self.f_box_AISquadStateMonitor_50_None
  self.box_PGTController_v2_127 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_127
  l0._graph = self
  l0._name = "box_PGTController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1346576203"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_TwoExitsMonitor_174 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.debug.lua")
  l0 = self.box_TwoExitsMonitor_174
  l0._graph = self
  l0._name = "box_TwoExitsMonitor_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1348775354"
  l0.Enabled = self.f_box_TwoExitsMonitor_174_Enabled
  l0.Disabled = self.f_box_TwoExitsMonitor_174_Disabled
  l0.FirstDoorExit = self.f_box_TwoExitsMonitor_174_FirstDoorExit
  l0.SecondDoorExit = self.f_box_TwoExitsMonitor_174_SecondDoorExit
  l0.NoExit = self.f_box_TwoExitsMonitor_174_NoExit
  l0.ExitChanged = self.f_box_TwoExitsMonitor_174_ExitChanged
  self.box_SetBoolean_v2_237 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_237
  l0._graph = self
  l0._name = "box_SetBoolean_v2_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1359479979"
  l0.Out = self.f_box_SetBoolean_v2_237_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_237_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_237_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_237_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_237_SetFromBool
  self.box_PlaySequence_v5_222 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_222
  l0._graph = self
  l0._name = "box_PlaySequence_v5_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1418971929"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_222_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_222_Finished
  self.box_MultipleOR_187 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_187
  l0._graph = self
  l0._name = "box_MultipleOR_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1420321790"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_187_Out
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1448659803"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PawnHealthMonitor_v3_26 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_26
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1450255698"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_26_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_box_PawnHealthMonitor_v3_26_DeadChecked
  l0.HealthChecked = DummyFunction
  self.box_PlaySound_v2_305 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_305
  l0._graph = self
  l0._name = "box_PlaySound_v2_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1462127255"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_194 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_194
  l0._graph = self
  l0._name = "box_CLOController_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1489210529"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_194_OnUserInPlace
  self.box_Timer_v2_189 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_189
  l0._graph = self
  l0._name = "box_Timer_v2_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1491158836"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_189_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_182 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_182
  l0._graph = self
  l0._name = "box_CLOController_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1514047916"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_182_OnUserInPlace
  self.box_CLOController_346 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_346
  l0._graph = self
  l0._name = "box_CLOController_346"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1519096110"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_364 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_364
  l0._graph = self
  l0._name = "box_PlayDialog_v2_364"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1520599927"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TeleportPlayerInsideHma_279 = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_279
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1525319677"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_279_Done
  self.box_S09M060_VID_Mosaic04_OS_Main_31 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060-VID_Mosaic04-OS.S09M060-VID_Mosaic04-OS_Main.debug.lua")
  l0 = self.box_S09M060_VID_Mosaic04_OS_Main_31
  l0._graph = self
  l0._name = "box_S09M060_VID_Mosaic04_OS_Main_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1565289385"
  l0.EndVideo = self.f_box_S09M060_VID_Mosaic04_OS_Main_31_EndVideo
  l0.VideoStarted = self.f_box_S09M060_VID_Mosaic04_OS_Main_31_VideoStarted
  self.box_ListForEach_318 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_318
  l0._graph = self
  l0._name = "box_ListForEach_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1575865242"
  l0.Started = self.f_box_ListForEach_318_Started
  l0.Stopped = self.f_box_ListForEach_318_Stopped
  l0.ForEach = self.f_box_ListForEach_318_ForEach
  l0.GotNext = self.f_box_ListForEach_318_GotNext
  l0.EndOfList = self.f_box_ListForEach_318_EndOfList
  l0.GotFirst = DummyFunction
  self.box_SwitchOutput_v3_355 = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_355
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_355"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1598995117"
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_355_Output_0
  l0.Output[1] = self.f_box_SwitchOutput_v3_355_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self.box_CLOController_115 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_115
  l0._graph = self
  l0._name = "box_CLOController_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1608151882"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_115_OnUserInPlace
  self.box_PlayDialog_v2_209 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_209
  l0._graph = self
  l0._name = "box_PlayDialog_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1624179435"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_76 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_76
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1637792076"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Play_Domino_Cinematic_Animation_76_Stopped
  l0.Finished = DummyFunction
  self.box_MultipleOR_223 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_223
  l0._graph = self
  l0._name = "box_MultipleOR_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1665679255"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_223_Out
  self.box_CLOController_114 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_114
  l0._graph = self
  l0._name = "box_CLOController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1673274546"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_114_OnUserInPlace
  self.box_Escape_Gameplay_118 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_118
  l0._graph = self
  l0._name = "box_Escape_Gameplay_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1687285941"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_118_Escaped
  l0.LeftArea = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1704183120"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_347 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_347
  l0._graph = self
  l0._name = "box_CLOController_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1719627193"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_347_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_57 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_57
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1725383319"
  l0.Out = self.f_box_MissionMessageController_v3_57_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_284 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_284
  l0._graph = self
  l0._name = "box_OnceOnly_v3_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1730090103"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_284_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_74 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_74
  l0._graph = self
  l0._name = "box_CinematicPrep_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1734247490"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_74_PostOut
  self.box_PhoneCommunicationController_233 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_233
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1746023806"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Mission_End_191 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_191
  l0._graph = self
  l0._name = "box_Mission_End_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1749990390"
  self.box_Multiple_AND_132 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_132
  l0._graph = self
  l0._name = "box_Multiple_AND_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1755755751"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_132_Out
  self.box_MultipleOR_140 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_140
  l0._graph = self
  l0._name = "box_MultipleOR_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1763988317"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_140_Out
  self.box_PlaySequence_v5_412 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_412
  l0._graph = self
  l0._name = "box_PlaySequence_v5_412"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1772631962"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_412_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_412_Finished
  self.box_Timer_v2_84 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1780368642"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_291 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_291
  l0._graph = self
  l0._name = "box_MultipleOR_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1796231895"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_291_Out
  self.box_OnceOnly_v3_293 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_293
  l0._graph = self
  l0._name = "box_OnceOnly_v3_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1817237431"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_293_Out
  l0.ResetOut = DummyFunction
  self.box_PoliceTrapped_66 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.debug.lua")
  l0 = self.box_PoliceTrapped_66
  l0._graph = self
  l0._name = "box_PoliceTrapped_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1828858826"
  l0.Out = self.f_box_PoliceTrapped_66_Out
  l0.Trapped = DummyFunction
  self.box_AISquadStateMonitor_276 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_276
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1829618449"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_276_CombatState
  l0.CombatStateAnyTarget = self.f_box_AISquadStateMonitor_276_CombatStateAnyTarget
  l0.SearchState = self.f_box_AISquadStateMonitor_276_SearchState
  l0.SearchStateAnyTarget = self.f_box_AISquadStateMonitor_276_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_HackableController_v2_161 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_161
  l0._graph = self
  l0._name = "box_HackableController_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1841920270"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_303 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_303
  l0._graph = self
  l0._name = "box_MultipleOR_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1846702287"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_303_Out
  self.box_Timer_v2_299 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_299
  l0._graph = self
  l0._name = "box_Timer_v2_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1849202137"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_299_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_278 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_278
  l0._graph = self
  l0._name = "box_OnceOnly_v3_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1854345249"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_278_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_64 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_64
  l0._graph = self
  l0._name = "box_MultipleOR_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1858584941"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_64_Out
  self.box_PlaySequence_v5_145 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_145
  l0._graph = self
  l0._name = "box_PlaySequence_v5_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1859662418"
  l0._DynamicAnchors = {
    SPOut = {"Close Door"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_145_Finished
  l0.SPOut["Close Door"] = self.f_box_PlaySequence_v5_145_SPOut__Close_Door_
  self.box_GetNPC_20 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_20
  l0._graph = self
  l0._name = "box_GetNPC_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1868678217"
  l0.GotNPCList = self.f_box_GetNPC_20_GotNPCList
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1876350471"
  l0._DynamicAnchors = {In = 6}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_236 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_236
  l0._graph = self
  l0._name = "box_MultipleOR_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1918099533"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_236_Out
  self.box_OnceOnly_v3_214 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_214
  l0._graph = self
  l0._name = "box_OnceOnly_v3_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1921350261"
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_box_OnceOnly_v3_214_Out
  l0.ResetOut = DummyFunction
  self.box_TriggerMonitor_v2_15 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_15
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1924443664"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_15_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_111 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_111
  l0._graph = self
  l0._name = "box_PlaySound_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1927811850"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_QuickPlayerDeath_202 = cbox:CreateBox("domino/Library/common/Cinematic.QuickPlayerDeath.debug.lua")
  l0 = self.box_QuickPlayerDeath_202
  l0._graph = self
  l0._name = "box_QuickPlayerDeath_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1935602679"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PlayerDead = DummyFunction
  self.box_Timer_v2_226 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_226
  l0._graph = self
  l0._name = "box_Timer_v2_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1938062824"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_226_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_382 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_382
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_382"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1940455448"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_69 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_69
  l0._graph = self
  l0._name = "box_MissionLayer_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1960977793"
  l0.Loaded = self.f_box_MissionLayer_v2_69_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySequence_v5_150 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_150
  l0._graph = self
  l0._name = "box_PlaySequence_v5_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1980228306"
  l0._DynamicAnchors = {
    EntityIn = {"Witness"}
  }
  l0.Started = self.f_box_PlaySequence_v5_150_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_150_Finished
  self.box_TriggerMonitor_v2_63 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_63
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1996224707"
  l0.Enabled = self.f_box_TriggerMonitor_v2_63_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_63_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_63_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_63_Leave
  l0.Use = self.f_box_TriggerMonitor_v2_63_Use
  self.box_PGTController_v2_396 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_396
  l0._graph = self
  l0._name = "box_PGTController_v2_396"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2013323217"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_396_ScriptedAgentsAdded
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2044524923"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HelicopterBhvController_168 = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_168
  l0._graph = self
  l0._name = "box_HelicopterBhvController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2046808127"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self.box_MultipleOR_205 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_205
  l0._graph = self
  l0._name = "box_MultipleOR_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2052171992"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_205_Out
  self.box_PlayDialog_v2_362 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_362
  l0._graph = self
  l0._name = "box_PlayDialog_v2_362"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2058526502"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_362_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_188 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_188
  l0._graph = self
  l0._name = "box_Proximity_Monitor_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2065051943"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_188_ExitRadius
  self.box_MultipleOR_162 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_162
  l0._graph = self
  l0._name = "box_MultipleOR_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2079164128"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_162_Out
  self.box_Security_Alarm_Panel_Controller_24 = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l0._graph = self
  l0._name = "box_Security_Alarm_Panel_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2085368806"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Security_Alarm_Panel_Controller_24_Deactivated
  self.box_Teleport_To_SpawnPoint_227 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_227
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2089676190"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_227_TeleportDone
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2090505620"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_8_OnUserInPlace
  self.box_Player_Proximity_Monitor_353 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_353
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_353"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2094843330"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_353_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_353_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CLOController_108 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_108
  l0._graph = self
  l0._name = "box_CLOController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2114881446"
  l0.Activated = self.f_box_CLOController_108_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_108_OnUserInPlace
  self.box_CLOController_105 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_105
  l0._graph = self
  l0._name = "box_CLOController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2123033834"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_105_OnUserInPlace
  self.box_CinematicPrep_228 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_228
  l0._graph = self
  l0._name = "box_CinematicPrep_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2123360854"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_228_PostOut
  self.box_ListWriter_125 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_125
  l0._graph = self
  l0._name = "box_ListWriter_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2124484267"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_125_Added
  l0.Removed = self.f_box_ListWriter_125_Removed
  l0.Out = self.f_box_ListWriter_125_Out
  self.box_AISquadRelationshipController_224 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_224
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2126757719"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_224_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_Network_Surfing_Controller_409 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_409
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_409"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2137562205"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_409_Deactivated
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
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "S09M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|162771480", "162771480", "S09M060_Main", "CheckPoint_0", "box_MissionLayer_v2_1.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_152
  l0.LayerName = "S09M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1711259890", "1711259890", "S09M060_Main", "CheckPoint_1", "box_MissionLayer_v2_152.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_250
  l0.LayerName = "S09M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1127237015", "1127237015", "S09M060_Main", "CheckPoint_2", "box_MissionLayer_v2_250.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_191()
  l0 = self.box_Mission_End_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1581062341", "1581062341", "S09M060_Main", "CheckPoint_3", "box_Mission_End_191.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_69
  l0.LayerName = "S09M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1575195760", "1575195760", "S09M060_Main", "In", "box_MissionLayer_v2_69.Load", self, l0)
  l0:Load()
end
function export:f_box_DeadBodyUnspawnController_11_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_337
  l0.User = self.PoliceChief
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1841190349", "1841190349", "S09M060_Main", "box_DeadBodyUnspawnController_11.UnspawnAllowed", "box_CLOController_337.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_284()
  l0 = self.box_MultipleOR_49
  l1 = self.box_OnceOnly_v3_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|316621466", "316621466", "S09M060_Main", "box_MultipleOR_49.Out", "box_OnceOnly_v3_284.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_154_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_162()
  l0 = self.box_CinematicPrep_154
  l1 = self.box_MultipleOR_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1891892374", "1891892374", "S09M060_Main", "box_CinematicPrep_154.PostOut", "box_MultipleOR_162.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_110_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_110
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1253554169", "1253554169", "S09M060_Main", "box_AISquadStateMonitor_110.CombatState", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_110_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_110
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1637255541", "1637255541", "S09M060_Main", "box_AISquadStateMonitor_110.CombatStateAnyTarget", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_110_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_353()
  l0 = self.box_AISquadStateMonitor_110
  l1 = self.box_Player_Proximity_Monitor_353
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|309517653", "309517653", "S09M060_Main", "box_AISquadStateMonitor_110.Enabled", "box_Player_Proximity_Monitor_353.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AISquadStateMonitor_110_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_110
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|538695452", "538695452", "S09M060_Main", "box_AISquadStateMonitor_110.SearchState", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_110_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_AISquadStateMonitor_110
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|861703611", "861703611", "S09M060_Main", "box_AISquadStateMonitor_110.SearchStateAnyTarget", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_InteractionScriptMonitor_v2_203_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CollisionController_435()
  l0 = self.box_InteractionScriptMonitor_v2_203
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1921686973", "1921686973", "S09M060_Main", "box_InteractionScriptMonitor_v2_203.Enabled", "box_CollisionController_435.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_InteractionScriptMonitor_v2_203_InteractionFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_InteractionScriptMonitor_v2_203
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|530272429", "530272429", "S09M060_Main", "box_InteractionScriptMonitor_v2_203.InteractionFailed", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_203_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_205()
  l0 = self.box_InteractionScriptMonitor_v2_203
  l1 = self.box_MultipleOR_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|89843593", "89843593", "S09M060_Main", "box_InteractionScriptMonitor_v2_203.InteractionFinished", "box_MultipleOR_205.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_InteractionScriptMonitor_v2_203_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_202()
  l0 = self.box_InteractionScriptMonitor_v2_203
  l1 = self.box_QuickPlayerDeath_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1095430563", "1095430563", "S09M060_Main", "box_InteractionScriptMonitor_v2_203.InteractionStarted", "box_QuickPlayerDeath_202.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_410_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMonitor_33
  l0.Mission = "MissionList.9223372045954192530"
  l0 = self.box_MultipleOR_410
  l1 = self.box_MissionMonitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|906967918", "906967918", "S09M060_Main", "box_MultipleOR_410.Out", "box_MissionMonitor_33.CheckCompletion", l0, l1)
  l1:CheckCompletion()
end
function export:f_box_Interact_Gameplay_47_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|286721497"
  l0.Out = self.f_box_Simple_Node_257_Out
  l0 = self.box_Interact_Gameplay_47
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|282538060", "282538060", "S09M060_Main", "box_Interact_Gameplay_47.Interacted", "box_Simple_Node_257.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_47_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_203
  l0.InteractionScriptEntity = "9223372050530363720"
  l0 = self.box_Interact_Gameplay_47
  l1 = self.box_InteractionScriptMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|609607904", "609607904", "S09M060_Main", "box_Interact_Gameplay_47.Started", "box_InteractionScriptMonitor_v2_203.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DPad_Hackable_Controller_10_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372069229469281"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = 1
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = 1
  l0.StopDialog = 0
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1798248546"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_104_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1908120826", "1908120826", "S09M060_Main", "box_DPad_Hackable_Controller_10.Removed", "box_Cinema_Zone_Cleanup_104.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_PlaySound_v2_342_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_112
  l0.Group = "BadCops"
  l0 = self.box_PlaySound_v2_342
  l1 = self.box_GetNPC_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1931342866", "1931342866", "S09M060_Main", "box_PlaySound_v2_342.Out", "box_GetNPC_112.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_ReinforcementSystemController_v2_158_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1348701059", "1348701059", "S09M060_Main", "box_ReinforcementSystemController_v2_158.Out", "box_MissionMessageController_v3_101.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_ReinforcementSystemController_v2_73_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_265()
  l0 = self.box_OnceOnly_v3_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1062879830", "1062879830", "S09M060_Main", "box_ReinforcementSystemController_v2_73.ReinforcingStopped", "box_OnceOnly_v3_265.In", clone, l0)
  l0:In(1)
end
function export:f_box_SecurityCamController_252_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_179
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|237182603", "237182603", "S09M060_Main", "box_SecurityCamController_252.EnterForced", "box_Timer_v2_179.Start", clone, l0)
  l0:Start()
end
function export:f_box_SecurityCamController_252_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_252()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|392795629", "392795629", "S09M060_Main", "box_SecurityCamController_252.InitialTargetSet", "box_SecurityCamController_252.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_LogicGate_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LogicGate_v2_21
  l1 = self.box_SwitchOutput_v3_355
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|721885357", "721885357", "S09M060_Main", "box_LogicGate_v2_21.Out", "box_SwitchOutput_v3_355.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_88_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_299
  l0.Seconds = 8
  l0 = self.box_RewardController_v3_88
  l1 = self.box_Timer_v2_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|710673343", "710673343", "S09M060_Main", "box_RewardController_v3_88.RewardsExecuted", "box_Timer_v2_299.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_180_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1709530223", "1709530223", "S09M060_Main", "box_Ordered_Output_180.Out", "box_Timer_v2_175.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_180_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.WitnessNPC
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0.HackCategoryType[1] = "Traitor"
  l0.HackCategoryType[2] = "Contextual"
  l0.HackCategoryType[3] = "PoliceSearch"
  l0.HackCategoryType[4] = "Hitman"
  l0.HackCategoryType[5] = "Distract"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|85621099"
  l0._DynamicAnchors = {HackCategoryType = 6}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_10_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|587848092", "587848092", "S09M060_Main", "box_Ordered_Output_180.Out", "box_DPad_Hackable_Controller_10.Remove", clone, l0)
  l0:Remove()
end
function export:f_box_ListWriter_398_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_398
  self.ScriptedAgents = l0.Target
  l0 = self.box_PGTController_v2_396
  l0.PGTMissionArea = "9223372046946078163"
  l0.AgentList = self.ScriptedAgents
  l0 = self.box_ListWriter_398
  l1 = self.box_PGTController_v2_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|897335330", "897335330", "S09M060_Main", "box_ListWriter_398.Added", "box_PGTController_v2_396.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_398_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_398
  self.ScriptedAgents = l0.Target
end
function export:f_box_ListWriter_398_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_398
  self.ScriptedAgents = l0.Target
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|851522034"
  l0.Out = self.f_box_Simple_Node_78_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1590418756", "1590418756", "S09M060_Main", "box_Ordered_Output_80.Out", "box_Simple_Node_78.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1623670993"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_196_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_196_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|121280908", "121280908", "S09M060_Main", "box_Ordered_Output_80.Out", "box_Ordered_Output_196.In", clone, l0)
  l0:In()
end
function export:f_box_ReinforcementSystemController_v2_153_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_153()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|663096795", "663096795", "S09M060_Main", "box_ReinforcementSystemController_v2_153.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_153.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_MultipleOR_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_273
  l0.HackableEntity = "9223372048405498911"
  l0 = self.box_MultipleOR_143
  l1 = self.box_HackableController_v2_273
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1062332480", "1062332480", "S09M060_Main", "box_MultipleOR_143.Out", "box_HackableController_v2_273.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_348_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_346
  l0.User = self.TempHeli3
  l0 = self.box_CLOController_348
  l1 = self.box_CLOController_346
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2147422133", "2147422133", "S09M060_Main", "box_CLOController_348.UnspawnedUser", "box_CLOController_346.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_AISquadStateMonitor_193_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_210()
  l0 = self.box_AISquadStateMonitor_193
  l1 = self.box_OnceOnly_v3_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1334151377", "1334151377", "S09M060_Main", "box_AISquadStateMonitor_193.CombatState", "box_OnceOnly_v3_210.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_193_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_210()
  l0 = self.box_AISquadStateMonitor_193
  l1 = self.box_OnceOnly_v3_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1523490062", "1523490062", "S09M060_Main", "box_AISquadStateMonitor_193.CombatStateAnyTarget", "box_OnceOnly_v3_210.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_193_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_210()
  l0 = self.box_AISquadStateMonitor_193
  l1 = self.box_OnceOnly_v3_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1907191434", "1907191434", "S09M060_Main", "box_AISquadStateMonitor_193.SearchState", "box_OnceOnly_v3_210.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_193_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_210()
  l0 = self.box_AISquadStateMonitor_193
  l1 = self.box_OnceOnly_v3_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|682052804", "682052804", "S09M060_Main", "box_AISquadStateMonitor_193.SearchStateAnyTarget", "box_OnceOnly_v3_210.In", l0, l1)
  l1:In(3)
end
function export:f_box_AISquadStateMonitor_213_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_215()
  l0 = self.box_AISquadStateMonitor_213
  l1 = self.box_OnceOnly_v3_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|452721572", "452721572", "S09M060_Main", "box_AISquadStateMonitor_213.CombatState", "box_OnceOnly_v3_215.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_213_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_215()
  l0 = self.box_AISquadStateMonitor_213
  l1 = self.box_OnceOnly_v3_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1453856098", "1453856098", "S09M060_Main", "box_AISquadStateMonitor_213.CombatStateAnyTarget", "box_OnceOnly_v3_215.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_213_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_215()
  l0 = self.box_AISquadStateMonitor_213
  l1 = self.box_OnceOnly_v3_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1982991986", "1982991986", "S09M060_Main", "box_AISquadStateMonitor_213.SearchState", "box_OnceOnly_v3_215.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_213_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_215()
  l0 = self.box_AISquadStateMonitor_213
  l1 = self.box_OnceOnly_v3_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|491383151", "491383151", "S09M060_Main", "box_AISquadStateMonitor_213.SearchStateAnyTarget", "box_OnceOnly_v3_215.In", l0, l1)
  l1:In(3)
end
function export:f_box_Timer_v2_29_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_96
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_29
  l1 = self.box_CinematicPrep_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|219565488", "219565488", "S09M060_Main", "box_Timer_v2_29.TimeElapsed", "box_CinematicPrep_96.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Timer_v2_190_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HelicopterBhvController_168()
  l0 = self.box_Timer_v2_190
  l1 = self.box_HelicopterBhvController_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|870598754", "870598754", "S09M060_Main", "box_Timer_v2_190.TimeElapsed", "box_HelicopterBhvController_168.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_160_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|541233456"
  l0.Out = self.f_box_Simple_Node_159_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|206110362", "206110362", "S09M060_Main", "box_Compare_Boolean_v2_160.A_is_False", "box_Simple_Node_159.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_160_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_154
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1788703138", "1788703138", "S09M060_Main", "box_Compare_Boolean_v2_160.A_is_True", "box_CinematicPrep_154.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_CollisionController_32_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PoliceTrapped_48
  l0.TriggerList = {
    "9223372055462905168",
    "9223372055462905179"
  }
  l0.Door = "9223372049526730619"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|5343116", "5343116", "S09M060_Main", "box_CollisionController_32.CollisionsDisabled", "box_PoliceTrapped_48.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_295_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_300()
  l0 = self.box_AISquadStateMonitor_295
  l1 = self.box_OnceOnly_v3_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1714974901", "1714974901", "S09M060_Main", "box_AISquadStateMonitor_295.CombatState", "box_OnceOnly_v3_300.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_295_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_263()
  l0 = self.box_AISquadStateMonitor_295
  l1 = self.box_OnceOnly_v3_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|441999408", "441999408", "S09M060_Main", "box_AISquadStateMonitor_295.Disabled", "box_OnceOnly_v3_263.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_295_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_298()
  l0 = self.box_AISquadStateMonitor_295
  l1 = self.box_OnceOnly_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|436501254", "436501254", "S09M060_Main", "box_AISquadStateMonitor_295.SearchState", "box_OnceOnly_v3_298.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_295_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_297()
  l0 = self.box_AISquadStateMonitor_295
  l1 = self.box_OnceOnly_v3_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|789515499", "789515499", "S09M060_Main", "box_AISquadStateMonitor_295.VanishState", "box_OnceOnly_v3_297.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleSeatingController_198_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_67
  l0.Input = self.Chopper
  l0.Data[0] = self.TempHeli2
  l0.Data[1] = self.sniper
  l0 = self.box_VehicleSeatingController_198
  l1 = self.box_ListWriter_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|639161841", "639161841", "S09M060_Main", "box_VehicleSeatingController_198.AssignCompleted", "box_ListWriter_67.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_234_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_303()
  l0 = self.box_CLOController_234
  l1 = self.box_MultipleOR_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1977898170", "1977898170", "S09M060_Main", "box_CLOController_234.UnspawnedUser", "box_MultipleOR_303.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_407_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_236()
  l0 = self.box_PlaySequence_v5_407
  l1 = self.box_MultipleOR_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|124895273", "124895273", "S09M060_Main", "box_PlaySequence_v5_407.Finished", "box_MultipleOR_236.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_407_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_236()
  l0 = self.box_PlaySequence_v5_407
  l1 = self.box_MultipleOR_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1339841820", "1339841820", "S09M060_Main", "box_PlaySequence_v5_407.Skipped", "box_MultipleOR_236.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1130744253", "1130744253", "S09M060_Main", "box_TriggerMonitor_v2_7.Enter", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(3)
end
function export:f_box_MissionMonitor_33_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MissionMonitor_33
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1287494531", "1287494531", "S09M060_Main", "box_MissionMonitor_33.Completed", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMonitor_33_NotCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMonitor_33
  l1 = self.box_S09M060_VID_Dusan911_FS_Main_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1279345345", "1279345345", "S09M060_Main", "box_MissionMonitor_33.NotCompleted", "box_S09M060_VID_Dusan911_FS_Main_269.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_266_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_268()
  l0 = self.box_AISquadStateMonitor_266
  l1 = self.box_OnceOnly_v3_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|201972569", "201972569", "S09M060_Main", "box_AISquadStateMonitor_266.CombatState", "box_OnceOnly_v3_268.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_266_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_268()
  l0 = self.box_AISquadStateMonitor_266
  l1 = self.box_OnceOnly_v3_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|306220058", "306220058", "S09M060_Main", "box_AISquadStateMonitor_266.CombatStateAnyTarget", "box_OnceOnly_v3_268.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_266_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_268()
  l0 = self.box_AISquadStateMonitor_266
  l1 = self.box_OnceOnly_v3_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|31790177", "31790177", "S09M060_Main", "box_AISquadStateMonitor_266.SearchState", "box_OnceOnly_v3_268.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_266_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_268()
  l0 = self.box_AISquadStateMonitor_266
  l1 = self.box_OnceOnly_v3_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|296003941", "296003941", "S09M060_Main", "box_AISquadStateMonitor_266.SearchStateAnyTarget", "box_OnceOnly_v3_268.In", l0, l1)
  l1:In(3)
end
function export:f_box_Timer_v2_175_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Play_Domino_Cinematic_Animation_382
  l0.TargetEntity = self.WitnessNPC
  l0.Anim = "move/decisiontrees/scr/worldstories/s09/s09_m060_clo-guard-locked-up-loop.move.bin"
  l0.Looping = 1
  l0 = self.box_Timer_v2_175
  l1 = self.box_Play_Domino_Cinematic_Animation_382
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2130753191", "2130753191", "S09M060_Main", "box_Timer_v2_175.TimeElapsed", "box_Play_Domino_Cinematic_Animation_382.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|671032518"
  l0.Out = self.f_box_Simple_Node_232_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1441025920", "1441025920", "S09M060_Main", "box_Simple_Node_218.Out", "box_Simple_Node_232.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_302_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_197()
  l0 = self.box_CLOController_302
  l1 = self.box_Multiple_AND_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|855401506", "855401506", "S09M060_Main", "box_CLOController_302.Deactivated", "box_Multiple_AND_197.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Simple_Node_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Play_Domino_Cinematic_Animation_76
  l0.TargetEntity = self.WitnessNPC
  l0.Anim = "move/decisiontrees/scr/worldstories/s09/s09_m060_clo-guard-locked-up-loop.move.bin"
  l0.Looping = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1976469258", "1976469258", "S09M060_Main", "box_Simple_Node_257.Out", "box_Play_Domino_Cinematic_Animation_76.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PhoneCommunicationController_422_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_187()
  l0 = self.box_PhoneCommunicationController_422
  l1 = self.box_MultipleOR_187
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|591283484", "591283484", "S09M060_Main", "box_PhoneCommunicationController_422.OnCommunicationFinished", "box_MultipleOR_187.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PhoneCommunicationController_422_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_PhoneCommunicationController_422
  l1 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|910909995", "910909995", "S09M060_Main", "box_PhoneCommunicationController_422.OnCommunicationStarted", "box_MultipleOR_147.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_171_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_186()
  l0 = self.box_PGTController_v2_171
  l1 = self.box_Multiple_AND_186
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1780443722", "1780443722", "S09M060_Main", "box_PGTController_v2_171.AllSpawned", "box_Multiple_AND_186.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_221_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_37
  l0.Entity = "9223372057657279051"
  l0.SoundId = "soundbinary/2279351574.bnk"
  l0 = self.box_MultipleOR_221
  l1 = self.box_PlaySound_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|935531236", "935531236", "S09M060_Main", "box_MultipleOR_221.Out", "box_PlaySound_v2_37.Play", l0, l1)
  l1:Play()
end
function export:f_box_OnceOnly_v3_122_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1130934707"
  l0.Out = self.f_box_Simple_Node_211_Out
  l0 = self.box_OnceOnly_v3_122
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|245141768", "245141768", "S09M060_Main", "box_OnceOnly_v3_122.Out", "box_Simple_Node_211.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_183_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HelicopterBhvController_220()
  l0 = self.box_HelicopterBhvController_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1752501064", "1752501064", "S09M060_Main", "box_Ordered_Output_183.Out", "box_HelicopterBhvController_220.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_183_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_190()
  l0 = self.box_Timer_v2_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1983340709", "1983340709", "S09M060_Main", "box_Ordered_Output_183.Out", "box_Timer_v2_190.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_183_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_300()
  l0 = self.box_OnceOnly_v3_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1046577956", "1046577956", "S09M060_Main", "box_Ordered_Output_183.Out", "box_OnceOnly_v3_300.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MissionCheckpointReach_148_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|135353896"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_180_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_180_Out_1
  l0 = self.box_MissionCheckpointReach_148
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2066415293", "2066415293", "S09M060_Main", "box_MissionCheckpointReach_148.Out", "box_Ordered_Output_180.In", l0, l1)
  l1:In()
end
function export:f_box_GetNPC_62_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_62
  self.AliveNPCs = l0.NPCList
  l0 = self.box_ListWriter_165
  l0.Input = self.AliveNPCs
  l0.Data[0] = self.WitnessNPC
  l0 = self.box_GetNPC_62
  l1 = self.box_ListWriter_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|890408296", "890408296", "S09M060_Main", "box_GetNPC_62.GotNPCList", "box_ListWriter_165.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1273302558"
  l0.Out = self.f_box_Simple_Node_216_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|969183429", "969183429", "S09M060_Main", "box_Ordered_Output_135.Out", "box_Simple_Node_216.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|89190369"
  l0.Out = self.f_box_ReinforcementSystemController_v2_158_Out
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|387994186", "387994186", "S09M060_Main", "box_Ordered_Output_135.Out", "box_ReinforcementSystemController_v2_158.StopReinforcing", clone, l0)
  l0:StopReinforcing()
end
function export:f_box_Ordered_Output_135_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_111
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1123067449", "1123067449", "S09M060_Main", "box_Ordered_Output_135.Out", "box_PlaySound_v2_111.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1991335773", "1991335773", "S09M060_Main", "box_Get_Player_ID_43.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_152_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|540959377"
  l0.Out = self.f_box_Get_Player_ID_151_Out
  l0 = self.box_MissionLayer_v2_152
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1242249362", "1242249362", "S09M060_Main", "box_MissionLayer_v2_152.Loaded", "box_Get_Player_ID_151.In", l0, l1)
  l1:In()
end
function export:f_box_GetNPC_77_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_77
  self.FelonyReinf = l0.NPCList
  self:OnEnter_box_ReinforcementSystemMonitor_v2_259()
  l1 = self.box_ReinforcementSystemMonitor_v2_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2024811666", "2024811666", "S09M060_Main", "box_GetNPC_77.GotNPCList", "box_ReinforcementSystemMonitor_v2_259.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_275_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_213()
  l0 = self.box_AISquadStateMonitor_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|119193969", "119193969", "S09M060_Main", "box_Ordered_Output_275.Out", "box_AISquadStateMonitor_213.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_275_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_276()
  l0 = self.box_AISquadStateMonitor_276
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|608201083", "608201083", "S09M060_Main", "box_Ordered_Output_275.Out", "box_AISquadStateMonitor_276.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_293()
  l0 = self.box_MultipleOR_93
  l1 = self.box_OnceOnly_v3_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|929288826", "929288826", "S09M060_Main", "box_MultipleOR_93.Out", "box_OnceOnly_v3_293.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_165_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_165
  self.AliveNPCs = l0.Target
end
function export:f_box_ListWriter_165_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_165
  self.AliveNPCs = l0.Target
end
function export:f_box_ListWriter_165_Removed()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_165
  self.AliveNPCs = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListFinder.lua")]
  l0.Input = self.AliveNPCs
  l0.Data = self.AIInCell
  l0.Name = nil
  l0._graph = self
  l0._name = "box_ListFinder_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1008206485"
  l0.Found = self.f_box_ListFinder_23_Found
  l0.NotFound = DummyFunction
  l0 = self.box_ListWriter_165
  l1 = Boxes[PathID("domino/System/Lists/ListFinder.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1432968115", "1432968115", "S09M060_Main", "box_ListWriter_165.Removed", "box_ListFinder_23.Find", l0, l1)
  l1:Find()
end
function export:f_box_Compare_Entity_v2_185_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_129()
  l0 = self.box_MultipleOR_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1158951843", "1158951843", "S09M060_Main", "box_Compare_Entity_v2_185.Equal", "box_MultipleOR_129.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_130_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_252()
  l0 = self.box_Timer_v2_130
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1212892043", "1212892043", "S09M060_Main", "box_Timer_v2_130.TimeElapsed", "box_SecurityCamController_252.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:f_box_Ordered_Output_163_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HelicopterBhvController_168()
  l0 = self.box_HelicopterBhvController_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|196422777", "196422777", "S09M060_Main", "box_Ordered_Output_163.Out", "box_HelicopterBhvController_168.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_163_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_189()
  l0 = self.box_Timer_v2_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|656812511", "656812511", "S09M060_Main", "box_Ordered_Output_163.Out", "box_Timer_v2_189.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_163_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_298()
  l0 = self.box_OnceOnly_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1251156760", "1251156760", "S09M060_Main", "box_Ordered_Output_163.Out", "box_OnceOnly_v3_298.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_248_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_239()
  l0 = self.box_Hackable_Monitor_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1245380974", "1245380974", "S09M060_Main", "box_Ordered_Output_248.Out", "box_Hackable_Monitor_239.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_248_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_240()
  l0 = self.box_VehicleMonitor_v3_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|625739021", "625739021", "S09M060_Main", "box_Ordered_Output_248.Out", "box_VehicleMonitor_v3_240.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_248_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_219()
  l0 = self.box_AISquadStateMonitor_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1498270793", "1498270793", "S09M060_Main", "box_Ordered_Output_248.Out", "box_AISquadStateMonitor_219.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_248_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v4_251()
  l0 = self.box_PawnHealthMonitor_v4_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|847335942", "847335942", "S09M060_Main", "box_Ordered_Output_248.Out", "box_PawnHealthMonitor_v4_251.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_248_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_295()
  l0 = self.box_AISquadStateMonitor_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1631148847", "1631148847", "S09M060_Main", "box_Ordered_Output_248.Out", "box_AISquadStateMonitor_295.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_119_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_119
  self.ManualReinfo_Dock03_A = l0.UserID
  self:OnEnter_box_Multiple_AND_141()
  l1 = self.box_Multiple_AND_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2094795019", "2094795019", "S09M060_Main", "box_CLOController_119.OnUserInPlace", "box_Multiple_AND_141.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PhoneCommunicationController_58_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_58
  l1 = self.box_Timer_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1415331708", "1415331708", "S09M060_Main", "box_PhoneCommunicationController_58.OnCommunicationFinished", "box_Timer_v2_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2058260491"
  l0.Out = self.f_box_Simple_Node_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1616969492", "1616969492", "S09M060_Main", "box_Ordered_Output_59.Out", "box_Simple_Node_42.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_55()
  l0 = self.box_Timer_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1651057421", "1651057421", "S09M060_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_55.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_281_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_50()
  l0 = self.box_AISquadStateMonitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2049449351", "2049449351", "S09M060_Main", "box_Ordered_Output_281.Out", "box_AISquadStateMonitor_50.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_281_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_280()
  l0 = self.box_AISquadStateMonitor_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1654690898", "1654690898", "S09M060_Main", "box_Ordered_Output_281.Out", "box_AISquadStateMonitor_280.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_292_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_292
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_292_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_292
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_292_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_292
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_292_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_292
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_292_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_292
  self.DoorSwitchPath = l0.Target
end
function export:f_box_Show_Or_Hide_All_UI_92_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_191()
  l0 = self.box_Mission_End_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|162619277", "162619277", "S09M060_Main", "box_Show_Or_Hide_All_UI_92.Shown", "box_Mission_End_191.End", clone, l0)
  l0:End()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_408
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_70
  l1 = self.box_CinematicPrep_408
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|840388807", "840388807", "S09M060_Main", "box_MultipleOR_70.Out", "box_CinematicPrep_408.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_HackableController_v2_136_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_HackableController_v2_136
  l1 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1584598486", "1584598486", "S09M060_Main", "box_HackableController_v2_136.HackForced", "box_MultipleOR_140.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_25_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_130
  l0.Seconds = 2
  l0 = self.box_HackableController_v2_25
  l1 = self.box_Timer_v2_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|509651054", "509651054", "S09M060_Main", "box_HackableController_v2_25.HackForced", "box_Timer_v2_130.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_285_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_50()
  l0 = self.box_AISquadStateMonitor_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2104584036", "2104584036", "S09M060_Main", "box_Ordered_Output_285.Out", "box_AISquadStateMonitor_50.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_285_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_280()
  l0 = self.box_AISquadStateMonitor_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|39923045", "39923045", "S09M060_Main", "box_Ordered_Output_285.Out", "box_AISquadStateMonitor_280.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_285_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1794699490", "1794699490", "S09M060_Main", "box_Ordered_Output_285.Out", "box_Timer_v2_53.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_v3_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1647710768"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_MissionMessageController_v3_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1757930233", "1757930233", "S09M060_Main", "box_MissionMessageController_v3_28.Out", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372047253083949"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 1
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 1
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
  l0._name = "box_Lanes_Restrictions_Control_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|641906520"
  l0.Out = self.f_box_Lanes_Restrictions_Control_75_Out
  l0 = self.box_MultipleOR_18
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|579564935", "579564935", "S09M060_Main", "box_MultipleOR_18.Out", "box_Lanes_Restrictions_Control_75.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_116
  l0.CLO = "9223372071483444964"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1424206226", "1424206226", "S09M060_Main", "box_Ordered_Output_103.Out", "box_CLOController_116.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_115
  l0.CLO = "9223372071483444965"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1194388874", "1194388874", "S09M060_Main", "box_Ordered_Output_103.Out", "box_CLOController_115.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_103_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_212()
  l0 = self.box_AISquadStateMonitor_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|44133293", "44133293", "S09M060_Main", "box_Ordered_Output_103.Out", "box_AISquadStateMonitor_212.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_103_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_270()
  l0 = self.box_AISquadStateMonitor_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1385296217", "1385296217", "S09M060_Main", "box_Ordered_Output_103.Out", "box_AISquadStateMonitor_270.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_144_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_144
  l1 = self.box_OnceOnly_v3_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|287582345", "287582345", "S09M060_Main", "box_HackableController_v2_144.Enabled", "box_OnceOnly_v3_122.In", l0, l1)
  l1:In(0)
end
function export:f_box_PoliceTrapped_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PoliceTrapped_71
  l0.TriggerList = {
    "9223372055462905201",
    "9223372055462905217"
  }
  l0.Door = "9223372049526730292"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0 = self.box_PoliceTrapped_68
  l1 = self.box_PoliceTrapped_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|924270444", "924270444", "S09M060_Main", "box_PoliceTrapped_68.Out", "box_PoliceTrapped_71.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_215_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_278()
  l0 = self.box_OnceOnly_v3_215
  l1 = self.box_OnceOnly_v3_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|476331277", "476331277", "S09M060_Main", "box_OnceOnly_v3_215.Out", "box_OnceOnly_v3_278.In", l0, l1)
  l1:In(0)
end
function export:f_box_PoliceTrapped_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_144
  l0.HackableEntityList = self.CellDoorsList
  l0 = self.box_PoliceTrapped_71
  l1 = self.box_HackableController_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|5830802", "5830802", "S09M060_Main", "box_PoliceTrapped_71.Out", "box_HackableController_v2_144.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Get_Player_ID_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|468041004", "468041004", "S09M060_Main", "box_Get_Player_ID_151.Out", "box_SetBoolean_v2_289.True", clone, l0)
  l0:True()
end
function export:f_box_Simple_Node_159_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_162()
  l0 = self.box_MultipleOR_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1954649287", "1954649287", "S09M060_Main", "box_Simple_Node_159.Out", "box_MultipleOR_162.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListWriter_131_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_131
  self.DockReinfo03 = l0.Target
  self:OnEnter_box_ReinforcementSystemController_v2_153()
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1890345980", "1890345980", "S09M060_Main", "box_ListWriter_131.Added", "box_ReinforcementSystemController_v2_153.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_131_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_131
  self.DockReinfo03 = l0.Target
end
function export:f_box_ListWriter_131_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_131
  self.DockReinfo03 = l0.Target
end
function export:f_box_Intel_Controller_149_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|212806009"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_160_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_160_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Intel_Controller_149
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1512424014", "1512424014", "S09M060_Main", "box_Intel_Controller_149.Enabled", "box_Compare_Boolean_v2_160.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_117_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_117
  self.ManualReinfo_Dock03_B = l0.UserID
  self:OnEnter_box_Multiple_AND_141()
  l1 = self.box_Multiple_AND_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2052249421", "2052249421", "S09M060_Main", "box_CLOController_117.OnUserInPlace", "box_Multiple_AND_141.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_OnceOnly_v3_274_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|502260019"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_103_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_103_Out_3
  l0 = self.box_OnceOnly_v3_274
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1516898760", "1516898760", "S09M060_Main", "box_OnceOnly_v3_274.Out", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemController_v2_142_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_142()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|503981884", "503981884", "S09M060_Main", "box_ReinforcementSystemController_v2_142.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_142.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_ListWriter_128_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_128
  self.DockReinfos02 = l0.Target
  self:OnEnter_box_ReinforcementSystemController_v2_142()
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1943107695", "1943107695", "S09M060_Main", "box_ListWriter_128.Added", "box_ReinforcementSystemController_v2_142.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_128_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_128
  self.DockReinfos02 = l0.Target
end
function export:f_box_ListWriter_128_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_128
  self.DockReinfos02 = l0.Target
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.PoliceChief
  l0._graph = self
  l0._name = "box_DeadBodyUnspawnController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|22121153"
  l0.UnspawnAllowed = self.f_box_DeadBodyUnspawnController_11_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1859142192", "1859142192", "S09M060_Main", "box_Ordered_Output_9.Out", "box_DeadBodyUnspawnController_11.AllowUnspawn", clone, l0)
  l0:AllowUnspawn()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_79
  l0.CheckpointList = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|117641394", "117641394", "S09M060_Main", "box_Ordered_Output_9.Out", "box_MissionCheckpointReach_79.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_58
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053009838667"
  l0 = self.box_MissionMessageController_v3_101
  l1 = self.box_PhoneCommunicationController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1287171187", "1287171187", "S09M060_Main", "box_MissionMessageController_v3_101.Out", "box_PhoneCommunicationController_58.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_272_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_274()
  l0 = self.box_OnceOnly_v3_272
  l1 = self.box_OnceOnly_v3_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|742405083", "742405083", "S09M060_Main", "box_OnceOnly_v3_272.Out", "box_OnceOnly_v3_274.In", l0, l1)
  l1:In(1)
end
function export:f_box_Compare_Entity_v2_404_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_401()
  l0 = self.box_TriggerMonitor_v2_401
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|957906723", "957906723", "S09M060_Main", "box_Compare_Entity_v2_404.Equal", "box_TriggerMonitor_v2_401.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_156_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_228
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_156
  l1 = self.box_CinematicPrep_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|546701993", "546701993", "S09M060_Main", "box_Timer_v2_156.TimeElapsed", "box_CinematicPrep_228.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Lanes_Restrictions_Control_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_19
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|615019600", "615019600", "S09M060_Main", "box_Lanes_Restrictions_Control_75.Out", "box_MissionCheckpointReach_19.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_286_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_291()
  l0 = self.box_AISquadStateMonitor_286
  l1 = self.box_MultipleOR_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2023932741", "2023932741", "S09M060_Main", "box_AISquadStateMonitor_286.CombatState", "box_MultipleOR_291.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_286_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_291()
  l0 = self.box_AISquadStateMonitor_286
  l1 = self.box_MultipleOR_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1323255890", "1323255890", "S09M060_Main", "box_AISquadStateMonitor_286.CombatStateAnyTarget", "box_MultipleOR_291.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_286_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_291()
  l0 = self.box_AISquadStateMonitor_286
  l1 = self.box_MultipleOR_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1663353411", "1663353411", "S09M060_Main", "box_AISquadStateMonitor_286.SearchState", "box_MultipleOR_291.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_286_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_291()
  l0 = self.box_AISquadStateMonitor_286
  l1 = self.box_MultipleOR_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|564793322", "564793322", "S09M060_Main", "box_AISquadStateMonitor_286.SearchStateAnyTarget", "box_MultipleOR_291.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_105
  l0.CLO = "9223372071483444951"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|309615028", "309615028", "S09M060_Main", "box_Ordered_Output_90.Out", "box_CLOController_105.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_114
  l0.CLO = "9223372071483444952"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1189414447", "1189414447", "S09M060_Main", "box_Ordered_Output_90.Out", "box_CLOController_114.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_90_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_193()
  l0 = self.box_AISquadStateMonitor_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1357221040", "1357221040", "S09M060_Main", "box_Ordered_Output_90.Out", "box_AISquadStateMonitor_193.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_90_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_266()
  l0 = self.box_AISquadStateMonitor_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|308860291", "308860291", "S09M060_Main", "box_Ordered_Output_90.Out", "box_AISquadStateMonitor_266.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_232_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadRelationshipController_224()
  l0 = self.box_AISquadRelationshipController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1623808198", "1623808198", "S09M060_Main", "box_Simple_Node_232.Out", "box_AISquadRelationshipController_224.ResetRelationship", clone, l0)
  l0:ResetRelationship()
end
function export:f_box_VehicleMonitor_v3_240_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_245()
  l0 = self.box_VehicleMonitor_v3_240
  l1 = self.box_OnceOnly_v3_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1226438200", "1226438200", "S09M060_Main", "box_VehicleMonitor_v3_240.IsUnusable", "box_OnceOnly_v3_245.In", l0, l1)
  l1:In(2)
end
function export:f_box_VehicleMonitor_v3_240_StateChange()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_240
  self.ChopperState = l0.StateID
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.ChopperState
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1735452971"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Integers_v2_246_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_VehicleMonitor_v3_240
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|934177542", "934177542", "S09M060_Main", "box_VehicleMonitor_v3_240.StateChange", "box_Compare_Integers_v2_246.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_107_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PoliceChiefDead
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1032643541"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_87_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_87_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_107
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1538831382", "1538831382", "S09M060_Main", "box_OnceOnly_v3_107.Out", "box_Compare_Boolean_v2_87.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_124_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_124
  self.TempHeli2 = l0.UserID
  l0 = self.box_CLOController_302
  l0.CLO = "9223372055037865727"
  l0 = self.box_CLOController_124
  l1 = self.box_CLOController_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|93022764", "93022764", "S09M060_Main", "box_CLOController_124.OnUserInPlace", "box_CLOController_302.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Security_Alarm_Panel_Controller_109_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_305
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Security_Alarm_Panel_Controller_109
  l1 = self.box_PlaySound_v2_305
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1151507694", "1151507694", "S09M060_Main", "box_Security_Alarm_Panel_Controller_109.Activated", "box_PlaySound_v2_305.Play", l0, l1)
  l1:Play()
end
function export:f_box_CinematicPrep_408_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|449053340"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_92_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_408
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|898750793", "898750793", "S09M060_Main", "box_CinematicPrep_408.PostOut", "box_Show_Or_Hide_All_UI_92.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_231_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372061502821908"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|233543405"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_32_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|172026975", "172026975", "S09M060_Main", "box_Ordered_Output_231.Out", "box_CollisionController_32.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Ordered_Output_231_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateController_199()
  l0 = self.box_AISquadStateController_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|219205735", "219205735", "S09M060_Main", "box_Ordered_Output_231.Out", "box_AISquadStateController_199.SetSearchOverrideParams", clone, l0)
  l0:SetSearchOverrideParams()
end
function export:f_box_PlaySound_v2_37_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_37
  l1 = self.box_SetBoolean_v2_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1049595433", "1049595433", "S09M060_Main", "box_PlaySound_v2_37.Started", "box_SetBoolean_v2_237.True", l0, l1)
  l1:True()
end
function export:f_box_OnceOnly_v3_263_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1126100255"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_249_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_249_Out_1
  l0 = self.box_OnceOnly_v3_263
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|996674162", "996674162", "S09M060_Main", "box_OnceOnly_v3_263.Out", "box_Ordered_Output_249.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_270_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_272()
  l0 = self.box_AISquadStateMonitor_270
  l1 = self.box_OnceOnly_v3_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1805777770", "1805777770", "S09M060_Main", "box_AISquadStateMonitor_270.CombatState", "box_OnceOnly_v3_272.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_270_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_272()
  l0 = self.box_AISquadStateMonitor_270
  l1 = self.box_OnceOnly_v3_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|348754857", "348754857", "S09M060_Main", "box_AISquadStateMonitor_270.CombatStateAnyTarget", "box_OnceOnly_v3_272.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_270_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_272()
  l0 = self.box_AISquadStateMonitor_270
  l1 = self.box_OnceOnly_v3_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2062900601", "2062900601", "S09M060_Main", "box_AISquadStateMonitor_270.SearchState", "box_OnceOnly_v3_272.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_270_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_272()
  l0 = self.box_AISquadStateMonitor_270
  l1 = self.box_OnceOnly_v3_272
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|657581150", "657581150", "S09M060_Main", "box_AISquadStateMonitor_270.SearchStateAnyTarget", "box_OnceOnly_v3_272.In", l0, l1)
  l1:In(3)
end
function export:f_box_OnceOnly_v3_268_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_262()
  l0 = self.box_OnceOnly_v3_268
  l1 = self.box_OnceOnly_v3_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1655603035", "1655603035", "S09M060_Main", "box_OnceOnly_v3_268.Out", "box_OnceOnly_v3_262.In", l0, l1)
  l1:In(1)
end
function export:f_box_Compare_Boolean_v2_60_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_55()
  l0 = self.box_Timer_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1522136331", "1522136331", "S09M060_Main", "box_Compare_Boolean_v2_60.A_is_True", "box_Timer_v2_55.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_GetNPC_112_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_112
  self.NPCsPGTList = l0.NPCList
  l0 = self.box_ListWriter_398
  l0.Input = self.ScriptedAgents
  l0.Data[0] = self.PoliceChief
  l0 = self.box_GetNPC_112
  l1 = self.box_ListWriter_398
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|645236501", "645236501", "S09M060_Main", "box_GetNPC_112.GotNPCList", "box_ListWriter_398.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_138_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_138
  self.ExitBoat3 = l0.UserID
  l0 = self.box_CLOController_244
  l0.CLO = "9223372053497402039"
  l0 = self.box_CLOController_138
  l1 = self.box_CLOController_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|159426996", "159426996", "S09M060_Main", "box_CLOController_138.OnUserInPlace", "box_CLOController_244.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_401()
  l0 = self.box_TriggerMonitor_v2_401
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|582037636", "582037636", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_401.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = "9223372071352905752"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1372239901", "1372239901", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = "9223372071352905754"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1736790663", "1736790663", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = "9223372071352905756"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|253923503", "253923503", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372071352905758"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|974814900", "974814900", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_2_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_15
  l0.Trigger = "9223372071352905760"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1098268257", "1098268257", "S09M060_Main", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_300_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|403118087"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_163_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_163_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_163_Out_2
  l0 = self.box_OnceOnly_v3_300
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1919553705", "1919553705", "S09M060_Main", "box_OnceOnly_v3_300.Out", "box_Ordered_Output_163.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_210_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_262()
  l0 = self.box_OnceOnly_v3_210
  l1 = self.box_OnceOnly_v3_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1915851050", "1915851050", "S09M060_Main", "box_OnceOnly_v3_210.Out", "box_OnceOnly_v3_262.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_126_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_126
  self.AddHelper = l0.Target
  l0 = self.box_PGTController_v2_127
  l0.PGTMissionArea = "9223372046946078163"
  l0.AgentList = self.AddHelper
  l0 = self.box_ListWriter_126
  l1 = self.box_PGTController_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|365910943", "365910943", "S09M060_Main", "box_ListWriter_126.Added", "box_PGTController_v2_127.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_126_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_126
  self.AddHelper = l0.Target
end
function export:f_box_ListWriter_126_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_126
  self.AddHelper = l0.Target
end
function export:f_box_CinematicPrep_96_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_204
  l0.Entity = "9223372057657279051"
  l0.SoundId = "soundbinary/618878867.bnk"
  l0 = self.box_CinematicPrep_96
  l1 = self.box_PlaySound_v2_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|966486423", "966486423", "S09M060_Main", "box_CinematicPrep_96.PreOut", "box_PlaySound_v2_204.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionZone_38_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_195
  l0.HackableEntity = self.OpenAllCells
  l0 = self.box_MissionZone_38
  l1 = self.box_HackableController_v2_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1567271602", "1567271602", "S09M060_Main", "box_MissionZone_38.Enabled", "box_HackableController_v2_195.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_Moveable_Entity_Monitor_22_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_38()
  l0 = self.box_Moveable_Entity_Monitor_22
  l1 = self.box_MissionZone_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1323622566", "1323622566", "S09M060_Main", "box_Moveable_Entity_Monitor_22.Enabled", "box_MissionZone_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Moveable_Entity_Monitor_22_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_22
  l1 = self.box_SetBoolean_v2_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|86418576", "86418576", "S09M060_Main", "box_Moveable_Entity_Monitor_22.OnBkwMovementFinished", "box_SetBoolean_v2_292.False", l0, l1)
  l1:False()
end
function export:f_box_Moveable_Entity_Monitor_22_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_22
  l1 = self.box_SetBoolean_v2_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1787440707", "1787440707", "S09M060_Main", "box_Moveable_Entity_Monitor_22.OnFwdMovementFinished", "box_SetBoolean_v2_139.True", l0, l1)
  l1:True()
end
function export:f_box_AISquadStateController_199_SearchOverrideParamsSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadRelationshipController_224()
  l0 = self.box_AISquadStateController_199
  l1 = self.box_AISquadRelationshipController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1920288608", "1920288608", "S09M060_Main", "box_AISquadStateController_199.SearchOverrideParamsSet", "box_AISquadRelationshipController_224.SetRelationship", l0, l1)
  l1:SetRelationship()
end
function export:f_box_Compare_Entity_v2_100_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_102()
  l0 = self.box_TriggerMonitor_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|536923694", "536923694", "S09M060_Main", "box_Compare_Entity_v2_100.Equal", "box_TriggerMonitor_v2_102.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlayDialog_v2_363_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_353()
  l0 = self.box_PlayDialog_v2_363
  l1 = self.box_Player_Proximity_Monitor_353
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1608676708", "1608676708", "S09M060_Main", "box_PlayDialog_v2_363.Finished", "box_Player_Proximity_Monitor_353.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Multiple_AND_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_131
  l0.Input = self.DockReinfo03
  l0.Data[0] = self.ManualReinfo_Dock03_A
  l0.Data[1] = self.ManualReinfo_Dock03_B
  l0 = self.box_Multiple_AND_141
  l1 = self.box_ListWriter_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1150582303", "1150582303", "S09M060_Main", "box_Multiple_AND_141.Out", "box_ListWriter_131.Add", l0, l1)
  l1:Add()
end
function export:f_box_CLOController_337_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_339
  l0.User = self.Helper
  l0 = self.box_CLOController_337
  l1 = self.box_CLOController_339
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1649538838", "1649538838", "S09M060_Main", "box_CLOController_337.UnspawnedUser", "box_CLOController_339.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Simple_Node_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2030726788"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_91_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1323182724", "1323182724", "S09M060_Main", "box_Simple_Node_78.Out", "box_Ordered_Output_91.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_19
  l1 = self.box_S09M060_VID_Mosaic04_OS_Main_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1044898046", "1044898046", "S09M060_Main", "box_MissionCheckpointReach_19.Out", "box_S09M060_VID_Mosaic04_OS_Main_31.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_45_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_63()
  l0 = self.box_TriggerMonitor_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1784917826", "1784917826", "S09M060_Main", "box_CollisionController_45.CollisionsEnabled", "box_TriggerMonitor_v2_63.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_244_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_244
  self.ExitBoat4 = l0.UserID
end
function export:f_box_OnceOnly_v3_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_77
  l0.Affiliation = "OPD"
  l0 = self.box_OnceOnly_v3_65
  l1 = self.box_GetNPC_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2033675117", "2033675117", "S09M060_Main", "box_OnceOnly_v3_65.Out", "box_GetNPC_77.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1183381935"
  l0.Out = self.f_box_Get_Player_ID_27_Out
  l0 = self.box_MissionLayer_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1858662115", "1858662115", "S09M060_Main", "box_MissionLayer_v2_1.Loaded", "box_Get_Player_ID_27.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_217_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_407
  l0.SceneEntity = "9223372047779474443"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_911Celebration_CIN/s09_911celebration_cin.seq"
  l0 = self.box_CinematicPrep_217
  l1 = self.box_PlaySequence_v5_407
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1802012298", "1802012298", "S09M060_Main", "box_CinematicPrep_217.PreOut", "box_PlaySequence_v5_407.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_147_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_108
  l0.CLO = "9223372046153684541"
  l0 = self.box_MultipleOR_147
  l1 = self.box_CLOController_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|966592466", "966592466", "S09M060_Main", "box_MultipleOR_147.Out", "box_CLOController_108.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_229_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_156
  l0.Seconds = 1
  l0 = self.box_MultipleOR_229
  l1 = self.box_Timer_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2123212514", "2123212514", "S09M060_Main", "box_MultipleOR_229.Out", "box_Timer_v2_156.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Escape the Island", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController_v3')-- Comment: Escape the Island")
  l0 = self.box_MissionMessageController_v3_28
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M060.Objectives.Objective090",
    item = "Objective",
    id = "483970"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1728890763", "1728890763", "S09M060_Main", "box_Ordered_Output_82.Out", "box_MissionMessageController_v3_28.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_8
  l0.CLO = "9223372046945986749"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1661587758", "1661587758", "S09M060_Main", "box_Ordered_Output_82.Out", "box_CLOController_8.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_282_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_284()
  l0 = self.box_MultipleOR_282
  l1 = self.box_OnceOnly_v3_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1665213453", "1665213453", "S09M060_Main", "box_MultipleOR_282.Out", "box_OnceOnly_v3_284.In", l0, l1)
  l1:In(1)
end
function export:f_box_Multiple_AND_133_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_128
  l0.Input = self.DockReinfos02
  l0.Data[0] = self.ManualReinfo_Dock02_A
  l0.Data[1] = self.ManualReinfo_Dock02_B
  l0 = self.box_Multiple_AND_133
  l1 = self.box_ListWriter_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1860259704", "1860259704", "S09M060_Main", "box_Multiple_AND_133.Out", "box_ListWriter_128.Add", l0, l1)
  l1:Add()
end
function export:f_box_TriggerMonitor_v2_401_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_401
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|328945097", "328945097", "S09M060_Main", "box_TriggerMonitor_v2_401.Disabled", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_401_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_401
  self.LeavePrison = l0.Collider
end
function export:f_box_TriggerMonitor_v2_401_Enter()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_401
  self.LeavePrison = l0.Collider
end
function export:f_box_TriggerMonitor_v2_401_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_401
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.LeavePrison
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_404"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|634374837"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_404_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_401
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|950024800", "950024800", "S09M060_Main", "box_TriggerMonitor_v2_401.Leave", "box_Compare_Entity_v2_404.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_401_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_401
  self.LeavePrison = l0.Collider
end
function export:f_box_MissionCheckpointReach_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TeleportPlayerInsideHma_279
  l0.SpawnPoint = "9223372048540777848"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0 = self.box_MissionCheckpointReach_79
  l1 = self.box_TeleportPlayerInsideHma_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|83240813", "83240813", "S09M060_Main", "box_MissionCheckpointReach_79.Out", "box_TeleportPlayerInsideHma_279.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMusicController_242_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|601674081"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1671169690", "1671169690", "S09M060_Main", "box_MissionMusicController_242.Deactivated", "box_Ordered_Output_9.In", clone, l0)
  l0:In()
end
function export:f_box_PawnHealthMonitor_v4_251_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_245()
  l0 = self.box_PawnHealthMonitor_v4_251
  l1 = self.box_OnceOnly_v3_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1076512631", "1076512631", "S09M060_Main", "box_PawnHealthMonitor_v4_251.Killed", "box_OnceOnly_v3_245.In", l0, l1)
  l1:In(3)
end
function export:f_box_Ordered_Output_247_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1243517748"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|110575230", "110575230", "S09M060_Main", "box_Ordered_Output_247.Out", "box_ReinforcementSystemController_v2_243.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_Ordered_Output_247_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_303()
  l0 = self.box_MultipleOR_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|537530714", "537530714", "S09M060_Main", "box_Ordered_Output_247.Out", "box_MultipleOR_303.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_273_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049526728715"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1793719121"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_155_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_273
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1566809265", "1566809265", "S09M060_Main", "box_HackableController_v2_273.Disabled", "box_MoveableEntityController_155.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_CollisionController_435_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372061502821908"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|855006013"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_box_CollisionController_45_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|951629754", "951629754", "S09M060_Main", "box_CollisionController_435.CollisionsEnabled", "box_CollisionController_45.EnableCollisions", clone, l0)
  l0:EnableCollisions()
end
function export:f_box_OnceOnly_v3_262_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|664691834"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_90_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_90_Out_3
  l0 = self.box_OnceOnly_v3_262
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1447058482", "1447058482", "S09M060_Main", "box_OnceOnly_v3_262.Out", "box_Ordered_Output_90.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_239_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_245()
  l0 = self.box_Hackable_Monitor_239
  l1 = self.box_OnceOnly_v3_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|511846746", "511846746", "S09M060_Main", "box_Hackable_Monitor_239.HackSuccess", "box_OnceOnly_v3_245.In", l0, l1)
  l1:In(0)
end
function export:f_box_ReinforcementSystemController_v2_72_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_72()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1068792172", "1068792172", "S09M060_Main", "box_ReinforcementSystemController_v2_72.ReinforcingStarted", "box_ReinforcementSystemController_v2_72.AddScriptedAgents", clone, l0)
  l0:AddScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_72_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_72()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|246072350", "246072350", "S09M060_Main", "box_ReinforcementSystemController_v2_72.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_72.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_72_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|157936116"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|763553356", "763553356", "S09M060_Main", "box_ReinforcementSystemController_v2_72.ScriptedAgentsAdopted", "box_Ordered_Output_80.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_212_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_AISquadStateMonitor_212
  l1 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1500832874", "1500832874", "S09M060_Main", "box_AISquadStateMonitor_212.CombatState", "box_OnceOnly_v3_214.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_212_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_AISquadStateMonitor_212
  l1 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|865154087", "865154087", "S09M060_Main", "box_AISquadStateMonitor_212.CombatStateAnyTarget", "box_OnceOnly_v3_214.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_212_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_AISquadStateMonitor_212
  l1 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1342583333", "1342583333", "S09M060_Main", "box_AISquadStateMonitor_212.SearchState", "box_OnceOnly_v3_214.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_212_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_AISquadStateMonitor_212
  l1 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1348834832", "1348834832", "S09M060_Main", "box_AISquadStateMonitor_212.SearchStateAnyTarget", "box_OnceOnly_v3_214.In", l0, l1)
  l1:In(3)
end
function export:f_box_CLOController_61_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_61
  self.Helper = l0.UserID
  l0 = self.box_ListWriter_126
  l0.Input = self.AddHelper
  l0.Data[0] = self.Helper
  l0 = self.box_CLOController_61
  l1 = self.box_ListWriter_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|281878000", "281878000", "S09M060_Main", "box_CLOController_61.OnUserInPlace", "box_ListWriter_126.Add", l0, l1)
  l1:Add()
end
function export:f_box_Lanes_Restrictions_Control_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_143()
  l0 = self.box_MultipleOR_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|613622911", "613622911", "S09M060_Main", "box_Lanes_Restrictions_Control_39.Out", "box_MultipleOR_143.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListFinder_23_Found()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListFinder.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_129()
  l0 = self.box_MultipleOR_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1112550614", "1112550614", "S09M060_Main", "box_ListFinder_23.Found", "box_MultipleOR_129.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetInteger_v2_319_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.WardenAccess = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TwoExitsMonitor_174
  l0.FirstDoor = self.YardDoor1
  l0.SecondDoor = self.YardDoor2
  l0.CurrentExitNo = self.YardAccess
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|816016784", "816016784", "S09M060_Main", "box_SetInteger_v2_319.Out", "box_TwoExitsMonitor_174.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_55_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_Timer_v2_55
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|729277351", "729277351", "S09M060_Main", "box_Timer_v2_55.Stopped", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_55_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alerted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|749157844"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_60_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_55
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1714917038", "1714917038", "S09M060_Main", "box_Timer_v2_55.TimeElapsed", "box_Compare_Boolean_v2_60.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_197_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_198
  l0.Vehicle = self.TempHeli2
  l0.Pawn = self.sniper
  l0.Seat = "RearPassengerRight"
  l0 = self.box_Multiple_AND_197
  l1 = self.box_VehicleSeatingController_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1726299183", "1726299183", "S09M060_Main", "box_Multiple_AND_197.Out", "box_VehicleSeatingController_198.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Simple_Node_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1557615123"
  l0.Out = self.f_box_Simple_Node_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1320706838", "1320706838", "S09M060_Main", "box_Simple_Node_14.Out", "box_Simple_Node_30.In", clone, l0)
  l0:In()
end
function export:f_box_ReinforcementSystemController_v2_192_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1425582963"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_296_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_296_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2101029683", "2101029683", "S09M060_Main", "box_ReinforcementSystemController_v2_192.ScriptedAgentsAdded", "box_Ordered_Output_296.In", clone, l0)
  l0:In()
end
function export:f_box_SetTimeOfDay_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1110467993", "1110467993", "S09M060_Main", "box_SetTimeOfDay_146.Out", "box_Timer_v2_226.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_87_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1051096040"
  l0.Out = self.f_box_Simple_Node_253_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|552881487", "552881487", "S09M060_Main", "box_Compare_Boolean_v2_87.A_is_False", "box_Simple_Node_253.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_87_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_88
  l0.ItemDB = "Items.9223372059111819879"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1800543090", "1800543090", "S09M060_Main", "box_Compare_Boolean_v2_87.A_is_True", "box_RewardController_v3_88.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_HackableController_v2_195_HackForced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049734221024"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_403"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1672937776"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_403_Out
  l0 = self.box_HackableController_v2_195
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1476369140", "1476369140", "S09M060_Main", "box_HackableController_v2_195.HackForced", "box_MoveableEntityController_403.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_Simple_Node_253_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_221()
  l0 = self.box_MultipleOR_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1469193824", "1469193824", "S09M060_Main", "box_Simple_Node_253.Out", "box_MultipleOR_221.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Proximity_Monitor_83_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1180254060"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_267_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_267_Out_1
  l0 = self.box_Proximity_Monitor_83
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1217627253", "1217627253", "S09M060_Main", "box_Proximity_Monitor_83.Disabled", "box_Ordered_Output_267.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_83_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_83()
  l0 = self.box_Proximity_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|49117179", "49117179", "S09M060_Main", "box_Proximity_Monitor_83.EnterRadius", "box_Proximity_Monitor_83.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_116_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  self.ManualReinfo_Dock02_A = l0.UserID
  self:OnEnter_box_Multiple_AND_133()
  l1 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|67857233", "67857233", "S09M060_Main", "box_CLOController_116.OnUserInPlace", "box_Multiple_AND_133.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_TwoExitsMonitor_287_Disabled()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_287_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
  l0 = self.box_Moveable_Entity_Monitor_22
  l0.MoveableEntity = self.HallwayDoorPC
  l0 = self.box_TwoExitsMonitor_287
  l1 = self.box_Moveable_Entity_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1014065657", "1014065657", "S09M060_Main", "box_TwoExitsMonitor_287.Enabled", "box_Moveable_Entity_Monitor_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TwoExitsMonitor_287_ExitChanged()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_287_FirstDoorExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_287_NoExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_287_SecondDoorExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_287
  self.WardenAccess = l0.ExitNo
end
function export:f_box_AISquadStateController_52_SquadBhvParamsSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_72()
  l0 = self.box_AISquadStateController_52
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1909694911", "1909694911", "S09M060_Main", "box_AISquadStateController_52.SquadBhvParamsSet", "box_ReinforcementSystemController_v2_72.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_CLOController_339_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_347
  l0.User = self.TempHeli1
  l0 = self.box_CLOController_339
  l1 = self.box_CLOController_347
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1732449533", "1732449533", "S09M060_Main", "box_CLOController_339.UnspawnedUser", "box_CLOController_347.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Simple_Node_177_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_136
  l0.HackableEntity = "9223372047327355816"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1514964131", "1514964131", "S09M060_Main", "box_Simple_Node_177.Out", "box_HackableController_v2_136.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_PoliceTrapped_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PoliceTrapped_66
  l0.TriggerList = {
    "9223372049080144629",
    "9223372055462905134"
  }
  l0.Door = "9223372049526729675"
  l0.Sound1 = "soundbinary/4218005335.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0 = self.box_PoliceTrapped_48
  l1 = self.box_PoliceTrapped_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2111958651", "2111958651", "S09M060_Main", "box_PoliceTrapped_48.Out", "box_PoliceTrapped_66.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_289_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_289
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_289_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_289
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_289_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_289
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_289_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_289
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1438622077"
  l0.Out = self.f_box_SetTimeOfDay_283_Out
  l0 = self.box_SetBoolean_v2_289
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1425680363", "1425680363", "S09M060_Main", "box_SetBoolean_v2_289.SetTrue", "box_SetTimeOfDay_283.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_SetBoolean_v2_289_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_289
  self.Checkpoint = l0.Target
end
function export:f_box_AISquadStateMonitor_280_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_282()
  l0 = self.box_AISquadStateMonitor_280
  l1 = self.box_MultipleOR_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|212140681", "212140681", "S09M060_Main", "box_AISquadStateMonitor_280.None", "box_MultipleOR_282.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_280_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_282()
  l0 = self.box_AISquadStateMonitor_280
  l1 = self.box_MultipleOR_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|355250890", "355250890", "S09M060_Main", "box_AISquadStateMonitor_280.VanishState", "box_MultipleOR_282.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_139_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_139
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_139_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_139
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_139_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_139
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_139_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_139
  self.DoorSwitchPath = l0.Target
end
function export:f_box_SetBoolean_v2_139_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_139
  self.DoorSwitchPath = l0.Target
end
function export:f_box_Ordered_Output_249_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_189()
  l0 = self.box_Timer_v2_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1964412329", "1964412329", "S09M060_Main", "box_Ordered_Output_249.Out", "box_Timer_v2_189.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_249_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_190()
  l0 = self.box_Timer_v2_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|190876694", "190876694", "S09M060_Main", "box_Ordered_Output_249.Out", "box_Timer_v2_190.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Simple_Node_211_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_47
  l0.Entity = "9223372050530363720"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1779259449", "1779259449", "S09M060_Main", "box_Simple_Node_211.Out", "box_Interact_Gameplay_47.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_41_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|427285527"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1397031929", "1397031929", "S09M060_Main", "box_Compare_Boolean_v2_41.A_is_False", "box_Ordered_Output_59.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_41_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|900785259", "900785259", "S09M060_Main", "box_Compare_Boolean_v2_41.A_is_True", "box_MultipleOR_64.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_123_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_123
  self.ExitBoat2 = l0.UserID
  l0 = self.box_CLOController_138
  l0.CLO = "9223372046945986845"
  l0 = self.box_CLOController_123
  l1 = self.box_CLOController_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1984416627", "1984416627", "S09M060_Main", "box_CLOController_123.OnUserInPlace", "box_CLOController_138.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_217
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_35
  l1 = self.box_CinematicPrep_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|522238660", "522238660", "S09M060_Main", "box_MultipleOR_35.Out", "box_CinematicPrep_217.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_S09M060_VID_Dusan911_FS_Main_269_EndVideo()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_S09M060_VID_Dusan911_FS_Main_269
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|705247035", "705247035", "S09M060_Main", "box_S09M060_VID_Dusan911_FS_Main_269.EndVideo", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_134_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_134
  l1 = self.box_MultipleOR_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|731931753", "731931753", "S09M060_Main", "box_TriggerMonitor_v2_134.Disabled", "box_MultipleOR_223.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_134_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_134
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|890578689"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0 = self.box_TriggerMonitor_v2_134
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|357960975", "357960975", "S09M060_Main", "box_TriggerMonitor_v2_134.Enabled", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_134_Enter()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_134
  self.LeavePrison = l0.Collider
end
function export:f_box_TriggerMonitor_v2_134_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_134
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.LeavePrison
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|395030849"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_185_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_134
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1674352570", "1674352570", "S09M060_Main", "box_TriggerMonitor_v2_134.Leave", "box_Compare_Entity_v2_185.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_134_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_134
  self.LeavePrison = l0.Collider
end
function export:f_box_Ordered_Output_267_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_193()
  l0 = self.box_AISquadStateMonitor_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|641610415", "641610415", "S09M060_Main", "box_Ordered_Output_267.Out", "box_AISquadStateMonitor_193.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_267_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_266()
  l0 = self.box_AISquadStateMonitor_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1530178935", "1530178935", "S09M060_Main", "box_Ordered_Output_267.Out", "box_AISquadStateMonitor_266.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_44_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_157
  l0.Seconds = 2
  l0 = self.box_Timer_v2_44
  l1 = self.box_Timer_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|544254024", "544254024", "S09M060_Main", "box_Timer_v2_44.Started", "box_Timer_v2_157.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_61
  l0.CLO = "9223372048882163839"
  l0 = self.box_Timer_v2_44
  l1 = self.box_CLOController_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|374167867", "374167867", "S09M060_Main", "box_Timer_v2_44.TimeElapsed", "box_CLOController_61.Activate", l0, l1)
  l1:Activate()
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
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|758160405", "758160405", "S09M060_Main", "box_Get_Player_ID_27.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SetBoolean_v2_51_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.AlarmSound = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.AlarmSound = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.AlarmSound = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.AlarmSound = l0.Target
  l0 = self.box_Security_Alarm_Panel_Controller_109
  l0.AlarmEntity = "9223372055639487719"
  l0 = self.box_SetBoolean_v2_51
  l1 = self.box_Security_Alarm_Panel_Controller_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|613046474", "613046474", "S09M060_Main", "box_SetBoolean_v2_51.SetTrue", "box_Security_Alarm_Panel_Controller_109.ActivateAlarm", l0, l1)
  l1:ActivateAlarm()
end
function export:f_box_SetBoolean_v2_51_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.AlarmSound = l0.Target
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|691373670", "691373670", "S09M060_Main", "box_TriggerMonitor_v2_5.Enter", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(1)
end
function export:f_box_OnceOnly_v3_277_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_278()
  l0 = self.box_OnceOnly_v3_277
  l1 = self.box_OnceOnly_v3_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|979520257", "979520257", "S09M060_Main", "box_OnceOnly_v3_277.Out", "box_OnceOnly_v3_278.In", l0, l1)
  l1:In(1)
end
function export:f_box_Timer_v2_179_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_179
  l1 = self.box_Network_Surfing_Controller_409
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1348866305", "1348866305", "S09M060_Main", "box_Timer_v2_179.Started", "box_Network_Surfing_Controller_409.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_179_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1407443012"
  l0.Out = self.f_box_Simple_Node_40_Out
  l0 = self.box_Timer_v2_179
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2085788811", "2085788811", "S09M060_Main", "box_Timer_v2_179.TimeElapsed", "box_Simple_Node_40.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_129_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_63()
  l0 = self.box_MultipleOR_129
  l1 = self.box_TriggerMonitor_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1413180720", "1413180720", "S09M060_Main", "box_MultipleOR_129.Out", "box_TriggerMonitor_v2_63.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Multiple_AND_186_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1488096912"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_137_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_137_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Multiple_AND_186
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|633305355", "633305355", "S09M060_Main", "box_Multiple_AND_186.Out", "box_Compare_Boolean_v2_137.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_250_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_MissionLayer_v2_250
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1768061218", "1768061218", "S09M060_Main", "box_MissionLayer_v2_250.Loaded", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_265_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1536646825"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_264_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_264_Out_1
  l0 = self.box_OnceOnly_v3_265
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|791666783", "791666783", "S09M060_Main", "box_OnceOnly_v3_265.Out", "box_Ordered_Output_264.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_475_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_475
  self.PoliceChiefDead = l0.Target
end
function export:f_box_SetBoolean_v2_475_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_475
  self.PoliceChiefDead = l0.Target
end
function export:f_box_SetBoolean_v2_475_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_475
  self.PoliceChiefDead = l0.Target
end
function export:f_box_SetBoolean_v2_475_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_475
  self.PoliceChiefDead = l0.Target
end
function export:f_box_SetBoolean_v2_475_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_475
  self.PoliceChiefDead = l0.Target
end
function export:f_box_OnceOnly_v3_297_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_234
  l0.UserList = self.Chopper
  l0 = self.box_OnceOnly_v3_297
  l1 = self.box_CLOController_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1838439057", "1838439057", "S09M060_Main", "box_OnceOnly_v3_297.Out", "box_CLOController_234.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_SecurityCamController_184_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1641325950", "1641325950", "S09M060_Main", "box_SecurityCamController_184.UserForcedOutOfCamera", "box_MultipleOR_140.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ReinforcementSystemMonitor_v2_259_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1548856992"
  l0.Out = self.f_box_Simple_Node_261_Out
  l0 = self.box_ReinforcementSystemMonitor_v2_259
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|706361481", "706361481", "S09M060_Main", "box_ReinforcementSystemMonitor_v2_259.None", "box_Simple_Node_261.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_259_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|115896729"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_73_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_259
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|152744980", "152744980", "S09M060_Main", "box_ReinforcementSystemMonitor_v2_259.Reinforcing", "box_ReinforcementSystemController_v2_73.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_Simple_Node_216_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|281630191"
  l0.Out = self.f_box_Simple_Node_218_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|337299402", "337299402", "S09M060_Main", "box_Simple_Node_216.Out", "box_Simple_Node_218.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_97_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|378650994"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_275_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_275_Out_1
  l0 = self.box_TriggerMonitor_v2_97
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|258105133", "258105133", "S09M060_Main", "box_TriggerMonitor_v2_97.Disabled", "box_Ordered_Output_275.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_97_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_97
  self.Collider_Dock03 = l0.Collider
end
function export:f_box_TriggerMonitor_v2_97_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_97
  self.Collider_Dock03 = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider_Dock03
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1523842368"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_94_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_97
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|395508013", "395508013", "S09M060_Main", "box_TriggerMonitor_v2_97.Enter", "box_Compare_Entity_v2_94.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_97_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_97
  self.Collider_Dock03 = l0.Collider
end
function export:f_box_TriggerMonitor_v2_97_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_97
  self.Collider_Dock03 = l0.Collider
end
function export:f_box_OnceOnly_v3_298_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|339299690"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_183_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_183_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_183_Out_2
  l0 = self.box_OnceOnly_v3_298
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2107359985", "2107359985", "S09M060_Main", "box_OnceOnly_v3_298.Out", "box_Ordered_Output_183.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_221()
  l0 = self.box_MultipleOR_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1084957926", "1084957926", "S09M060_Main", "box_Simple_Node_46.Out", "box_MultipleOR_221.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMusicController_230_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_342
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|147841265", "147841265", "S09M060_Main", "box_MissionMusicController_230.Activated", "box_PlaySound_v2_342.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_204_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|907250209"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_242_Deactivated
  l0 = self.box_PlaySound_v2_204
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1857292949", "1857292949", "S09M060_Main", "box_PlaySound_v2_204.Out", "box_MissionMusicController_242.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_TriggerMonitor_v2_102_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1446523956"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_271_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_271_Out_1
  l0 = self.box_TriggerMonitor_v2_102
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|814488198", "814488198", "S09M060_Main", "box_TriggerMonitor_v2_102.Disabled", "box_Ordered_Output_271.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_102_Enabled()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_102
  self.Collider_Dock02 = l0.Collider
end
function export:f_box_TriggerMonitor_v2_102_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_102
  self.Collider_Dock02 = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider_Dock02
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|818493136"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_100_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_102
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|460739144", "460739144", "S09M060_Main", "box_TriggerMonitor_v2_102.Enter", "box_Compare_Entity_v2_100.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_102_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_102
  self.Collider_Dock02 = l0.Collider
end
function export:f_box_TriggerMonitor_v2_102_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_102
  self.Collider_Dock02 = l0.Collider
end
function export:f_box_AISquadStateMonitor_219_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_300()
  l0 = self.box_AISquadStateMonitor_219
  l1 = self.box_OnceOnly_v3_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|500052388", "500052388", "S09M060_Main", "box_AISquadStateMonitor_219.CombatState", "box_OnceOnly_v3_300.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_219_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_263()
  l0 = self.box_AISquadStateMonitor_219
  l1 = self.box_OnceOnly_v3_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1098063730", "1098063730", "S09M060_Main", "box_AISquadStateMonitor_219.Disabled", "box_OnceOnly_v3_263.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_219_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1637042072"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_241_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_241_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_241_Out_2
  l0 = self.box_AISquadStateMonitor_219
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|969438783", "969438783", "S09M060_Main", "box_AISquadStateMonitor_219.Enabled", "box_Ordered_Output_241.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_219_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_298()
  l0 = self.box_AISquadStateMonitor_219
  l1 = self.box_OnceOnly_v3_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2142814650", "2142814650", "S09M060_Main", "box_AISquadStateMonitor_219.SearchState", "box_OnceOnly_v3_298.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_219_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_297()
  l0 = self.box_AISquadStateMonitor_219
  l1 = self.box_OnceOnly_v3_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1377795675", "1377795675", "S09M060_Main", "box_AISquadStateMonitor_219.VanishState", "box_OnceOnly_v3_297.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_67_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Chopper = l0.Target
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.Chopper
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1019892481"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_192_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ListWriter_67
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|896406399", "896406399", "S09M060_Main", "box_ListWriter_67.Added", "box_ReinforcementSystemController_v2_192.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_67_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Chopper = l0.Target
end
function export:f_box_ListWriter_67_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Chopper = l0.Target
end
function export:f_box_OnceOnly_v3_245_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|918674329"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_247_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_247_Out_1
  l0 = self.box_OnceOnly_v3_245
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1099011099", "1099011099", "S09M060_Main", "box_OnceOnly_v3_245.Out", "box_Ordered_Output_247.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_178_OccludableSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2083924259"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_176_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_176_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_HackableController_v2_178
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|488328013", "488328013", "S09M060_Main", "box_HackableController_v2_178.OccludableSet", "box_Compare_Boolean_v2_176.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_157_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Free the witness / Get the Access Code from the Police Chief", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionMessageController_v3')-- Comment: Free the witness / Get the Access Code from the Police Chief")
  l0 = self.box_MissionMessageController_v3_57
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M060.Objectives.Objective060",
    item = "Objective",
    id = "473624"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_157
  l1 = self.box_MissionMessageController_v3_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1473307901", "1473307901", "S09M060_Main", "box_Timer_v2_157.TimeElapsed", "box_MissionMessageController_v3_57.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PawnHealthMonitor_v3_425_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_425
  l1 = self.box_SetBoolean_v2_475
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2071332491", "2071332491", "S09M060_Main", "box_PawnHealthMonitor_v3_425.Disabled", "box_SetBoolean_v2_475.True", l0, l1)
  l1:True()
end
function export:f_box_PawnHealthMonitor_v3_425_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1670711607"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_290_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_290_Out_1
  l0 = self.box_PawnHealthMonitor_v3_425
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|508313476", "508313476", "S09M060_Main", "box_PawnHealthMonitor_v3_425.Enabled", "box_Ordered_Output_290.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_425_Killed()
  local l0
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_425()
  l0 = self.box_PawnHealthMonitor_v3_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1315553345", "1315553345", "S09M060_Main", "box_PawnHealthMonitor_v3_425.Killed", "box_PawnHealthMonitor_v3_425.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_50_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_AISquadStateMonitor_50
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|759175309", "759175309", "S09M060_Main", "box_AISquadStateMonitor_50.None", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_50_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_AISquadStateMonitor_50
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1632666708", "1632666708", "S09M060_Main", "box_AISquadStateMonitor_50.VanishState", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TwoExitsMonitor_174_Disabled()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_174_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
  l0 = self.box_TwoExitsMonitor_287
  l0.FirstDoor = self.WardenDoor1
  l0.SecondDoor = self.WardenDoor2
  l0.CurrentExitNo = self.WardenAccess
  l0 = self.box_TwoExitsMonitor_174
  l1 = self.box_TwoExitsMonitor_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1735978032", "1735978032", "S09M060_Main", "box_TwoExitsMonitor_174.Enabled", "box_TwoExitsMonitor_287.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TwoExitsMonitor_174_ExitChanged()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_174_FirstDoorExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_174_NoExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
end
function export:f_box_TwoExitsMonitor_174_SecondDoorExit()
  local l0
  self = self._graph
  l0 = self.box_TwoExitsMonitor_174
  self.YardAccess = l0.ExitNo
end
function export:f_box_Ordered_Output_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_119
  l0.CLO = "9223372071483444966"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1477758931", "1477758931", "S09M060_Main", "box_Ordered_Output_95.Out", "box_CLOController_119.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_95_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_117
  l0.CLO = "9223372071483444967"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|118950827", "118950827", "S09M060_Main", "box_Ordered_Output_95.Out", "box_CLOController_117.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_95_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_213()
  l0 = self.box_AISquadStateMonitor_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1397699707", "1397699707", "S09M060_Main", "box_Ordered_Output_95.Out", "box_AISquadStateMonitor_213.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_95_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_276()
  l0 = self.box_AISquadStateMonitor_276
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|717422999", "717422999", "S09M060_Main", "box_Ordered_Output_95.Out", "box_AISquadStateMonitor_276.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_237_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_237
  self.Alerted = l0.Target
end
function export:f_box_SetBoolean_v2_237_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_237
  self.Alerted = l0.Target
end
function export:f_box_SetBoolean_v2_237_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_237
  self.Alerted = l0.Target
end
function export:f_box_SetBoolean_v2_237_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_237
  self.Alerted = l0.Target
  l1 = self.box_SetBoolean_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|316937357", "316937357", "S09M060_Main", "box_SetBoolean_v2_237.SetTrue", "box_SetBoolean_v2_51.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_237_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_237
  self.Alerted = l0.Target
end
function export:f_box_MoveableEntityController_306_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_178
  l0.HackableEntity = "9223372047327355816"
  l0.Occludable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|605113854", "605113854", "S09M060_Main", "box_MoveableEntityController_306.Out", "box_HackableController_v2_178.SetHackOccludable", clone, l0)
  l0:SetHackOccludable()
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_81
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327010"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1691871322", "1691871322", "S09M060_Main", "box_Simple_Node_40.Out", "box_PhoneCommunicationController_81.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_InteractionScriptController_12_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1134044303", "1134044303", "S09M060_Main", "box_InteractionScriptController_12.Disabled", "box_Timer_v2_84.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_294_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_110()
  l0 = self.box_AISquadStateMonitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1647055039", "1647055039", "S09M060_Main", "box_Ordered_Output_294.Out", "box_AISquadStateMonitor_110.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_294_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_286()
  l0 = self.box_AISquadStateMonitor_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|519515041", "519515041", "S09M060_Main", "box_Ordered_Output_294.Out", "box_AISquadStateMonitor_286.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_294_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1149898739", "1149898739", "S09M060_Main", "box_Ordered_Output_294.Out", "box_OnceOnly_v3_107.In", clone, l0)
  l0:In(0)
end
function export:f_box_PlaySequence_v5_222_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_229()
  l0 = self.box_PlaySequence_v5_222
  l1 = self.box_MultipleOR_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|208145289", "208145289", "S09M060_Main", "box_PlaySequence_v5_222.Finished", "box_MultipleOR_229.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_222_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_229()
  l0 = self.box_PlaySequence_v5_222
  l1 = self.box_MultipleOR_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|472359053", "472359053", "S09M060_Main", "box_PlaySequence_v5_222.Skipped", "box_MultipleOR_229.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_187_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_186()
  l0 = self.box_MultipleOR_187
  l1 = self.box_Multiple_AND_186
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|768044662", "768044662", "S09M060_Main", "box_MultipleOR_187.Out", "box_Multiple_AND_186.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_296_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_219()
  l0 = self.box_AISquadStateMonitor_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|535567427", "535567427", "S09M060_Main", "box_Ordered_Output_296.Out", "box_AISquadStateMonitor_219.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_296_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_295()
  l0 = self.box_AISquadStateMonitor_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|803544146", "803544146", "S09M060_Main", "box_Ordered_Output_296.Out", "box_AISquadStateMonitor_295.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetTimeOfDay_283_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372047253083949"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 1
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 1
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
  l0._name = "box_Lanes_Restrictions_Control_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1007644892"
  l0.Out = self.f_box_Lanes_Restrictions_Control_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1474664847", "1474664847", "S09M060_Main", "box_SetTimeOfDay_283.Out", "box_Lanes_Restrictions_Control_39.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_271_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_212()
  l0 = self.box_AISquadStateMonitor_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|907880311", "907880311", "S09M060_Main", "box_Ordered_Output_271.Out", "box_AISquadStateMonitor_212.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_271_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_270()
  l0 = self.box_AISquadStateMonitor_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|393599822", "393599822", "S09M060_Main", "box_Ordered_Output_271.Out", "box_AISquadStateMonitor_270.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_6_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|880712355", "880712355", "S09M060_Main", "box_TriggerMonitor_v2_6.Enter", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(2)
end
function export:f_box_PawnHealthMonitor_v3_26_DeadChecked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_21()
  l0 = self.box_PawnHealthMonitor_v3_26
  l1 = self.box_LogicGate_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|276143658", "276143658", "S09M060_Main", "box_PawnHealthMonitor_v3_26.DeadChecked", "box_LogicGate_v2_21.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_26_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_21()
  l0 = self.box_PawnHealthMonitor_v3_26
  l1 = self.box_LogicGate_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1543827886", "1543827886", "S09M060_Main", "box_PawnHealthMonitor_v3_26.Killed", "box_LogicGate_v2_21.Close", l0, l1)
  l1:Close()
end
function export:f_box_Ordered_Output_200_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_147()
  l0 = self.box_MultipleOR_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1710325382", "1710325382", "S09M060_Main", "box_Ordered_Output_200.Out", "box_MultipleOR_147.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_200_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_187()
  l0 = self.box_MultipleOR_187
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|640920015", "640920015", "S09M060_Main", "box_Ordered_Output_200.Out", "box_MultipleOR_187.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_137_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = "9223372057358580312"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1844061175", "1844061175", "S09M060_Main", "box_Compare_Boolean_v2_137.A_is_False", "box_HackableController_v2_25.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_Compare_Boolean_v2_137_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1092436578"
  l0.Out = self.f_box_Simple_Node_177_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2099605528", "2099605528", "S09M060_Main", "box_Compare_Boolean_v2_137.A_is_True", "box_Simple_Node_177.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_194_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_194
  self.sniper = l0.UserID
  self:OnEnter_box_Multiple_AND_197()
  l1 = self.box_Multiple_AND_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|991262547", "991262547", "S09M060_Main", "box_CLOController_194.OnUserInPlace", "box_Multiple_AND_197.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Timer_v2_189_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HelicopterBhvController_220()
  l0 = self.box_Timer_v2_189
  l1 = self.box_HelicopterBhvController_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1937620352", "1937620352", "S09M060_Main", "box_Timer_v2_189.TimeElapsed", "box_HelicopterBhvController_220.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_182_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_182
  self.WitnessNPC = l0.UserID
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.WitnessNPC
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_350"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2006579566"
  l0.Out = self.f_box_Pawn_Health_Controller_350_Out
  l0 = self.box_CLOController_182
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|503008949", "503008949", "S09M060_Main", "box_CLOController_182.OnUserInPlace", "box_Pawn_Health_Controller_350.SetImmune", l0, l1)
  l1:SetImmune()
end
function export:f_box_Compare_Entity_v2_94_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_97()
  l0 = self.box_TriggerMonitor_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|891606060", "891606060", "S09M060_Main", "box_Compare_Entity_v2_94.Equal", "box_TriggerMonitor_v2_97.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TeleportPlayerInsideHma_279_Done()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_TeleportPlayerInsideHma_279
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1559420019", "1559420019", "S09M060_Main", "box_TeleportPlayerInsideHma_279.Done", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_264_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_259()
  l0 = self.box_ReinforcementSystemMonitor_v2_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|998003180", "998003180", "S09M060_Main", "box_Ordered_Output_264.Out", "box_ReinforcementSystemMonitor_v2_259.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_264_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateController_52
  l0.Affiliation = "OPD"
  l0.SquadBhvParams = "SquadBhvParams.9223372046063189594"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|584288483", "584288483", "S09M060_Main", "box_Ordered_Output_264.Out", "box_AISquadStateController_52.SetSquadBhvParams", clone, l0)
  l0:SetSquadBhvParams()
end
function export:f_box_Simple_Node_261_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_265()
  l0 = self.box_OnceOnly_v3_265
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|791575133", "791575133", "S09M060_Main", "box_Simple_Node_261.Out", "box_OnceOnly_v3_265.In", clone, l0)
  l0:In(0)
end
function export:f_box_Simple_Node_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l0.AlarmEntity = "9223372055639487719"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|269923238", "269923238", "S09M060_Main", "box_Simple_Node_30.Out", "box_Security_Alarm_Panel_Controller_24.DeactivateAlarm", clone, l0)
  l0:DeactivateAlarm()
end
function export:f_box_ReinforcementSystemController_v2_120_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_120()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|543145834", "543145834", "S09M060_Main", "box_ReinforcementSystemController_v2_120.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_120.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_S09M060_VID_Mosaic04_OS_Main_31_EndVideo()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_227
  l0.SpawnPoint = "9223372057916818652"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_S09M060_VID_Mosaic04_OS_Main_31
  l1 = self.box_Teleport_To_SpawnPoint_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1528930733", "1528930733", "S09M060_Main", "box_S09M060_VID_Mosaic04_OS_Main_31.EndVideo", "box_Teleport_To_SpawnPoint_227.In", l0, l1)
  l1:In()
end
function export:f_box_S09M060_VID_Mosaic04_OS_Main_31_VideoStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_233
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327008"
  l0 = self.box_S09M060_VID_Mosaic04_OS_Main_31
  l1 = self.box_PhoneCommunicationController_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|753417829", "753417829", "S09M060_Main", "box_S09M060_VID_Mosaic04_OS_Main_31.VideoStarted", "box_PhoneCommunicationController_233.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_ListForEach_318_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_318
  self.TempDoor = l0.Data
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1964743057"
  l0.Out = self.f_box_SetInteger_v2_307_Out
  l0 = self.box_ListForEach_318
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|400570032", "400570032", "S09M060_Main", "box_ListForEach_318.EndOfList", "box_SetInteger_v2_307.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_ListForEach_318_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_318
  self.TempDoor = l0.Data
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.TempDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|103940646"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_ListForEach_318
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1283020483", "1283020483", "S09M060_Main", "box_ListForEach_318.ForEach", "box_MoveableEntityController_308.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_ListForEach_318_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_318
  self.TempDoor = l0.Data
end
function export:f_box_ListForEach_318_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_318
  self.TempDoor = l0.Data
end
function export:f_box_ListForEach_318_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_318
  self.TempDoor = l0.Data
end
function export:f_box_SwitchOutput_v3_355_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_362
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/843918289.bnk"
  l0 = self.box_SwitchOutput_v3_355
  l1 = self.box_PlayDialog_v2_362
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|785872016", "785872016", "S09M060_Main", "box_SwitchOutput_v3_355.Output", "box_PlayDialog_v2_362.Start", l0, l1)
  l1:Start()
end
function export:f_box_SwitchOutput_v3_355_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_363
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/309936221.bnk"
  l0 = self.box_SwitchOutput_v3_355
  l1 = self.box_PlayDialog_v2_363
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|752266594", "752266594", "S09M060_Main", "box_SwitchOutput_v3_355.Output", "box_PlayDialog_v2_363.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_115_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_115
  self.ManualReinfo_Dock02_B = l0.UserID
  self:OnEnter_box_Multiple_AND_133()
  l1 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1095507992", "1095507992", "S09M060_Main", "box_CLOController_115.OnUserInPlace", "box_Multiple_AND_133.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1019238741"
  l0.Out = self.f_box_Simple_Node_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1015005729", "1015005729", "S09M060_Main", "box_Ordered_Output_16.Out", "box_Simple_Node_14.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_20
  l0.Affiliation = "OPD"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|55139116", "55139116", "S09M060_Main", "box_Ordered_Output_16.Out", "box_GetNPC_20.GetEnemiesAlive", clone, l0)
  l0:GetEnemiesAlive()
end
function export:f_box_Ordered_Output_196_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_124
  l0.CLO = "9223372055037865727"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1085027348", "1085027348", "S09M060_Main", "box_Ordered_Output_196.Out", "box_CLOController_124.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_196_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_194
  l0.CLO = "9223372071857819042"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|461364789", "461364789", "S09M060_Main", "box_Ordered_Output_196.Out", "box_CLOController_194.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_241_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_239()
  l0 = self.box_Hackable_Monitor_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1098398427", "1098398427", "S09M060_Main", "box_Ordered_Output_241.Out", "box_Hackable_Monitor_239.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_241_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_240()
  l0 = self.box_VehicleMonitor_v3_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1757625381", "1757625381", "S09M060_Main", "box_Ordered_Output_241.Out", "box_VehicleMonitor_v3_240.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_241_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v4_251()
  l0 = self.box_PawnHealthMonitor_v4_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|975574516", "975574516", "S09M060_Main", "box_Ordered_Output_241.Out", "box_PawnHealthMonitor_v4_251.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Play_Domino_Cinematic_Animation_76_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_150
  l0.SceneEntity = "9223372060289842834"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/s09-m060-scr-cutfreeinformer.seq"
  l0.EntityIn.Witness = self.WitnessNPC
  l0 = self.box_Play_Domino_Cinematic_Animation_76
  l1 = self.box_PlaySequence_v5_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|752367670", "752367670", "S09M060_Main", "box_Play_Domino_Cinematic_Animation_76.Stopped", "box_PlaySequence_v5_150.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2004962830"
  l0.Out = self.f_box_Simple_Node_288_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|465741088", "465741088", "S09M060_Main", "box_Ordered_Output_36.Out", "box_Simple_Node_288.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_38()
  l0 = self.box_MissionZone_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|567711742", "567711742", "S09M060_Main", "box_Ordered_Output_36.Out", "box_MissionZone_38.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_AI_Agent_Zone_365_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_425()
  l0 = self.box_PawnHealthMonitor_v3_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|897490088", "897490088", "S09M060_Main", "box_AI_Agent_Zone_365.Out", "box_PawnHealthMonitor_v3_425.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_223_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|440609349"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_281_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_281_Out_1
  l0 = self.box_MultipleOR_223
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|254490147", "254490147", "S09M060_Main", "box_MultipleOR_223.Out", "box_Ordered_Output_281.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_290_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_110()
  l0 = self.box_AISquadStateMonitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1132067962", "1132067962", "S09M060_Main", "box_Ordered_Output_290.Out", "box_AISquadStateMonitor_110.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_290_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_286()
  l0 = self.box_AISquadStateMonitor_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|458915680", "458915680", "S09M060_Main", "box_Ordered_Output_290.Out", "box_AISquadStateMonitor_286.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MoveableEntityController_403_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372057657403973"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1377907575"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = self.f_box_MoveableEntityController_306_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|17891931", "17891931", "S09M060_Main", "box_MoveableEntityController_403.Out", "box_MoveableEntityController_306.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_CLOController_114_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_114
  self.ManualReinfo_Dock01_B = l0.UserID
  self:OnEnter_box_Multiple_AND_132()
  l1 = self.box_Multiple_AND_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2061456860", "2061456860", "S09M060_Main", "box_CLOController_114.OnUserInPlace", "box_Multiple_AND_132.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Escape_Gameplay_118_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|353100997"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_135_Out_2
  l0 = self.box_Escape_Gameplay_118
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|678322643", "678322643", "S09M060_Main", "box_Escape_Gameplay_118.Escaped", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_13
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1717966176", "1717966176", "S09M060_Main", "box_TriggerMonitor_v2_13.Enter", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(4)
end
function export:f_box_CLOController_347_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_348
  l0.User = self.TempHeli2
  l0 = self.box_CLOController_347
  l1 = self.box_CLOController_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|806979332", "806979332", "S09M060_Main", "box_CLOController_347.UnspawnedUser", "box_CLOController_348.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_MissionMessageController_v3_57_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|710670620"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_231_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_231_Out_1
  l0 = self.box_MissionMessageController_v3_57
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|536554205", "536554205", "S09M060_Main", "box_MissionMessageController_v3_57.Out", "box_Ordered_Output_231.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_284_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|495744034"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_285_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_285_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_285_Out_2
  l0 = self.box_OnceOnly_v3_284
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|969430818", "969430818", "S09M060_Main", "box_OnceOnly_v3_284.Out", "box_Ordered_Output_285.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_74_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046946078163"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_365"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1649151007"
  l0.Out = self.f_box_AI_Agent_Zone_365_Out
  l0 = self.box_CinematicPrep_74
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1919108167", "1919108167", "S09M060_Main", "box_CinematicPrep_74.PostOut", "box_AI_Agent_Zone_365.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Integers_v2_246_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_245()
  l0 = self.box_OnceOnly_v3_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|626092664", "626092664", "S09M060_Main", "box_Compare_Integers_v2_246.A_le_B", "box_OnceOnly_v3_245.In", clone, l0)
  l0:In(1)
end
function export:f_box_Multiple_AND_132_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_125
  l0.Input = self.DockReinfos01
  l0.Data[0] = self.ManualReinfo_Dock01_A
  l0.Data[1] = self.ManualReinfo_Dock01_B
  l0 = self.box_Multiple_AND_132
  l1 = self.box_ListWriter_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1714742558", "1714742558", "S09M060_Main", "box_Multiple_AND_132.Out", "box_ListWriter_125.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_140_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_182
  l0.CLO = "9223372046153658001"
  l0 = self.box_MultipleOR_140
  l1 = self.box_CLOController_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1788296505", "1788296505", "S09M060_Main", "box_MultipleOR_140.Out", "box_CLOController_182.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_412_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_410()
  l0 = self.box_PlaySequence_v5_412
  l1 = self.box_MultipleOR_410
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|791496719", "791496719", "S09M060_Main", "box_PlaySequence_v5_412.Finished", "box_MultipleOR_410.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_412_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_410()
  l0 = self.box_PlaySequence_v5_412
  l1 = self.box_MultipleOR_410
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|742354205", "742354205", "S09M060_Main", "box_PlaySequence_v5_412.Skipped", "box_MultipleOR_410.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_209
  l0.SoundId = "soundbinary/3985820291.bnk"
  l0 = self.box_Timer_v2_84
  l1 = self.box_PlayDialog_v2_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|352718139", "352718139", "S09M060_Main", "box_Timer_v2_84.TimeElapsed", "box_PlayDialog_v2_209.Start", l0, l1)
  l1:Start()
end
function export:f_box_MoveableEntityController_155_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_318
  l0.List = self.SwitchDoorsList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1292379384", "1292379384", "S09M060_Main", "box_MoveableEntityController_155.MovedBackward", "box_ListForEach_318.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_291_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_293()
  l0 = self.box_MultipleOR_291
  l1 = self.box_OnceOnly_v3_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|355190516", "355190516", "S09M060_Main", "box_MultipleOR_291.Out", "box_OnceOnly_v3_293.In", l0, l1)
  l1:In(1)
end
function export:f_box_Cinema_Zone_Cleanup_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1299491815"
  l0.Activated = self.f_box_MissionMusicController_230_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1608798908", "1608798908", "S09M060_Main", "box_Cinema_Zone_Cleanup_104.Out", "box_MissionMusicController_230.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_293_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1415170756"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_294_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_294_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_294_Out_2
  l0 = self.box_OnceOnly_v3_293
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|721094400", "721094400", "S09M060_Main", "box_OnceOnly_v3_293.Out", "box_Ordered_Output_294.In", l0, l1)
  l1:In()
end
function export:f_box_PoliceTrapped_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PoliceTrapped_68
  l0.TriggerList = {
    "9223372055462905187",
    "9223372055462905189"
  }
  l0.Door = "9223372049526728954"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0 = self.box_PoliceTrapped_66
  l1 = self.box_PoliceTrapped_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1516527168", "1516527168", "S09M060_Main", "box_PoliceTrapped_66.Out", "box_PoliceTrapped_68.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_276_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_277()
  l0 = self.box_AISquadStateMonitor_276
  l1 = self.box_OnceOnly_v3_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2068131492", "2068131492", "S09M060_Main", "box_AISquadStateMonitor_276.CombatState", "box_OnceOnly_v3_277.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_276_CombatStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_277()
  l0 = self.box_AISquadStateMonitor_276
  l1 = self.box_OnceOnly_v3_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|348961746", "348961746", "S09M060_Main", "box_AISquadStateMonitor_276.CombatStateAnyTarget", "box_OnceOnly_v3_277.In", l0, l1)
  l1:In(1)
end
function export:f_box_AISquadStateMonitor_276_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_277()
  l0 = self.box_AISquadStateMonitor_276
  l1 = self.box_OnceOnly_v3_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1271306763", "1271306763", "S09M060_Main", "box_AISquadStateMonitor_276.SearchState", "box_OnceOnly_v3_277.In", l0, l1)
  l1:In(2)
end
function export:f_box_AISquadStateMonitor_276_SearchStateAnyTarget()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_277()
  l0 = self.box_AISquadStateMonitor_276
  l1 = self.box_OnceOnly_v3_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|570629912", "570629912", "S09M060_Main", "box_AISquadStateMonitor_276.SearchStateAnyTarget", "box_OnceOnly_v3_277.In", l0, l1)
  l1:In(3)
end
function export:f_box_MultipleOR_303_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|407068900"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_248_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_248_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_248_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_248_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_248_Out_4
  l0 = self.box_MultipleOR_303
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2038091592", "2038091592", "S09M060_Main", "box_MultipleOR_303.Out", "box_Ordered_Output_248.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_299_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_221()
  l0 = self.box_Timer_v2_299
  l1 = self.box_MultipleOR_221
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|832286156", "832286156", "S09M060_Main", "box_Timer_v2_299.TimeElapsed", "box_MultipleOR_221.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_278_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1350079645"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_95_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_95_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_95_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_95_Out_3
  l0 = self.box_OnceOnly_v3_278
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|810396118", "810396118", "S09M060_Main", "box_OnceOnly_v3_278.Out", "box_Ordered_Output_95.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_64
  l1 = self.box_OnceOnly_v3_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1435452356", "1435452356", "S09M060_Main", "box_MultipleOR_64.Out", "box_OnceOnly_v3_65.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_145_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372050159602314"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1264115691"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_184_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_PlaySequence_v5_145
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|421575244", "421575244", "S09M060_Main", "box_PlaySequence_v5_145.Finished", "box_SecurityCamController_184.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_PlaySequence_v5_145_SPOut__Close_Door_()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_161
  l0.HackableEntity = "9223372047327355816"
  l0 = self.box_PlaySequence_v5_145
  l1 = self.box_HackableController_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1553523067", "1553523067", "S09M060_Main", "box_PlaySequence_v5_145.SPOut", "box_HackableController_v2_161.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_GetNPC_20_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_20
  self.FelonyReinf = l0.NPCList
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alerted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1148248097"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_41_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_41_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_GetNPC_20
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|362480050", "362480050", "S09M060_Main", "box_GetNPC_20.GotNPCList", "box_Compare_Boolean_v2_41.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1619584277"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|682687793", "682687793", "S09M060_Main", "box_OnceOnly_v3_4.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_236_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_412
  l0.SceneEntity = "9223372049667931520"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_PGV-FS_VID/s09_pgv-fs_vid.seq"
  l0 = self.box_MultipleOR_236
  l1 = self.box_PlaySequence_v5_412
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|452482319", "452482319", "S09M060_Main", "box_MultipleOR_236.Out", "box_PlaySequence_v5_412.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_214_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_274()
  l0 = self.box_OnceOnly_v3_214
  l1 = self.box_OnceOnly_v3_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|538884532", "538884532", "S09M060_Main", "box_OnceOnly_v3_214.Out", "box_OnceOnly_v3_274.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_15_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_TriggerMonitor_v2_15
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1841419533", "1841419533", "S09M060_Main", "box_TriggerMonitor_v2_15.Enter", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(5)
end
function export:f_box_Timer_v2_226_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_222
  l0.SceneEntity = "9223372056764727217"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_BeautyShot_SCR/s09_beautyshot_scr.seq"
  l0 = self.box_Timer_v2_226
  l1 = self.box_PlaySequence_v5_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|56859872", "56859872", "S09M060_Main", "box_Timer_v2_226.TimeElapsed", "box_PlaySequence_v5_222.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_69_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|355206254"
  l0.Out = self.f_box_Get_Player_ID_43_Out
  l0 = self.box_MissionLayer_v2_69
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|631070741", "631070741", "S09M060_Main", "box_MissionLayer_v2_69.Loaded", "box_Get_Player_ID_43.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_307_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.YardAccess = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1008228715"
  l0.Out = self.f_box_SetInteger_v2_319_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1823452997", "1823452997", "S09M060_Main", "box_SetInteger_v2_307.Out", "box_SetInteger_v2_319.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_PlaySequence_v5_150_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CollisionController_435()
  l0 = self.box_PlaySequence_v5_150
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|532640514", "532640514", "S09M060_Main", "box_PlaySequence_v5_150.Finished", "box_CollisionController_435.EnableCollisions", l0, l1)
  l1:EnableCollisions()
end
function export:f_box_PlaySequence_v5_150_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372050530363720"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1414063401"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_12_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_150
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2124391154", "2124391154", "S09M060_Main", "box_PlaySequence_v5_150.Started", "box_InteractionScriptController_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_63_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_134()
  l0 = self.box_TriggerMonitor_v2_63
  l1 = self.box_TriggerMonitor_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|855842314", "855842314", "S09M060_Main", "box_TriggerMonitor_v2_63.Disabled", "box_TriggerMonitor_v2_134.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_63_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_63
  self.AIInCell = l0.Collider
  self:OnEnter_box_TriggerMonitor_v2_134()
  l1 = self.box_TriggerMonitor_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1635844944", "1635844944", "S09M060_Main", "box_TriggerMonitor_v2_63.Enabled", "box_TriggerMonitor_v2_134.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_63_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_63
  self.AIInCell = l0.Collider
  l1 = self.box_GetNPC_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|152063634", "152063634", "S09M060_Main", "box_TriggerMonitor_v2_63.Enter", "box_GetNPC_62.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_TriggerMonitor_v2_63_Leave()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_63
  self.AIInCell = l0.Collider
end
function export:f_box_TriggerMonitor_v2_63_Use()
  local l0
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_63
  self.AIInCell = l0.Collider
end
function export:f_box_Simple_Node_288_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|769309390"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_2_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_2_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_2_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|658791088", "658791088", "S09M060_Main", "box_Simple_Node_288.Out", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_Pawn_Health_Controller_350_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Intel_Controller_149
  l0.Entity = self.WitnessNPC
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|298319011", "298319011", "S09M060_Main", "box_Pawn_Health_Controller_350.Out", "box_Intel_Controller_149.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PGTController_v2_396_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_74
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTController_v2_396
  l1 = self.box_CinematicPrep_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|753150273", "753150273", "S09M060_Main", "box_PGTController_v2_396.ScriptedAgentsAdded", "box_CinematicPrep_74.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_83()
  l0 = self.box_Proximity_Monitor_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|2098510934", "2098510934", "S09M060_Main", "box_Ordered_Output_91.Out", "box_Proximity_Monitor_83.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_102()
  l0 = self.box_TriggerMonitor_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1446795945", "1446795945", "S09M060_Main", "box_Ordered_Output_91.Out", "box_TriggerMonitor_v2_102.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_97()
  l0 = self.box_TriggerMonitor_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|106105276", "106105276", "S09M060_Main", "box_Ordered_Output_91.Out", "box_TriggerMonitor_v2_97.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_56
  l0.Position = "9223372050530363720"
  l0.Affiliation = "OPD"
  l0 = self.box_Timer_v2_53
  l1 = self.box_AISquadStateController_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|752499884", "752499884", "S09M060_Main", "box_Timer_v2_53.TimeElapsed", "box_AISquadStateController_56.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_MultipleOR_205_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_QuickPlayerDeath_202()
  l0 = self.box_MultipleOR_205
  l1 = self.box_QuickPlayerDeath_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|837199078", "837199078", "S09M060_Main", "box_MultipleOR_205.Out", "box_QuickPlayerDeath_202.Disable", l0, l1)
  l1:Disable()
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
  l0._name = "box_Simple_Node_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1277858769"
  l0.Out = self.f_box_Simple_Node_46_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1447114737", "1447114737", "S09M060_Main", "box_Simple_Node_42.Out", "box_Simple_Node_46.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_362_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_364
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/3146619725.bnk"
  l0 = self.box_PlayDialog_v2_362
  l1 = self.box_PlayDialog_v2_364
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|229266047", "229266047", "S09M060_Main", "box_PlayDialog_v2_362.Finished", "box_PlayDialog_v2_364.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_188_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateController_199()
  l0 = self.box_Proximity_Monitor_188
  l1 = self.box_AISquadStateController_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|694030983", "694030983", "S09M060_Main", "box_Proximity_Monitor_188.ExitRadius", "box_AISquadStateController_199.ClearSquadBhvParams", l0, l1)
  l1:ClearSquadBhvParams()
end
function export:f_box_MultipleOR_162_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_148
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_162
  l1 = self.box_MissionCheckpointReach_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1248940908", "1248940908", "S09M060_Main", "box_MultipleOR_162.Out", "box_MissionCheckpointReach_148.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_176_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_422
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347134"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1808556268", "1808556268", "S09M060_Main", "box_Compare_Boolean_v2_176.A_is_False", "box_PhoneCommunicationController_422.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_176_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1478441099"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_200_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_200_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1667088576", "1667088576", "S09M060_Main", "box_Compare_Boolean_v2_176.A_is_True", "box_Ordered_Output_200.In", clone, l0)
  l0:In()
end
function export:f_box_Security_Alarm_Panel_Controller_24_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_118
  l0.Entity = "9223372046946050123"
  l0.Entity_AreaRadius = 250
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0 = self.box_Security_Alarm_Panel_Controller_24
  l1 = self.box_Escape_Gameplay_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1395788806", "1395788806", "S09M060_Main", "box_Security_Alarm_Panel_Controller_24.Deactivated", "box_Escape_Gameplay_118.Start", l0, l1)
  l1:Start()
end
function export:f_box_Teleport_To_SpawnPoint_227_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1030482771"
  l0.Out = self.f_box_SetTimeOfDay_146_Out
  l0 = self.box_Teleport_To_SpawnPoint_227
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|242557740", "242557740", "S09M060_Main", "box_Teleport_To_SpawnPoint_227.TeleportDone", "box_SetTimeOfDay_146.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_CLOController_8_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_8
  self.ExitBoat1 = l0.UserID
  l0 = self.box_CLOController_123
  l0.CLO = "9223372046945986844"
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|469373985", "469373985", "S09M060_Main", "box_CLOController_8.OnUserInPlace", "box_CLOController_123.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Player_Proximity_Monitor_353_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 1
  l0 = self.box_Player_Proximity_Monitor_353
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1634419872", "1634419872", "S09M060_Main", "box_Player_Proximity_Monitor_353.Enabled", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_353_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_26
  l0.Pawn = self.WitnessNPC
  l0.CheckNow = 1
  l0 = self.box_Player_Proximity_Monitor_353
  l1 = self.box_PawnHealthMonitor_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1931712695", "1931712695", "S09M060_Main", "box_Player_Proximity_Monitor_353.EnterRadius", "box_PawnHealthMonitor_v3_26.CheckIfDead", l0, l1)
  l1:CheckIfDead()
end
function export:f_box_CLOController_108_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_171
  l0.PGTMissionArea = "9223372046946078163"
  l0 = self.box_CLOController_108
  l1 = self.box_PGTController_v2_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1839300952", "1839300952", "S09M060_Main", "box_CLOController_108.Activated", "box_PGTController_v2_171.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_108_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_108
  self.PoliceChief = l0.UserID
  l0 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.PoliceChief
  l0._graph = self
  l0._name = "box_DeadBodyUnspawnController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|33562047"
  l0.UnspawnAllowed = DummyFunction
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_108
  l1 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1146615949", "1146615949", "S09M060_Main", "box_CLOController_108.OnUserInPlace", "box_DeadBodyUnspawnController_99.PreventUnspawn", l0, l1)
  l1:PreventUnspawn()
end
function export:f_box_CLOController_105_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_105
  self.ManualReinfo_Dock01_A = l0.UserID
  self:OnEnter_box_Multiple_AND_132()
  l1 = self.box_Multiple_AND_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1385177992", "1385177992", "S09M060_Main", "box_CLOController_105.OnUserInPlace", "box_Multiple_AND_132.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CinematicPrep_228_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_143()
  l0 = self.box_CinematicPrep_228
  l1 = self.box_MultipleOR_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1079639530", "1079639530", "S09M060_Main", "box_CinematicPrep_228.PostOut", "box_MultipleOR_143.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_125_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_125
  self.DockReinfos01 = l0.Target
  self:OnEnter_box_ReinforcementSystemController_v2_120()
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|690663586", "690663586", "S09M060_Main", "box_ListWriter_125.Added", "box_ReinforcementSystemController_v2_120.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_ListWriter_125_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_125
  self.DockReinfos01 = l0.Target
end
function export:f_box_ListWriter_125_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_125
  self.DockReinfos01 = l0.Target
end
function export:f_box_AISquadRelationshipController_224_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_Proximity_Monitor_188
  l0.Entity1 = "9223372071551427401"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 230
  l0 = self.box_AISquadRelationshipController_224
  l1 = self.box_Proximity_Monitor_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|315414355", "315414355", "S09M060_Main", "box_AISquadRelationshipController_224.RelationshipSet", "box_Proximity_Monitor_188.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Network_Surfing_Controller_409_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_145
  l0.SceneEntity = "9223372057259514201"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_InformerCell_SCR/s09_informercell_scr.seq"
  l0 = self.box_Network_Surfing_Controller_409
  l1 = self.box_PlaySequence_v5_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1693958610", "1693958610", "S09M060_Main", "box_Network_Surfing_Controller_409.Deactivated", "box_PlaySequence_v5_145.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_AISquadStateMonitor_110()
  local l0
  l0 = self.box_AISquadStateMonitor_110
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_410()
end
function export:OnEnter_box_SecurityCamController_252()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372050159602314"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372050530363720"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|117547907"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_252_EnterForced
  l0.InitialTargetSet = self.f_box_SecurityCamController_252_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_LogicGate_v2_21()
end
function export:OnEnter_box_ReinforcementSystemController_v2_153()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfo03
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|167644931"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_153_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_MultipleOR_143()
end
function export:OnEnter_box_AISquadStateMonitor_193()
  local l0
  l0 = self.box_AISquadStateMonitor_193
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_AISquadStateMonitor_213()
  local l0
  l0 = self.box_AISquadStateMonitor_213
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_Timer_v2_190()
end
function export:OnEnter_box_AISquadStateMonitor_295()
  local l0
  l0 = self.box_AISquadStateMonitor_295
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_AISquadStateMonitor_266()
  local l0
  l0 = self.box_AISquadStateMonitor_266
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_221()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_OnceOnly_v3_215()
end
function export:OnEnter_box_OnceOnly_v3_274()
end
function export:OnEnter_box_ReinforcementSystemController_v2_142()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfos02
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|579420374"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_142_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_HelicopterBhvController_220()
  local l0
  l0 = self.box_HelicopterBhvController_220
  l0.Helicopter = self.TempHeli2
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372071551427320"
  l0.Config = "HelicopterBhvSetup.9223372048779322169"
end
function export:OnEnter_box_OnceOnly_v3_272()
end
function export:OnEnter_box_AISquadStateMonitor_286()
  local l0
  l0 = self.box_AISquadStateMonitor_286
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_VehicleMonitor_v3_240()
  local l0
  l0 = self.box_VehicleMonitor_v3_240
  l0.Vehicle = self.TempHeli2
end
function export:OnEnter_box_OnceOnly_v3_263()
end
function export:OnEnter_box_AISquadStateMonitor_270()
  local l0
  l0 = self.box_AISquadStateMonitor_270
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_OnceOnly_v3_268()
end
function export:OnEnter_box_OnceOnly_v3_300()
end
function export:OnEnter_box_OnceOnly_v3_210()
end
function export:OnEnter_box_MissionZone_38()
  local l0
  l0 = self.box_MissionZone_38
  l0.MissionArea = "9223372047583127226"
  l0.MissionLayer = "S09M060_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_AISquadStateController_199()
  local l0
  l0 = self.box_AISquadStateController_199
  l0.Affiliation = "OPD"
  l0.SearchOverrideParamTimeout = 300
end
function export:OnEnter_box_Multiple_AND_141()
end
function export:OnEnter_box_MultipleOR_147()
end
function export:OnEnter_box_MultipleOR_229()
end
function export:OnEnter_box_MultipleOR_282()
end
function export:OnEnter_box_Multiple_AND_133()
end
function export:OnEnter_box_TriggerMonitor_v2_401()
  local l0
  l0 = self.box_TriggerMonitor_v2_401
  l0.Trigger = "9223372062215966153"
end
function export:OnEnter_box_PawnHealthMonitor_v4_251()
  local l0
  l0 = self.box_PawnHealthMonitor_v4_251
  l0.Pawn = self.sniper
end
function export:OnEnter_box_CollisionController_435()
  local l0
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.WitnessNPC
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_435"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|961319178"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_box_CollisionController_435_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_262()
end
function export:OnEnter_box_Hackable_Monitor_239()
  local l0
  l0 = self.box_Hackable_Monitor_239
  l0.HackableEntity = self.TempHeli2
end
function export:OnEnter_box_ReinforcementSystemController_v2_72()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.FelonyReinf
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|988171456"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_72_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_72_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_box_ReinforcementSystemController_v2_72_ScriptedAgentsAdopted
end
function export:OnEnter_box_AISquadStateMonitor_212()
  local l0
  l0 = self.box_AISquadStateMonitor_212
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_Timer_v2_55()
  local l0
  l0 = self.box_Timer_v2_55
  l0.Seconds = 2
  l0.Loop = 1
end
function export:OnEnter_box_Multiple_AND_197()
end
function export:OnEnter_box_Proximity_Monitor_83()
  local l0
  l0 = self.box_Proximity_Monitor_83
  l0.Entity1 = "9223372071483444953"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
  l0.CheckNow = 1
end
function export:OnEnter_box_AISquadStateMonitor_280()
  local l0
  l0 = self.box_AISquadStateMonitor_280
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_TriggerMonitor_v2_134()
  local l0
  l0 = self.box_TriggerMonitor_v2_134
  l0.Trigger = "9223372062215966153"
end
function export:OnEnter_box_OnceOnly_v3_277()
end
function export:OnEnter_box_MultipleOR_129()
end
function export:OnEnter_box_Multiple_AND_186()
end
function export:OnEnter_box_OnceOnly_v3_265()
end
function export:OnEnter_box_OnceOnly_v3_297()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_259()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_259
  l0.Affiliation = "OPD"
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_97()
  local l0
  l0 = self.box_TriggerMonitor_v2_97
  l0.Trigger = "9223372071483444961"
end
function export:OnEnter_box_OnceOnly_v3_298()
end
function export:OnEnter_box_TriggerMonitor_v2_102()
  local l0
  l0 = self.box_TriggerMonitor_v2_102
  l0.Trigger = "9223372071483444959"
end
function export:OnEnter_box_AISquadStateMonitor_219()
  local l0
  l0 = self.box_AISquadStateMonitor_219
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_OnceOnly_v3_245()
end
function export:OnEnter_box_PawnHealthMonitor_v3_425()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_425
  l0.Pawn = self.PoliceChief
  l0.CheckNow = 1
end
function export:OnEnter_box_AISquadStateMonitor_50()
  local l0
  l0 = self.box_AISquadStateMonitor_50
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_187()
end
function export:OnEnter_box_Timer_v2_189()
end
function export:OnEnter_box_ReinforcementSystemController_v2_120()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfos01
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Main|1559518336"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_120_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_284()
end
function export:OnEnter_box_Mission_End_191()
  local l0
  l0 = self.box_Mission_End_191
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S09M060_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Multiple_AND_132()
end
function export:OnEnter_box_MultipleOR_140()
end
function export:OnEnter_box_MultipleOR_291()
end
function export:OnEnter_box_OnceOnly_v3_293()
end
function export:OnEnter_box_AISquadStateMonitor_276()
  local l0
  l0 = self.box_AISquadStateMonitor_276
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_303()
end
function export:OnEnter_box_OnceOnly_v3_278()
end
function export:OnEnter_box_MultipleOR_64()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:OnEnter_box_MultipleOR_236()
end
function export:OnEnter_box_OnceOnly_v3_214()
end
function export:OnEnter_box_QuickPlayerDeath_202()
end
function export:OnEnter_box_TriggerMonitor_v2_63()
  local l0
  l0 = self.box_TriggerMonitor_v2_63
  l0.Trigger = "9223372049938698627"
  l0.CheckNow = 1
end
function export:OnEnter_box_HelicopterBhvController_168()
  local l0
  l0 = self.box_HelicopterBhvController_168
  l0.Helicopter = self.TempHeli2
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372071551427320"
  l0.Config = "HelicopterBhvSetup.9223372048779322182"
end
function export:OnEnter_box_MultipleOR_205()
end
function export:OnEnter_box_MultipleOR_162()
end
function export:OnEnter_box_Player_Proximity_Monitor_353()
  local l0
  l0 = self.box_Player_Proximity_Monitor_353
  l0.TargetEntity = self.WitnessNPC
  l0.Radius = 6
end
function export:OnEnter_box_AISquadRelationshipController_224()
  local l0
  l0 = self.box_AISquadRelationshipController_224
  l0.Affiliation = "OPD"
  l0.Relationship = "Threat"
end
_compilerVersion = 4
