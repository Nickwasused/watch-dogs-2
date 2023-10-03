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
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/DeadBodyUnspawnController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/HelicopterBhvController.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListFinder.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/Cinematic.QuickPlayerDeath.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060_VID_Dusan911-FS.S09M060_VID_Dusan911-FS_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060-VID_Mosaic04-OS.S09M060-VID_Mosaic04-OS_Main.lua")
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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.lua")
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
  self[49] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[154] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[154]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_154_PostOut
  self[110] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[110]
  l0._graph = self
  l0.Enabled = self.f_110_Enabled
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_110_CombatState
  l0.CombatStateAnyTarget = self.f_110_CombatStateAnyTarget
  l0.SearchState = self.f_110_SearchState
  l0.SearchStateAnyTarget = self.f_110_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[203] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[203]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_203_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_203_InteractionStarted
  l0.InteractionFailed = self.f_203_InteractionFailed
  l0.InteractionFinished = self.f_203_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[410] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[410]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_410_Out
  self[81] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[81]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[47]
  l0._graph = self
  l0.Started = self.f_47_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_47_Interacted
  self[342] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[342]
  l0._graph = self
  l0.Out = self.f_342_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[88] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_88_RewardsExecuted
  self[398] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[398]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_398_Added
  l0.Removed = self.f_398_Removed
  l0.Out = self.f_398_Out
  self[143] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[143]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_143_Out
  self[348] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[348]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_348_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[193] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[193]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_193_CombatState
  l0.CombatStateAnyTarget = self.f_193_CombatStateAnyTarget
  l0.SearchState = self.f_193_SearchState
  l0.SearchStateAnyTarget = self.f_193_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[213] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[213]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_213_CombatState
  l0.CombatStateAnyTarget = self.f_213_CombatStateAnyTarget
  l0.SearchState = self.f_213_SearchState
  l0.SearchStateAnyTarget = self.f_213_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[29] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_29_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[190] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[190]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_190_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[295] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[295]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_295_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_295_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_295_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_295_VanishState
  l0.None = DummyFunction
  self[198] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[198]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_198_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[234] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[234]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_234_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[407] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[407]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_407_Skipped
  l0.Finished = self.f_407_Finished
  self[7] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[33] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = self.f_33_Completed
  l0.NotCompleted = self.f_33_NotCompleted
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[266] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[266]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_266_CombatState
  l0.CombatStateAnyTarget = self.f_266_CombatStateAnyTarget
  l0.SearchState = self.f_266_SearchState
  l0.SearchStateAnyTarget = self.f_266_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[175] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[175]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_175_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[302] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[302]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_302_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[422] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[422]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_422_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_422_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[171] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[171]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_171_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[221] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[221]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_221_Out
  self[122] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[122]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_122_Out
  l0.ResetOut = DummyFunction
  self[148] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[148]
  l0._graph = self
  l0.Out = self.f_148_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[62] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[62]
  l0._graph = self
  l0.GotNPCList = self.f_62_GotNPCList
  self[152] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[152]
  l0._graph = self
  l0.Loaded = self.f_152_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[77] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[77]
  l0._graph = self
  l0.GotNPCList = self.f_77_GotNPCList
  self[93] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[93]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_93_Out
  self[165] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[165]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_165_Added
  l0.Removed = self.f_165_Removed
  l0.Out = self.f_165_Out
  self[130] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[130]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_130_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[119] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[119]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_119_OnUserInPlace
  self[58] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[58]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_58_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[292] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[292]
  l0._graph = self
  l0.Out = self.f_292_Out
  l0.SetTrue = self.f_292_SetTrue
  l0.SetFalse = self.f_292_SetFalse
  l0.Toggled = self.f_292_Toggled
  l0.SetFromBool = self.f_292_SetFromBool
  self[70] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[70]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_70_Out
  self[136] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_136_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[25] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_25_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0.MessageCompleted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[144] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Enabled = self.f_144_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[68] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0.Trapped = DummyFunction
  self[215] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[215]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_215_Out
  l0.ResetOut = DummyFunction
  self[71] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = self.f_71_Out
  l0.Trapped = DummyFunction
  self[131] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[131]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_131_Added
  l0.Removed = self.f_131_Removed
  l0.Out = self.f_131_Out
  self[149] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[149]
  l0._graph = self
  l0.Enabled = self.f_149_Enabled
  l0.Disabled = DummyFunction
  self[117] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[117]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_117_OnUserInPlace
  self[274] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[274]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_274_Out
  l0.ResetOut = DummyFunction
  self[220] = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self[220]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self[128] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[128]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_128_Added
  l0.Removed = self.f_128_Removed
  l0.Out = self.f_128_Out
  self[101] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = self.f_101_Out
  l0.MessageCompleted = DummyFunction
  self[272] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[272]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_272_Out
  l0.ResetOut = DummyFunction
  self[156] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[156]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_156_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[286] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[286]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_286_CombatState
  l0.CombatStateAnyTarget = self.f_286_CombatStateAnyTarget
  l0.SearchState = self.f_286_SearchState
  l0.SearchStateAnyTarget = self.f_286_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[240] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[240]
  l0._graph = self
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
  l0.StateChange = self.f_240_StateChange
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_240_IsUnusable
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
  self[107] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[107]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_107_Out
  l0.ResetOut = DummyFunction
  self[124] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[124]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_124_OnUserInPlace
  self[109] = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self[109]
  l0._graph = self
  l0.Activated = self.f_109_Activated
  l0.Deactivated = DummyFunction
  self[408] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[408]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_408_PostOut
  self[37] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_37_Started
  l0.Finished = DummyFunction
  self[263] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[263]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_263_Out
  l0.ResetOut = DummyFunction
  self[270] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[270]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_270_CombatState
  l0.CombatStateAnyTarget = self.f_270_CombatStateAnyTarget
  l0.SearchState = self.f_270_SearchState
  l0.SearchStateAnyTarget = self.f_270_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[268] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[268]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_268_Out
  l0.ResetOut = DummyFunction
  self[112] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[112]
  l0._graph = self
  l0.GotNPCList = self.f_112_GotNPCList
  self[138] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[138]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_138_OnUserInPlace
  self[300] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[300]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_300_Out
  l0.ResetOut = DummyFunction
  self[210] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[210]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_210_Out
  l0.ResetOut = DummyFunction
  self[126] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[126]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_126_Added
  l0.Removed = self.f_126_Removed
  l0.Out = self.f_126_Out
  self[96] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[96]
  l0._graph = self
  l0.PreOut = self.f_96_PreOut
  l0.PostOut = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = self.f_38_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = self.f_22_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_22_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_22_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[199] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[199]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = self.f_199_SearchOverrideParamsSet
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[363] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[363]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_363_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[141] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[141]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_141_Out
  self[337] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[337]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_337_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[244] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[244]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_244_OnUserInPlace
  self[65] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[65]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_65_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Loaded = self.f_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[217] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[217]
  l0._graph = self
  l0.PreOut = self.f_217_PreOut
  l0.PostOut = DummyFunction
  self[147] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[147]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_147_Out
  self[229] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[229]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_229_Out
  self[282] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[282]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_282_Out
  self[133] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[133]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_133_Out
  self[401] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[401]
  l0._graph = self
  l0.Enabled = self.f_401_Enabled
  l0.Disabled = self.f_401_Disabled
  l0.Enter = self.f_401_Enter
  l0.Leave = self.f_401_Leave
  l0.Use = self.f_401_Use
  self[79] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[251] = cbox:CreateBox("domino/System/PawnHealthMonitor_v4.lua")
  l0 = self[251]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.DamageReceived = DummyFunction
  l0.Killed = self.f_251_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[273] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[273]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_273_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[262] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[262]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_262_Out
  l0.ResetOut = DummyFunction
  self[239] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[239]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_239_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[212] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[212]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_212_CombatState
  l0.CombatStateAnyTarget = self.f_212_CombatStateAnyTarget
  l0.SearchState = self.f_212_SearchState
  l0.SearchStateAnyTarget = self.f_212_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[61] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[61]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_61_OnUserInPlace
  self[55] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_55_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[197] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[197]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_197_Out
  self[195] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[195]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_195_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[83] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[83]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_83_Disabled
  l0.EnterRadius = self.f_83_EnterRadius
  l0.ExitRadius = DummyFunction
  self[116] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[116]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_116_OnUserInPlace
  self[287] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.lua")
  l0 = self[287]
  l0._graph = self
  l0.Enabled = self.f_287_Enabled
  l0.Disabled = self.f_287_Disabled
  l0.FirstDoorExit = self.f_287_FirstDoorExit
  l0.SecondDoorExit = self.f_287_SecondDoorExit
  l0.NoExit = self.f_287_NoExit
  l0.ExitChanged = self.f_287_ExitChanged
  self[52] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[52]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = self.f_52_SquadBhvParamsSet
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[339] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[339]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_339_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[48] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.Trapped = DummyFunction
  self[289] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[289]
  l0._graph = self
  l0.Out = self.f_289_Out
  l0.SetTrue = self.f_289_SetTrue
  l0.SetFalse = self.f_289_SetFalse
  l0.Toggled = self.f_289_Toggled
  l0.SetFromBool = self.f_289_SetFromBool
  self[56] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[56]
  l0._graph = self
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
  self[280] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[280]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_280_VanishState
  l0.None = self.f_280_None
  self[139] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[139]
  l0._graph = self
  l0.Out = self.f_139_Out
  l0.SetTrue = self.f_139_SetTrue
  l0.SetFalse = self.f_139_SetFalse
  l0.Toggled = self.f_139_Toggled
  l0.SetFromBool = self.f_139_SetFromBool
  self[123] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[123]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_123_OnUserInPlace
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[269] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060_VID_Dusan911-FS.S09M060_VID_Dusan911-FS_Main.lua")
  l0 = self[269]
  l0._graph = self
  l0.EndVideo = self.f_269_EndVideo
  self[134] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Enabled = self.f_134_Enabled
  l0.Disabled = self.f_134_Disabled
  l0.Enter = self.f_134_Enter
  l0.Leave = self.f_134_Leave
  l0.Use = self.f_134_Use
  self[44] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_44_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[51] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.SetTrue = self.f_51_SetTrue
  l0.SetFalse = self.f_51_SetFalse
  l0.Toggled = self.f_51_Toggled
  l0.SetFromBool = self.f_51_SetFromBool
  self[5] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_5_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[277] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[277]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_277_Out
  l0.ResetOut = DummyFunction
  self[179] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[179]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_179_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_179_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[129] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[129]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_129_Out
  self[186] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[186]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_186_Out
  self[250] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[250]
  l0._graph = self
  l0.Loaded = self.f_250_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[265] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[265]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_265_Out
  l0.ResetOut = DummyFunction
  self[475] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[475]
  l0._graph = self
  l0.Out = self.f_475_Out
  l0.SetTrue = self.f_475_SetTrue
  l0.SetFalse = self.f_475_SetFalse
  l0.Toggled = self.f_475_Toggled
  l0.SetFromBool = self.f_475_SetFromBool
  self[297] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[297]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_297_Out
  l0.ResetOut = DummyFunction
  self[259] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[259]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_259_None
  l0.Reinforcing = self.f_259_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[97] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[97]
  l0._graph = self
  l0.Enabled = self.f_97_Enabled
  l0.Disabled = self.f_97_Disabled
  l0.Enter = self.f_97_Enter
  l0.Leave = self.f_97_Leave
  l0.Use = self.f_97_Use
  self[298] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[298]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_298_Out
  l0.ResetOut = DummyFunction
  self[204] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[204]
  l0._graph = self
  l0.Out = self.f_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[102] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Enabled = self.f_102_Enabled
  l0.Disabled = self.f_102_Disabled
  l0.Enter = self.f_102_Enter
  l0.Leave = self.f_102_Leave
  l0.Use = self.f_102_Use
  self[219] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[219]
  l0._graph = self
  l0.Enabled = self.f_219_Enabled
  l0.Disabled = self.f_219_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_219_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_219_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_219_VanishState
  l0.None = DummyFunction
  self[67] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_67_Added
  l0.Removed = self.f_67_Removed
  l0.Out = self.f_67_Out
  self[245] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[245]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_245_Out
  l0.ResetOut = DummyFunction
  self[178] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[178]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = self.f_178_OccludableSet
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[157] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[157]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_157_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[425] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[425]
  l0._graph = self
  l0.Enabled = self.f_425_Enabled
  l0.Disabled = self.f_425_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_425_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[50] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = DummyFunction
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_50_VanishState
  l0.None = self.f_50_None
  self[127] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[174] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.TwoExitsMonitor.lua")
  l0 = self[174]
  l0._graph = self
  l0.Enabled = self.f_174_Enabled
  l0.Disabled = self.f_174_Disabled
  l0.FirstDoorExit = self.f_174_FirstDoorExit
  l0.SecondDoorExit = self.f_174_SecondDoorExit
  l0.NoExit = self.f_174_NoExit
  l0.ExitChanged = self.f_174_ExitChanged
  self[237] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[237]
  l0._graph = self
  l0.Out = self.f_237_Out
  l0.SetTrue = self.f_237_SetTrue
  l0.SetFalse = self.f_237_SetFalse
  l0.Toggled = self.f_237_Toggled
  l0.SetFromBool = self.f_237_SetFromBool
  self[222] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[222]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_222_Skipped
  l0.Finished = self.f_222_Finished
  self[187] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[187]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_187_Out
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[26] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_26_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = self.f_26_DeadChecked
  l0.HealthChecked = DummyFunction
  self[305] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[305]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[194] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[194]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_194_OnUserInPlace
  self[189] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[189]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_189_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[182] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[182]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_182_OnUserInPlace
  self[346] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[346]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[364] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[364]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[279] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[279]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_279_Done
  self[31] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060-VID_Mosaic04-OS.S09M060-VID_Mosaic04-OS_Main.lua")
  l0 = self[31]
  l0._graph = self
  l0.EndVideo = self.f_31_EndVideo
  l0.VideoStarted = self.f_31_VideoStarted
  self[318] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[318]
  l0._graph = self
  l0.Started = self.f_318_Started
  l0.Stopped = self.f_318_Stopped
  l0.ForEach = self.f_318_ForEach
  l0.GotNext = self.f_318_GotNext
  l0.EndOfList = self.f_318_EndOfList
  l0.GotFirst = DummyFunction
  self[355] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[355]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_355_Output_0
  l0.Output[1] = self.f_355_Output_1
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[115] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[115]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_115_OnUserInPlace
  self[209] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[209]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[76] = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self[76]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_76_Stopped
  l0.Finished = DummyFunction
  self[223] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[223]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_223_Out
  self[114] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[114]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_114_OnUserInPlace
  self[118] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[118]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_118_Escaped
  l0.LeftArea = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[347] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[347]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_347_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.MessageCompleted = DummyFunction
  self[284] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[284]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_284_Out
  l0.ResetOut = DummyFunction
  self[74] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[74]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_74_PostOut
  self[233] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[233]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[191] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[191]
  l0._graph = self
  self[132] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[132]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_132_Out
  self[140] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[140]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_140_Out
  self[412] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[412]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_412_Skipped
  l0.Finished = self.f_412_Finished
  self[84] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[291] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[291]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_291_Out
  self[293] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[293]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_293_Out
  l0.ResetOut = DummyFunction
  self[66] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M060/S09M060.PoliceTrapped.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.Trapped = DummyFunction
  self[276] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[276]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_276_CombatState
  l0.CombatStateAnyTarget = self.f_276_CombatStateAnyTarget
  l0.SearchState = self.f_276_SearchState
  l0.SearchStateAnyTarget = self.f_276_SearchStateAnyTarget
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[161] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[161]
  l0._graph = self
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
  self[303] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[303]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_303_Out
  self[299] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[299]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_299_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[278] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[278]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_278_Out
  l0.ResetOut = DummyFunction
  self[64] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_64_Out
  self[145] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[145]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Close Door"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_145_Finished
  l0.SPOut["Close Door"] = self.f_145_SPOut__Close_Door_
  self[20] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[20]
  l0._graph = self
  l0.GotNPCList = self.f_20_GotNPCList
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 6}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[236] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[236]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_236_Out
  self[214] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[214]
  l0._graph = self
  l0._DynamicAnchors = {In = 4}
  l0.Out = self.f_214_Out
  l0.ResetOut = DummyFunction
  self[15] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_15_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[111] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[202] = cbox:CreateBox("domino/Library/common/Cinematic.QuickPlayerDeath.lua")
  l0 = self[202]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PlayerDead = DummyFunction
  self[226] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[226]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_226_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[382] = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self[382]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self[69] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Loaded = self.f_69_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[150] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[150]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Witness"}
  }
  l0.Started = self.f_150_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_150_Finished
  self[63] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0.Enabled = self.f_63_Enabled
  l0.Disabled = self.f_63_Disabled
  l0.Enter = self.f_63_Enter
  l0.Leave = self.f_63_Leave
  l0.Use = self.f_63_Use
  self[396] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[396]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_396_ScriptedAgentsAdded
  self[53] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[168] = cbox:CreateBox("domino/System/HelicopterBhvController.lua")
  l0 = self[168]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  self[205] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[205]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_205_Out
  self[362] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[362]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_362_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[188] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[188]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_188_ExitRadius
  self[162] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[162]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_162_Out
  self[24] = cbox:CreateBox("domino/System/SecurityAlarmPanelController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_24_Deactivated
  self[227] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[227]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_227_TeleportDone
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[353] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[353]
  l0._graph = self
  l0.Enabled = self.f_353_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_353_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[108] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[108]
  l0._graph = self
  l0.Activated = self.f_108_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_108_OnUserInPlace
  self[105] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_105_OnUserInPlace
  self[228] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[228]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_228_PostOut
  self[125] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[125]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_125_Added
  l0.Removed = self.f_125_Removed
  l0.Out = self.f_125_Out
  self[224] = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self[224]
  l0._graph = self
  l0.RelationshipSet = self.f_224_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self[409] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[409]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_409_Deactivated
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
  l0 = self[1]
  l0.LayerName = "S09M060_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[152]
  l0.LayerName = "S09M060_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[250]
  l0.LayerName = "S09M060_Main"
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:en_191()
  l0 = self[191]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[69]
  l0.LayerName = "S09M060_Main"
  l0:Load()
end
function export:f_11_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = self[337]
  l0.User = self.PoliceChief
  l0:UnspawnUser()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[284]
  l0:In(0)
end
function export:f_154_PostOut()
  local l0
  self = self._graph
  l0 = self[162]
  l0:Input(0)
end
function export:f_110_CombatState()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(0)
end
function export:f_110_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(1)
end
function export:f_110_Enabled()
  local l0
  self = self._graph
  self:en_353()
  l0 = self[353]
  l0:Enable()
end
function export:f_110_SearchState()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(2)
end
function export:f_110_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[93]
  l0:Input(3)
end
function export:f_203_Enabled()
  local l0
  self = self._graph
  self:en_435()
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0:DisableCollisions()
end
function export:f_203_InteractionFailed()
  local l0
  self = self._graph
  l0 = self[205]
  l0:Input(0)
end
function export:f_203_InteractionFinished()
  local l0
  self = self._graph
  l0 = self[205]
  l0:Input(1)
end
function export:f_203_InteractionStarted()
  local l0
  self = self._graph
  l0 = self[202]
  l0:Enable()
end
function export:f_410_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Mission = "MissionList.9223372045954192530"
  l0:CheckCompletion()
end
function export:f_47_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_257_Out
  l0:In()
end
function export:f_47_Started()
  local l0
  self = self._graph
  l0 = self[203]
  l0.InteractionScriptEntity = "9223372050530363720"
  l0:Enable()
end
function export:f_10_Removed()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_104_Out
  l0:CleanZone()
end
function export:f_342_Out()
  local l0
  self = self._graph
  l0 = self[112]
  l0.Group = "BadCops"
  l0:GetEnemiesAlive()
end
function export:f_158_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0:ShowLastObjectiveComplete()
end
function export:f_73_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = self[265]
  l0:In(1)
end
function export:f_252_EnterForced()
  local l0
  self = self._graph
  l0 = self[179]
  l0.Seconds = 1
  l0:Start()
end
function export:f_252_InitialTargetSet()
  local l0
  self = self._graph
  self:en_252()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[355]
  l0:In()
end
function export:f_88_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[299]
  l0.Seconds = 8
  l0:Start()
end
function export:f_180_Out_0()
  local l0
  self = self._graph
  l0 = self[175]
  l0:Start()
end
function export:f_180_Out_1()
  local l0
  self = self._graph
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
  l0._DynamicAnchors = {HackCategoryType = 6}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_10_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_398_Added()
  local l0
  self = self._graph
  l0 = self[398]
  self.ScriptedAgents = l0.Target
  l0 = self[396]
  l0.PGTMissionArea = "9223372046946078163"
  l0.AgentList = self.ScriptedAgents
  l0:AddScriptedAgents()
end
function export:f_398_Out()
  local l0
  self = self._graph
  l0 = self[398]
  self.ScriptedAgents = l0.Target
end
function export:f_398_Removed()
  local l0
  self = self._graph
  l0 = self[398]
  self.ScriptedAgents = l0.Target
end
function export:f_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_78_Out
  l0:In()
end
function export:f_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_196_Out_0
  l0.Out[1] = self.f_196_Out_1
  l0:In()
end
function export:f_153_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_153()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_143_Out()
  local l0
  self = self._graph
  l0 = self[273]
  l0.HackableEntity = "9223372048405498911"
  l0:DisableHack()
end
function export:f_348_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[346]
  l0.User = self.TempHeli3
  l0:UnspawnUser()
end
function export:f_193_CombatState()
  local l0
  self = self._graph
  l0 = self[210]
  l0:In(0)
end
function export:f_193_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[210]
  l0:In(1)
end
function export:f_193_SearchState()
  local l0
  self = self._graph
  l0 = self[210]
  l0:In(2)
end
function export:f_193_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[210]
  l0:In(3)
end
function export:f_213_CombatState()
  local l0
  self = self._graph
  l0 = self[215]
  l0:In(0)
end
function export:f_213_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[215]
  l0:In(1)
end
function export:f_213_SearchState()
  local l0
  self = self._graph
  l0 = self[215]
  l0:In(2)
end
function export:f_213_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[215]
  l0:In(3)
end
function export:f_29_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[96]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_190_TimeElapsed()
  local l0
  self = self._graph
  self:en_168()
  l0 = self[168]
  l0:Start()
end
function export:f_160_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_159_Out
  l0:In()
end
function export:f_160_A_is_True()
  local l0
  self = self._graph
  l0 = self[154]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = self[48]
  l0.TriggerList = {
    "9223372055462905168",
    "9223372055462905179"
  }
  l0.Door = "9223372049526730619"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0:In()
end
function export:f_295_CombatState()
  local l0
  self = self._graph
  l0 = self[300]
  l0:In(1)
end
function export:f_295_Disabled()
  local l0
  self = self._graph
  l0 = self[263]
  l0:In(1)
end
function export:f_295_SearchState()
  local l0
  self = self._graph
  l0 = self[298]
  l0:In(1)
end
function export:f_295_VanishState()
  local l0
  self = self._graph
  l0 = self[297]
  l0:In(1)
end
function export:f_198_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Input = self.Chopper
  l0.Data[0] = self.TempHeli2
  l0.Data[1] = self.sniper
  l0:Add()
end
function export:f_234_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[303]
  l0:Input(1)
end
function export:f_407_Finished()
  local l0
  self = self._graph
  l0 = self[236]
  l0:Input(1)
end
function export:f_407_Skipped()
  local l0
  self = self._graph
  l0 = self[236]
  l0:Input(0)
end
function export:f_7_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(3)
end
function export:f_33_Completed()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(0)
end
function export:f_33_NotCompleted()
  local l0
  self = self._graph
  l0 = self[269]
  l0:In()
end
function export:f_266_CombatState()
  local l0
  self = self._graph
  l0 = self[268]
  l0:In(0)
end
function export:f_266_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[268]
  l0:In(1)
end
function export:f_266_SearchState()
  local l0
  self = self._graph
  l0 = self[268]
  l0:In(2)
end
function export:f_266_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[268]
  l0:In(3)
end
function export:f_175_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[382]
  l0.TargetEntity = self.WitnessNPC
  l0.Anim = "move/decisiontrees/scr/worldstories/s09/s09_m060_clo-guard-locked-up-loop.move.bin"
  l0.Looping = 1
  l0:Start()
end
function export:f_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_232_Out
  l0:In()
end
function export:f_302_Deactivated()
  local l0
  self = self._graph
  l0 = self[197]
  l0:Condition(0)
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.TargetEntity = self.WitnessNPC
  l0.Anim = "move/decisiontrees/scr/worldstories/s09/s09_m060_clo-guard-locked-up-loop.move.bin"
  l0.Looping = 1
  l0:Stop()
end
function export:f_422_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[187]
  l0:Input(1)
end
function export:f_422_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[147]
  l0:Input(0)
end
function export:f_171_AllSpawned()
  local l0
  self = self._graph
  l0 = self[186]
  l0:Condition(0)
end
function export:f_221_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Entity = "9223372057657279051"
  l0.SoundId = "soundbinary/2279351574.bnk"
  l0:Play()
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_211_Out
  l0:In()
end
function export:f_183_Out_0()
  local l0
  self = self._graph
  self:en_220()
  l0 = self[220]
  l0:Stop()
end
function export:f_183_Out_1()
  local l0
  self = self._graph
  l0 = self[190]
  l0:Start()
end
function export:f_183_Out_2()
  local l0
  self = self._graph
  l0 = self[300]
  l0:Reset()
end
function export:f_148_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_180_Out_0
  l0.Out[1] = self.f_180_Out_1
  l0:In()
end
function export:f_62_GotNPCList()
  local l0
  self = self._graph
  l0 = self[62]
  self.AliveNPCs = l0.NPCList
  l0 = self[165]
  l0.Input = self.AliveNPCs
  l0.Data[0] = self.WitnessNPC
  l0:Remove()
end
function export:f_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_216_Out
  l0:In()
end
function export:f_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = self.f_158_Out
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StopReinforcing()
end
function export:f_135_Out_2()
  local l0
  self = self._graph
  l0 = self[111]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[18]
  l0:Input(0)
end
function export:f_152_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_151_Out
  l0:In()
end
function export:f_77_GotNPCList()
  local l0
  self = self._graph
  l0 = self[77]
  self.FelonyReinf = l0.NPCList
  self:en_259()
  l0 = self[259]
  l0:Enable()
end
function export:f_275_Out_0()
  local l0
  self = self._graph
  self:en_213()
  l0 = self[213]
  l0:Enable()
end
function export:f_275_Out_1()
  local l0
  self = self._graph
  self:en_276()
  l0 = self[276]
  l0:Enable()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[293]
  l0:In(0)
end
function export:f_165_Added()
  local l0
  self = self._graph
  l0 = self[165]
  self.AliveNPCs = l0.Target
end
function export:f_165_Out()
  local l0
  self = self._graph
  l0 = self[165]
  self.AliveNPCs = l0.Target
end
function export:f_165_Removed()
  local l0
  self = self._graph
  l0 = self[165]
  self.AliveNPCs = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListFinder.lua")]
  l0.Input = self.AliveNPCs
  l0.Data = self.AIInCell
  l0.Name = nil
  l0._graph = self
  l0.Found = self.f_23_Found
  l0.NotFound = DummyFunction
  l0:Find()
end
function export:f_185_Equal()
  local l0
  self = self._graph
  l0 = self[129]
  l0:Input(1)
end
function export:f_130_TimeElapsed()
  local l0
  self = self._graph
  self:en_252()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetInitialTarget()
end
function export:f_163_Out_0()
  local l0
  self = self._graph
  self:en_168()
  l0 = self[168]
  l0:Stop()
end
function export:f_163_Out_1()
  local l0
  self = self._graph
  l0 = self[189]
  l0:Start()
end
function export:f_163_Out_2()
  local l0
  self = self._graph
  l0 = self[298]
  l0:Reset()
end
function export:f_248_Out_0()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Disable()
end
function export:f_248_Out_1()
  local l0
  self = self._graph
  self:en_240()
  l0 = self[240]
  l0:Disable()
end
function export:f_248_Out_2()
  local l0
  self = self._graph
  self:en_219()
  l0 = self[219]
  l0:Disable()
end
function export:f_248_Out_3()
  local l0
  self = self._graph
  self:en_251()
  l0 = self[251]
  l0:Disable()
end
function export:f_248_Out_4()
  local l0
  self = self._graph
  self:en_295()
  l0 = self[295]
  l0:Disable()
end
function export:f_119_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[119]
  self.ManualReinfo_Dock03_A = l0.UserID
  l0 = self[141]
  l0:Condition(0)
end
function export:f_58_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Start()
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:In()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Start()
end
function export:f_281_Out_0()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Enable()
end
function export:f_281_Out_1()
  local l0
  self = self._graph
  self:en_280()
  l0 = self[280]
  l0:Enable()
end
function export:f_292_Out()
  local l0
  self = self._graph
  l0 = self[292]
  self.DoorSwitchPath = l0.Target
end
function export:f_292_SetFalse()
  local l0
  self = self._graph
  l0 = self[292]
  self.DoorSwitchPath = l0.Target
end
function export:f_292_SetFromBool()
  local l0
  self = self._graph
  l0 = self[292]
  self.DoorSwitchPath = l0.Target
end
function export:f_292_SetTrue()
  local l0
  self = self._graph
  l0 = self[292]
  self.DoorSwitchPath = l0.Target
end
function export:f_292_Toggled()
  local l0
  self = self._graph
  l0 = self[292]
  self.DoorSwitchPath = l0.Target
end
function export:f_92_Shown()
  local l0
  self = self._graph
  self:en_191()
  l0 = self[191]
  l0:End()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = self[408]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_136_HackForced()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(0)
end
function export:f_25_HackForced()
  local l0
  self = self._graph
  l0 = self[130]
  l0.Seconds = 2
  l0:Start()
end
function export:f_285_Out_0()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Disable()
end
function export:f_285_Out_1()
  local l0
  self = self._graph
  self:en_280()
  l0 = self[280]
  l0:Disable()
end
function export:f_285_Out_2()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Start()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:f_18_Out()
  local l0
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
  l0.Out = self.f_75_Out
  l0:In()
end
function export:f_103_Out_0()
  local l0
  self = self._graph
  l0 = self[116]
  l0.CLO = "9223372071483444964"
  l0:Activate()
end
function export:f_103_Out_1()
  local l0
  self = self._graph
  l0 = self[115]
  l0.CLO = "9223372071483444965"
  l0:Activate()
end
function export:f_103_Out_2()
  local l0
  self = self._graph
  self:en_212()
  l0 = self[212]
  l0:Disable()
end
function export:f_103_Out_3()
  local l0
  self = self._graph
  self:en_270()
  l0 = self[270]
  l0:Disable()
end
function export:f_144_Enabled()
  local l0
  self = self._graph
  l0 = self[122]
  l0:In(0)
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[71]
  l0.TriggerList = {
    "9223372055462905201",
    "9223372055462905217"
  }
  l0.Door = "9223372049526730292"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0:In()
end
function export:f_215_Out()
  local l0
  self = self._graph
  l0 = self[278]
  l0:In(0)
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[144]
  l0.HackableEntityList = self.CellDoorsList
  l0:EnableHack()
end
function export:f_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[289]
  l0:True()
end
function export:f_159_Out()
  local l0
  self = self._graph
  l0 = self[162]
  l0:Input(1)
end
function export:f_131_Added()
  local l0
  self = self._graph
  l0 = self[131]
  self.DockReinfo03 = l0.Target
  self:en_153()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AddScriptedAgents()
end
function export:f_131_Out()
  local l0
  self = self._graph
  l0 = self[131]
  self.DockReinfo03 = l0.Target
end
function export:f_131_Removed()
  local l0
  self = self._graph
  l0 = self[131]
  self.DockReinfo03 = l0.Target
end
function export:f_149_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_160_A_is_True
  l0.A_is_False = self.f_160_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_117_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[117]
  self.ManualReinfo_Dock03_B = l0.UserID
  l0 = self[141]
  l0:Condition(1)
end
function export:f_274_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_103_Out_0
  l0.Out[1] = self.f_103_Out_1
  l0.Out[2] = self.f_103_Out_2
  l0.Out[3] = self.f_103_Out_3
  l0:In()
end
function export:f_142_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_142()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_128_Added()
  local l0
  self = self._graph
  l0 = self[128]
  self.DockReinfos02 = l0.Target
  self:en_142()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AddScriptedAgents()
end
function export:f_128_Out()
  local l0
  self = self._graph
  l0 = self[128]
  self.DockReinfos02 = l0.Target
end
function export:f_128_Removed()
  local l0
  self = self._graph
  l0 = self[128]
  self.DockReinfos02 = l0.Target
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.PoliceChief
  l0._graph = self
  l0.UnspawnAllowed = self.f_11_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:AllowUnspawn()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[79]
  l0.CheckpointList = "CheckPoint_2"
  l0:In()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053009838667"
  l0:StartCommunication()
end
function export:f_272_Out()
  local l0
  self = self._graph
  l0 = self[274]
  l0:In(1)
end
function export:f_404_Equal()
  local l0
  self = self._graph
  self:en_401()
  l0 = self[401]
  l0:Disable()
end
function export:f_156_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[228]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_286_CombatState()
  local l0
  self = self._graph
  l0 = self[291]
  l0:Input(0)
end
function export:f_286_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[291]
  l0:Input(1)
end
function export:f_286_SearchState()
  local l0
  self = self._graph
  l0 = self[291]
  l0:Input(2)
end
function export:f_286_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[291]
  l0:Input(3)
end
function export:f_90_Out_0()
  local l0
  self = self._graph
  l0 = self[105]
  l0.CLO = "9223372071483444951"
  l0:Activate()
end
function export:f_90_Out_1()
  local l0
  self = self._graph
  l0 = self[114]
  l0.CLO = "9223372071483444952"
  l0:Activate()
end
function export:f_90_Out_2()
  local l0
  self = self._graph
  self:en_193()
  l0 = self[193]
  l0:Disable()
end
function export:f_90_Out_3()
  local l0
  self = self._graph
  self:en_266()
  l0 = self[266]
  l0:Disable()
end
function export:f_232_Out()
  local l0
  self = self._graph
  self:en_224()
  l0 = self[224]
  l0:ResetRelationship()
end
function export:f_240_IsUnusable()
  local l0
  self = self._graph
  l0 = self[245]
  l0:In(2)
end
function export:f_240_StateChange()
  local l0
  self = self._graph
  l0 = self[240]
  self.ChopperState = l0.StateID
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.ChopperState
  l0.B = 2
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_246_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PoliceChiefDead
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_87_A_is_True
  l0.A_is_False = self.f_87_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_124_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[124]
  self.TempHeli2 = l0.UserID
  l0 = self[302]
  l0.CLO = "9223372055037865727"
  l0:Deactivate()
end
function export:f_109_Activated()
  local l0
  self = self._graph
  l0 = self[305]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_408_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_92_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_231_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372061502821908"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_32_CollisionsDisabled
  l0.Out = DummyFunction
  l0:DisableCollisions()
end
function export:f_231_Out_1()
  local l0
  self = self._graph
  self:en_199()
  l0 = self[199]
  l0:SetSearchOverrideParams()
end
function export:f_37_Started()
  local l0
  self = self._graph
  l0 = self[237]
  l0:True()
end
function export:f_263_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_249_Out_0
  l0.Out[1] = self.f_249_Out_1
  l0:In()
end
function export:f_270_CombatState()
  local l0
  self = self._graph
  l0 = self[272]
  l0:In(0)
end
function export:f_270_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[272]
  l0:In(1)
end
function export:f_270_SearchState()
  local l0
  self = self._graph
  l0 = self[272]
  l0:In(2)
end
function export:f_270_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[272]
  l0:In(3)
end
function export:f_268_Out()
  local l0
  self = self._graph
  l0 = self[262]
  l0:In(1)
end
function export:f_60_A_is_True()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Stop()
end
function export:f_112_GotNPCList()
  local l0
  self = self._graph
  l0 = self[112]
  self.NPCsPGTList = l0.NPCList
  l0 = self[398]
  l0.Input = self.ScriptedAgents
  l0.Data[0] = self.PoliceChief
  l0:Add()
end
function export:f_138_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[138]
  self.ExitBoat3 = l0.UserID
  l0 = self[244]
  l0.CLO = "9223372053497402039"
  l0:Activate()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_401()
  l0 = self[401]
  l0:Enable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Trigger = "9223372071352905752"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Trigger = "9223372071352905754"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_2_Out_3()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Trigger = "9223372071352905756"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_2_Out_4()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Trigger = "9223372071352905758"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_2_Out_5()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Trigger = "9223372071352905760"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_300_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_163_Out_0
  l0.Out[1] = self.f_163_Out_1
  l0.Out[2] = self.f_163_Out_2
  l0:In()
end
function export:f_210_Out()
  local l0
  self = self._graph
  l0 = self[262]
  l0:In(0)
end
function export:f_126_Added()
  local l0
  self = self._graph
  l0 = self[126]
  self.AddHelper = l0.Target
  l0 = self[127]
  l0.PGTMissionArea = "9223372046946078163"
  l0.AgentList = self.AddHelper
  l0:AddScriptedAgents()
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = self[126]
  self.AddHelper = l0.Target
end
function export:f_126_Removed()
  local l0
  self = self._graph
  l0 = self[126]
  self.AddHelper = l0.Target
end
function export:f_96_PreOut()
  local l0
  self = self._graph
  l0 = self[204]
  l0.Entity = "9223372057657279051"
  l0.SoundId = "soundbinary/618878867.bnk"
  l0:Play()
end
function export:f_38_Enabled()
  local l0
  self = self._graph
  l0 = self[195]
  l0.HackableEntity = self.OpenAllCells
  l0:ForceHack()
end
function export:f_22_Enabled()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Enable()
end
function export:f_22_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = self[292]
  l0:False()
end
function export:f_22_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = self[139]
  l0:True()
end
function export:f_199_SearchOverrideParamsSet()
  local l0
  self = self._graph
  self:en_224()
  l0 = self[224]
  l0:SetRelationship()
end
function export:f_100_Equal()
  local l0
  self = self._graph
  self:en_102()
  l0 = self[102]
  l0:Disable()
end
function export:f_363_Finished()
  local l0
  self = self._graph
  self:en_353()
  l0 = self[353]
  l0:Disable()
end
function export:f_141_Out()
  local l0
  self = self._graph
  l0 = self[131]
  l0.Input = self.DockReinfo03
  l0.Data[0] = self.ManualReinfo_Dock03_A
  l0.Data[1] = self.ManualReinfo_Dock03_B
  l0:Add()
end
function export:f_337_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[339]
  l0.User = self.Helper
  l0:UnspawnUser()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_91_Out_0
  l0.Out[1] = self.f_91_Out_1
  l0.Out[2] = self.f_91_Out_2
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In()
end
function export:f_45_CollisionsEnabled()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Enable()
end
function export:f_244_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[244]
  self.ExitBoat4 = l0.UserID
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[77]
  l0.Affiliation = "OPD"
  l0:GetEnemiesAlive()
end
function export:f_1_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_217_PreOut()
  local l0
  self = self._graph
  l0 = self[407]
  l0.SceneEntity = "9223372047779474443"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_911Celebration_CIN/s09_911celebration_cin.seq"
  l0:Start()
end
function export:f_147_Out()
  local l0
  self = self._graph
  l0 = self[108]
  l0.CLO = "9223372046153684541"
  l0:Activate()
end
function export:f_229_Out()
  local l0
  self = self._graph
  l0 = self[156]
  l0.Seconds = 1
  l0:Start()
end
function export:f_82_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M060.Objectives.Objective090",
    item = "Objective",
    id = "483970"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_82_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372046945986749"
  l0:Activate()
end
function export:f_282_Out()
  local l0
  self = self._graph
  l0 = self[284]
  l0:In(1)
end
function export:f_133_Out()
  local l0
  self = self._graph
  l0 = self[128]
  l0.Input = self.DockReinfos02
  l0.Data[0] = self.ManualReinfo_Dock02_A
  l0.Data[1] = self.ManualReinfo_Dock02_B
  l0:Add()
end
function export:f_401_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_401_Enabled()
  local l0
  self = self._graph
  l0 = self[401]
  self.LeavePrison = l0.Collider
end
function export:f_401_Enter()
  local l0
  self = self._graph
  l0 = self[401]
  self.LeavePrison = l0.Collider
end
function export:f_401_Leave()
  local l0
  self = self._graph
  l0 = self[401]
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.LeavePrison
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_404_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_401_Use()
  local l0
  self = self._graph
  l0 = self[401]
  self.LeavePrison = l0.Collider
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[279]
  l0.SpawnPoint = "9223372048540777848"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0:In()
end
function export:f_242_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_251_Killed()
  local l0
  self = self._graph
  l0 = self[245]
  l0:In(3)
end
function export:f_247_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:AdoptScriptedAgents()
end
function export:f_247_Out_1()
  local l0
  self = self._graph
  l0 = self[303]
  l0:Input(0)
end
function export:f_273_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049526728715"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_155_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveBackward()
end
function export:f_435_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372061502821908"
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_45_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0:EnableCollisions()
end
function export:f_262_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_90_Out_0
  l0.Out[1] = self.f_90_Out_1
  l0.Out[2] = self.f_90_Out_2
  l0.Out[3] = self.f_90_Out_3
  l0:In()
end
function export:f_239_HackSuccess()
  local l0
  self = self._graph
  l0 = self[245]
  l0:In(0)
end
function export:f_72_ReinforcingStarted()
  local l0
  self = self._graph
  self:en_72()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AddScriptedAgents()
end
function export:f_72_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_72()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_72_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_80_Out_0
  l0.Out[1] = self.f_80_Out_1
  l0:In()
end
function export:f_212_CombatState()
  local l0
  self = self._graph
  l0 = self[214]
  l0:In(0)
end
function export:f_212_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[214]
  l0:In(1)
end
function export:f_212_SearchState()
  local l0
  self = self._graph
  l0 = self[214]
  l0:In(2)
end
function export:f_212_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[214]
  l0:In(3)
end
function export:f_61_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[61]
  self.Helper = l0.UserID
  l0 = self[126]
  l0.Input = self.AddHelper
  l0.Data[0] = self.Helper
  l0:Add()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Input(1)
end
function export:f_23_Found()
  local l0
  self = self._graph
  l0 = self[129]
  l0:Input(0)
end
function export:f_319_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.WardenAccess = l0.Target
  l0 = self[174]
  l0.FirstDoor = self.YardDoor1
  l0.SecondDoor = self.YardDoor2
  l0.CurrentExitNo = self.YardAccess
  l0:Enable()
end
function export:f_55_Stopped()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Input(1)
end
function export:f_55_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alerted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_60_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_197_Out()
  local l0
  self = self._graph
  l0 = self[198]
  l0.Vehicle = self.TempHeli2
  l0.Pawn = self.sniper
  l0.Seat = "RearPassengerRight"
  l0:Assign()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:In()
end
function export:f_192_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_296_Out_0
  l0.Out[1] = self.f_296_Out_1
  l0:In()
end
function export:f_146_Out()
  local l0
  self = self._graph
  l0 = self[226]
  l0:Start()
end
function export:f_87_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_253_Out
  l0:In()
end
function export:f_87_A_is_True()
  local l0
  self = self._graph
  l0 = self[88]
  l0.ItemDB = "Items.9223372059111819879"
  l0:ExecuteRewards()
end
function export:f_195_HackForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372049734221024"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
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
  l0.Out = self.f_403_Out
  l0:MoveBackward()
end
function export:f_253_Out()
  local l0
  self = self._graph
  l0 = self[221]
  l0:Input(2)
end
function export:f_83_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_267_Out_0
  l0.Out[1] = self.f_267_Out_1
  l0:In()
end
function export:f_83_EnterRadius()
  local l0
  self = self._graph
  self:en_83()
  l0 = self[83]
  l0:Disable()
end
function export:f_116_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[116]
  self.ManualReinfo_Dock02_A = l0.UserID
  l0 = self[133]
  l0:Condition(0)
end
function export:f_287_Disabled()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
end
function export:f_287_Enabled()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
  l0 = self[22]
  l0.MoveableEntity = self.HallwayDoorPC
  l0:Enable()
end
function export:f_287_ExitChanged()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
end
function export:f_287_FirstDoorExit()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
end
function export:f_287_NoExit()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
end
function export:f_287_SecondDoorExit()
  local l0
  self = self._graph
  l0 = self[287]
  self.WardenAccess = l0.ExitNo
end
function export:f_52_SquadBhvParamsSet()
  local l0
  self = self._graph
  self:en_72()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:StartReinforcing()
end
function export:f_339_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[347]
  l0.User = self.TempHeli1
  l0:UnspawnUser()
end
function export:f_177_Out()
  local l0
  self = self._graph
  l0 = self[136]
  l0.HackableEntity = "9223372047327355816"
  l0:ForceHack()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.TriggerList = {
    "9223372049080144629",
    "9223372055462905134"
  }
  l0.Door = "9223372049526729675"
  l0.Sound1 = "soundbinary/4218005335.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0:In()
end
function export:f_289_Out()
  local l0
  self = self._graph
  l0 = self[289]
  self.Checkpoint = l0.Target
end
function export:f_289_SetFalse()
  local l0
  self = self._graph
  l0 = self[289]
  self.Checkpoint = l0.Target
end
function export:f_289_SetFromBool()
  local l0
  self = self._graph
  l0 = self[289]
  self.Checkpoint = l0.Target
end
function export:f_289_SetTrue()
  local l0
  self = self._graph
  l0 = self[289]
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0.Out = self.f_283_Out
  l0:SetTimeOfDay()
end
function export:f_289_Toggled()
  local l0
  self = self._graph
  l0 = self[289]
  self.Checkpoint = l0.Target
end
function export:f_280_None()
  local l0
  self = self._graph
  l0 = self[282]
  l0:Input(1)
end
function export:f_280_VanishState()
  local l0
  self = self._graph
  l0 = self[282]
  l0:Input(0)
end
function export:f_139_Out()
  local l0
  self = self._graph
  l0 = self[139]
  self.DoorSwitchPath = l0.Target
end
function export:f_139_SetFalse()
  local l0
  self = self._graph
  l0 = self[139]
  self.DoorSwitchPath = l0.Target
end
function export:f_139_SetFromBool()
  local l0
  self = self._graph
  l0 = self[139]
  self.DoorSwitchPath = l0.Target
end
function export:f_139_SetTrue()
  local l0
  self = self._graph
  l0 = self[139]
  self.DoorSwitchPath = l0.Target
end
function export:f_139_Toggled()
  local l0
  self = self._graph
  l0 = self[139]
  self.DoorSwitchPath = l0.Target
end
function export:f_249_Out_0()
  local l0
  self = self._graph
  l0 = self[189]
  l0:Stop()
end
function export:f_249_Out_1()
  local l0
  self = self._graph
  l0 = self[190]
  l0:Stop()
end
function export:f_211_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Entity = "9223372050530363720"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0:Start()
end
function export:f_41_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_41_A_is_True()
  local l0
  self = self._graph
  l0 = self[64]
  l0:Input(0)
end
function export:f_123_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[123]
  self.ExitBoat2 = l0.UserID
  l0 = self[138]
  l0.CLO = "9223372046945986845"
  l0:Activate()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[217]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_269_EndVideo()
  local l0
  self = self._graph
  l0 = self[70]
  l0:Input(1)
end
function export:f_134_Disabled()
  local l0
  self = self._graph
  l0 = self[223]
  l0:Input(1)
end
function export:f_134_Enabled()
  local l0
  self = self._graph
  l0 = self[134]
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_82_Out_0
  l0.Out[1] = self.f_82_Out_1
  l0:In()
end
function export:f_134_Enter()
  local l0
  self = self._graph
  l0 = self[134]
  self.LeavePrison = l0.Collider
end
function export:f_134_Leave()
  local l0
  self = self._graph
  l0 = self[134]
  self.LeavePrison = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.LeavePrison
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_185_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_134_Use()
  local l0
  self = self._graph
  l0 = self[134]
  self.LeavePrison = l0.Collider
end
function export:f_267_Out_0()
  local l0
  self = self._graph
  self:en_193()
  l0 = self[193]
  l0:Enable()
end
function export:f_267_Out_1()
  local l0
  self = self._graph
  self:en_266()
  l0 = self[266]
  l0:Enable()
end
function export:f_44_Started()
  local l0
  self = self._graph
  l0 = self[157]
  l0.Seconds = 2
  l0:Start()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[61]
  l0.CLO = "9223372048882163839"
  l0:Activate()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[18]
  l0:Input(1)
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[51]
  self.AlarmSound = l0.Target
end
function export:f_51_SetFalse()
  local l0
  self = self._graph
  l0 = self[51]
  self.AlarmSound = l0.Target
end
function export:f_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self[51]
  self.AlarmSound = l0.Target
end
function export:f_51_SetTrue()
  local l0
  self = self._graph
  l0 = self[51]
  self.AlarmSound = l0.Target
  l0 = self[109]
  l0.AlarmEntity = "9223372055639487719"
  l0:ActivateAlarm()
end
function export:f_51_Toggled()
  local l0
  self = self._graph
  l0 = self[51]
  self.AlarmSound = l0.Target
end
function export:f_5_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_277_Out()
  local l0
  self = self._graph
  l0 = self[278]
  l0:In(1)
end
function export:f_179_Started()
  local l0
  self = self._graph
  l0 = self[409]
  l0:Deactivate()
end
function export:f_179_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:In()
end
function export:f_129_Out()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Disable()
end
function export:f_186_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_137_A_is_True
  l0.A_is_False = self.f_137_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_250_Loaded()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_265_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_264_Out_0
  l0.Out[1] = self.f_264_Out_1
  l0:In()
end
function export:f_475_Out()
  local l0
  self = self._graph
  l0 = self[475]
  self.PoliceChiefDead = l0.Target
end
function export:f_475_SetFalse()
  local l0
  self = self._graph
  l0 = self[475]
  self.PoliceChiefDead = l0.Target
end
function export:f_475_SetFromBool()
  local l0
  self = self._graph
  l0 = self[475]
  self.PoliceChiefDead = l0.Target
end
function export:f_475_SetTrue()
  local l0
  self = self._graph
  l0 = self[475]
  self.PoliceChiefDead = l0.Target
end
function export:f_475_Toggled()
  local l0
  self = self._graph
  l0 = self[475]
  self.PoliceChiefDead = l0.Target
end
function export:f_297_Out()
  local l0
  self = self._graph
  l0 = self[234]
  l0.UserList = self.Chopper
  l0:UnspawnUser()
end
function export:f_184_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(1)
end
function export:f_259_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_261_Out
  l0:In()
end
function export:f_259_Reinforcing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_73_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StopReinforcing()
end
function export:f_216_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_218_Out
  l0:In()
end
function export:f_97_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_275_Out_0
  l0.Out[1] = self.f_275_Out_1
  l0:In()
end
function export:f_97_Enabled()
  local l0
  self = self._graph
  l0 = self[97]
  self.Collider_Dock03 = l0.Collider
end
function export:f_97_Enter()
  local l0
  self = self._graph
  l0 = self[97]
  self.Collider_Dock03 = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider_Dock03
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_94_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_97_Leave()
  local l0
  self = self._graph
  l0 = self[97]
  self.Collider_Dock03 = l0.Collider
end
function export:f_97_Use()
  local l0
  self = self._graph
  l0 = self[97]
  self.Collider_Dock03 = l0.Collider
end
function export:f_298_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_183_Out_0
  l0.Out[1] = self.f_183_Out_1
  l0.Out[2] = self.f_183_Out_2
  l0:In()
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[221]
  l0:Input(0)
end
function export:f_230_Activated()
  local l0
  self = self._graph
  l0 = self[342]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_204_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_242_Deactivated
  l0:Deactivate()
end
function export:f_102_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_271_Out_0
  l0.Out[1] = self.f_271_Out_1
  l0:In()
end
function export:f_102_Enabled()
  local l0
  self = self._graph
  l0 = self[102]
  self.Collider_Dock02 = l0.Collider
end
function export:f_102_Enter()
  local l0
  self = self._graph
  l0 = self[102]
  self.Collider_Dock02 = l0.Collider
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Collider_Dock02
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_100_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_102_Leave()
  local l0
  self = self._graph
  l0 = self[102]
  self.Collider_Dock02 = l0.Collider
end
function export:f_102_Use()
  local l0
  self = self._graph
  l0 = self[102]
  self.Collider_Dock02 = l0.Collider
end
function export:f_219_CombatState()
  local l0
  self = self._graph
  l0 = self[300]
  l0:In(0)
end
function export:f_219_Disabled()
  local l0
  self = self._graph
  l0 = self[263]
  l0:In(0)
end
function export:f_219_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_241_Out_0
  l0.Out[1] = self.f_241_Out_1
  l0.Out[2] = self.f_241_Out_2
  l0:In()
end
function export:f_219_SearchState()
  local l0
  self = self._graph
  l0 = self[298]
  l0:In(0)
end
function export:f_219_VanishState()
  local l0
  self = self._graph
  l0 = self[297]
  l0:In(0)
end
function export:f_67_Added()
  local l0
  self = self._graph
  l0 = self[67]
  self.Chopper = l0.Target
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.Chopper
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_192_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:AddScriptedAgents()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[67]
  self.Chopper = l0.Target
end
function export:f_67_Removed()
  local l0
  self = self._graph
  l0 = self[67]
  self.Chopper = l0.Target
end
function export:f_245_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_247_Out_0
  l0.Out[1] = self.f_247_Out_1
  l0:In()
end
function export:f_178_OccludableSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_176_A_is_True
  l0.A_is_False = self.f_176_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_157_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M060.Objectives.Objective060",
    item = "Objective",
    id = "473624"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_425_Disabled()
  local l0
  self = self._graph
  l0 = self[475]
  l0:True()
end
function export:f_425_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_290_Out_0
  l0.Out[1] = self.f_290_Out_1
  l0:In()
end
function export:f_425_Killed()
  local l0
  self = self._graph
  self:en_425()
  l0 = self[425]
  l0:Disable()
end
function export:f_50_None()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(1)
end
function export:f_50_VanishState()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(0)
end
function export:f_174_Disabled()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
end
function export:f_174_Enabled()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
  l0 = self[287]
  l0.FirstDoor = self.WardenDoor1
  l0.SecondDoor = self.WardenDoor2
  l0.CurrentExitNo = self.WardenAccess
  l0:Enable()
end
function export:f_174_ExitChanged()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
end
function export:f_174_FirstDoorExit()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
end
function export:f_174_NoExit()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
end
function export:f_174_SecondDoorExit()
  local l0
  self = self._graph
  l0 = self[174]
  self.YardAccess = l0.ExitNo
end
function export:f_95_Out_0()
  local l0
  self = self._graph
  l0 = self[119]
  l0.CLO = "9223372071483444966"
  l0:Activate()
end
function export:f_95_Out_1()
  local l0
  self = self._graph
  l0 = self[117]
  l0.CLO = "9223372071483444967"
  l0:Activate()
end
function export:f_95_Out_2()
  local l0
  self = self._graph
  self:en_213()
  l0 = self[213]
  l0:Disable()
end
function export:f_95_Out_3()
  local l0
  self = self._graph
  self:en_276()
  l0 = self[276]
  l0:Disable()
end
function export:f_237_Out()
  local l0
  self = self._graph
  l0 = self[237]
  self.Alerted = l0.Target
end
function export:f_237_SetFalse()
  local l0
  self = self._graph
  l0 = self[237]
  self.Alerted = l0.Target
end
function export:f_237_SetFromBool()
  local l0
  self = self._graph
  l0 = self[237]
  self.Alerted = l0.Target
end
function export:f_237_SetTrue()
  local l0
  self = self._graph
  l0 = self[237]
  self.Alerted = l0.Target
  l0 = self[51]
  l0:True()
end
function export:f_237_Toggled()
  local l0
  self = self._graph
  l0 = self[237]
  self.Alerted = l0.Target
end
function export:f_306_Out()
  local l0
  self = self._graph
  l0 = self[178]
  l0.HackableEntity = "9223372047327355816"
  l0.Occludable = 1
  l0:SetHackOccludable()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[81]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327010"
  l0:StartCommunication()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = self[84]
  l0:Start()
end
function export:f_294_Out_0()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Disable()
end
function export:f_294_Out_1()
  local l0
  self = self._graph
  self:en_286()
  l0 = self[286]
  l0:Disable()
end
function export:f_294_Out_2()
  local l0
  self = self._graph
  l0 = self[107]
  l0:In(0)
end
function export:f_222_Finished()
  local l0
  self = self._graph
  l0 = self[229]
  l0:Input(1)
end
function export:f_222_Skipped()
  local l0
  self = self._graph
  l0 = self[229]
  l0:Input(0)
end
function export:f_187_Out()
  local l0
  self = self._graph
  l0 = self[186]
  l0:Condition(1)
end
function export:f_296_Out_0()
  local l0
  self = self._graph
  self:en_219()
  l0 = self[219]
  l0:Enable()
end
function export:f_296_Out_1()
  local l0
  self = self._graph
  self:en_295()
  l0 = self[295]
  l0:Enable()
end
function export:f_283_Out()
  local l0
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
  l0.Out = self.f_39_Out
  l0:In()
end
function export:f_271_Out_0()
  local l0
  self = self._graph
  self:en_212()
  l0 = self[212]
  l0:Enable()
end
function export:f_271_Out_1()
  local l0
  self = self._graph
  self:en_270()
  l0 = self[270]
  l0:Enable()
end
function export:f_6_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(2)
end
function export:f_26_DeadChecked()
  local l0
  self = self._graph
  l0 = self[21]
  l0:In()
end
function export:f_26_Killed()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Close()
end
function export:f_200_Out_0()
  local l0
  self = self._graph
  l0 = self[147]
  l0:Input(1)
end
function export:f_200_Out_1()
  local l0
  self = self._graph
  l0 = self[187]
  l0:Input(0)
end
function export:f_137_A_is_False()
  local l0
  self = self._graph
  l0 = self[25]
  l0.HackableEntity = "9223372057358580312"
  l0:ForceHack()
end
function export:f_137_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_177_Out
  l0:In()
end
function export:f_194_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[194]
  self.sniper = l0.UserID
  l0 = self[197]
  l0:Condition(1)
end
function export:f_189_TimeElapsed()
  local l0
  self = self._graph
  self:en_220()
  l0 = self[220]
  l0:Start()
end
function export:f_182_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[182]
  self.WitnessNPC = l0.UserID
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.WitnessNPC
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_350_Out
  l0:SetImmune()
end
function export:f_94_Equal()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:Disable()
end
function export:f_279_Done()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_264_Out_0()
  local l0
  self = self._graph
  self:en_259()
  l0 = self[259]
  l0:Disable()
end
function export:f_264_Out_1()
  local l0
  self = self._graph
  l0 = self[52]
  l0.Affiliation = "OPD"
  l0.SquadBhvParams = "SquadBhvParams.9223372046063189594"
  l0:SetSquadBhvParams()
end
function export:f_261_Out()
  local l0
  self = self._graph
  l0 = self[265]
  l0:In(0)
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0.AlarmEntity = "9223372055639487719"
  l0:DeactivateAlarm()
end
function export:f_120_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_120()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_31_EndVideo()
  local l0
  self = self._graph
  l0 = self[227]
  l0.SpawnPoint = "9223372057916818652"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_31_VideoStarted()
  local l0
  self = self._graph
  l0 = self[233]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222327008"
  l0:StartCommunication()
end
function export:f_318_EndOfList()
  local l0
  self = self._graph
  l0 = self[318]
  self.TempDoor = l0.Data
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_307_Out
  l0:FromInteger()
end
function export:f_318_ForEach()
  local l0
  self = self._graph
  l0 = self[318]
  self.TempDoor = l0.Data
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.TempDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
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
  l0:MoveBackward()
end
function export:f_318_GotNext()
  local l0
  self = self._graph
  l0 = self[318]
  self.TempDoor = l0.Data
end
function export:f_318_Started()
  local l0
  self = self._graph
  l0 = self[318]
  self.TempDoor = l0.Data
end
function export:f_318_Stopped()
  local l0
  self = self._graph
  l0 = self[318]
  self.TempDoor = l0.Data
end
function export:f_355_Output_0()
  local l0
  self = self._graph
  l0 = self[362]
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/843918289.bnk"
  l0:Start()
end
function export:f_355_Output_1()
  local l0
  self = self._graph
  l0 = self[363]
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/309936221.bnk"
  l0:Start()
end
function export:f_115_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[115]
  self.ManualReinfo_Dock02_B = l0.UserID
  l0 = self[133]
  l0:Condition(1)
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Affiliation = "OPD"
  l0:GetEnemiesAlive()
end
function export:f_196_Out_0()
  local l0
  self = self._graph
  l0 = self[124]
  l0.CLO = "9223372055037865727"
  l0:Activate()
end
function export:f_196_Out_1()
  local l0
  self = self._graph
  l0 = self[194]
  l0.CLO = "9223372071857819042"
  l0:Activate()
end
function export:f_241_Out_0()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Enable()
end
function export:f_241_Out_1()
  local l0
  self = self._graph
  self:en_240()
  l0 = self[240]
  l0:Enable()
end
function export:f_241_Out_2()
  local l0
  self = self._graph
  self:en_251()
  l0 = self[251]
  l0:Enable()
end
function export:f_76_Stopped()
  local l0
  self = self._graph
  l0 = self[150]
  l0.SceneEntity = "9223372060289842834"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/s09-m060-scr-cutfreeinformer.seq"
  l0.EntityIn.Witness = self.WitnessNPC
  l0:Start()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_288_Out
  l0:In()
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Disable()
end
function export:f_365_Out()
  local l0
  self = self._graph
  self:en_425()
  l0 = self[425]
  l0:Enable()
end
function export:f_223_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_281_Out_0
  l0.Out[1] = self.f_281_Out_1
  l0:In()
end
function export:f_290_Out_0()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Enable()
end
function export:f_290_Out_1()
  local l0
  self = self._graph
  self:en_286()
  l0 = self[286]
  l0:Enable()
end
function export:f_403_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372057657403973"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
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
  l0.Out = self.f_306_Out
  l0:MoveBackward()
end
function export:f_114_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[114]
  self.ManualReinfo_Dock01_B = l0.UserID
  l0 = self[132]
  l0:Condition(1)
end
function export:f_118_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_135_Out_0
  l0.Out[1] = self.f_135_Out_1
  l0.Out[2] = self.f_135_Out_2
  l0:In()
end
function export:f_13_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(4)
end
function export:f_347_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[348]
  l0.User = self.TempHeli2
  l0:UnspawnUser()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_231_Out_0
  l0.Out[1] = self.f_231_Out_1
  l0:In()
end
function export:f_284_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_285_Out_0
  l0.Out[1] = self.f_285_Out_1
  l0.Out[2] = self.f_285_Out_2
  l0:In()
end
function export:f_74_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046946078163"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_365_Out
  l0:Enable()
end
function export:f_246_A_le_B()
  local l0
  self = self._graph
  l0 = self[245]
  l0:In(1)
end
function export:f_132_Out()
  local l0
  self = self._graph
  l0 = self[125]
  l0.Input = self.DockReinfos01
  l0.Data[0] = self.ManualReinfo_Dock01_A
  l0.Data[1] = self.ManualReinfo_Dock01_B
  l0:Add()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = self[182]
  l0.CLO = "9223372046153658001"
  l0:Activate()
end
function export:f_412_Finished()
  local l0
  self = self._graph
  l0 = self[410]
  l0:Input(1)
end
function export:f_412_Skipped()
  local l0
  self = self._graph
  l0 = self[410]
  l0:Input(0)
end
function export:f_84_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[209]
  l0.SoundId = "soundbinary/3985820291.bnk"
  l0:Start()
end
function export:f_155_MovedBackward()
  local l0
  self = self._graph
  l0 = self[318]
  l0.List = self.SwitchDoorsList
  l0:Start()
end
function export:f_291_Out()
  local l0
  self = self._graph
  l0 = self[293]
  l0:In(1)
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_230_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_293_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_294_Out_0
  l0.Out[1] = self.f_294_Out_1
  l0.Out[2] = self.f_294_Out_2
  l0:In()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.TriggerList = {
    "9223372055462905187",
    "9223372055462905189"
  }
  l0.Door = "9223372049526728954"
  l0.Sound1 = "soundbinary/1675478180.bnk"
  l0.Sound2 = "soundbinary/1645157565.bnk"
  l0:In()
end
function export:f_276_CombatState()
  local l0
  self = self._graph
  l0 = self[277]
  l0:In(0)
end
function export:f_276_CombatStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[277]
  l0:In(1)
end
function export:f_276_SearchState()
  local l0
  self = self._graph
  l0 = self[277]
  l0:In(2)
end
function export:f_276_SearchStateAnyTarget()
  local l0
  self = self._graph
  l0 = self[277]
  l0:In(3)
end
function export:f_303_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_248_Out_0
  l0.Out[1] = self.f_248_Out_1
  l0.Out[2] = self.f_248_Out_2
  l0.Out[3] = self.f_248_Out_3
  l0.Out[4] = self.f_248_Out_4
  l0:In()
end
function export:f_299_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[221]
  l0:Input(1)
end
function export:f_278_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_95_Out_0
  l0.Out[1] = self.f_95_Out_1
  l0.Out[2] = self.f_95_Out_2
  l0.Out[3] = self.f_95_Out_3
  l0:In()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[65]
  l0:In(0)
end
function export:f_145_Finished()
  local l0
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_184_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:ForceUserOutOfCamera()
end
function export:f_145_SPOut__Close_Door_()
  local l0
  self = self._graph
  l0 = self[161]
  l0.HackableEntity = "9223372047327355816"
  l0:ForceHack()
end
function export:f_20_GotNPCList()
  local l0
  self = self._graph
  l0 = self[20]
  self.FelonyReinf = l0.NPCList
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Alerted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_41_A_is_True
  l0.A_is_False = self.f_41_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_236_Out()
  local l0
  self = self._graph
  l0 = self[412]
  l0.SceneEntity = "9223372049667931520"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_PGV-FS_VID/s09_pgv-fs_vid.seq"
  l0:Start()
end
function export:f_214_Out()
  local l0
  self = self._graph
  l0 = self[274]
  l0:In(0)
end
function export:f_15_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(5)
end
function export:f_226_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[222]
  l0.SceneEntity = "9223372056764727217"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_BeautyShot_SCR/s09_beautyshot_scr.seq"
  l0:Start()
end
function export:f_69_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:In()
end
function export:f_307_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.YardAccess = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_319_Out
  l0:FromInteger()
end
function export:f_150_Finished()
  local l0
  self = self._graph
  self:en_435()
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0:EnableCollisions()
end
function export:f_150_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372050530363720"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_63_Disabled()
  local l0
  self = self._graph
  self:en_134()
  l0 = self[134]
  l0:Disable()
end
function export:f_63_Enabled()
  local l0
  self = self._graph
  l0 = self[63]
  self.AIInCell = l0.Collider
  self:en_134()
  l0 = self[134]
  l0:Enable()
end
function export:f_63_Enter()
  local l0
  self = self._graph
  l0 = self[63]
  self.AIInCell = l0.Collider
  l0 = self[62]
  l0:GetEnemiesAlive()
end
function export:f_63_Leave()
  local l0
  self = self._graph
  l0 = self[63]
  self.AIInCell = l0.Collider
end
function export:f_63_Use()
  local l0
  self = self._graph
  l0 = self[63]
  self.AIInCell = l0.Collider
end
function export:f_288_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0.Out[2] = self.f_2_Out_2
  l0.Out[3] = self.f_2_Out_3
  l0.Out[4] = self.f_2_Out_4
  l0.Out[5] = self.f_2_Out_5
  l0:In()
end
function export:f_350_Out()
  local l0
  self = self._graph
  l0 = self[149]
  l0.Entity = self.WitnessNPC
  l0:Enable()
end
function export:f_396_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = self[74]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_91_Out_0()
  local l0
  self = self._graph
  self:en_83()
  l0 = self[83]
  l0:Enable()
end
function export:f_91_Out_1()
  local l0
  self = self._graph
  self:en_102()
  l0 = self[102]
  l0:Enable()
end
function export:f_91_Out_2()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:Enable()
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Position = "9223372050530363720"
  l0.Affiliation = "OPD"
  l0:SetInTargetedSearch()
end
function export:f_205_Out()
  local l0
  self = self._graph
  l0 = self[202]
  l0:Disable()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:In()
end
function export:f_362_Finished()
  local l0
  self = self._graph
  l0 = self[364]
  l0.Entity = self.WitnessNPC
  l0.SoundId = "soundbinary/3146619725.bnk"
  l0:Start()
end
function export:f_188_ExitRadius()
  local l0
  self = self._graph
  self:en_199()
  l0 = self[199]
  l0:ClearSquadBhvParams()
end
function export:f_162_Out()
  local l0
  self = self._graph
  l0 = self[148]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_176_A_is_False()
  local l0
  self = self._graph
  l0 = self[422]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347134"
  l0:StartCommunication()
end
function export:f_176_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_200_Out_0
  l0.Out[1] = self.f_200_Out_1
  l0:In()
end
function export:f_24_Deactivated()
  local l0
  self = self._graph
  l0 = self[118]
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
  l0:Start()
end
function export:f_227_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0.Out = self.f_146_Out
  l0:SetTimeOfDay()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.ExitBoat1 = l0.UserID
  l0 = self[123]
  l0.CLO = "9223372046945986844"
  l0:Activate()
end
function export:f_353_Enabled()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 1
  l0:Start()
end
function export:f_353_EnterRadius()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Pawn = self.WitnessNPC
  l0.CheckNow = 1
  l0:CheckIfDead()
end
function export:f_108_Activated()
  local l0
  self = self._graph
  l0 = self[171]
  l0.PGTMissionArea = "9223372046946078163"
  l0:Start()
end
function export:f_108_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[108]
  self.PoliceChief = l0.UserID
  l0 = Boxes[PathID("domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.PoliceChief
  l0._graph = self
  l0.UnspawnAllowed = DummyFunction
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:PreventUnspawn()
end
function export:f_105_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[105]
  self.ManualReinfo_Dock01_A = l0.UserID
  l0 = self[132]
  l0:Condition(0)
end
function export:f_228_PostOut()
  local l0
  self = self._graph
  l0 = self[143]
  l0:Input(0)
end
function export:f_125_Added()
  local l0
  self = self._graph
  l0 = self[125]
  self.DockReinfos01 = l0.Target
  self:en_120()
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0:AddScriptedAgents()
end
function export:f_125_Out()
  local l0
  self = self._graph
  l0 = self[125]
  self.DockReinfos01 = l0.Target
end
function export:f_125_Removed()
  local l0
  self = self._graph
  l0 = self[125]
  self.DockReinfos01 = l0.Target
end
function export:f_224_RelationshipSet()
  local l0
  self = self._graph
  l0 = self[188]
  l0.Entity1 = "9223372071551427401"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 230
  l0:Enable()
end
function export:f_409_Deactivated()
  local l0
  self = self._graph
  l0 = self[145]
  l0.SceneEntity = "9223372057259514201"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S09/S09_InformerCell_SCR/s09_informercell_scr.seq"
  l0:Start()
end
function export:en_110()
  local l0
  l0 = self[110]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_252()
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_252_EnterForced
  l0.InitialTargetSet = self.f_252_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_153()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfo03
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_153_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_193()
  local l0
  l0 = self[193]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_213()
  local l0
  l0 = self[213]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_295()
  local l0
  l0 = self[295]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_266()
  local l0
  l0 = self[266]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_142()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfos02
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_142_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_220()
  local l0
  l0 = self[220]
  l0.Helicopter = self.TempHeli2
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372071551427320"
  l0.Config = "HelicopterBhvSetup.9223372048779322169"
end
function export:en_286()
  local l0
  l0 = self[286]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_240()
  local l0
  l0 = self[240]
  l0.Vehicle = self.TempHeli2
end
function export:en_270()
  local l0
  l0 = self[270]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.MissionArea = "9223372047583127226"
  l0.MissionLayer = "S09M060_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
end
function export:en_199()
  local l0
  l0 = self[199]
  l0.Affiliation = "OPD"
  l0.SearchOverrideParamTimeout = 300
end
function export:en_401()
  local l0
  l0 = self[401]
  l0.Trigger = "9223372062215966153"
end
function export:en_251()
  local l0
  l0 = self[251]
  l0.Pawn = self.sniper
end
function export:en_435()
  local l0
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.WitnessNPC
  l0.Collisionable = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_435_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
end
function export:en_239()
  local l0
  l0 = self[239]
  l0.HackableEntity = self.TempHeli2
end
function export:en_72()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.FelonyReinf
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_72_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_72_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_72_ScriptedAgentsAdopted
end
function export:en_212()
  local l0
  l0 = self[212]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.Seconds = 2
  l0.Loop = 1
end
function export:en_83()
  local l0
  l0 = self[83]
  l0.Entity1 = "9223372071483444953"
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 50
  l0.CheckNow = 1
end
function export:en_280()
  local l0
  l0 = self[280]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_134()
  local l0
  l0 = self[134]
  l0.Trigger = "9223372062215966153"
end
function export:en_259()
  local l0
  l0 = self[259]
  l0.Affiliation = "OPD"
  l0.CheckNow = 1
end
function export:en_97()
  local l0
  l0 = self[97]
  l0.Trigger = "9223372071483444961"
end
function export:en_102()
  local l0
  l0 = self[102]
  l0.Trigger = "9223372071483444959"
end
function export:en_219()
  local l0
  l0 = self[219]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_425()
  local l0
  l0 = self[425]
  l0.Pawn = self.PoliceChief
  l0.CheckNow = 1
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.Affiliation = "OPD"
  l0.CheckStateNow = 1
end
function export:en_120()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "OPD"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372058286946481"
  l0.AgentList = self.DockReinfos01
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_120_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_191()
  local l0
  l0 = self[191]
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S09M060_Main"
  l0.ShowMissionComplete = 1
end
function export:en_276()
  local l0
  l0 = self[276]
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.Trigger = "9223372049938698627"
  l0.CheckNow = 1
end
function export:en_168()
  local l0
  l0 = self[168]
  l0.Helicopter = self.TempHeli2
  l0.Target = self.PlayerEntity
  l0.PathOrPos = "9223372071551427320"
  l0.Config = "HelicopterBhvSetup.9223372048779322182"
end
function export:en_353()
  local l0
  l0 = self[353]
  l0.TargetEntity = self.WitnessNPC
  l0.Radius = 6
end
function export:en_224()
  local l0
  l0 = self[224]
  l0.Affiliation = "OPD"
  l0.Relationship = "Threat"
end
_compilerVersion = 4
