export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadRelationshipController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  cbox:RegisterBox("domino/System/PrepareClueController.lua")
  cbox:RegisterBox("domino/System/PrepareClueMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M020/s09m020_vid_mosaic01-os.S09M020_VID_Mosaic01-OS_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/3734033751.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4077607045.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1315721872.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3565817328.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S09M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main"
  self.PlayerEntity = nil
  self.eList = {}
  self.Player = nil
  self.dealer1 = nil
  self.dealers = {}
  self.guard04 = nil
  self.Markers = {}
  self.temp = nil
  self.guard01 = nil
  self.guard03 = nil
  self.TempObj = nil
  self.Engage = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Engage",
    id = "317607"
  }
  self.dealer2 = nil
  self.smallEList = {}
  self.guard02 = nil
  self.Clues = {}
  self.forkLift = nil
  self.dealer3 = nil
  self.dealer4 = nil
  self.carToSteal = nil
  self.supportCar = nil
  self.videoTime = 0
  self.firstCarCLOs = {}
  self.secondCarCLOs = {}
  self.carState = 0
  self.scissorLift = nil
  self.boat = nil
  self.boatDriver = nil
  self.col = nil
  self.destinationWrench = nil
  self.thirdCarCLOs = {}
  self.flatBed = nil
  self.testCar = nil
  self.timer = 0
  self.drivingWrench = nil
  self.tempMarkers = {}
  self.npcs1 = {}
  self.npcs2 = {}
  self.allNpcs = {}
  self.spawnedNpcs1 = {}
  self.isInCombat = 0
  self.index = 0
  self.vipChar = nil
  self.car2 = nil
  self.cars2 = {}
  self.convoyID = 0
  self.tempNPC = nil
  self.escortNPC1 = nil
  self.escortNPC2 = nil
  self.escprtNPC3 = nil
  self.escortNPC4 = nil
  self.escortCar1 = nil
  self.escortCar2 = nil
  self.escortCars = {}
  self.vipNPC = nil
  self.vipCar = nil
  self.escortVehiclesCLOs = {}
  self.destinationPatrols = {}
  self.test = nil
  self.escortNPCsCLOs = {}
  self.S09M020_MissionArea = "9223372047965871998"
  self.escortNPCs = {}
  self.allNPCs = {}
  self.NPCsInAction = 0
  self.AllNPCs = {}
  self.stuckPatrolsList = {}
  self.NPC_VIP = nil
  self._580_female_01 = nil
  self._580_male_03 = nil
  self.SoundPoint_VehicleMusic = "9223372061612095646"
  self.ai_state = 0
  self.tempVehicleMusicDriver = nil
  self.HeavyUnitP = nil
  self.vip1 = nil
  self.CorruptTalkers = {}
  self.CorruptCopTalker = nil
  self.CluesTotal = 0
  self.Checkpoint = 0
  self.Ambulance = nil
  self.EngageTimer = 0
  self.GoodToGo = 1
  self.TempVipDriver = nil
  self.TempVipCar = nil
  self.VipDriver = nil
  self.VipCar = nil
  self.Block = nil
  self.TempCar = nil
  self.InCar = 0
  self.CarHacked = 0
  self.CantShutdownEntityList = {}
  self.Vehicle_VIP = nil
  self.ConvoyReinf = 0
  self.Convoy = 0
  self.box_MapPointController_v4_423 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_423
  l0._graph = self
  l0._name = "box_MapPointController_v4_423"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|20533166"
  l0.Shown = self.f_box_MapPointController_v4_423_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PhoneCommunicationController_263 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_263
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|28372767"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_263_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_425 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_425
  l0._graph = self
  l0._name = "box_OnceOnly_v3_425"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|57148905"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_425_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_327 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_327
  l0._graph = self
  l0._name = "box_OnceOnly_v3_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|109947504"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_327_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_248 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_248
  l0._graph = self
  l0._name = "box_CLOController_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|114902181"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_248_OnUserInPlace
  self.box_S09M020_VID_Mosaic01_OS_Main_226 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M020/s09m020_vid_mosaic01-os.S09M020_VID_Mosaic01-OS_Main.debug.lua")
  l0 = self.box_S09M020_VID_Mosaic01_OS_Main_226
  l0._graph = self
  l0._name = "box_S09M020_VID_Mosaic01_OS_Main_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|149973227"
  l0.EndVideo = self.f_box_S09M020_VID_Mosaic01_OS_Main_226_EndVideo
  self.box_MissionMessageController_v3_366 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_366
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_366"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|160125248"
  l0.Out = self.f_box_MissionMessageController_v3_366_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_342 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_342
  l0._graph = self
  l0._name = "box_TutorialController_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|161001797"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_398 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_398
  l0._graph = self
  l0._name = "box_PlayDialog_v2_398"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|169277422"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_GameplayConversationController_v3_310 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_310
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|205294657"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = self.f_box_GameplayConversationController_v3_310_Failed
  l0.Finished = self.f_box_GameplayConversationController_v3_310_Finished
  self.box_TutorialController_245 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_245
  l0._graph = self
  l0._name = "box_TutorialController_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|269233124"
  l0.Out = self.f_box_TutorialController_245_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_AISquadStateController_287 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_287
  l0._graph = self
  l0._name = "box_AISquadStateController_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|278574716"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = self.f_box_AISquadStateController_287_SquadBhvParamsSet
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_Escape_Gameplay_385 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_385
  l0._graph = self
  l0._name = "box_Escape_Gameplay_385"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|413049224"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_385_Escaped
  l0.LeftArea = DummyFunction
  self.box_Timer_v2_300 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_300
  l0._graph = self
  l0._name = "box_Timer_v2_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|426285598"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_300_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_220 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_220
  l0._graph = self
  l0._name = "box_OnceOnly_v3_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|468090469"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_220_Out
  l0.ResetOut = DummyFunction
  self.box_Prepare_Convoy_303 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_303
  l0._graph = self
  l0._name = "box_Prepare_Convoy_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|475377864"
  l0.Out = self.f_box_Prepare_Convoy_303_Out
  l0.Prepped = self.f_box_Prepare_Convoy_303_Prepped
  l0.Started = self.f_box_Prepare_Convoy_303_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_303_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_303_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_303_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_303_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_303_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_303_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_303_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_303_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_303_DestinationReached
  self.box_CLOController_294 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_294
  l0._graph = self
  l0._name = "box_CLOController_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|486237429"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_294_OnUserInPlace
  self.box_Timer_v2_325 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_325
  l0._graph = self
  l0._name = "box_Timer_v2_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|496510691"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_325_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Mission_End_311 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_311
  l0._graph = self
  l0._name = "box_Mission_End_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|496826464"
  self.box_Timer_v2_324 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_324
  l0._graph = self
  l0._name = "box_Timer_v2_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|509119778"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_324_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_255 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_255
  l0._graph = self
  l0._name = "box_GetNPC_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|545772477"
  l0.GotNPCList = self.f_box_GetNPC_255_GotNPCList
  self.box_PGTController_v2_272 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_272
  l0._graph = self
  l0._name = "box_PGTController_v2_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|564747832"
  l0.Started = self.f_box_PGTController_v2_272_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_ListWriter_222 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_222
  l0._graph = self
  l0._name = "box_ListWriter_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|602225206"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_222_Added
  l0.Removed = self.f_box_ListWriter_222_Removed
  l0.Out = self.f_box_ListWriter_222_Out
  self.box_Network_Surfing_Monitor_319 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_319
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|643305690"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_319_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = DummyFunction
  self.box_Prepare_Convoy_283 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_283
  l0._graph = self
  l0._name = "box_Prepare_Convoy_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|739106204"
  l0.Out = self.f_box_Prepare_Convoy_283_Out
  l0.Prepped = self.f_box_Prepare_Convoy_283_Prepped
  l0.Started = self.f_box_Prepare_Convoy_283_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_283_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_283_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_283_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_283_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_283_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_283_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_283_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_283_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_283_DestinationReached
  self.box_MissionCheckpointReach_341 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_341
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|762534031"
  l0.Out = self.f_box_MissionCheckpointReach_341_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_337 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_337
  l0._graph = self
  l0._name = "box_MultipleOR_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|768792997"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_337_Out
  self.box_CLOController_299 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_299
  l0._graph = self
  l0._name = "box_CLOController_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|806831397"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_299_OnUserInPlace
  self.box_PGTController_v2_277 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_277
  l0._graph = self
  l0._name = "box_PGTController_v2_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|818082761"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_277_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_384 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_384
  l0._graph = self
  l0._name = "box_MultipleOR_384"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|840623907"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_384_Out
  self.box_OnceOnly_v3_304 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_304
  l0._graph = self
  l0._name = "box_OnceOnly_v3_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|845435529"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_304_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_383 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_383
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_383"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|887994613"
  l0.Out = self.f_box_MissionMessageController_v3_383_Out
  l0.MessageCompleted = DummyFunction
  self.box_Vehicle_Failure_25 = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  l0 = self.box_Vehicle_Failure_25
  l0._graph = self
  l0._name = "box_Vehicle_Failure_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|906850597"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Vehicle_Failure_25_Stopped
  l0.Fail = self.f_box_Vehicle_Failure_25_Fail
  self.box_PlayDialog_v2_408 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_408
  l0._graph = self
  l0._name = "box_PlayDialog_v2_408"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|921165388"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_408_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_AISquadRelationshipController_314 = cbox:CreateBox("domino/System/AISquadRelationshipController.lua")
  l0 = self.box_AISquadRelationshipController_314
  l0._graph = self
  l0._name = "box_AISquadRelationshipController_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|925086982"
  l0.RelationshipSet = self.f_box_AISquadRelationshipController_314_RelationshipSet
  l0.RelationshipReset = DummyFunction
  self.box_Delivery_Gameplay_217 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_217
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|997329874"
  l0.Started = self.f_box_Delivery_Gameplay_217_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_217_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = DummyFunction
  l0.InConflict = DummyFunction
  l0.TeamSpeakFinished = DummyFunction
  self.box_Player_Proximity_Monitor_268 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_268
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1013051147"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_268_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionLayer_v2_273 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_273
  l0._graph = self
  l0._name = "box_MissionLayer_v2_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1015936218"
  l0.Loaded = self.f_box_MissionLayer_v2_273_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_301 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_301
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1021517807"
  l0.Out = self.f_box_MissionMessageController_v3_301_Out
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_282 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_282
  l0._graph = self
  l0._name = "box_SnapAndBind_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1049401470"
  l0.Attached = self.f_box_SnapAndBind_282_Attached
  self.box_ReinforcementSystemMonitor_v2_326 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_326
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1098318440"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_326_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_326_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_GetNPC_253 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_253
  l0._graph = self
  l0._name = "box_GetNPC_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1110782878"
  l0.GotNPCList = self.f_box_GetNPC_253_GotNPCList
  self.box_Multiple_AND_389 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_389
  l0._graph = self
  l0._name = "box_Multiple_AND_389"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1199956302"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_389_Out
  self.box_PrepareClueMonitor_284 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_284
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1200705843"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_284_DiscoveredClue
  l0.UndiscoveredClue = self.f_box_PrepareClueMonitor_284_UndiscoveredClue
  l0.DiscoveredAllClues = self.f_box_PrepareClueMonitor_284_DiscoveredAllClues
  self.box_CLOMonitor_279 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_279
  l0._graph = self
  l0._name = "box_CLOMonitor_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1216498288"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_279_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = self.f_box_CLOMonitor_279_OnUserQuit
  l0.OnUserUnspawn = DummyFunction
  self.box_TutorialController_225 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_225
  l0._graph = self
  l0._name = "box_TutorialController_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1234545091"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_225_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Interact_Gameplay_380 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_380
  l0._graph = self
  l0._name = "box_Interact_Gameplay_380"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1253336514"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_380_Interacted
  self.box_MissionMessageController_v3_401 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_401
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_401"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1280591932"
  l0.Out = self.f_box_MissionMessageController_v3_401_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_212 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_212
  l0._graph = self
  l0._name = "box_PlaySound_v2_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1309902280"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_346 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_346
  l0._graph = self
  l0._name = "box_OnceOnly_v3_346"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1339663752"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_346_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_228 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_228
  l0._graph = self
  l0._name = "box_OnceOnly_v3_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1351996411"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_228_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_285 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_285
  l0._graph = self
  l0._name = "box_PlaySound_v2_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1388956361"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_432 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_432
  l0._graph = self
  l0._name = "box_MultipleOR_432"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1396256351"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_432_Out
  self.box_MultipleOR_403 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_403
  l0._graph = self
  l0._name = "box_MultipleOR_403"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1435200615"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_403_Out
  self.box_MissionCheckpointReach_224 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_224
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1447801358"
  l0.Out = self.f_box_MissionCheckpointReach_224_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TutorialController_236 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_236
  l0._graph = self
  l0._name = "box_TutorialController_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1456596629"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_box_TutorialController_236_MessageCompleted
  self.box_CLOController_350 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_350
  l0._graph = self
  l0._name = "box_CLOController_350"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1465722841"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_350_OnUserInPlace
  self.box_MissionLayer_v2_430 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_430
  l0._graph = self
  l0._name = "box_MissionLayer_v2_430"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1466950494"
  l0.Loaded = self.f_box_MissionLayer_v2_430_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_298 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_298
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1504592291"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_298_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_298_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_365 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_365
  l0._graph = self
  l0._name = "box_MapPointController_v4_365"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1521306127"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_365_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_356 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_356
  l0._graph = self
  l0._name = "box_CinematicPrep_356"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1581534760"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_356_PostOut
  self.box_MultipleOR_262 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_262
  l0._graph = self
  l0._name = "box_MultipleOR_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1592483917"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_262_Out
  self.box_SnapAndBind_305 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_305
  l0._graph = self
  l0._name = "box_SnapAndBind_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1595829957"
  l0.Attached = self.f_box_SnapAndBind_305_Attached
  self.box_CinematicPrep_291 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_291
  l0._graph = self
  l0._name = "box_CinematicPrep_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1621653725"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_291_PostOut
  self.box_TutorialController_330 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_330
  l0._graph = self
  l0._name = "box_TutorialController_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1674173814"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_330_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_330_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_AISquadStateController_231 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_231
  l0._graph = self
  l0._name = "box_AISquadStateController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1688516973"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_231_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MissionCheckpointReach_411 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_411
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_411"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1694110419"
  l0.Out = self.f_box_MissionCheckpointReach_411_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOMonitor_274 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_274
  l0._graph = self
  l0._name = "box_CLOMonitor_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1705425842"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_CLOMonitor_274_Disabled
  l0.GotUser = DummyFunction
  l0.NotGotUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOMonitor_274_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = self.f_box_CLOMonitor_274_OnUserQuit
  l0.OnUserUnspawn = DummyFunction
  self.box_VehicleMonitor_v3_355 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_355
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_355"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1707708576"
  l0.Enabled = self.f_box_VehicleMonitor_v3_355_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_355_Entered
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
  self.box_ListWriter_208 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_208
  l0._graph = self
  l0._name = "box_ListWriter_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1722787309"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_208_Added
  l0.Removed = self.f_box_ListWriter_208_Removed
  l0.Out = self.f_box_ListWriter_208_Out
  self.box_CLOController_290 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_290
  l0._graph = self
  l0._name = "box_CLOController_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1787357604"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_290_OnUserInPlace
  self.box_MissionLayer_v2_368 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_368
  l0._graph = self
  l0._name = "box_MissionLayer_v2_368"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1804457252"
  l0.Loaded = self.f_box_MissionLayer_v2_368_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_313 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_313
  l0._graph = self
  l0._name = "box_MultipleOR_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1806668882"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_313_Out
  self.box_ReinforcementSystemMonitor_v2_264 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1814194655"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_264_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_264_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_GameplayConversationController_v3_407 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_407
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_407"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1818354936"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self.box_Network_Surfing_Monitor_340 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_340
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1819732729"
  l0.Enabled = self.f_box_Network_Surfing_Monitor_340_Enabled
  l0.Disabled = self.f_box_Network_Surfing_Monitor_340_Disabled
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_340_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = self.f_box_Network_Surfing_Monitor_340_OnNetworkSurfingDeactivated
  self.box_SetBoolean_v2_416 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_416
  l0._graph = self
  l0._name = "box_SetBoolean_v2_416"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1820069019"
  l0.Out = self.f_box_SetBoolean_v2_416_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_416_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_416_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_416_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_416_SetFromBool
  self.box_PlaySound_v2_318 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_318
  l0._graph = self
  l0._name = "box_PlaySound_v2_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1825323816"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListForEach_207 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_207
  l0._graph = self
  l0._name = "box_ListForEach_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1836133243"
  l0.Started = self.f_box_ListForEach_207_Started
  l0.Stopped = self.f_box_ListForEach_207_Stopped
  l0.ForEach = self.f_box_ListForEach_207_ForEach
  l0.GotNext = self.f_box_ListForEach_207_GotNext
  l0.EndOfList = self.f_box_ListForEach_207_EndOfList
  l0.GotFirst = DummyFunction
  self.box_OnceOnly_v3_286 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_286
  l0._graph = self
  l0._name = "box_OnceOnly_v3_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1841062821"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_286_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_265 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_265
  l0._graph = self
  l0._name = "box_CinematicPrep_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1841749076"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_265_PostOut
  self.box_Timer_v2_296 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_296
  l0._graph = self
  l0._name = "box_Timer_v2_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1850321761"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_296_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Prepare_EngageMonitor_292 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  l0 = self.box_Prepare_EngageMonitor_292
  l0._graph = self
  l0._name = "box_Prepare_EngageMonitor_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1863295601"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Engaged = self.f_box_Prepare_EngageMonitor_292_Engaged
  self.box_MultipleOR_252 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_252
  l0._graph = self
  l0._name = "box_MultipleOR_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1864562369"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_252_Out
  self.box_MapPointController_v4_238 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_238
  l0._graph = self
  l0._name = "box_MapPointController_v4_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1869983107"
  l0.Shown = self.f_box_MapPointController_v4_238_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_307 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_307
  l0._graph = self
  l0._name = "box_CLOController_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1871263028"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_307_OnUserInPlace
  self.box_PGTController_v2_266 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_266
  l0._graph = self
  l0._name = "box_PGTController_v2_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1880353106"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_ListWriter_312 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_312
  l0._graph = self
  l0._name = "box_ListWriter_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1901705152"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_312_Added
  l0.Removed = self.f_box_ListWriter_312_Removed
  l0.Out = self.f_box_ListWriter_312_Out
  self.box_OnceOnly_v3_293 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_293
  l0._graph = self
  l0._name = "box_OnceOnly_v3_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1908507390"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_293_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_269 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_269
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1916144262"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_269_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_254 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_254
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1924855879"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionZone_429 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_429
  l0._graph = self
  l0._name = "box_MissionZone_429"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1924919404"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_Player_Proximity_Monitor_302 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_302
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1945439186"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_302_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_302_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_302_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionMessageController_v3_344 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_344
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_344"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1947567108"
  l0.Out = self.f_box_MissionMessageController_v3_344_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_260 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_260
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1968303403"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_260_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_431 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_431
  l0._graph = self
  l0._name = "box_MultipleOR_431"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1983292354"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_431_Out
  self.box_PhoneCommunicationController_320 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_320
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1987457950"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_400 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_400
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_400"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1997108221"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_SnapAndBind_402 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_402
  l0._graph = self
  l0._name = "box_SnapAndBind_402"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2054988640"
  l0.Attached = self.f_box_SnapAndBind_402_Attached
  self.box_Multiple_AND_213 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_213
  l0._graph = self
  l0._name = "box_Multiple_AND_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2081002264"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_213_Out
  self.box_AISquadStateMonitor_211 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_211
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2088022362"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_211_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_211_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_211_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_OnceOnly_v3_227 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_227
  l0._graph = self
  l0._name = "box_OnceOnly_v3_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2102014365"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_227_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_214 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_214
  l0._graph = self
  l0._name = "box_OnceOnly_v3_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2106767555"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_214_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_257 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_257
  l0._graph = self
  l0._name = "box_MultipleOR_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2113661833"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_257_Out
  self.box_MissionMessageController_v3_428 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_428
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_428"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2133967381"
  l0.Out = self.f_box_MissionMessageController_v3_428_Out
  l0.MessageCompleted = DummyFunction
  self.box_LogicGate_v2_308 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_308
  l0._graph = self
  l0._name = "box_LogicGate_v2_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2143927632"
  l0.Out = self.f_box_LogicGate_v2_308_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
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
  self:OnEnter_box_MultipleOR_262()
  l0 = self.box_MultipleOR_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1787044958", "1787044958", "S09M020_Main", "CheckPoint_0", "box_MultipleOR_262.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_273
  l0.LayerName = "S09M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|339195719", "339195719", "S09M020_Main", "CheckPoint_1", "box_MissionLayer_v2_273.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_368
  l0.LayerName = "S09M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|28276000", "28276000", "S09M020_Main", "CheckPoint_2", "box_MissionLayer_v2_368.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_311()
  l0 = self.box_Mission_End_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|945878638", "945878638", "S09M020_Main", "CheckPoint_3", "box_Mission_End_311.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_262()
  l0 = self.box_MultipleOR_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1053840272", "1053840272", "S09M020_Main", "In", "box_MultipleOR_262.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MapPointController_v4_423_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_252()
  l0 = self.box_MapPointController_v4_423
  l1 = self.box_MultipleOR_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1677290615", "1677290615", "S09M020_Main", "box_MapPointController_v4_423.Shown", "box_MultipleOR_252.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_263_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_296
  l0.Seconds = 3
  l0 = self.box_PhoneCommunicationController_263
  l1 = self.box_Timer_v2_296
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1270478360", "1270478360", "S09M020_Main", "box_PhoneCommunicationController_263.OnCommunicationStarted", "box_Timer_v2_296.Start", l0, l1)
  l1:Start()
end
function export:f_box_ReinforcementSystemController_v2_244_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_257()
  l0 = self.box_MultipleOR_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1714654330", "1714654330", "S09M020_Main", "box_ReinforcementSystemController_v2_244.ReinforcingStopped", "box_MultipleOR_257.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_OnceOnly_v3_425_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_211()
  l0 = self.box_OnceOnly_v3_425
  l1 = self.box_AISquadStateMonitor_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1626712566", "1626712566", "S09M020_Main", "box_OnceOnly_v3_425.Out", "box_AISquadStateMonitor_211.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_297_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_356
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1104862080", "1104862080", "S09M020_Main", "box_Ordered_Output_297.Out", "box_CinematicPrep_356.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_297_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_439"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|261205959"
  l0.Out = self.f_box_Simple_Node_439_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|367145222", "367145222", "S09M020_Main", "box_Ordered_Output_297.Out", "box_Simple_Node_439.In", clone, l0)
  l0:In()
end
function export:f_box_PrepareClueController_333_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_402
  l0.Parent = "9223372047590957754"
  l0.Child = "9223372047590957798"
  l0.zPosOffset = 1.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|763831126", "763831126", "S09M020_Main", "box_PrepareClueController_333.Activated", "box_SnapAndBind_402.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Simple_Node_316_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadRelationshipController_314()
  l0 = self.box_AISquadRelationshipController_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|279544816", "279544816", "S09M020_Main", "box_Simple_Node_316.Out", "box_AISquadRelationshipController_314.ResetRelationship", clone, l0)
  l0:ResetRelationship()
end
function export:f_box_OnceOnly_v3_327_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemController_v2_241()
  l0 = self.box_OnceOnly_v3_327
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1017052402", "1017052402", "S09M020_Main", "box_OnceOnly_v3_327.Out", "box_ReinforcementSystemController_v2_241.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_CLOController_248_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_248
  self.forkLift = l0.UserID
  l0 = self.box_ListWriter_312
  l0.Input = self.Markers
  l0.Data[0] = "9223372047219060523"
  l0.Data[1] = "9223372049570934347"
  l0.Data[2] = "9223372047219060528"
  l0.Data[3] = "9223372047789076121"
  l0.Data[4] = "9223372047590957754"
  l0 = self.box_CLOController_248
  l1 = self.box_ListWriter_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1931926164", "1931926164", "S09M020_Main", "box_CLOController_248.OnUserInPlace", "box_ListWriter_312.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_233_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_264()
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1741620700", "1741620700", "S09M020_Main", "box_Ordered_Output_233.Out", "box_ReinforcementSystemMonitor_v2_264.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_233_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1879346001", "1879346001", "S09M020_Main", "box_Ordered_Output_233.Out", "box_OnceOnly_v3_214.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_261_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_268()
  l0 = self.box_Player_Proximity_Monitor_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|222813738", "222813738", "S09M020_Main", "box_Ordered_Output_261.Out", "box_Player_Proximity_Monitor_268.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_261_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|916743669"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_271_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_271_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1648691748", "1648691748", "S09M020_Main", "box_Ordered_Output_261.Out", "box_Ordered_Output_271.In", clone, l0)
  l0:In()
end
function export:f_box_S09M020_VID_Mosaic01_OS_Main_226_EndVideo()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_389()
  l0 = self.box_S09M020_VID_Mosaic01_OS_Main_226
  l1 = self.box_Multiple_AND_389
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|892704152", "892704152", "S09M020_Main", "box_S09M020_VID_Mosaic01_OS_Main_226.EndVideo", "box_Multiple_AND_389.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionMessageController_v3_366_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1700469517"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_210_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_210_Out_1
  l0 = self.box_MissionMessageController_v3_366
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1448386379", "1448386379", "S09M020_Main", "box_MissionMessageController_v3_366.Out", "box_Ordered_Output_210.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareClueController_336_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072731120438"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|62214284"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_333_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|101734124", "101734124", "S09M020_Main", "box_PrepareClueController_336.Activated", "box_PrepareClueController_333.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Simple_Node_438_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_313()
  l0 = self.box_MultipleOR_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2107794656", "2107794656", "S09M020_Main", "box_Simple_Node_438.Out", "box_MultipleOR_313.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ListLength_270_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.CluesTotal = l0.Length
end
function export:f_box_ListLength_270_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.CluesTotal = l0.Length
end
function export:f_box_ListLength_270_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.CluesTotal = l0.Length
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_366
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective040",
    item = "Objective",
    id = "354093"
  }
  l0.IncrementalObjectiveTotal = self.CluesTotal
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|799595850", "799595850", "S09M020_Main", "box_ListLength_270.Out", "box_MissionMessageController_v3_366.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_PrepareClueController_360_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072731120438"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1861861238"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_322_Disabled
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|280326715", "280326715", "S09M020_Main", "box_PrepareClueController_360.Disabled", "box_PrepareClueController_322.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_GameplayConversationController_v3_310_Failed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_346()
  l0 = self.box_GameplayConversationController_v3_310
  l1 = self.box_OnceOnly_v3_346
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1284021899", "1284021899", "S09M020_Main", "box_GameplayConversationController_v3_310.Failed", "box_OnceOnly_v3_346.In", l0, l1)
  l1:In(0)
end
function export:f_box_GameplayConversationController_v3_310_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_346()
  l0 = self.box_GameplayConversationController_v3_310
  l1 = self.box_OnceOnly_v3_346
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1864221063", "1864221063", "S09M020_Main", "box_GameplayConversationController_v3_310.Finished", "box_OnceOnly_v3_346.In", l0, l1)
  l1:In(1)
end
function export:f_box_PrepareClueController_347_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_324
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2013648199", "2013648199", "S09M020_Main", "box_PrepareClueController_347.Enabled", "box_Timer_v2_324.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_439_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_313()
  l0 = self.box_MultipleOR_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1974926971", "1974926971", "S09M020_Main", "box_Simple_Node_439.Out", "box_MultipleOR_313.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_DPad_Hackable_Controller_334_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_298
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053009838664"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1781991468", "1781991468", "S09M020_Main", "box_DPad_Hackable_Controller_334.RemovedAll", "box_PhoneCommunicationController_298.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_TutorialController_245_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_269
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347648"
  l0 = self.box_TutorialController_245
  l1 = self.box_PhoneCommunicationController_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1162066995", "1162066995", "S09M020_Main", "box_TutorialController_245.Out", "box_PhoneCommunicationController_269.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_AISquadStateController_287_SquadBhvParamsSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_326()
  l0 = self.box_AISquadStateController_287
  l1 = self.box_ReinforcementSystemMonitor_v2_326
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|711693947", "711693947", "S09M020_Main", "box_AISquadStateController_287.SquadBhvParamsSet", "box_ReinforcementSystemMonitor_v2_326.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_351_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_294
  l0.CLO = "9223372070211154168"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|848359930", "848359930", "S09M020_Main", "box_Get_Player_ID_351.Out", "box_CLOController_294.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Escape_Gameplay_385_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_311()
  l0 = self.box_Escape_Gameplay_385
  l1 = self.box_Mission_End_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|878411330", "878411330", "S09M020_Main", "box_Escape_Gameplay_385.Escaped", "box_Mission_End_311.End", l0, l1)
  l1:End()
end
function export:f_box_Timer_v2_300_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_308()
  l0 = self.box_Timer_v2_300
  l1 = self.box_LogicGate_v2_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2080839851", "2080839851", "S09M020_Main", "box_Timer_v2_300.TimeElapsed", "box_LogicGate_v2_308.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_259_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_268()
  l0 = self.box_Player_Proximity_Monitor_268
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1854477606", "1854477606", "S09M020_Main", "box_Ordered_Output_259.Out", "box_Player_Proximity_Monitor_268.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_259_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_398
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/1315721872.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1425682283", "1425682283", "S09M020_Main", "box_Ordered_Output_259.Out", "box_PlayDialog_v2_398.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetFloat_v2_315_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_220()
  l0 = self.box_OnceOnly_v3_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|819724738", "819724738", "S09M020_Main", "box_SetFloat_v2_315.Out", "box_OnceOnly_v3_220.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v3_220_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_EngageMonitor_292
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
  l0.MissionArea = "9223372061023443378"
  l0.TextDelay = self.EngageTimer
  l0 = self.box_OnceOnly_v3_220
  l1 = self.box_Prepare_EngageMonitor_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1114106091", "1114106091", "S09M020_Main", "box_OnceOnly_v3_220.Out", "box_Prepare_EngageMonitor_292.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Prepare_Convoy_303_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_ConvoyStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372061023443378"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|827656626"
  l0.Out = self.f_box_AI_Agent_Zone_267_Out
  l0 = self.box_Prepare_Convoy_303
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|798049961", "798049961", "S09M020_Main", "box_Prepare_Convoy_303.ConvoyStarted", "box_AI_Agent_Zone_267.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Prepare_Convoy_303_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1094606317"
  l0.Out = self.f_box_Simple_Node_215_Out
  l0 = self.box_Prepare_Convoy_303
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1709133719", "1709133719", "S09M020_Main", "box_Prepare_Convoy_303.ConvoyStuck", "box_Simple_Node_215.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_303_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|685127702"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_289_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_289_Out_1
  l0 = self.box_Prepare_Convoy_303
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2104363613", "2104363613", "S09M020_Main", "box_Prepare_Convoy_303.Prepped", "box_Ordered_Output_289.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_303_Started()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Prepare_Convoy_303_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_303
  self._580_female_01 = l0.Escort_FrontPassenger
  self._580_male_03 = l0.Escort_RearLeftPassenger
end
function export:f_box_Get_Player_ID_206_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_403
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|418328130", "418328130", "S09M020_Main", "box_Get_Player_ID_206.Out", "box_MultipleOR_403.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_294_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_307
  l0.CLO = "9223372047590954441"
  l0 = self.box_CLOController_294
  l1 = self.box_CLOController_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|583087913", "583087913", "S09M020_Main", "box_CLOController_294.OnUserInPlace", "box_CLOController_307.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_325_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_303()
  l0 = self.box_Timer_v2_325
  l1 = self.box_Prepare_Convoy_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1628408939", "1628408939", "S09M020_Main", "box_Timer_v2_325.TimeElapsed", "box_Prepare_Convoy_303.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_324_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_431()
  l0 = self.box_Timer_v2_324
  l1 = self.box_MultipleOR_431
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|323699089", "323699089", "S09M020_Main", "box_Timer_v2_324.TimeElapsed", "box_MultipleOR_431.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GetNPC_255_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_255
  self.AllNPCs = l0.NPCList
  self:OnEnter_box_AISquadStateController_287()
  l1 = self.box_AISquadStateController_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|209563220", "209563220", "S09M020_Main", "box_GetNPC_255.GotNPCList", "box_AISquadStateController_287.SetSquadBhvParams", l0, l1)
  l1:SetSquadBhvParams()
end
function export:f_box_PGTController_v2_272_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_245
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Notification010",
    item = "Notification",
    id = "642288"
  }
  l0 = self.box_PGTController_v2_272
  l1 = self.box_TutorialController_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|666236211", "666236211", "S09M020_Main", "box_PGTController_v2_272.Started", "box_TutorialController_245.Display", l0, l1)
  l1:Display()
end
function export:f_box_Ordered_Output_280_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Failure_25()
  l0 = self.box_Vehicle_Failure_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|446918377", "446918377", "S09M020_Main", "box_Ordered_Output_280.Out", "box_Vehicle_Failure_25.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_280_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_211()
  l0 = self.box_AISquadStateMonitor_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|245959307", "245959307", "S09M020_Main", "box_Ordered_Output_280.Out", "box_AISquadStateMonitor_211.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ListWriter_222_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_222
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Markers
  l0._graph = self
  l0._name = "box_ListLength_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|196770144"
  l0.Out = self.f_box_ListLength_270_Out
  l0.Empty = self.f_box_ListLength_270_Empty
  l0.NotEmpty = self.f_box_ListLength_270_NotEmpty
  l0 = self.box_ListWriter_222
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2027089499", "2027089499", "S09M020_Main", "box_ListWriter_222.Added", "box_ListLength_270.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_ListWriter_222_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_222
  self.Markers = l0.Target
end
function export:f_box_ListWriter_222_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_222
  self.Markers = l0.Target
end
function export:f_box_Network_Surfing_Monitor_319_OnNetworkSurfingActivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1589784961"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_251_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_251_Out_1
  l0 = self.box_Network_Surfing_Monitor_319
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|212772771", "212772771", "S09M020_Main", "box_Network_Surfing_Monitor_319.OnNetworkSurfingActivated", "box_Ordered_Output_251.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_239_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_354"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|736205800"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_354_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_354_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1961875939", "1961875939", "S09M020_Main", "box_Lanes_Restrictions_Control_239.Out", "box_Ordered_Output_354.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_289_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Vehicle_VIP
  l0._graph = self
  l0._name = "box_Vehicle_Controller_335"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1642572996"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = self.f_box_Vehicle_Controller_335_Undeflatable
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|46589344", "46589344", "S09M020_Main", "box_Ordered_Output_289.Out", "box_Vehicle_Controller_335.SetTyresUndeflatable", clone, l0)
  l0:SetTyresUndeflatable()
end
function export:f_box_Ordered_Output_289_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadRelationshipController_314()
  l0 = self.box_AISquadRelationshipController_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1718736952", "1718736952", "S09M020_Main", "box_Ordered_Output_289.Out", "box_AISquadRelationshipController_314.SetRelationship", clone, l0)
  l0:SetRelationship()
end
function export:f_box_Ordered_Output_258_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_264()
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1943413429", "1943413429", "S09M020_Main", "box_Ordered_Output_258.Out", "box_ReinforcementSystemMonitor_v2_264.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_258_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_277
  l0.PGTMissionArea = "9223372060704516393"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1451924011", "1451924011", "S09M020_Main", "box_Ordered_Output_258.Out", "box_PGTController_v2_277.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_Simple_Node_209_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_228()
  l0 = self.box_OnceOnly_v3_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1376579685", "1376579685", "S09M020_Main", "box_Simple_Node_209.Out", "box_OnceOnly_v3_228.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_354_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S09M020_VID_Mosaic01_OS_Main_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|896445712", "896445712", "S09M020_Main", "box_Ordered_Output_354.Out", "box_S09M020_VID_Mosaic01_OS_Main_226.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_354_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_260
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347646"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1442305247", "1442305247", "S09M020_Main", "box_Ordered_Output_354.Out", "box_PhoneCommunicationController_260.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Prepare_Convoy_283_ConvoyAggro()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1859505010"
  l0.Out = self.f_box_Simple_Node_256_Out
  l0 = self.box_Prepare_Convoy_283
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1665631505", "1665631505", "S09M020_Main", "box_Prepare_Convoy_283.ConvoyAggro", "box_Simple_Node_256.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_283_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|694268137"
  l0.Out = self.f_box_Simple_Node_209_Out
  l0 = self.box_Prepare_Convoy_283
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1524431025", "1524431025", "S09M020_Main", "box_Prepare_Convoy_283.ConvoyStuck", "box_Simple_Node_209.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_283_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
  l0 = self.box_PhoneCommunicationController_400
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347649"
  l0 = self.box_Prepare_Convoy_283
  l1 = self.box_PhoneCommunicationController_400
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|338146903", "338146903", "S09M020_Main", "box_Prepare_Convoy_283.DestinationReached", "box_PhoneCommunicationController_400.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Prepare_Convoy_283_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
  self:OnEnter_box_Prepare_Convoy_303()
  l1 = self.box_Prepare_Convoy_303
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1455646688", "1455646688", "S09M020_Main", "box_Prepare_Convoy_283.Prepped", "box_Prepare_Convoy_303.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Prepare_Convoy_283_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
  l0 = self.box_Timer_v2_325
  l0.Seconds = 1
  l0 = self.box_Prepare_Convoy_283
  l1 = self.box_Timer_v2_325
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1265980366", "1265980366", "S09M020_Main", "box_Prepare_Convoy_283.Started", "box_Timer_v2_325.Start", l0, l1)
  l1:Start()
end
function export:f_box_Prepare_Convoy_283_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_283_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_283
  self.NPC_VIP = l0.VipID
  self.Vehicle_VIP = l0.VipVehicleID
end
function export:f_box_MissionCheckpointReach_341_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_301
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective020",
    item = "Objective",
    id = "354074"
  }
  l0 = self.box_MissionCheckpointReach_341
  l1 = self.box_MissionMessageController_v3_301
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|602001544", "602001544", "S09M020_Main", "box_MissionCheckpointReach_341.Out", "box_MissionMessageController_v3_301.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_337_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_337
  l1 = self.box_OnceOnly_v3_327
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|394375814", "394375814", "S09M020_Main", "box_MultipleOR_337.Out", "box_OnceOnly_v3_327.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOController_299_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_350
  l0.CLO = "9223372047590954441"
  l0 = self.box_CLOController_299
  l1 = self.box_CLOController_350
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1074714261", "1074714261", "S09M020_Main", "box_CLOController_299.OnUserInPlace", "box_CLOController_350.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PGTController_v2_277_Aborted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Vehicle_VIP
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|268114236"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_box_DPad_Hackable_Controller_334_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0 = self.box_PGTController_v2_277
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1396223165", "1396223165", "S09M020_Main", "box_PGTController_v2_277.Aborted", "box_DPad_Hackable_Controller_334.RemoveAll", l0, l1)
  l1:RemoveAll()
end
function export:f_box_AI_Agent_Zone_267_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_344
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective060",
    item = "Objective",
    id = "354095"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1570418645", "1570418645", "S09M020_Main", "box_AI_Agent_Zone_267.Out", "box_MissionMessageController_v3_344.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MultipleOR_384_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_411
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_384
  l1 = self.box_MissionCheckpointReach_411
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1697454633", "1697454633", "S09M020_Main", "box_MultipleOR_384.Out", "box_MissionCheckpointReach_411.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_304_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1530195389"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_309_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_309_Out_1
  l0 = self.box_OnceOnly_v3_304
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1692108787", "1692108787", "S09M020_Main", "box_OnceOnly_v3_304.Out", "box_Ordered_Output_309.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_306_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_308()
  l0 = self.box_LogicGate_v2_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|17912874", "17912874", "S09M020_Main", "box_Simple_Node_306.Out", "box_LogicGate_v2_308.Close", clone, l0)
  l0:Close()
end
function export:f_box_Compare_Entity_v2_221_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072731120438"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1617655131"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_321_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1156744486", "1156744486", "S09M020_Main", "box_Compare_Entity_v2_221.Equal", "box_PrepareClueController_321.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Entity_v2_221_NotEqual()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_252()
  l0 = self.box_MultipleOR_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|156527659", "156527659", "S09M020_Main", "box_Compare_Entity_v2_221.NotEqual", "box_MultipleOR_252.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_383_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_330()
  l0 = self.box_MissionMessageController_v3_383
  l1 = self.box_TutorialController_330
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1514652209", "1514652209", "S09M020_Main", "box_MissionMessageController_v3_383.Out", "box_TutorialController_330.Display", l0, l1)
  l1:Display()
end
function export:f_box_Vehicle_Failure_25_Fail()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_214()
  l0 = self.box_Vehicle_Failure_25
  l1 = self.box_OnceOnly_v3_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1231822840", "1231822840", "S09M020_Main", "box_Vehicle_Failure_25.Fail", "box_OnceOnly_v3_214.In", l0, l1)
  l1:In(1)
end
function export:f_box_Vehicle_Failure_25_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|132780698"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_233_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_233_Out_1
  l0 = self.box_Vehicle_Failure_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1763981677", "1763981677", "S09M020_Main", "box_Vehicle_Failure_25.Stopped", "box_Ordered_Output_233.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_271_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_279()
  l0 = self.box_CLOMonitor_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|535949793", "535949793", "S09M020_Main", "box_Ordered_Output_271.Out", "box_CLOMonitor_279.Enable", clone, l0)
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
  self:OnEnter_box_CLOMonitor_274()
  l0 = self.box_CLOMonitor_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1922063376", "1922063376", "S09M020_Main", "box_Ordered_Output_271.Out", "box_CLOMonitor_274.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_408_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_305
  l0.Parent = "9223372047590957754"
  l0.Child = "9223372047590957798"
  l0.zPosOffset = 1.5
  l0 = self.box_PlayDialog_v2_408
  l1 = self.box_SnapAndBind_305
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|894183844", "894183844", "S09M020_Main", "box_PlayDialog_v2_408.Finished", "box_SnapAndBind_305.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_AISquadRelationshipController_314_RelationshipSet()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_253
  l0.Affiliation = "Ridaz"
  l0 = self.box_AISquadRelationshipController_314
  l1 = self.box_GetNPC_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1826682927", "1826682927", "S09M020_Main", "box_AISquadRelationshipController_314.RelationshipSet", "box_GetNPC_253.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_Delivery_Gameplay_217_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|566405985"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_280_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_280_Out_1
  l0 = self.box_Delivery_Gameplay_217
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1120481372", "1120481372", "S09M020_Main", "box_Delivery_Gameplay_217.AllDeliveryCompleted", "box_Ordered_Output_280.In", l0, l1)
  l1:In()
end
function export:f_box_Delivery_Gameplay_217_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Failure_25()
  l0 = self.box_Delivery_Gameplay_217
  l1 = self.box_Vehicle_Failure_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1895508228", "1895508228", "S09M020_Main", "box_Delivery_Gameplay_217.Started", "box_Vehicle_Failure_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_ReinforcementSystemController_v2_338_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_337()
  l0 = self.box_MultipleOR_337
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1610623843", "1610623843", "S09M020_Main", "box_ReinforcementSystemController_v2_338.ReinforcingStopped", "box_MultipleOR_337.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Player_Proximity_Monitor_268_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|441285323"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_259_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_259_Out_1
  l0 = self.box_Player_Proximity_Monitor_268
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1944543229", "1944543229", "S09M020_Main", "box_Player_Proximity_Monitor_268.EnterRadius", "box_Ordered_Output_259.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_273_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_351"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|305179456"
  l0.Out = self.f_box_Get_Player_ID_351_Out
  l0 = self.box_MissionLayer_v2_273
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|898034482", "898034482", "S09M020_Main", "box_MissionLayer_v2_273.Loaded", "box_Get_Player_ID_351.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_301_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_302()
  l0 = self.box_MissionMessageController_v3_301
  l1 = self.box_Player_Proximity_Monitor_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1866304124", "1866304124", "S09M020_Main", "box_MissionMessageController_v3_301.Out", "box_Player_Proximity_Monitor_302.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SnapAndBind_282_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_318
  l0.Entity = self.SoundPoint_VehicleMusic
  l0.SoundId = "soundbinary/4077607045.bnk"
  l0 = self.box_SnapAndBind_282
  l1 = self.box_PlaySound_v2_318
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|177902142", "177902142", "S09M020_Main", "box_SnapAndBind_282.Attached", "box_PlaySound_v2_318.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_215_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_228()
  l0 = self.box_OnceOnly_v3_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|72988238", "72988238", "S09M020_Main", "box_Simple_Node_215.Out", "box_OnceOnly_v3_228.In", clone, l0)
  l0:In(1)
end
function export:f_box_ReinforcementSystemMonitor_v2_326_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_337()
  l0 = self.box_ReinforcementSystemMonitor_v2_326
  l1 = self.box_MultipleOR_337
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|455336290", "455336290", "S09M020_Main", "box_ReinforcementSystemMonitor_v2_326.None", "box_MultipleOR_337.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ReinforcementSystemMonitor_v2_326_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = nil
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1011183715"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_338_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_326
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1264732977", "1264732977", "S09M020_Main", "box_ReinforcementSystemMonitor_v2_326.Reinforcing", "box_ReinforcementSystemController_v2_338.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_GetNPC_253_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_253
  self.AllNPCs = l0.NPCList
  l0 = self.box_PGTController_v2_266
  l0.PGTMissionArea = "9223372060704516393"
  l0.AgentList = self.AllNPCs
  l0 = self.box_GetNPC_253
  l1 = self.box_PGTController_v2_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1234315101", "1234315101", "S09M020_Main", "box_GetNPC_253.GotNPCList", "box_PGTController_v2_266.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_InteractionScriptController_281_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_405"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1375833036"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_405_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_405_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|890177162", "890177162", "S09M020_Main", "box_InteractionScriptController_281.Disabled", "box_Ordered_Output_405.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_249_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|146666675"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_261_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_261_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1732915204", "1732915204", "S09M020_Main", "box_Ordered_Output_249.Out", "box_Ordered_Output_261.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_249_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_282
  l0.Parent = self.Vehicle_VIP
  l0.Child = self.SoundPoint_VehicleMusic
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1985014033", "1985014033", "S09M020_Main", "box_Ordered_Output_249.Out", "box_SnapAndBind_282.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Ordered_Output_249_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_355()
  l0 = self.box_VehicleMonitor_v3_355
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|101209624", "101209624", "S09M020_Main", "box_Ordered_Output_249.Out", "box_VehicleMonitor_v3_355.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_295_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateController_287()
  l0 = self.box_AISquadStateController_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|494742267", "494742267", "S09M020_Main", "box_Simple_Node_295.Out", "box_AISquadStateController_287.ClearSquadBhvParams", clone, l0)
  l0:ClearSquadBhvParams()
end
function export:f_box_Simple_Node_377_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_313()
  l0 = self.box_MultipleOR_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|503929081", "503929081", "S09M020_Main", "box_Simple_Node_377.Out", "box_MultipleOR_313.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Multiple_AND_389_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_384()
  l0 = self.box_Multiple_AND_389
  l1 = self.box_MultipleOR_384
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1237810487", "1237810487", "S09M020_Main", "box_Multiple_AND_389.Out", "box_MultipleOR_384.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PrepareClueMonitor_284_DiscoveredAllClues()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1978276877"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_275_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_275_Out_1
  l0 = self.box_PrepareClueMonitor_284
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|722249103", "722249103", "S09M020_Main", "box_PrepareClueMonitor_284.DiscoveredAllClues", "box_Ordered_Output_275.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareClueMonitor_284_DiscoveredClue()
  local l0, l1
  self = self._graph
  l0 = self.box_PrepareClueMonitor_284
  self.temp = l0.ClueOut
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372047590957754"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|879063539"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_221_Equal
  l0.NotEqual = self.f_box_Compare_Entity_v2_221_NotEqual
  l0 = self.box_PrepareClueMonitor_284
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|453483548", "453483548", "S09M020_Main", "box_PrepareClueMonitor_284.DiscoveredClue", "box_Compare_Entity_v2_221.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareClueMonitor_284_UndiscoveredClue()
  local l0
  self = self._graph
  l0 = self.box_PrepareClueMonitor_284
  self.temp = l0.ClueOut
end
function export:f_box_CLOMonitor_279_OnUserInPlace()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_213()
  l0 = self.box_CLOMonitor_279
  l1 = self.box_Multiple_AND_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|472077652", "472077652", "S09M020_Main", "box_CLOMonitor_279.OnUserInPlace", "box_Multiple_AND_213.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOMonitor_279_OnUserQuit()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_304()
  l0 = self.box_CLOMonitor_279
  l1 = self.box_OnceOnly_v3_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1875534600", "1875534600", "S09M020_Main", "box_CLOMonitor_279.OnUserQuit", "box_OnceOnly_v3_304.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_364_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_291
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1591312144", "1591312144", "S09M020_Main", "box_Ordered_Output_364.Out", "box_CinematicPrep_291.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_364_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_377"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1162655234"
  l0.Out = self.f_box_Simple_Node_377_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|376887187", "376887187", "S09M020_Main", "box_Ordered_Output_364.Out", "box_Simple_Node_377.In", clone, l0)
  l0:In()
end
function export:f_box_TutorialController_225_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_225
  l1 = self.box_SetBoolean_v2_416
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|323368863", "323368863", "S09M020_Main", "box_TutorialController_225.DisplayRequested", "box_SetBoolean_v2_416.True", l0, l1)
  l1:True()
end
function export:f_box_Interact_Gameplay_380_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372051621906961"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = "CivilianDensity.9223372048779320679"
  l0.ParkedCarsDensityDbObject = "ParkedCarsDensity.9223372048779323572"
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
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|664728373"
  l0.Out = self.f_box_Lanes_Restrictions_Control_239_Out
  l0 = self.box_Interact_Gameplay_380
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|562654415", "562654415", "S09M020_Main", "box_Interact_Gameplay_380.Interacted", "box_Lanes_Restrictions_Control_239.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemController_v2_241_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_241()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1718890807", "1718890807", "S09M020_Main", "box_ReinforcementSystemController_v2_241.ReinforcingStarted", "box_ReinforcementSystemController_v2_241.AddScriptedAgents", clone, l0)
  l0:AddScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_241_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemController_v2_241()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1205485710", "1205485710", "S09M020_Main", "box_ReinforcementSystemController_v2_241.ScriptedAgentsAdded", "box_ReinforcementSystemController_v2_241.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_ReinforcementSystemController_v2_241_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_326()
  l0 = self.box_ReinforcementSystemMonitor_v2_326
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|747864211", "747864211", "S09M020_Main", "box_ReinforcementSystemController_v2_241.ScriptedAgentsAdopted", "box_ReinforcementSystemMonitor_v2_326.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_401_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_208
  l0.Input = self.CantShutdownEntityList
  l0.Data[0] = "9223372050326596086"
  l0.Data[1] = "9223372051622080293"
  l0.Data[2] = "9223372051622080310"
  l0.Data[3] = "9223372051622080292"
  l0.Data[4] = "9223372050326596529"
  l0 = self.box_MissionMessageController_v3_401
  l1 = self.box_ListWriter_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1654725101", "1654725101", "S09M020_Main", "box_MissionMessageController_v3_401.Out", "box_ListWriter_208.Add", l0, l1)
  l1:Add()
end
function export:f_box_Compare_Boolean_v2_424_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 60
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_392"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1485283882"
  l0.Out = self.f_box_SetFloat_v2_392_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1877695926", "1877695926", "S09M020_Main", "box_Compare_Boolean_v2_424.A_is_False", "box_SetFloat_v2_392.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Boolean_v2_424_A_is_True()
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
  l0._name = "box_SetFloat_v2_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|447017272"
  l0.Out = self.f_box_SetFloat_v2_315_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|682736231", "682736231", "S09M020_Main", "box_Compare_Boolean_v2_424.A_is_True", "box_SetFloat_v2_315.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Ordered_Output_328_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0._name = "box_PrepareClueController_360"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|202776916"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_360_Disabled
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1394268116", "1394268116", "S09M020_Main", "box_Ordered_Output_328.Out", "box_PrepareClueController_360.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_328_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_429()
  l0 = self.box_MissionZone_429
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2127474676", "2127474676", "S09M020_Main", "box_Ordered_Output_328.Out", "box_MissionZone_429.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_427_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_290
  l0.CLO = "9223372070211154168"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1996032823", "1996032823", "S09M020_Main", "box_Get_Player_ID_427.Out", "box_CLOController_290.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_346_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_300
  l0.Seconds = 1
  l0 = self.box_OnceOnly_v3_346
  l1 = self.box_Timer_v2_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1776944516", "1776944516", "S09M020_Main", "box_OnceOnly_v3_346.Out", "box_Timer_v2_300.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_228_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateController_231()
  l0 = self.box_OnceOnly_v3_228
  l1 = self.box_AISquadStateController_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|412294769", "412294769", "S09M020_Main", "box_OnceOnly_v3_228.Out", "box_AISquadStateController_231.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Phys_Zone_Cleanup_381_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_272
  l0.PGTMissionArea = "9223372060704516393"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|227348584", "227348584", "S09M020_Main", "box_Phys_Zone_Cleanup_381.Out", "box_PGTController_v2_272.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_405_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_265
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1366092006", "1366092006", "S09M020_Main", "box_Ordered_Output_405.Out", "box_CinematicPrep_265.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_405_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_438"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|190406423"
  l0.Out = self.f_box_Simple_Node_438_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1390088817", "1390088817", "S09M020_Main", "box_Ordered_Output_405.Out", "box_Simple_Node_438.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_432_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_224
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_432
  l1 = self.box_MissionCheckpointReach_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2129118126", "2129118126", "S09M020_Main", "box_MultipleOR_432.Out", "box_MissionCheckpointReach_224.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_403_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372051621906961"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1513793370"
  l0.Out = self.f_box_AI_Agent_Zone_218_Out
  l0 = self.box_MultipleOR_403
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2005739015", "2005739015", "S09M020_Main", "box_MultipleOR_403.Out", "box_AI_Agent_Zone_218.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_224_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_401
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective050",
    item = "Objective",
    id = "354094"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_224
  l1 = self.box_MissionMessageController_v3_401
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|123200784", "123200784", "S09M020_Main", "box_MissionCheckpointReach_224.Out", "box_MissionMessageController_v3_401.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TutorialController_236_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_432()
  l0 = self.box_TutorialController_236
  l1 = self.box_MultipleOR_432
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|44556821", "44556821", "S09M020_Main", "box_TutorialController_236.MessageCompleted", "box_MultipleOR_432.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_350_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_350
  self.forkLift = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_364"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1219365536"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_364_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_364_Out_1
  l0 = self.box_CLOController_350
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1788514725", "1788514725", "S09M020_Main", "box_CLOController_350.OnUserInPlace", "box_Ordered_Output_364.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_430_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|477289675"
  l0.Out = self.f_box_Get_Player_ID_206_Out
  l0 = self.box_MissionLayer_v2_430
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1303059640", "1303059640", "S09M020_Main", "box_MissionLayer_v2_430.Loaded", "box_Get_Player_ID_206.In", l0, l1)
  l1:In()
end
function export:f_box_SetFloat_v2_392_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_220()
  l0 = self.box_OnceOnly_v3_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1157403801", "1157403801", "S09M020_Main", "box_SetFloat_v2_392.Out", "box_OnceOnly_v3_220.In", clone, l0)
  l0:In(1)
end
function export:f_box_PhoneCommunicationController_298_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_428
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective090",
    item = "Objective",
    id = "412445"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_PhoneCommunicationController_298
  l1 = self.box_MissionMessageController_v3_428
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1274450939", "1274450939", "S09M020_Main", "box_PhoneCommunicationController_298.OnCommunicationFinished", "box_MissionMessageController_v3_428.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_298_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_317"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2084814436"
  l0.Out = self.f_box_Simple_Node_317_Out
  l0 = self.box_PhoneCommunicationController_298
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|24003965", "24003965", "S09M020_Main", "box_PhoneCommunicationController_298.StartCommunicationOut", "box_Simple_Node_317.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_299
  l0.CLO = "9223372070211154168"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|450209429", "450209429", "S09M020_Main", "box_AI_Agent_Zone_218.Out", "box_CLOController_299.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MapPointController_v4_365_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372069042998534"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_381"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1364531836"
  l0.Out = self.f_box_Phys_Zone_Cleanup_381_Out
  l0 = self.box_MapPointController_v4_365
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1496280930", "1496280930", "S09M020_Main", "box_MapPointController_v4_365.Hidden", "box_Phys_Zone_Cleanup_381.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_309_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|873531998"
  l0.Out = self.f_box_Simple_Node_306_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1762079672", "1762079672", "S09M020_Main", "box_Ordered_Output_309.Out", "box_Simple_Node_306.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_309_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_CLOMonitor_274()
  l0 = self.box_CLOMonitor_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1264811948", "1264811948", "S09M020_Main", "box_Ordered_Output_309.Out", "box_CLOMonitor_274.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_DPad_Hackable_Controller_278_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_424"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1284492825"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_424_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_424_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|855430618", "855430618", "S09M020_Main", "box_DPad_Hackable_Controller_278.Removed", "box_Compare_Boolean_v2_424.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_356_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_238
  l0.MapPoint = "9223372047590957798"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0 = self.box_CinematicPrep_356
  l1 = self.box_MapPointController_v4_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|870336941", "870336941", "S09M020_Main", "box_CinematicPrep_356.PostOut", "box_MapPointController_v4_238.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_251_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_330()
  l0 = self.box_TutorialController_330
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|863869562", "863869562", "S09M020_Main", "box_Ordered_Output_251.Out", "box_TutorialController_330.HideNotification", clone, l0)
  l0:HideNotification()
end
function export:f_box_Ordered_Output_251_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_222
  l0.Input = self.Markers
  l0.Data[0] = "9223372047219060528"
  l0.Data[1] = "9223372047590957754"
  l0.Data[2] = "9223372047219060523"
  l0.Data[3] = "9223372047789076121"
  l0.Data[4] = "9223372049570934347"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1167533376", "1167533376", "S09M020_Main", "box_Ordered_Output_251.Out", "box_ListWriter_222.Add", clone, l0)
  l0:Add()
end
function export:f_box_MultipleOR_262_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_430
  l0.LayerName = "S09M020_Main"
  l0 = self.box_MultipleOR_262
  l1 = self.box_MissionLayer_v2_430
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1530943838", "1530943838", "S09M020_Main", "box_MultipleOR_262.Out", "box_MissionLayer_v2_430.Load", l0, l1)
  l1:Load()
end
function export:f_box_SnapAndBind_305_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_423
  l0.MapPoint = "9223372047590957798"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  l0 = self.box_SnapAndBind_305
  l1 = self.box_MapPointController_v4_423
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|90490656", "90490656", "S09M020_Main", "box_SnapAndBind_305.Attached", "box_MapPointController_v4_423.Show", l0, l1)
  l1:Show()
end
function export:f_box_PrepareClueController_321_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_408
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/3565817328.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1540445858", "1540445858", "S09M020_Main", "box_PrepareClueController_321.Activated", "box_PlayDialog_v2_408.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_291_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_341
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_291
  l1 = self.box_MissionCheckpointReach_341
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|431028162", "431028162", "S09M020_Main", "box_CinematicPrep_291.PostOut", "box_MissionCheckpointReach_341.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Controller_335_Undeflatable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_283()
  l0 = self.box_Prepare_Convoy_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|921364761", "921364761", "S09M020_Main", "box_Vehicle_Controller_335.Undeflatable", "box_Prepare_Convoy_283.Start", clone, l0)
  l0:Start()
end
function export:f_box_TutorialController_330_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_319()
  l0 = self.box_TutorialController_330
  l1 = self.box_Network_Surfing_Monitor_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1860503120", "1860503120", "S09M020_Main", "box_TutorialController_330.DisplayRequested", "box_Network_Surfing_Monitor_319.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_330_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_319()
  l0 = self.box_TutorialController_330
  l1 = self.box_Network_Surfing_Monitor_319
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1921962319", "1921962319", "S09M020_Main", "box_TutorialController_330.NotificationHidden", "box_Network_Surfing_Monitor_319.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateController_231_TargetedSearchSet()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateController_231()
  l0 = self.box_AISquadStateController_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1198627806", "1198627806", "S09M020_Main", "box_AISquadStateController_231.TargetedSearchSet", "box_AISquadStateController_231.SetInAware", l0, l0)
  l0:SetInAware()
end
function export:f_box_MissionCheckpointReach_411_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_383
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective030",
    item = "Objective",
    id = "354092"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_411
  l1 = self.box_MissionMessageController_v3_383
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|886814351", "886814351", "S09M020_Main", "box_MissionCheckpointReach_411.Out", "box_MissionMessageController_v3_383.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_210_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_431()
  l0 = self.box_MultipleOR_431
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|799582590", "799582590", "S09M020_Main", "box_Ordered_Output_210.Out", "box_MultipleOR_431.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_210_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Network_Surfing_Monitor_340()
  l0 = self.box_Network_Surfing_Monitor_340
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|883889021", "883889021", "S09M020_Main", "box_Ordered_Output_210.Out", "box_Network_Surfing_Monitor_340.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOMonitor_274_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOMonitor_279()
  l0 = self.box_CLOMonitor_274
  l1 = self.box_CLOMonitor_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1729532503", "1729532503", "S09M020_Main", "box_CLOMonitor_274.Disabled", "box_CLOMonitor_279.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOMonitor_274_OnUserInPlace()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_213()
  l0 = self.box_CLOMonitor_274
  l1 = self.box_Multiple_AND_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1484488292", "1484488292", "S09M020_Main", "box_CLOMonitor_274.OnUserInPlace", "box_Multiple_AND_213.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CLOMonitor_274_OnUserQuit()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_304()
  l0 = self.box_CLOMonitor_274
  l1 = self.box_OnceOnly_v3_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|48393112", "48393112", "S09M020_Main", "box_CLOMonitor_274.OnUserQuit", "box_OnceOnly_v3_304.In", l0, l1)
  l1:In(1)
end
function export:f_box_VehicleMonitor_v3_355_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Delivery_Gameplay_217
  l0.VehicleEntity = self.Vehicle_VIP
  l0.DestinationTrigger = "9223372059944003963"
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
  l0.ForceStopBrake = "Hard"
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective080",
    item = "Objective",
    id = "405512"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective060",
    item = "Objective",
    id = "354095"
  }
  l0.TeamSpeakPostEscape = "PhoneCommunicationSettingsDb.9223372048421347650"
  l0 = self.box_VehicleMonitor_v3_355
  l1 = self.box_Delivery_Gameplay_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1270411780", "1270411780", "S09M020_Main", "box_VehicleMonitor_v3_355.Enabled", "box_Delivery_Gameplay_217.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_355_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1822959005"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_216_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_216_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_216_Out_2
  l0 = self.box_VehicleMonitor_v3_355
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1741408832", "1741408832", "S09M020_Main", "box_VehicleMonitor_v3_355.Entered", "box_Ordered_Output_216.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_208_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_208
  self.CantShutdownEntityList = l0.Target
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.CantShutdownEntityList
  l0.HackCategoryType[0] = "IngredientShutdown"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1536315107"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_278_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_ListWriter_208
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1616095677", "1616095677", "S09M020_Main", "box_ListWriter_208.Added", "box_DPad_Hackable_Controller_278.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_ListWriter_208_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_208
  self.CantShutdownEntityList = l0.Target
end
function export:f_box_ListWriter_208_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_208
  self.CantShutdownEntityList = l0.Target
end
function export:f_box_CLOController_290_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_248
  l0.CLO = "9223372047590954441"
  l0 = self.box_CLOController_290
  l1 = self.box_CLOController_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1805635885", "1805635885", "S09M020_Main", "box_CLOController_290.OnUserInPlace", "box_CLOController_248.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_368_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_427"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1316309097"
  l0.Out = self.f_box_Get_Player_ID_427_Out
  l0 = self.box_MissionLayer_v2_368
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|99728554", "99728554", "S09M020_Main", "box_MissionLayer_v2_368.Loaded", "box_Get_Player_ID_427.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_313_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_429()
  l0 = self.box_MultipleOR_313
  l1 = self.box_MissionZone_429
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1894330817", "1894330817", "S09M020_Main", "box_MultipleOR_313.Out", "box_MissionZone_429.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ReinforcementSystemMonitor_v2_264_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_257()
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  l1 = self.box_MultipleOR_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2067084474", "2067084474", "S09M020_Main", "box_ReinforcementSystemMonitor_v2_264.None", "box_MultipleOR_257.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ReinforcementSystemMonitor_v2_264_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "Ridaz"
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|44578091"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_244_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|957517278", "957517278", "S09M020_Main", "box_ReinforcementSystemMonitor_v2_264.Reinforcing", "box_ReinforcementSystemController_v2_244.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_Network_Surfing_Monitor_340_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_284()
  l0 = self.box_Network_Surfing_Monitor_340
  l1 = self.box_PrepareClueMonitor_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1006562592", "1006562592", "S09M020_Main", "box_Network_Surfing_Monitor_340.Disabled", "box_PrepareClueMonitor_284.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Network_Surfing_Monitor_340_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_284()
  l0 = self.box_Network_Surfing_Monitor_340
  l1 = self.box_PrepareClueMonitor_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1524991691", "1524991691", "S09M020_Main", "box_Network_Surfing_Monitor_340.Enabled", "box_PrepareClueMonitor_284.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Network_Surfing_Monitor_340_OnNetworkSurfingActivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_342()
  l0 = self.box_Network_Surfing_Monitor_340
  l1 = self.box_TutorialController_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|592954187", "592954187", "S09M020_Main", "box_Network_Surfing_Monitor_340.OnNetworkSurfingActivated", "box_TutorialController_342.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Network_Surfing_Monitor_340_OnNetworkSurfingDeactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_342()
  l0 = self.box_Network_Surfing_Monitor_340
  l1 = self.box_TutorialController_342
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1986600976", "1986600976", "S09M020_Main", "box_Network_Surfing_Monitor_340.OnNetworkSurfingDeactivated", "box_TutorialController_342.Display", l0, l1)
  l1:Display()
end
function export:f_box_SetBoolean_v2_416_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_416
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_416_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_416
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_416_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_416
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_416_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_416
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046811066034"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_414"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|2029849694"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_414_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_SetBoolean_v2_416
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1801237031", "1801237031", "S09M020_Main", "box_SetBoolean_v2_416.SetTrue", "box_InteractionScriptController_414.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_416_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_416
  self.Checkpoint = l0.Target
end
function export:f_box_Ordered_Output_216_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_355()
  l0 = self.box_VehicleMonitor_v3_355
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1163769499", "1163769499", "S09M020_Main", "box_Ordered_Output_216.Out", "box_VehicleMonitor_v3_355.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_216_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1074240334", "1074240334", "S09M020_Main", "box_Ordered_Output_216.Out", "box_OnceOnly_v3_286.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_216_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_425()
  l0 = self.box_OnceOnly_v3_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|712602751", "712602751", "S09M020_Main", "box_Ordered_Output_216.Out", "box_OnceOnly_v3_425.In", clone, l0)
  l0:In(0)
end
function export:f_box_ListForEach_207_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_207
  self.temp = l0.Data
end
function export:f_box_ListForEach_207_ForEach()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_207
  self.temp = l0.Data
end
function export:f_box_ListForEach_207_GotNext()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_207
  self.temp = l0.Data
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = self.temp
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|230775630"
  l0.Enabled = self.f_box_PrepareClueController_347_Enabled
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0 = self.box_ListForEach_207
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|183914631", "183914631", "S09M020_Main", "box_ListForEach_207.GotNext", "box_PrepareClueController_347.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListForEach_207_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_207
  self.temp = l0.Data
end
function export:f_box_ListForEach_207_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_207
  self.temp = l0.Data
end
function export:f_box_OnceOnly_v3_286_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_285
  l0.Entity = self.SoundPoint_VehicleMusic
  l0.SoundId = "soundbinary/3734033751.bnk"
  l0 = self.box_OnceOnly_v3_286
  l1 = self.box_PlaySound_v2_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|141710081", "141710081", "S09M020_Main", "box_OnceOnly_v3_286.Out", "box_PlaySound_v2_285.Play", l0, l1)
  l1:Play()
end
function export:f_box_CinematicPrep_265_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_384()
  l0 = self.box_CinematicPrep_265
  l1 = self.box_MultipleOR_384
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1276371858", "1276371858", "S09M020_Main", "box_CinematicPrep_265.PostOut", "box_MultipleOR_384.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_296_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_236
  l0.SurvivalGuideItemDB = "Items.9223372053993043270"
  l0 = self.box_Timer_v2_296
  l1 = self.box_TutorialController_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|710743631", "710743631", "S09M020_Main", "box_Timer_v2_296.TimeElapsed", "box_TutorialController_236.Display", l0, l1)
  l1:Display()
end
function export:f_box_Simple_Node_256_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_425()
  l0 = self.box_OnceOnly_v3_425
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1737064562", "1737064562", "S09M020_Main", "box_Simple_Node_256.Out", "box_OnceOnly_v3_425.In", clone, l0)
  l0:In(1)
end
function export:f_box_PrepareClueController_322_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_365
  l0.MapPoint = "9223372047590957798"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1928587131", "1928587131", "S09M020_Main", "box_PrepareClueController_322.Disabled", "box_MapPointController_v4_365.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Prepare_EngageMonitor_292_Engaged()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1304402721"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_328_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_328_Out_1
  l0 = self.box_Prepare_EngageMonitor_292
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1010043017", "1010043017", "S09M020_Main", "box_Prepare_EngageMonitor_292.Engaged", "box_Ordered_Output_328.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_252_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_254
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M020.Objectives.Objective040",
    item = "Objective",
    id = "354093"
  }
  l0 = self.box_MultipleOR_252
  l1 = self.box_MissionMessageController_v3_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1576994538", "1576994538", "S09M020_Main", "box_MultipleOR_252.Out", "box_MissionMessageController_v3_254.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MapPointController_v4_238_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_225
  l0.SurvivalGuideItemDB = "Items.9223372068114036597"
  l0 = self.box_MapPointController_v4_238
  l1 = self.box_TutorialController_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|988768892", "988768892", "S09M020_Main", "box_MapPointController_v4_238.Shown", "box_TutorialController_225.Display", l0, l1)
  l1:Display()
end
function export:f_box_CLOController_307_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_307
  self.forkLift = l0.UserID
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046811066034"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1124602310"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_281_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_307
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1209513161", "1209513161", "S09M020_Main", "box_CLOController_307.OnUserInPlace", "box_InteractionScriptController_281.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ListWriter_312_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_312
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0._name = "box_PrepareClueController_336"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|177330428"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_336_Activated
  l0 = self.box_ListWriter_312
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1628262055", "1628262055", "S09M020_Main", "box_ListWriter_312.Added", "box_PrepareClueController_336.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_312_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_312
  self.Markers = l0.Target
end
function export:f_box_ListWriter_312_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_312
  self.Markers = l0.Target
end
function export:f_box_OnceOnly_v3_293_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1132658974"
  l0.Out = self.f_box_Simple_Node_295_Out
  l0 = self.box_OnceOnly_v3_293
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1853550371", "1853550371", "S09M020_Main", "box_OnceOnly_v3_293.Out", "box_Simple_Node_295.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_269_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_283()
  l0 = self.box_PhoneCommunicationController_269
  l1 = self.box_Prepare_Convoy_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1205407901", "1205407901", "S09M020_Main", "box_PhoneCommunicationController_269.StartCommunicationOut", "box_Prepare_Convoy_283.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Player_Proximity_Monitor_302_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_320
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347645"
  l0 = self.box_Player_Proximity_Monitor_302
  l1 = self.box_PhoneCommunicationController_320
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1085602357", "1085602357", "S09M020_Main", "box_Player_Proximity_Monitor_302.Disabled", "box_PhoneCommunicationController_320.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Player_Proximity_Monitor_302_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_380
  l0.Entity = "9223372046811066034"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_Player_Proximity_Monitor_302
  l1 = self.box_Interact_Gameplay_380
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1008273658", "1008273658", "S09M020_Main", "box_Player_Proximity_Monitor_302.Enabled", "box_Interact_Gameplay_380.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_302_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_302()
  l0 = self.box_Player_Proximity_Monitor_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1307202779", "1307202779", "S09M020_Main", "box_Player_Proximity_Monitor_302.EnterRadius", "box_Player_Proximity_Monitor_302.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_344_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1124680903"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_249_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_249_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_249_Out_2
  l0 = self.box_MissionMessageController_v3_344
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1013616586", "1013616586", "S09M020_Main", "box_MissionMessageController_v3_344.Out", "box_Ordered_Output_249.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_260_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_389()
  l0 = self.box_PhoneCommunicationController_260
  l1 = self.box_Multiple_AND_389
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1457931135", "1457931135", "S09M020_Main", "box_PhoneCommunicationController_260.OnCommunicationFinished", "box_Multiple_AND_389.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_275_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Network_Surfing_Monitor_340()
  l0 = self.box_Network_Surfing_Monitor_340
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1023253144", "1023253144", "S09M020_Main", "box_Ordered_Output_275.Out", "box_Network_Surfing_Monitor_340.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_275_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_263
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347647"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1745202794", "1745202794", "S09M020_Main", "box_Ordered_Output_275.Out", "box_PhoneCommunicationController_263.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MultipleOR_431_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_207
  l0.List = self.Markers
  l0 = self.box_MultipleOR_431
  l1 = self.box_ListForEach_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|168875757", "168875757", "S09M020_Main", "box_MultipleOR_431.Out", "box_ListForEach_207.GetNext", l0, l1)
  l1:GetNext()
end
function export:f_box_InteractionScriptController_414_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_432()
  l0 = self.box_MultipleOR_432
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|382703009", "382703009", "S09M020_Main", "box_InteractionScriptController_414.Disabled", "box_MultipleOR_432.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SnapAndBind_402_Attached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|57437676"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_297_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_297_Out_1
  l0 = self.box_SnapAndBind_402
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|269118460", "269118460", "S09M020_Main", "box_SnapAndBind_402.Attached", "box_Ordered_Output_297.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_213_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_310
  l0.User1 = self._580_female_01
  l0.User2 = self._580_male_03
  l0.Conversation = "ConversationSetting.9223372057820160543"
  l0 = self.box_Multiple_AND_213
  l1 = self.box_GameplayConversationController_v3_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1717217309", "1717217309", "S09M020_Main", "box_Multiple_AND_213.Out", "box_GameplayConversationController_v3_310.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_317_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|104387997"
  l0.Out = self.f_box_Simple_Node_316_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1362864786", "1362864786", "S09M020_Main", "box_Simple_Node_317.Out", "box_Simple_Node_316.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_211_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_227()
  l0 = self.box_AISquadStateMonitor_211
  l1 = self.box_OnceOnly_v3_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|649965879", "649965879", "S09M020_Main", "box_AISquadStateMonitor_211.CombatState", "box_OnceOnly_v3_227.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_211_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_211
  l1 = self.box_OnceOnly_v3_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|612846446", "612846446", "S09M020_Main", "box_AISquadStateMonitor_211.Disabled", "box_OnceOnly_v3_293.In", l0, l1)
  l1:In(0)
end
function export:f_box_AISquadStateMonitor_211_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_227()
  l0 = self.box_AISquadStateMonitor_211
  l1 = self.box_OnceOnly_v3_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|801782968", "801782968", "S09M020_Main", "box_AISquadStateMonitor_211.SearchState", "box_OnceOnly_v3_227.In", l0, l1)
  l1:In(1)
end
function export:f_box_OnceOnly_v3_227_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_255
  l0.Affiliation = "Ridaz"
  l0 = self.box_OnceOnly_v3_227
  l1 = self.box_GetNPC_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1505672601", "1505672601", "S09M020_Main", "box_OnceOnly_v3_227.Out", "box_GetNPC_255.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_OnceOnly_v3_214_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_212
  l0.Entity = self.SoundPoint_VehicleMusic
  l0.SoundId = "soundbinary/3734033751.bnk"
  l0 = self.box_OnceOnly_v3_214
  l1 = self.box_PlaySound_v2_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1185311007", "1185311007", "S09M020_Main", "box_OnceOnly_v3_214.Out", "box_PlaySound_v2_212.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_257_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|685945318"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_258_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_258_Out_1
  l0 = self.box_MultipleOR_257
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|252116600", "252116600", "S09M020_Main", "box_MultipleOR_257.Out", "box_Ordered_Output_258.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_428_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_385
  l0.Entity = self.Vehicle_VIP
  l0.Entity_AreaRadius = 30
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
  l0 = self.box_MissionMessageController_v3_428
  l1 = self.box_Escape_Gameplay_385
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|181923530", "181923530", "S09M020_Main", "box_MissionMessageController_v3_428.Out", "box_Escape_Gameplay_385.Start", l0, l1)
  l1:Start()
end
function export:f_box_LogicGate_v2_308_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_407
  l0.User1 = self._580_female_01
  l0.User2 = self._580_male_03
  l0.Conversation = "ConversationSetting.9223372057820160544"
  l0 = self.box_LogicGate_v2_308
  l1 = self.box_GameplayConversationController_v3_407
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|324148509", "324148509", "S09M020_Main", "box_LogicGate_v2_308.Out", "box_GameplayConversationController_v3_407.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_425()
end
function export:OnEnter_box_TutorialController_342()
  local l0
  l0 = self.box_TutorialController_342
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
function export:OnEnter_box_AISquadStateController_287()
  local l0
  l0 = self.box_AISquadStateController_287
  l0.SquadBhvParams = "SquadBhvParams.9223372046063189979"
end
function export:OnEnter_box_OnceOnly_v3_220()
end
function export:OnEnter_box_Prepare_Convoy_303()
  local l0
  l0 = self.box_Prepare_Convoy_303
  l0.VipVehicleCLO = "9223372047590957796"
  l0.VipCLO = "9223372047590957806"
  l0.Vip_WanderZone = "9223372060704516397"
  l0.EscortCLO_FrontPassenger = "9223372047590957809"
  l0.EscortFrontPassenger_WanderZone = "9223372060704516403"
  l0.FrontPassenger_WithVIP = 0
  l0.EscortCLO_RearLeftPassenger = "9223372047590957808"
  l0.EscortRearLeftPassenger_WanderZone = "9223372070390457568"
  l0.EscortCLO_RearRightPassenger = "9223372061023440993"
  l0.EscortRearRightPassenger_WanderZone = "9223372060704516399"
  l0.ConvoyConfig = "ConvoyConfig.9223372057140462212"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372057140462212"
  l0.Destination = "9223372047789076121"
  l0.Updated_Destination = "9223372070903872437"
  l0.AutoUnassign = 1
  l0.Affiliation = "Ridaz"
  l0.UpdatedWanderZone = "9223372072961034279"
  l0.IgnorePlayer = 0
end
function export:OnEnter_box_Mission_End_311()
  local l0
  l0 = self.box_Mission_End_311
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S09M020_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Network_Surfing_Monitor_319()
  local l0
  l0 = self.box_Network_Surfing_Monitor_319
  l0.CheckNow = 1
end
function export:OnEnter_box_Prepare_Convoy_283()
  local l0
  l0 = self.box_Prepare_Convoy_283
  l0.VipVehicleCLO = "9223372068772552667"
  l0.VipCLO = "9223372068772552668"
  l0.Vip_WanderZone = "9223372060704516401"
  l0.EscortCLO_FrontPassenger = "9223372072731120077"
  l0.EscortFrontPassenger_WanderZone = "9223372072731120080"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057140462212"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372057140462212"
  l0.Destination = "9223372047590957754"
  l0.Updated_Destination = "9223372070903872443"
  l0.AutoUnassign = 1
  l0.Affiliation = "Ridaz"
  l0.UpdatedWanderZone = "9223372072961034279"
  l0.IgnorePlayer = 0
end
function export:OnEnter_box_MultipleOR_337()
end
function export:OnEnter_box_MultipleOR_384()
end
function export:OnEnter_box_OnceOnly_v3_304()
end
function export:OnEnter_box_Vehicle_Failure_25()
  local l0
  l0 = self.box_Vehicle_Failure_25
  l0.VehicleEntity = self.Vehicle_VIP
  l0.Fail_IfUnusable = 1
  l0.Fail_IfStuck = 1
  l0.Unusable_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0.Stuck_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0.FaiIfUnloaded = 1
end
function export:OnEnter_box_AISquadRelationshipController_314()
  local l0
  l0 = self.box_AISquadRelationshipController_314
  l0.Affiliation = "Ridaz"
  l0.Relationship = "Threat"
end
function export:OnEnter_box_Player_Proximity_Monitor_268()
  local l0
  l0 = self.box_Player_Proximity_Monitor_268
  l0.TargetEntity = self.Vehicle_VIP
  l0.Radius = 5
  l0.MonitorConnectedJumper = 0
  l0.MonitorConnectedDrone = 0
  l0.CheckNow = 1
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_326()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_326
  l0.Affiliation = "Ridaz"
  l0.CheckNow = 1
end
function export:OnEnter_box_Multiple_AND_389()
end
function export:OnEnter_box_PrepareClueMonitor_284()
  local l0
  l0 = self.box_PrepareClueMonitor_284
  l0.ClueList = self.Markers
  l0.CheckNow = 1
end
function export:OnEnter_box_CLOMonitor_279()
  local l0
  l0 = self.box_CLOMonitor_279
  l0.CLO = "9223372071561587932"
end
function export:OnEnter_box_ReinforcementSystemController_v2_241()
  local l0
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "Ridaz"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372072731125113"
  l0.AgentList = self.AllNPCs
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M020\\S09M020.domino|@S09M020_Main|1270328506"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_241_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_ReinforcementSystemController_v2_241_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_box_ReinforcementSystemController_v2_241_ScriptedAgentsAdopted
end
function export:OnEnter_box_OnceOnly_v3_346()
end
function export:OnEnter_box_OnceOnly_v3_228()
end
function export:OnEnter_box_MultipleOR_432()
end
function export:OnEnter_box_MultipleOR_262()
end
function export:OnEnter_box_TutorialController_330()
  local l0
  l0 = self.box_TutorialController_330
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
function export:OnEnter_box_AISquadStateController_231()
  local l0
  l0 = self.box_AISquadStateController_231
  l0.Affiliation = "Ridaz"
end
function export:OnEnter_box_CLOMonitor_274()
  local l0
  l0 = self.box_CLOMonitor_274
  l0.CLO = "9223372071561587931"
end
function export:OnEnter_box_VehicleMonitor_v3_355()
  local l0
  l0 = self.box_VehicleMonitor_v3_355
  l0.Vehicle = self.Vehicle_VIP
end
function export:OnEnter_box_MultipleOR_313()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_264()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_264
  l0.Affiliation = "Ridaz"
  l0.CheckNow = 1
end
function export:OnEnter_box_Network_Surfing_Monitor_340()
  local l0
  l0 = self.box_Network_Surfing_Monitor_340
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_252()
end
function export:OnEnter_box_MissionZone_429()
  local l0
  l0 = self.box_MissionZone_429
  l0.MissionArea = "9223372047965871998"
  l0.MissionLayer = "S09M020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Player_Proximity_Monitor_302()
  local l0
  l0 = self.box_Player_Proximity_Monitor_302
  l0.TargetEntity = "9223372047590957754"
  l0.Radius = 30
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_431()
end
function export:OnEnter_box_Multiple_AND_213()
end
function export:OnEnter_box_AISquadStateMonitor_211()
  local l0
  l0 = self.box_AISquadStateMonitor_211
  l0.Affiliation = "Ridaz"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_OnceOnly_v3_227()
end
function export:OnEnter_box_OnceOnly_v3_214()
end
function export:OnEnter_box_MultipleOR_257()
end
function export:OnEnter_box_LogicGate_v2_308()
end
_compilerVersion = 4
