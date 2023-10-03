export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.lua")
  cbox:RegisterBox("domino/System/PrepareClueController.lua")
  cbox:RegisterBox("domino/System/PrepareClueMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040A_VID_Mosaic02-OS.S09M040A_VID_Mosaic02-OS_Main.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2864883369.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2018454732.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3470714642.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/345401540.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2278530715.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3172548278.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Markers = {}
  self.Player = nil
  self.cloVan2 = {}
  self.cloReinf3 = {}
  self.cloReinf2 = {}
  self.Engage = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Engage",
    id = "317607"
  }
  self.cloVan1 = {}
  self.allNpcs = {}
  self.cloVan3 = {}
  self.id2 = 0
  self.allDead = 0
  self.cloReinf1 = {}
  self.car2 = nil
  self.car3 = nil
  self.TempObj = nil
  self.car1 = nil
  self.id1 = 0
  self.id3 = 0
  self.spawnedNpcs1 = {}
  self.spawnedNpcs2 = {}
  self.spawnedNpcs3 = {}
  self.spawnedNpcs4 = {}
  self.spawnedNpcs5 = {}
  self.spawnedNpcs6 = {}
  self.boat = {}
  self.boatS = nil
  self.npc = nil
  self.testnpc1 = nil
  self.testnpc2 = nil
  self.temp = nil
  self.LastNPCs = {}
  self.name = "GroupName"
  self.timer = 0
  self.FleeDriver = nil
  self.drivers = {}
  self.Ambulance = nil
  self.destinationPatrolsListVan1 = {}
  self.destinationPatrolsListVan2 = {}
  self.destinationPatrolsListVan3 = {}
  self.stuckPatrolsListVan1 = {}
  self.stuckPatrolsListVan2 = {}
  self.stuckPatrolsListVan3 = {}
  self.trucksList = {}
  self.tempCar = nil
  self.length = 0
  self.fleeNPC1 = nil
  self.fleeNPC2 = nil
  self.vip1 = nil
  self.vip2 = nil
  self.vip3 = nil
  self.stuckPatrolsListReinforcements = {}
  self.reinforcementsBratvaVehiclesCLOs = {}
  self.reinforcementsBratvaNPCsCLOs = {}
  self.destinationPatrolsListReinforcementsBratva = {}
  self.destinationPatrolsListReinforcementsCCops = {}
  self.reinforcementsCCopsVehiclesCLOs = {}
  self.reinforcementsCCopsNPCsCLOs = {}
  self.tempEntity = nil
  self.testCarsList = {}
  self.NPCsInAction = 0
  self.AiCombatState = 0
  self.allNpcsBratva = {}
  self.CorruptCopTalker = nil
  self.MusicIsOver = 0
  self.allAliveNpcs = {}
  self.CorruptTalkers = {}
  self.truckList = 0
  self.Checkpoint = 0
  self.EngageTimer = 0
  self.EscortVan1 = {}
  self.EscortVan2 = {}
  self.escortVan3 = {}
  self.Van2_ExtraClues = {
    "9223372072557568414",
    "9223372072557568418"
  }
  self.AllExtraClues = {
    "9223372072557569185",
    "9223372043995244260",
    "9223372072557568414",
    "9223372072557568418"
  }
  self[206] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[206]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[194] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[194]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_194_Out
  self[250] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[250]
  l0._graph = self
  l0.Out = self.f_250_Out
  l0.SetTrue = self.f_250_SetTrue
  l0.SetFalse = self.f_250_SetFalse
  l0.Toggled = self.f_250_Toggled
  l0.SetFromBool = self.f_250_SetFromBool
  self[229] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[229]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[203] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[203]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_203_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_203_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = self.f_203_IncrementReached
  l0.IncrementNotReached = DummyFunction
  self[238] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[238]
  l0._graph = self
  l0.Out = self.f_238_Out
  l0.MessageCompleted = DummyFunction
  self[204] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[204]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[244] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[244]
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
  self[181] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[181]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_181_Out
  l0.ResetOut = DummyFunction
  self[312] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[312]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_312_Out
  l0.ResetOut = DummyFunction
  self[260] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[260]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_260_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[241] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[241]
  l0._graph = self
  l0.Shown = self.f_241_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[297] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[297]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_297_Added
  l0.Removed = self.f_297_Removed
  l0.Out = self.f_297_Out
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
  self[243] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[243]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_243_Out
  l0.ResetOut = DummyFunction
  self[227] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[227]
  l0._graph = self
  l0.Attached = self.f_227_Attached
  self[254] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[254]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_254_Out
  l0.ResetOut = DummyFunction
  self[304] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[304]
  l0._graph = self
  self[200] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[200]
  l0._graph = self
  l0.Loaded = self.f_200_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[280] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[280]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_280_Added
  l0.Removed = self.f_280_Removed
  l0.Out = self.f_280_Out
  self[314] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[314]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_314_Out
  self[236] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[236]
  l0._graph = self
  l0.Shown = self.f_236_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[308] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[308]
  l0._graph = self
  l0.Out = self.f_308_Out
  l0.Prepped = self.f_308_Prepped
  l0.Started = self.f_308_Started
  l0.ConvoyStarted = self.f_308_ConvoyStarted
  l0.ConvoyStopped = self.f_308_ConvoyStopped
  l0.ConvoyAggro = self.f_308_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_308_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_308_ConvoyStuck
  l0.VIPDied = self.f_308_VIPDied
  l0.VipVehicleDestroyed = self.f_308_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_308_NPCsUnassigned
  l0.DestinationReached = self.f_308_DestinationReached
  self[223] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[223]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[85] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[85]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_85_Out
  l0.ResetOut = DummyFunction
  self[310] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[310]
  l0._graph = self
  l0.Out = self.f_310_Out
  l0.Prepped = self.f_310_Prepped
  l0.Started = self.f_310_Started
  l0.ConvoyStarted = self.f_310_ConvoyStarted
  l0.ConvoyStopped = self.f_310_ConvoyStopped
  l0.ConvoyAggro = self.f_310_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_310_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_310_ConvoyStuck
  l0.VIPDied = self.f_310_VIPDied
  l0.VipVehicleDestroyed = self.f_310_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_310_NPCsUnassigned
  l0.DestinationReached = self.f_310_DestinationReached
  self[25] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040A_VID_Mosaic02-OS.S09M040A_VID_Mosaic02-OS_Main.lua")
  l0 = self[25]
  l0._graph = self
  l0.EndVideo = self.f_25_EndVideo
  self[294] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[294]
  l0._graph = self
  l0.Started = self.f_294_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_294_AllSpawned
  l0.ScriptedAgentsAdded = self.f_294_ScriptedAgentsAdded
  self[90] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = self.f_90_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[247] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[247]
  l0._graph = self
  l0.Attached = self.f_247_Attached
  self[196] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[196]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_196_Added
  l0.Removed = self.f_196_Removed
  l0.Out = self.f_196_Out
  self[267] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[267]
  l0._graph = self
  l0.Out = self.f_267_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[293] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.lua")
  l0 = self[293]
  l0._graph = self
  self[259] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[259]
  l0._graph = self
  l0.StartCommunicationOut = self.f_259_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_259_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[191] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[191]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_191_Out
  self[278] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[278]
  l0._graph = self
  l0.Shown = self.f_278_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[217] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[217]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_217_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[240] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[240]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_240_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_240_MessageCompleted
  self[253] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[253]
  l0._graph = self
  l0.Started = self.f_253_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_253_Neutralized
  self[288] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[288]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_288_Out
  l0.ResetOut = DummyFunction
  self[299] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[299]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_299_Added
  l0.Removed = self.f_299_Removed
  l0.Out = self.f_299_Out
  self[197] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[197]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_197_Out
  l0.ResetOut = DummyFunction
  self[281] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[281]
  l0._graph = self
  l0.Out = self.f_281_Out
  l0.MessageCompleted = DummyFunction
  self[127] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[127]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_127_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[261] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[261]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_261_PostOut
  self[228] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[228]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_228_Out
  self[275] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[275]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_275_PostOut
  self[290] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.lua")
  l0 = self[290]
  l0._graph = self
  self[144] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[144]
  l0._graph = self
  l0.GotNPCList = self.f_144_GotNPCList
  self[174] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.lua")
  l0 = self[174]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_174_Disabled
  l0.Engaged = self.f_174_Engaged
  self[237] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[237]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_237_Out
  l0.ResetOut = DummyFunction
  self[282] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[282]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_282_Out
  self[242] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[242]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_242_Out
  self[216] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[216]
  l0._graph = self
  l0.Started = self.f_216_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_216_Neutralized
  self[249] = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self[249]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_249_Disabled
  l0.OnNetworkSurfingActivated = self.f_249_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = self.f_249_OnNetworkSurfingDeactivated
  self[264] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[264]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[284] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[284]
  l0._graph = self
  l0.Out = self.f_284_Out
  l0.MessageCompleted = DummyFunction
  self[89] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_89_RewardsExecuted
  self[213] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[213]
  l0._graph = self
  l0.Loaded = self.f_213_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[291] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[291]
  l0._graph = self
  l0.Attached = self.f_291_Attached
  self[131] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[131]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[307] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[307]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Prepped = self.f_307_Prepped
  l0.Started = DummyFunction
  l0.ConvoyStarted = DummyFunction
  l0.ConvoyStopped = DummyFunction
  l0.ConvoyAggro = DummyFunction
  l0.ConvoyAggroNotPlayer = DummyFunction
  l0.ConvoyStuck = self.f_307_ConvoyStuck
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  l0.NPCsUnassigned = self.f_307_NPCsUnassigned
  l0.DestinationReached = DummyFunction
  self[119] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[119]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = self.f_119_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[286] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[286]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[274] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[274]
  l0._graph = self
  l0.Out = self.f_274_Out
  l0.SetTrue = self.f_274_SetTrue
  l0.SetFalse = self.f_274_SetFalse
  l0.Toggled = self.f_274_Toggled
  l0.SetFromBool = self.f_274_SetFromBool
  self[172] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[172]
  l0._graph = self
  l0.Started = self.f_172_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[287] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[287]
  l0._graph = self
  l0.Out = self.f_287_Out
  l0.SetTrue = self.f_287_SetTrue
  l0.SetFalse = self.f_287_SetFalse
  l0.Toggled = self.f_287_Toggled
  l0.SetFromBool = self.f_287_SetFromBool
  self[283] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.lua")
  l0 = self[283]
  l0._graph = self
  self[233] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[233]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_233_Out
  self[195] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[195]
  l0._graph = self
  l0.Out = self.f_195_Out
  l0.MessageCompleted = DummyFunction
  self[142] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[142]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_142_Added
  l0.Removed = self.f_142_Removed
  l0.Out = self.f_142_Out
  self[257] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[257]
  l0._graph = self
  l0.Out = self.f_257_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[72] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[182] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[182]
  l0._graph = self
  l0.Started = self.f_182_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_182_Neutralized
  self[298] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[298]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_298_Added
  l0.Removed = self.f_298_Removed
  l0.Out = self.f_298_Out
  self[152] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[152]
  l0._graph = self
  l0.Out = self.f_152_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[190] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[190]
  l0._graph = self
  l0.Out = self.f_190_Out
  l0.MessageCompleted = DummyFunction
  self[168] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[168]
  l0._graph = self
  l0.Started = self.f_168_Started
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_168_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[188] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[188]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[234] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[234]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_234_Added
  l0.Removed = self.f_234_Removed
  l0.Out = self.f_234_Out
  self[279] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[279]
  l0._graph = self
  l0.Loaded = self.f_279_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[309] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[309]
  l0._graph = self
  l0.Out = self.f_309_Out
  l0.Prepped = self.f_309_Prepped
  l0.Started = self.f_309_Started
  l0.ConvoyStarted = self.f_309_ConvoyStarted
  l0.ConvoyStopped = self.f_309_ConvoyStopped
  l0.ConvoyAggro = self.f_309_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_309_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_309_ConvoyStuck
  l0.VIPDied = self.f_309_VIPDied
  l0.VipVehicleDestroyed = self.f_309_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_309_NPCsUnassigned
  l0.DestinationReached = self.f_309_DestinationReached
  self[252] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[252]
  l0._graph = self
  l0.Attached = self.f_252_Attached
  self[271] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[271]
  l0._graph = self
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_271_Out
  self[184] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[184]
  l0._graph = self
  l0.Out = self.f_184_Out
  l0.MessageCompleted = DummyFunction
  self[61] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0.Started = self.f_61_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[193] = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self[193]
  l0._graph = self
  l0.Enabled = self.f_193_Enabled
  l0.Disabled = self.f_193_Disabled
  l0.DiscoveredClue = self.f_193_DiscoveredClue
  l0.UndiscoveredClue = self.f_193_UndiscoveredClue
  l0.DiscoveredAllClues = self.f_193_DiscoveredAllClues
  self[91] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[91]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_91_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[175] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[175]
  l0._graph = self
  l0.Started = self.f_175_Started
  l0.Stopped = self.f_175_Stopped
  l0.Escaped = self.f_175_Escaped
  l0.LeftArea = DummyFunction
  self[273] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[273]
  l0._graph = self
  l0.Out = self.f_273_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[209] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[209]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[269] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[269]
  l0._graph = self
  l0.Started = self.f_269_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  l0 = self[200]
  l0.LayerName = "S09M040a_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[279]
  l0.LayerName = "S09M040a_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_304()
  l0 = self[304]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[213]
  l0.LayerName = "S09M040a_Main"
  l0:Load()
end
function export:f_313_Out_0()
  local l0
  self = self._graph
  l0 = self[282]
  l0:Input(1)
end
function export:f_313_Out_1()
  local l0
  self = self._graph
  l0 = self[314]
  l0:Input(1)
end
function export:f_194_Out()
  local l0
  self = self._graph
  l0 = self[197]
  l0:In(0)
end
function export:f_250_Out()
  local l0
  self = self._graph
  l0 = self[250]
  self.allDead = l0.Target
end
function export:f_250_SetFalse()
  local l0
  self = self._graph
  l0 = self[250]
  self.allDead = l0.Target
  l0 = self[261]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_250_SetFromBool()
  local l0
  self = self._graph
  l0 = self[250]
  self.allDead = l0.Target
end
function export:f_250_SetTrue()
  local l0
  self = self._graph
  l0 = self[250]
  self.allDead = l0.Target
end
function export:f_250_Toggled()
  local l0
  self = self._graph
  l0 = self[250]
  self.allDead = l0.Target
end
function export:f_203_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_202_Out
  l0:In()
end
function export:f_203_IncrementReached()
  local l0
  self = self._graph
  l0 = self[288]
  l0:In(0)
end
function export:f_203_ObjectiveCompleted()
  local l0
  self = self._graph
  self:en_203()
  l0 = self[203]
  l0:Disable()
end
function export:f_238_Out()
  local l0
  self = self._graph
  self:en_249()
  l0 = self[249]
  l0:Enable()
end
function export:f_181_Out()
  local l0
  self = self._graph
  l0 = self[72]
  l0.Seconds = 1
  l0:Start()
end
function export:f_296_Out_0()
  local l0
  self = self._graph
  l0 = self[216]
  l0.Entity = self.car2
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_296_Out_1()
  local l0
  self = self._graph
  l0 = self[181]
  l0:In(0)
end
function export:f_199_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372070035125028"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_173_Out
  l0:Enable()
end
function export:f_305_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049707582454"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_225_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_156_Out_0()
  local l0
  self = self._graph
  l0 = self[233]
  l0:Input(2)
end
function export:f_156_Out_1()
  local l0
  self = self._graph
  l0 = self[188]
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/2864883369.bnk"
  l0:Play()
end
function export:f_177_Out()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(2)
end
function export:f_218_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_235_Out
  l0:In()
end
function export:f_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372044221758892"
  l0._graph = self
  l0.Out = self.f_245_Out
  l0.Equal = self.f_245_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_173_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372070820771988"
  l0._graph = self
  l0.Out = self.f_215_Out
  l0:Activate()
end
function export:f_312_Out()
  local l0
  self = self._graph
  l0 = self[267]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_260_Disabled()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Enable()
end
function export:f_120_Out()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(3)
end
function export:f_241_Shown()
  local l0
  self = self._graph
  l0 = self[271]
  l0:Input(3)
end
function export:f_297_Added()
  local l0
  self = self._graph
  l0 = self[297]
  self.EscortVan1 = l0.Target
  l0 = self[298]
  l0.Input = self.EscortVan2
  l0.Data[0] = "9223372046105062197"
  l0:Add()
end
function export:f_297_Out()
  local l0
  self = self._graph
  l0 = self[297]
  self.EscortVan1 = l0.Target
end
function export:f_297_Removed()
  local l0
  self = self._graph
  l0 = self[297]
  self.EscortVan1 = l0.Target
end
function export:f_84_TimeElapsed()
  local l0
  self = self._graph
  self:en_309()
  l0 = self[309]
  l0:Start()
end
function export:f_243_Out()
  local l0
  self = self._graph
  l0 = self[84]
  l0.Seconds = 1
  l0:Start()
end
function export:f_272_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_224_Out
  l0:In()
end
function export:f_235_Out()
  local l0
  self = self._graph
  l0 = self[271]
  l0:Input(2)
end
function export:f_215_Out()
  local l0
  self = self._graph
  self:en_307()
  l0 = self[307]
  l0:Prep()
end
function export:f_227_Attached()
  local l0
  self = self._graph
  self:en_236()
  l0 = self[236]
  l0:Show()
end
function export:f_202_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_222_Out_0
  l0.Out[1] = self.f_222_Out_1
  l0:In()
end
function export:f_254_Out()
  local l0
  self = self._graph
  self:en_174()
  l0 = self[174]
  l0:Enable()
end
function export:f_262_Out()
  local l0
  self = self._graph
  l0 = self[195]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
  l0.IncrementalObjectiveTotal = 3
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_200_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_255_Out
  l0:In()
end
function export:f_280_Added()
  local l0
  self = self._graph
  l0 = self[280]
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_256_Activated
  l0:Activate()
end
function export:f_280_Out()
  local l0
  self = self._graph
  l0 = self[280]
  self.Markers = l0.Target
end
function export:f_280_Removed()
  local l0
  self = self._graph
  l0 = self[280]
  self.Markers = l0.Target
end
function export:f_248_Out()
  local l0
  self = self._graph
  l0 = self[184]
  l0:ShowLastObjectiveComplete()
end
function export:f_314_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_266_A_is_True
  l0.A_is_False = self.f_266_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_285_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372069487817683"
  l0._graph = self
  l0.Out = self.f_199_Out
  l0:Activate()
end
function export:f_236_Shown()
  local l0
  self = self._graph
  l0 = self[271]
  l0:Input(5)
end
function export:f_113_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.AllExtraClues
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_306_Disabled
  l0.Activated = DummyFunction
  l0:Disable()
end
function export:f_186_Out_0()
  local l0
  self = self._graph
  self:en_241()
  l0 = self[241]
  l0:Hide()
end
function export:f_186_Out_1()
  local l0
  self = self._graph
  self:en_278()
  l0 = self[278]
  l0:Hide()
end
function export:f_186_Out_2()
  local l0
  self = self._graph
  self:en_236()
  l0 = self[236]
  l0:Hide()
end
function export:f_308_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_289_Out
  l0:In()
end
function export:f_308_DestinationReached()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_177_Out
  l0:In()
end
function export:f_308_Out()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_Prepped()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  self:en_309()
  l0 = self[309]
  l0:Prep()
end
function export:f_308_Started()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_295_Out_0
  l0.Out[1] = self.f_295_Out_1
  l0:In()
end
function export:f_308_VIPDied()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_308_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[308]
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_306_Disabled()
  local l0
  self = self._graph
  l0 = self[240]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Notification010",
    item = "Notification",
    id = "642288"
  }
  l0.Duration = 5
  l0:Display()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[244]
  l0.Affiliation = "Bratva"
  l0:SetInTargetedSearch()
end
function export:f_222_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_272_Out
  l0:In()
end
function export:f_222_Out_1()
  local l0
  self = self._graph
  l0 = self[190]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective060",
    item = "Objective",
    id = "385733"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_276_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  l0 = self[254]
  l0:In(0)
end
function export:f_310_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_179_Out
  l0:In()
end
function export:f_310_DestinationReached()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_268_Out_0
  l0.Out[1] = self.f_268_Out_1
  l0:In()
end
function export:f_310_Out()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_Prepped()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_239_Out
  l0:In()
end
function export:f_310_Started()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = self[291]
  l0.Parent = self.car3
  l0.Child = "9223372061664925010"
  l0:Attach()
end
function export:f_310_VIPDied()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_310_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[310]
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_25_EndVideo()
  local l0
  self = self._graph
  l0 = self[242]
  l0:Input(0)
end
function export:f_256_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.AllExtraClues
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_305_Activated
  l0:Activate()
end
function export:f_294_AllSpawned()
  local l0
  self = self._graph
  self:en_294()
  l0 = self[294]
  l0:AddScriptedAgents()
end
function export:f_294_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_217()
  l0 = self[217]
  l0:Enable()
end
function export:f_294_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060994542431"
  l0.NPC = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_90_Enabled()
  local l0
  self = self._graph
  l0 = self[281]
  l0:ShowLastObjectiveComplete()
end
function export:f_247_Attached()
  local l0
  self = self._graph
  self:en_241()
  l0 = self[241]
  l0:Show()
end
function export:f_196_Added()
  local l0
  self = self._graph
  l0 = self[196]
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
  l0 = self[142]
  l0.Input = self.reinforcementsBratvaNPCsCLOs
  l0.Data[0] = "9223372046105062511"
  l0:Add()
end
function export:f_196_Out()
  local l0
  self = self._graph
  l0 = self[196]
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
end
function export:f_196_Removed()
  local l0
  self = self._graph
  l0 = self[196]
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
end
function export:f_141_Activated()
  local l0
  self = self._graph
  l0 = self[287]
  l0:True()
end
function export:f_267_Out()
  local l0
  self = self._graph
  l0 = self[206]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective030",
    item = "Objective",
    id = "385730"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_270_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_75_Out_0
  l0.Out[1] = self.f_75_Out_1
  l0:In()
end
function export:f_259_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[314]
  l0:Input(0)
end
function export:f_259_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[282]
  l0:Input(0)
end
function export:f_224_Out()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Disable()
end
function export:f_191_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_170_Out
  l0:In()
end
function export:f_278_Shown()
  local l0
  self = self._graph
  l0 = self[271]
  l0:Input(4)
end
function export:f_217_CombatState()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_166_Out_0
  l0.Out[1] = self.f_166_Out_1
  l0:In()
end
function export:f_266_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 30
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_265_Out
  l0:FromFloat()
end
function export:f_266_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_276_Out
  l0:FromFloat()
end
function export:f_212_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_186_Out_0
  l0.Out[1] = self.f_186_Out_1
  l0.Out[2] = self.f_186_Out_2
  l0:In()
end
function export:f_212_Out_1()
  local l0
  self = self._graph
  l0 = self[168]
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/2018454732.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_240_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372044910146005"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_285_Out
  l0:Enable()
end
function export:f_240_MessageCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372043579956762"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_262_Out
  l0:Enable()
end
function export:f_225_Disabled()
  local l0
  self = self._graph
  l0 = self[275]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_253_Neutralized()
  local l0
  self = self._graph
  l0 = self[233]
  l0:Input(0)
end
function export:f_253_Started()
  local l0
  self = self._graph
  l0 = self[283]
  l0.Car = self.car1
  l0.StimEmitor = "9223372071710310543"
  l0:In()
end
function export:f_288_Out()
  local l0
  self = self._graph
  l0 = self[131]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_299_Added()
  local l0
  self = self._graph
  l0 = self[299]
  self.escortVan3 = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_113_Disabled
  l0.Activated = DummyFunction
  l0:Disable()
end
function export:f_299_Out()
  local l0
  self = self._graph
  l0 = self[299]
  self.escortVan3 = l0.Target
end
function export:f_299_Removed()
  local l0
  self = self._graph
  l0 = self[299]
  self.escortVan3 = l0.Target
end
function export:f_295_Out_0()
  local l0
  self = self._graph
  l0 = self[253]
  l0.Entity = self.car1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_295_Out_1()
  local l0
  self = self._graph
  l0 = self[243]
  l0:In(0)
end
function export:f_197_Out()
  local l0
  self = self._graph
  l0 = self[144]
  l0.Affiliation = "Bratva"
  l0:GetEnemiesAlive()
end
function export:f_281_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_212_Out_0
  l0.Out[1] = self.f_212_Out_1
  l0:In()
end
function export:f_127_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_176_Deactivated
  l0:Deactivate()
end
function export:f_292_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_189_Out_0
  l0.Out[1] = self.f_189_Out_1
  l0:In()
end
function export:f_261_PostOut()
  local l0
  self = self._graph
  l0 = self[242]
  l0:Input(1)
end
function export:f_228_Out()
  local l0
  self = self._graph
  l0 = self[85]
  l0:In(0)
end
function export:f_122_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_226_Out
  l0:In()
end
function export:f_122_Out_1()
  local l0
  self = self._graph
  self:en_308()
  l0 = self[308]
  l0:Prep()
end
function export:f_275_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_141_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_170_Out()
  local l0
  self = self._graph
  self:en_260()
  l0 = self[260]
  l0:Enable()
end
function export:f_144_GotNPCList()
  local l0
  self = self._graph
  l0 = self[144]
  self.allNpcs = l0.NPCList
  self:en_294()
  l0 = self[294]
  l0:Start()
end
function export:f_75_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0:In()
end
function export:f_75_Out_1()
  local l0
  self = self._graph
  l0 = self[204]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347653"
  l0:StartCommunication()
end
function export:f_245_Equal()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/2278530715.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_245_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043876904359"
  l0._graph = self
  l0.Out = self.f_126_Out
  l0.Equal = self.f_126_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_174_Disabled()
  local l0
  self = self._graph
  self:en_260()
  l0 = self[260]
  l0:Disable()
end
function export:f_174_Engaged()
  local l0
  self = self._graph
  self:en_174()
  l0 = self[174]
  l0:Disable()
end
function export:f_80_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Van2_ExtraClues
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_300_Activated
  l0:Activate()
end
function export:f_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[274]
  l0:False()
end
function export:f_237_Out()
  local l0
  self = self._graph
  self:en_308()
  l0 = self[308]
  l0:Start()
end
function export:f_282_Out()
  local l0
  self = self._graph
  l0 = self[312]
  l0:In(0)
end
function export:f_242_Out()
  local l0
  self = self._graph
  l0 = self[152]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_198_Out()
  local l0
  self = self._graph
  l0 = self[271]
  l0:Input(0)
end
function export:f_239_Out()
  local l0
  self = self._graph
  l0 = self[237]
  l0:In(0)
end
function export:f_216_Neutralized()
  local l0
  self = self._graph
  l0 = self[233]
  l0:Input(1)
end
function export:f_216_Started()
  local l0
  self = self._graph
  l0 = self[290]
  l0.Car = self.car2
  l0.StimEmitor = "9223372071710309393"
  l0:In()
end
function export:f_249_Disabled()
  local l0
  self = self._graph
  l0 = self[259]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347654"
  l0:StartCommunication()
end
function export:f_249_OnNetworkSurfingActivated()
  local l0
  self = self._graph
  self:en_209()
  l0 = self[209]
  l0:HideNotification()
end
function export:f_249_OnNetworkSurfingDeactivated()
  local l0
  self = self._graph
  self:en_209()
  l0 = self[209]
  l0:Display()
end
function export:f_284_Out()
  local l0
  self = self._graph
  l0 = self[288]
  l0:In(2)
end
function export:f_176_Deactivated()
  local l0
  self = self._graph
  self:en_304()
  l0 = self[304]
  l0:End()
end
function export:f_219_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_214_Out
  l0:In()
end
function export:f_89_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[127]
  l0.Seconds = 10
  l0:Start()
end
function export:f_213_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_187_Out
  l0:In()
end
function export:f_291_Attached()
  local l0
  self = self._graph
  l0 = self[257]
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/3172548278.bnk"
  l0:Play()
end
function export:f_307_ConvoyStuck()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_120_Out
  l0:In()
end
function export:f_307_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_246_Out
  l0:In()
end
function export:f_307_Prepped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_122_Out_0
  l0.Out[1] = self.f_122_Out_1
  l0:In()
end
function export:f_119_Aborted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060994542431"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_248_Out
  l0:Disable()
end
function export:f_274_Out()
  local l0
  self = self._graph
  l0 = self[274]
  self.allDead = l0.Target
end
function export:f_274_SetFalse()
  local l0
  self = self._graph
  l0 = self[274]
  self.allDead = l0.Target
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049707582454"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_270_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_274_SetFromBool()
  local l0
  self = self._graph
  l0 = self[274]
  self.allDead = l0.Target
end
function export:f_274_SetTrue()
  local l0
  self = self._graph
  l0 = self[274]
  self.allDead = l0.Target
end
function export:f_274_Toggled()
  local l0
  self = self._graph
  l0 = self[274]
  self.allDead = l0.Target
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(1)
end
function export:f_214_Out()
  local l0
  self = self._graph
  self:en_249()
  l0 = self[249]
  l0:Disable()
end
function export:f_232_Enabled()
  local l0
  self = self._graph
  self:en_193()
  l0 = self[193]
  l0:Enable()
end
function export:f_172_Started()
  local l0
  self = self._graph
  l0 = self[227]
  l0.Parent = "9223372043876904359"
  l0.Child = "9223372045907873872"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_287_Out()
  local l0
  self = self._graph
  l0 = self[287]
  self.Checkpoint = l0.Target
end
function export:f_287_SetFalse()
  local l0
  self = self._graph
  l0 = self[287]
  self.Checkpoint = l0.Target
end
function export:f_287_SetFromBool()
  local l0
  self = self._graph
  l0 = self[287]
  self.Checkpoint = l0.Target
end
function export:f_287_SetTrue()
  local l0
  self = self._graph
  l0 = self[287]
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_313_Out_0
  l0.Out[1] = self.f_313_Out_1
  l0:In()
end
function export:f_287_Toggled()
  local l0
  self = self._graph
  l0 = self[287]
  self.Checkpoint = l0.Target
end
function export:f_302_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072557569185"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_301_Activated
  l0:Activate()
end
function export:f_265_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  l0 = self[254]
  l0:In(1)
end
function export:f_300_Activated()
  local l0
  self = self._graph
  l0 = self[269]
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/3470714642.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_233_Out()
  local l0
  self = self._graph
  l0 = self[284]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
  l0:IncrementObjective()
end
function export:f_289_Out()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(2)
end
function export:f_195_Out()
  local l0
  self = self._graph
  self:en_203()
  l0 = self[203]
  l0:Enable()
end
function export:f_125_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_198_Out
  l0:In()
end
function export:f_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043579956824"
  l0._graph = self
  l0.Out = self.f_218_Out
  l0.Equal = self.f_218_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_246_Out()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(3)
end
function export:f_142_Added()
  local l0
  self = self._graph
  l0 = self[142]
  self.reinforcementsBratvaNPCsCLOs = l0.Target
  l0 = self[297]
  l0.Input = self.EscortVan1
  l0.Data[0] = "9223372048066923587"
  l0:Add()
end
function export:f_142_Out()
  local l0
  self = self._graph
  l0 = self[142]
  self.reinforcementsBratvaNPCsCLOs = l0.Target
end
function export:f_142_Removed()
  local l0
  self = self._graph
  l0 = self[142]
  self.reinforcementsBratvaNPCsCLOs = l0.Target
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = self[182]
  l0.Entity = self.car3
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_72_TimeElapsed()
  local l0
  self = self._graph
  self:en_310()
  l0 = self[310]
  l0:Start()
end
function export:f_182_Neutralized()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_156_Out_0
  l0.Out[1] = self.f_156_Out_1
  l0:In()
end
function export:f_182_Started()
  local l0
  self = self._graph
  l0 = self[293]
  l0.Car = self.car3
  l0.StimEmitor = "9223372071710310541"
  l0:In()
end
function export:f_298_Added()
  local l0
  self = self._graph
  l0 = self[298]
  self.EscortVan2 = l0.Target
  l0 = self[299]
  l0.Input = self.escortVan3
  l0.Data[0] = "9223372046105062196"
  l0:Add()
end
function export:f_298_Out()
  local l0
  self = self._graph
  l0 = self[298]
  self.EscortVan2 = l0.Target
end
function export:f_298_Removed()
  local l0
  self = self._graph
  l0 = self[298]
  self.EscortVan2 = l0.Target
end
function export:f_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_201_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_190_Out()
  local l0
  self = self._graph
  self:en_175()
  l0 = self[175]
  l0:Start()
end
function export:f_168_Finished()
  local l0
  self = self._graph
  l0 = self[229]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055904688143"
  l0:StartCommunication()
end
function export:f_168_Started()
  local l0
  self = self._graph
  l0 = self[273]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_301_Activated()
  local l0
  self = self._graph
  l0 = self[172]
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/345401540.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_166_Out_0()
  local l0
  self = self._graph
  l0 = self[288]
  l0:In(1)
end
function export:f_166_Out_1()
  local l0
  self = self._graph
  self:en_217()
  l0 = self[217]
  l0:Disable()
end
function export:f_234_Added()
  local l0
  self = self._graph
  l0 = self[234]
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0.Enabled = self.f_232_Enabled
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0:Enable()
end
function export:f_234_Out()
  local l0
  self = self._graph
  l0 = self[234]
  self.Markers = l0.Target
  l0 = self[191]
  l0:Input(0)
end
function export:f_234_Removed()
  local l0
  self = self._graph
  l0 = self[234]
  self.Markers = l0.Target
end
function export:f_126_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372043995244260"
  l0.ClueIds = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_302_Activated
  l0:Activate()
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043876904357"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_80_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_279_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_292_Out
  l0:In()
end
function export:f_309_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_208_Out
  l0:In()
end
function export:f_309_DestinationReached()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_140_Out
  l0:In()
end
function export:f_309_Out()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_Prepped()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  self:en_310()
  l0 = self[310]
  l0:Prep()
end
function export:f_309_Started()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_296_Out_0
  l0.Out[1] = self.f_296_Out_1
  l0:In()
end
function export:f_309_VIPDied()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_309_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[309]
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_252_Attached()
  local l0
  self = self._graph
  self:en_278()
  l0 = self[278]
  l0:Show()
end
function export:f_271_Out()
  local l0
  self = self._graph
  l0 = self[286]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective020",
    item = "Objective",
    id = "385734"
  }
  l0:IncrementObjective()
end
function export:f_268_Out_0()
  local l0
  self = self._graph
  l0 = self[223]
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/2864883369.bnk"
  l0:Play()
end
function export:f_268_Out_1()
  local l0
  self = self._graph
  l0 = self[194]
  l0:Input(0)
end
function export:f_208_Out()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(1)
end
function export:f_255_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[250]
  l0:False()
end
function export:f_184_Out()
  local l0
  self = self._graph
  l0 = self[91]
  l0.PlayerEntity = self.Player
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347655"
  l0:StartCommunication()
end
function export:f_61_Started()
  local l0
  self = self._graph
  l0 = self[247]
  l0.Parent = "9223372044221758892"
  l0.Child = "9223372045907873810"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_193_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_219_Out
  l0:In()
end
function export:f_193_DiscoveredAllClues()
  local l0
  self = self._graph
  self:en_193()
  l0 = self[193]
  l0:Disable()
end
function export:f_193_DiscoveredClue()
  local l0
  self = self._graph
  l0 = self[193]
  self.temp = l0.ClueOut
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372044419131727"
  l0._graph = self
  l0.Out = self.f_125_Out
  l0.Equal = self.f_125_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_193_Enabled()
  local l0
  self = self._graph
  l0 = self[238]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective020",
    item = "Objective",
    id = "385734"
  }
  l0.IncrementalObjectiveTotal = 5
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_193_UndiscoveredClue()
  local l0
  self = self._graph
  l0 = self[193]
  self.temp = l0.ClueOut
end
function export:f_91_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[89]
  l0.ItemDB = "Items.9223372059111819877"
  l0:ExecuteRewards()
end
function export:f_175_Escaped()
  local l0
  self = self._graph
  self:en_175()
  l0 = self[175]
  l0:Stop()
end
function export:f_175_Started()
  local l0
  self = self._graph
  l0 = self[264]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_175_Stopped()
  local l0
  self = self._graph
  l0 = self[119]
  l0.PGTMissionArea = "9223372060994542431"
  l0:Abort()
end
function export:f_273_Out()
  local l0
  self = self._graph
  l0 = self[196]
  l0.Input = self.reinforcementsBratvaVehiclesCLOs
  l0.Data[0] = "9223372046105062123"
  l0:Add()
end
function export:f_189_Out_0()
  local l0
  self = self._graph
  l0 = self[280]
  l0.Input = self.Markers
  l0.Data[0] = "9223372044419131727"
  l0.Data[1] = "9223372043579956824"
  l0.Data[2] = "9223372043876904357"
  l0.Data[3] = "9223372043876904359"
  l0.Data[4] = "9223372044221758892"
  l0:Add()
end
function export:f_189_Out_1()
  local l0
  self = self._graph
  l0 = self[191]
  l0:Input(1)
end
function export:f_269_Started()
  local l0
  self = self._graph
  l0 = self[252]
  l0.Parent = "9223372043876904357"
  l0.Child = "9223372045907873804"
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_201_Activated()
  local l0
  self = self._graph
  l0 = self[234]
  l0.Input = self.Markers
  l0.Data[0] = "9223372044419131727"
  l0.Data[1] = "9223372043579956824"
  l0.Data[2] = "9223372043876904357"
  l0.Data[3] = "9223372043876904359"
  l0.Data[4] = "9223372044221758892"
  l0:Add()
end
function export:f_179_Out()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(0)
end
function export:f_226_Out()
  local l0
  self = self._graph
  self:en_307()
  l0 = self[307]
  l0:Start()
end
function export:en_203()
  local l0
  l0 = self[203]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
end
function export:en_260()
  local l0
  l0 = self[260]
  l0.MissionArea = "9223372047965872629"
  l0.MissionLayer = "S09M040a_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_241()
  local l0
  l0 = self[241]
  l0.MapPoint = "9223372045907873810"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:en_304()
  local l0
  l0 = self[304]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S09M040a_Main"
  l0.ShowMissionComplete = 1
end
function export:en_236()
  local l0
  l0 = self[236]
  l0.MapPoint = "9223372045907873872"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:en_308()
  local l0
  l0 = self[308]
  l0.VipVehicleCLO = "9223372047965758547"
  l0.VipCLO = "9223372047965758548"
  l0.Vip_WanderZone = "9223372070373552421"
  l0.EscortCLO_FrontPassenger = "9223372048066923587"
  l0.EscortFrontPassenger_WanderZone = "9223372070373552421"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372070196166092"
  l0.Updated_Destination = "9223372070373727205"
  l0.AutoUnassign = 1
  l0.Affiliation = "Bratva"
  l0.UpdatedWanderZone = "9223372072944771516"
  l0.IgnorePlayer = 0
end
function export:en_310()
  local l0
  l0 = self[310]
  l0.VipVehicleCLO = "9223372045907873563"
  l0.VipCLO = "9223372045907873630"
  l0.Vip_WanderZone = "9223372070196168990"
  l0.EscortCLO_FrontPassenger = "9223372046105062196"
  l0.EscortFrontPassenger_WanderZone = "9223372070196168990"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372070196168987"
  l0.Updated_Destination = "9223372070373727209"
  l0.AutoUnassign = 1
  l0.Affiliation = "Bratva"
  l0.UpdatedWanderZone = "9223372072944771527"
  l0.IgnorePlayer = 0
end
function export:en_294()
  local l0
  l0 = self[294]
  l0.PGTMissionArea = "9223372060994542431"
  l0.AgentList = self.allNpcs
end
function export:en_90()
  local l0
  l0 = self[90]
  l0.MissionArea = "9223372069487817217"
  l0.MissionLayer = "S09M040a_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_278()
  local l0
  l0 = self[278]
  l0.MapPoint = "9223372045907873804"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:en_217()
  local l0
  l0 = self[217]
  l0.Affiliation = "Bratva"
  l0.CheckStateNow = 1
end
function export:en_174()
  local l0
  l0 = self[174]
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
  l0.MissionArea = "9223372043579956762"
  l0.TextDelay = self.EngageTimer
end
function export:en_249()
  local l0
  l0 = self[249]
  l0.CheckNow = 1
end
function export:en_307()
  local l0
  l0 = self[307]
  l0.VipVehicleCLO = "9223372046105062135"
  l0.VipCLO = "9223372046105062199"
  l0.Vip_WanderZone = "9223372070373552809"
  l0.EscortCLO_FrontPassenger = "9223372046105062511"
  l0.EscortFrontPassenger_WanderZone = "9223372070373552421"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372070373553002"
  l0.Updated_Destination = "9223372070373727213"
  l0.AutoUnassign = 1
  l0.Affiliation = "Bratva"
  l0.UpdatedWanderZone = "9223372072944771516"
  l0.IgnorePlayer = 0
end
function export:en_309()
  local l0
  l0 = self[309]
  l0.VipVehicleCLO = "9223372045907873497"
  l0.VipCLO = "9223372045907873626"
  l0.Vip_WanderZone = "9223372070196168436"
  l0.EscortCLO_FrontPassenger = "9223372046105062197"
  l0.EscortFrontPassenger_WanderZone = "9223372070196168436"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372057147934442"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372071520342647"
  l0.Destination = "9223372070196168434"
  l0.Updated_Destination = "9223372070373727207"
  l0.AutoUnassign = 1
  l0.Affiliation = "Bratva"
  l0.UpdatedWanderZone = "9223372072944771527"
  l0.IgnorePlayer = 0
end
function export:en_193()
  local l0
  l0 = self[193]
  l0.ClueList = self.Markers
  l0.CheckNow = 1
end
function export:en_175()
  local l0
  l0 = self[175]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047218991045"
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
end
function export:en_209()
  local l0
  l0 = self[209]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
_compilerVersion = 4
