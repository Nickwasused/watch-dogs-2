export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  cbox:RegisterBox("domino/System/PrepareClueController.lua")
  cbox:RegisterBox("domino/System/PrepareClueMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040A_VID_Mosaic02-OS.S09M040A_VID_Mosaic02-OS_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
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
  self._name = "S09M040a_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main"
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
  self.box_MissionMessageController_v3_206 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_206
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|7296107"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_194 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_194
  l0._graph = self
  l0._name = "box_MultipleOR_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|46090766"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_194_Out
  self.box_SetBoolean_v2_250 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_250
  l0._graph = self
  l0._name = "box_SetBoolean_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|75252904"
  l0.Out = self.f_box_SetBoolean_v2_250_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_250_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_250_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_250_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_250_SetFromBool
  self.box_PhoneCommunicationController_229 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_229
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|82000906"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ObjectiveMonitor_v2_203 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_203
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|111305206"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ObjectiveMonitor_v2_203_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_203_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = self.f_box_ObjectiveMonitor_v2_203_IncrementReached
  l0.IncrementNotReached = DummyFunction
  self.box_MissionMessageController_v3_238 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_238
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|112691558"
  l0.Out = self.f_box_MissionMessageController_v3_238_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_204 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_204
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|116489929"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AISquadStateController_244 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_244
  l0._graph = self
  l0._name = "box_AISquadStateController_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|144079812"
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
  self.box_OnceOnly_v3_181 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_181
  l0._graph = self
  l0._name = "box_OnceOnly_v3_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|144647550"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_181_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_312 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_312
  l0._graph = self
  l0._name = "box_OnceOnly_v3_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|253946378"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_312_Out
  l0.ResetOut = DummyFunction
  self.box_MissionZone_260 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_260
  l0._graph = self
  l0._name = "box_MissionZone_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|268531299"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_260_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MapPointController_v4_241 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_241
  l0._graph = self
  l0._name = "box_MapPointController_v4_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|284187042"
  l0.Shown = self.f_box_MapPointController_v4_241_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_ListWriter_297 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_297
  l0._graph = self
  l0._name = "box_ListWriter_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|310214764"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_297_Added
  l0.Removed = self.f_box_ListWriter_297_Removed
  l0.Out = self.f_box_ListWriter_297_Out
  self.box_Timer_v2_84 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|319473230"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_243 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_243
  l0._graph = self
  l0._name = "box_OnceOnly_v3_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|329677881"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_243_Out
  l0.ResetOut = DummyFunction
  self.box_SnapAndBind_227 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_227
  l0._graph = self
  l0._name = "box_SnapAndBind_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|367301390"
  l0.Attached = self.f_box_SnapAndBind_227_Attached
  self.box_OnceOnly_v3_254 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_254
  l0._graph = self
  l0._name = "box_OnceOnly_v3_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|385209734"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_254_Out
  l0.ResetOut = DummyFunction
  self.box_Mission_End_304 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_304
  l0._graph = self
  l0._name = "box_Mission_End_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|395025879"
  self.box_MissionLayer_v2_200 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_200
  l0._graph = self
  l0._name = "box_MissionLayer_v2_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|414882311"
  l0.Loaded = self.f_box_MissionLayer_v2_200_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListWriter_280 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_280
  l0._graph = self
  l0._name = "box_ListWriter_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|427847271"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_280_Added
  l0.Removed = self.f_box_ListWriter_280_Removed
  l0.Out = self.f_box_ListWriter_280_Out
  self.box_MultipleOR_314 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_314
  l0._graph = self
  l0._name = "box_MultipleOR_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|437487137"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_314_Out
  self.box_MapPointController_v4_236 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_236
  l0._graph = self
  l0._name = "box_MapPointController_v4_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|485423475"
  l0.Shown = self.f_box_MapPointController_v4_236_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Prepare_Convoy_308 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_308
  l0._graph = self
  l0._name = "box_Prepare_Convoy_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|509903673"
  l0.Out = self.f_box_Prepare_Convoy_308_Out
  l0.Prepped = self.f_box_Prepare_Convoy_308_Prepped
  l0.Started = self.f_box_Prepare_Convoy_308_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_308_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_308_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_308_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_308_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_308_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_308_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_308_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_308_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_308_DestinationReached
  self.box_PlaySound_v2_223 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_223
  l0._graph = self
  l0._name = "box_PlaySound_v2_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|535776179"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_85 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_85
  l0._graph = self
  l0._name = "box_OnceOnly_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|543495455"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_85_Out
  l0.ResetOut = DummyFunction
  self.box_Prepare_Convoy_310 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_310
  l0._graph = self
  l0._name = "box_Prepare_Convoy_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|614019615"
  l0.Out = self.f_box_Prepare_Convoy_310_Out
  l0.Prepped = self.f_box_Prepare_Convoy_310_Prepped
  l0.Started = self.f_box_Prepare_Convoy_310_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_310_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_310_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_310_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_310_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_310_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_310_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_310_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_310_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_310_DestinationReached
  self.box_S09M040A_VID_Mosaic02_OS_Main_25 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040A_VID_Mosaic02-OS.S09M040A_VID_Mosaic02-OS_Main.debug.lua")
  l0 = self.box_S09M040A_VID_Mosaic02_OS_Main_25
  l0._graph = self
  l0._name = "box_S09M040A_VID_Mosaic02_OS_Main_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|618709583"
  l0.EndVideo = self.f_box_S09M040A_VID_Mosaic02_OS_Main_25_EndVideo
  self.box_PGTController_v2_294 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_294
  l0._graph = self
  l0._name = "box_PGTController_v2_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|627777048"
  l0.Started = self.f_box_PGTController_v2_294_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_294_AllSpawned
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_294_ScriptedAgentsAdded
  self.box_MissionZone_90 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_90
  l0._graph = self
  l0._name = "box_MissionZone_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|662270553"
  l0.Enabled = self.f_box_MissionZone_90_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_SnapAndBind_247 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_247
  l0._graph = self
  l0._name = "box_SnapAndBind_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|688063512"
  l0.Attached = self.f_box_SnapAndBind_247_Attached
  self.box_ListWriter_196 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_196
  l0._graph = self
  l0._name = "box_ListWriter_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|703577892"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_196_Added
  l0.Removed = self.f_box_ListWriter_196_Removed
  l0.Out = self.f_box_ListWriter_196_Out
  self.box_MissionCheckpointReach_267 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_267
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|710711157"
  l0.Out = self.f_box_MissionCheckpointReach_267_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S09M040a_CarVSForklift_293 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.debug.lua")
  l0 = self.box_S09M040a_CarVSForklift_293
  l0._graph = self
  l0._name = "box_S09M040a_CarVSForklift_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|729220074"
  self.box_PhoneCommunicationController_259 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_259
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|753759733"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_259_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_259_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_191 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_191
  l0._graph = self
  l0._name = "box_MultipleOR_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|776901717"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_191_Out
  self.box_MapPointController_v4_278 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_278
  l0._graph = self
  l0._name = "box_MapPointController_v4_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|777733805"
  l0.Shown = self.f_box_MapPointController_v4_278_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_AISquadStateMonitor_217 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_217
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|795641809"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_217_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_TutorialController_240 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_240
  l0._graph = self
  l0._name = "box_TutorialController_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|813461387"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_240_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = self.f_box_TutorialController_240_MessageCompleted
  self.box_Neutralize_Gameplay_253 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_253
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|821850819"
  l0.Started = self.f_box_Neutralize_Gameplay_253_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_253_Neutralized
  self.box_OnceOnly_v3_288 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_288
  l0._graph = self
  l0._name = "box_OnceOnly_v3_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|825042248"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_288_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_299 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_299
  l0._graph = self
  l0._name = "box_ListWriter_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|849732729"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_299_Added
  l0.Removed = self.f_box_ListWriter_299_Removed
  l0.Out = self.f_box_ListWriter_299_Out
  self.box_OnceOnly_v3_197 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_197
  l0._graph = self
  l0._name = "box_OnceOnly_v3_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|861013535"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_197_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_281 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_281
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|888128330"
  l0.Out = self.f_box_MissionMessageController_v3_281_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_127 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_127
  l0._graph = self
  l0._name = "box_Timer_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|913542798"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_127_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_261 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_261
  l0._graph = self
  l0._name = "box_CinematicPrep_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|922952963"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_261_PostOut
  self.box_MultipleOR_228 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_228
  l0._graph = self
  l0._name = "box_MultipleOR_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|986111970"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_228_Out
  self.box_CinematicPrep_275 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_275
  l0._graph = self
  l0._name = "box_CinematicPrep_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1050057654"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_275_PostOut
  self.box_S09M040a_CarVSForklift_290 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.debug.lua")
  l0 = self.box_S09M040a_CarVSForklift_290
  l0._graph = self
  l0._name = "box_S09M040a_CarVSForklift_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1066459674"
  self.box_GetNPC_144 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_144
  l0._graph = self
  l0._name = "box_GetNPC_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1142009829"
  l0.GotNPCList = self.f_box_GetNPC_144_GotNPCList
  self.box_Prepare_EngageMonitor_174 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_EngageMonitor.debug.lua")
  l0 = self.box_Prepare_EngageMonitor_174
  l0._graph = self
  l0._name = "box_Prepare_EngageMonitor_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1159568851"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Prepare_EngageMonitor_174_Disabled
  l0.Engaged = self.f_box_Prepare_EngageMonitor_174_Engaged
  self.box_OnceOnly_v3_237 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_237
  l0._graph = self
  l0._name = "box_OnceOnly_v3_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1226053734"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_237_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_282 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_282
  l0._graph = self
  l0._name = "box_MultipleOR_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1262807846"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_282_Out
  self.box_MultipleOR_242 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_242
  l0._graph = self
  l0._name = "box_MultipleOR_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1269745266"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_242_Out
  self.box_Neutralize_Gameplay_216 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_216
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1335899798"
  l0.Started = self.f_box_Neutralize_Gameplay_216_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_216_Neutralized
  self.box_Network_Surfing_Monitor_249 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_249
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1337478696"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Network_Surfing_Monitor_249_Disabled
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_249_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = self.f_box_Network_Surfing_Monitor_249_OnNetworkSurfingDeactivated
  self.box_PlaySound_v2_264 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_264
  l0._graph = self
  l0._name = "box_PlaySound_v2_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1340097820"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_284 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_284
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1347334175"
  l0.Out = self.f_box_MissionMessageController_v3_284_Out
  l0.MessageCompleted = DummyFunction
  self.box_RewardController_v3_89 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_89
  l0._graph = self
  l0._name = "box_RewardController_v3_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1425855485"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_89_RewardsExecuted
  self.box_MissionLayer_v2_213 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_213
  l0._graph = self
  l0._name = "box_MissionLayer_v2_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1427111081"
  l0.Loaded = self.f_box_MissionLayer_v2_213_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SnapAndBind_291 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_291
  l0._graph = self
  l0._name = "box_SnapAndBind_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1432134496"
  l0.Attached = self.f_box_SnapAndBind_291_Attached
  self.box_PlaySound_v2_131 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_131
  l0._graph = self
  l0._name = "box_PlaySound_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1449061239"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Prepare_Convoy_307 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_307
  l0._graph = self
  l0._name = "box_Prepare_Convoy_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1450417903"
  l0.Out = DummyFunction
  l0.Prepped = self.f_box_Prepare_Convoy_307_Prepped
  l0.Started = DummyFunction
  l0.ConvoyStarted = DummyFunction
  l0.ConvoyStopped = DummyFunction
  l0.ConvoyAggro = DummyFunction
  l0.ConvoyAggroNotPlayer = DummyFunction
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_307_ConvoyStuck
  l0.VIPDied = DummyFunction
  l0.VipVehicleDestroyed = DummyFunction
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_307_NPCsUnassigned
  l0.DestinationReached = DummyFunction
  self.box_PGTController_v2_119 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_119
  l0._graph = self
  l0._name = "box_PGTController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1452221038"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_119_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionMessageController_v3_286 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_286
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1452819296"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_274 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_274
  l0._graph = self
  l0._name = "box_SetBoolean_v2_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1461014101"
  l0.Out = self.f_box_SetBoolean_v2_274_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_274_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_274_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_274_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_274_SetFromBool
  self.box_PlayDialog_v2_172 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_172
  l0._graph = self
  l0._name = "box_PlayDialog_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1494829606"
  l0.Started = self.f_box_PlayDialog_v2_172_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_287 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_287
  l0._graph = self
  l0._name = "box_SetBoolean_v2_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1500191724"
  l0.Out = self.f_box_SetBoolean_v2_287_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_287_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_287_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_287_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_287_SetFromBool
  self.box_S09M040a_CarVSForklift_283 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M040a/S09M040a.S09M040a_CarVSForklift.debug.lua")
  l0 = self.box_S09M040a_CarVSForklift_283
  l0._graph = self
  l0._name = "box_S09M040a_CarVSForklift_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1513188453"
  self.box_MultipleOR_233 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_233
  l0._graph = self
  l0._name = "box_MultipleOR_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1537834046"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_233_Out
  self.box_MissionMessageController_v3_195 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_195
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1591307615"
  l0.Out = self.f_box_MissionMessageController_v3_195_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_142 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_142
  l0._graph = self
  l0._name = "box_ListWriter_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1601556157"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_142_Added
  l0.Removed = self.f_box_ListWriter_142_Removed
  l0.Out = self.f_box_ListWriter_142_Out
  self.box_PlaySound_v2_257 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_257
  l0._graph = self
  l0._name = "box_PlaySound_v2_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1602239030"
  l0.Out = self.f_box_PlaySound_v2_257_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1603979557"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Neutralize_Gameplay_182 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_182
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1607574985"
  l0.Started = self.f_box_Neutralize_Gameplay_182_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_182_Neutralized
  self.box_ListWriter_298 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_298
  l0._graph = self
  l0._name = "box_ListWriter_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1611102793"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_298_Added
  l0.Removed = self.f_box_ListWriter_298_Removed
  l0.Out = self.f_box_ListWriter_298_Out
  self.box_MissionCheckpointReach_152 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_152
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1626293278"
  l0.Out = self.f_box_MissionCheckpointReach_152_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_190 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_190
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1638304385"
  l0.Out = self.f_box_MissionMessageController_v3_190_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_168 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_168
  l0._graph = self
  l0._name = "box_PlayDialog_v2_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1643719176"
  l0.Started = self.f_box_PlayDialog_v2_168_Started
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_168_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_188 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_188
  l0._graph = self
  l0._name = "box_PlaySound_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1671245077"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_234 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_234
  l0._graph = self
  l0._name = "box_ListWriter_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1736921924"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_234_Added
  l0.Removed = self.f_box_ListWriter_234_Removed
  l0.Out = self.f_box_ListWriter_234_Out
  self.box_MissionLayer_v2_279 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_279
  l0._graph = self
  l0._name = "box_MissionLayer_v2_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1825605416"
  l0.Loaded = self.f_box_MissionLayer_v2_279_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Prepare_Convoy_309 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_309
  l0._graph = self
  l0._name = "box_Prepare_Convoy_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1826133442"
  l0.Out = self.f_box_Prepare_Convoy_309_Out
  l0.Prepped = self.f_box_Prepare_Convoy_309_Prepped
  l0.Started = self.f_box_Prepare_Convoy_309_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_309_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_309_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_309_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_309_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_309_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_309_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_309_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_309_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_309_DestinationReached
  self.box_SnapAndBind_252 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_252
  l0._graph = self
  l0._name = "box_SnapAndBind_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1840966732"
  l0.Attached = self.f_box_SnapAndBind_252_Attached
  self.box_MultipleOR_271 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_271
  l0._graph = self
  l0._name = "box_MultipleOR_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1852823681"
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_box_MultipleOR_271_Out
  self.box_MissionMessageController_v3_184 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_184
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1888836748"
  l0.Out = self.f_box_MissionMessageController_v3_184_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_61 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_61
  l0._graph = self
  l0._name = "box_PlayDialog_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1889012885"
  l0.Started = self.f_box_PlayDialog_v2_61_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PrepareClueMonitor_193 = cbox:CreateBox("domino/System/PrepareClueMonitor.lua")
  l0 = self.box_PrepareClueMonitor_193
  l0._graph = self
  l0._name = "box_PrepareClueMonitor_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1918930166"
  l0.Enabled = self.f_box_PrepareClueMonitor_193_Enabled
  l0.Disabled = self.f_box_PrepareClueMonitor_193_Disabled
  l0.DiscoveredClue = self.f_box_PrepareClueMonitor_193_DiscoveredClue
  l0.UndiscoveredClue = self.f_box_PrepareClueMonitor_193_UndiscoveredClue
  l0.DiscoveredAllClues = self.f_box_PrepareClueMonitor_193_DiscoveredAllClues
  self.box_PhoneCommunicationController_91 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_91
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1935681736"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_91_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Escape_Gameplay_175 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_175
  l0._graph = self
  l0._name = "box_Escape_Gameplay_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1939497051"
  l0.Started = self.f_box_Escape_Gameplay_175_Started
  l0.Stopped = self.f_box_Escape_Gameplay_175_Stopped
  l0.Escaped = self.f_box_Escape_Gameplay_175_Escaped
  l0.LeftArea = DummyFunction
  self.box_PlaySound_v2_273 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_273
  l0._graph = self
  l0._name = "box_PlaySound_v2_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1945224319"
  l0.Out = self.f_box_PlaySound_v2_273_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TutorialController_209 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_209
  l0._graph = self
  l0._name = "box_TutorialController_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1957186940"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_269 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_269
  l0._graph = self
  l0._name = "box_PlayDialog_v2_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2045416687"
  l0.Started = self.f_box_PlayDialog_v2_269_Started
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
  l0 = self.box_MissionLayer_v2_200
  l0.LayerName = "S09M040a_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1684844273", "1684844273", "S09M040a_Main", "CheckPoint_0", "box_MissionLayer_v2_200.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_279
  l0.LayerName = "S09M040a_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|156325830", "156325830", "S09M040a_Main", "CheckPoint_1", "box_MissionLayer_v2_279.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_304()
  l0 = self.box_Mission_End_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|693832145", "693832145", "S09M040a_Main", "CheckPoint_2", "box_Mission_End_304.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_213
  l0.LayerName = "S09M040a_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|986982394", "986982394", "S09M040a_Main", "In", "box_MissionLayer_v2_213.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_313_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_282()
  l0 = self.box_MultipleOR_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|878441302", "878441302", "S09M040a_Main", "box_Ordered_Output_313.Out", "box_MultipleOR_282.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_313_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_314()
  l0 = self.box_MultipleOR_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|515319246", "515319246", "S09M040a_Main", "box_Ordered_Output_313.Out", "box_MultipleOR_314.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_194_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_194
  l1 = self.box_OnceOnly_v3_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1846118696", "1846118696", "S09M040a_Main", "box_MultipleOR_194.Out", "box_OnceOnly_v3_197.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_250_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_250_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.allDead = l0.Target
  l0 = self.box_CinematicPrep_261
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_250
  l1 = self.box_CinematicPrep_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1247453114", "1247453114", "S09M040a_Main", "box_SetBoolean_v2_250.SetFalse", "box_CinematicPrep_261.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_250_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_250_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_250_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_250
  self.allDead = l0.Target
end
function export:f_box_ObjectiveMonitor_v2_203_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|376007488"
  l0.Out = self.f_box_Simple_Node_202_Out
  l0 = self.box_ObjectiveMonitor_v2_203
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|956901916", "956901916", "S09M040a_Main", "box_ObjectiveMonitor_v2_203.Disabled", "box_Simple_Node_202.In", l0, l1)
  l1:In()
end
function export:f_box_ObjectiveMonitor_v2_203_IncrementReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_288()
  l0 = self.box_ObjectiveMonitor_v2_203
  l1 = self.box_OnceOnly_v3_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1851563189", "1851563189", "S09M040a_Main", "box_ObjectiveMonitor_v2_203.IncrementReached", "box_OnceOnly_v3_288.In", l0, l1)
  l1:In(0)
end
function export:f_box_ObjectiveMonitor_v2_203_ObjectiveCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_203()
  l0 = self.box_ObjectiveMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1365976009", "1365976009", "S09M040a_Main", "box_ObjectiveMonitor_v2_203.ObjectiveCompleted", "box_ObjectiveMonitor_v2_203.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_238_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_249()
  l0 = self.box_MissionMessageController_v3_238
  l1 = self.box_Network_Surfing_Monitor_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1935326264", "1935326264", "S09M040a_Main", "box_MissionMessageController_v3_238.Out", "box_Network_Surfing_Monitor_249.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_181_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = 1
  l0 = self.box_OnceOnly_v3_181
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|539815880", "539815880", "S09M040a_Main", "box_OnceOnly_v3_181.Out", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_296_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Neutralize_Gameplay_216
  l0.Entity = self.car2
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1421645821", "1421645821", "S09M040a_Main", "box_Ordered_Output_296.Out", "box_Neutralize_Gameplay_216.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_296_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1185795789", "1185795789", "S09M040a_Main", "box_Ordered_Output_296.Out", "box_OnceOnly_v3_181.In", clone, l0)
  l0:In(0)
end
function export:f_box_Phys_Zone_Cleanup_199_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372070035125028"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|235949994"
  l0.Out = self.f_box_AI_Agent_Zone_173_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1269409446", "1269409446", "S09M040a_Main", "box_Phys_Zone_Cleanup_199.Out", "box_AI_Agent_Zone_173.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PrepareClueController_305_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049707582454"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|815924368"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_225_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1189903672", "1189903672", "S09M040a_Main", "box_PrepareClueController_305.Activated", "box_InteractionScriptController_225.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_156_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_233()
  l0 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|187268763", "187268763", "S09M040a_Main", "box_Ordered_Output_156.Out", "box_MultipleOR_233.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_156_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_188
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/2864883369.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1621314800", "1621314800", "S09M040a_Main", "box_Ordered_Output_156.Out", "box_PlaySound_v2_188.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_177_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|791208127", "791208127", "S09M040a_Main", "box_Simple_Node_177.Out", "box_MultipleOR_194.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Compare_Entity_v2_218_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|348281018"
  l0.Out = self.f_box_Simple_Node_235_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|93637866", "93637866", "S09M040a_Main", "box_Compare_Entity_v2_218.Equal", "box_Simple_Node_235.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372044221758892"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1151999238"
  l0.Out = self.f_box_Compare_Entity_v2_245_Out
  l0.Equal = self.f_box_Compare_Entity_v2_245_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|93675637", "93675637", "S09M040a_Main", "box_Compare_Entity_v2_218.Out", "box_Compare_Entity_v2_245.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Agent_Zone_173_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372070820771988"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|357330121"
  l0.Out = self.f_box_Phys_Zone_Cleanup_215_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|684304029", "684304029", "S09M040a_Main", "box_AI_Agent_Zone_173.Out", "box_Phys_Zone_Cleanup_215.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_OnceOnly_v3_312_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_267
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_OnceOnly_v3_312
  l1 = self.box_MissionCheckpointReach_267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|570968971", "570968971", "S09M040a_Main", "box_OnceOnly_v3_312.Out", "box_MissionCheckpointReach_267.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_260_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_90()
  l0 = self.box_MissionZone_260
  l1 = self.box_MissionZone_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|808006124", "808006124", "S09M040a_Main", "box_MissionZone_260.Disabled", "box_MissionZone_90.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_120_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|835210788", "835210788", "S09M040a_Main", "box_Simple_Node_120.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_MapPointController_v4_241_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_271()
  l0 = self.box_MapPointController_v4_241
  l1 = self.box_MultipleOR_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1421239549", "1421239549", "S09M040a_Main", "box_MapPointController_v4_241.Shown", "box_MultipleOR_271.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_ListWriter_297_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_297
  self.EscortVan1 = l0.Target
  l0 = self.box_ListWriter_298
  l0.Input = self.EscortVan2
  l0.Data[0] = "9223372046105062197"
  l0 = self.box_ListWriter_297
  l1 = self.box_ListWriter_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1957429084", "1957429084", "S09M040a_Main", "box_ListWriter_297.Added", "box_ListWriter_298.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_297_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_297
  self.EscortVan1 = l0.Target
end
function export:f_box_ListWriter_297_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_297
  self.EscortVan1 = l0.Target
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_309()
  l0 = self.box_Timer_v2_84
  l1 = self.box_Prepare_Convoy_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|415533865", "415533865", "S09M040a_Main", "box_Timer_v2_84.TimeElapsed", "box_Prepare_Convoy_309.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_243_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_84
  l0.Seconds = 1
  l0 = self.box_OnceOnly_v3_243
  l1 = self.box_Timer_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2123403731", "2123403731", "S09M040a_Main", "box_OnceOnly_v3_243.Out", "box_Timer_v2_84.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_272_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|758943181"
  l0.Out = self.f_box_Simple_Node_224_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1131058937", "1131058937", "S09M040a_Main", "box_Simple_Node_272.Out", "box_Simple_Node_224.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_235_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_271()
  l0 = self.box_MultipleOR_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1084017131", "1084017131", "S09M040a_Main", "box_Simple_Node_235.Out", "box_MultipleOR_271.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Phys_Zone_Cleanup_215_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_307()
  l0 = self.box_Prepare_Convoy_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1976668551", "1976668551", "S09M040a_Main", "box_Phys_Zone_Cleanup_215.Out", "box_Prepare_Convoy_307.Prep", clone, l0)
  l0:Prep()
end
function export:f_box_SnapAndBind_227_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_236()
  l0 = self.box_SnapAndBind_227
  l1 = self.box_MapPointController_v4_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|435059148", "435059148", "S09M040a_Main", "box_SnapAndBind_227.Attached", "box_MapPointController_v4_236.Show", l0, l1)
  l1:Show()
end
function export:f_box_Simple_Node_202_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|576687043"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_222_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_222_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|259033329", "259033329", "S09M040a_Main", "box_Simple_Node_202.Out", "box_Ordered_Output_222.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_254_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_EngageMonitor_174()
  l0 = self.box_OnceOnly_v3_254
  l1 = self.box_Prepare_EngageMonitor_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|355706882", "355706882", "S09M040a_Main", "box_OnceOnly_v3_254.Out", "box_Prepare_EngageMonitor_174.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Agent_Zone_262_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_195
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
  l0.IncrementalObjectiveTotal = 3
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1047280612", "1047280612", "S09M040a_Main", "box_AI_Agent_Zone_262.Out", "box_MissionMessageController_v3_195.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_200_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1869548943"
  l0.Out = self.f_box_Get_Player_ID_255_Out
  l0 = self.box_MissionLayer_v2_200
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|666365271", "666365271", "S09M040a_Main", "box_MissionLayer_v2_200.Loaded", "box_Get_Player_ID_255.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_280_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_280
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0._name = "box_PrepareClueController_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|627129243"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_256_Activated
  l0 = self.box_ListWriter_280
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|825898745", "825898745", "S09M040a_Main", "box_ListWriter_280.Added", "box_PrepareClueController_256.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_280_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_280
  self.Markers = l0.Target
end
function export:f_box_ListWriter_280_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_280
  self.Markers = l0.Target
end
function export:f_box_AI_Agent_Zone_248_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|433462659", "433462659", "S09M040a_Main", "box_AI_Agent_Zone_248.Out", "box_MissionMessageController_v3_184.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_MultipleOR_314_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Checkpoint
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|806908025"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_266_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_266_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_314
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1825218092", "1825218092", "S09M040a_Main", "box_MultipleOR_314.Out", "box_Compare_Boolean_v2_266.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_285_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372069487817683"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|160621730"
  l0.Out = self.f_box_Phys_Zone_Cleanup_199_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1869013567", "1869013567", "S09M040a_Main", "box_AI_Agent_Zone_285.Out", "box_Phys_Zone_Cleanup_199.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MapPointController_v4_236_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_271()
  l0 = self.box_MapPointController_v4_236
  l1 = self.box_MultipleOR_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2008442401", "2008442401", "S09M040a_Main", "box_MapPointController_v4_236.Shown", "box_MultipleOR_271.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_PrepareClueController_113_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.AllExtraClues
  l0._graph = self
  l0._name = "box_PrepareClueController_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|538883964"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_306_Disabled
  l0.Activated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1452464283", "1452464283", "S09M040a_Main", "box_PrepareClueController_113.Disabled", "box_PrepareClueController_306.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_186_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_241()
  l0 = self.box_MapPointController_v4_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|311471230", "311471230", "S09M040a_Main", "box_Ordered_Output_186.Out", "box_MapPointController_v4_241.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_186_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_278()
  l0 = self.box_MapPointController_v4_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|833752636", "833752636", "S09M040a_Main", "box_Ordered_Output_186.Out", "box_MapPointController_v4_278.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_186_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_236()
  l0 = self.box_MapPointController_v4_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2079657068", "2079657068", "S09M040a_Main", "box_Ordered_Output_186.Out", "box_MapPointController_v4_236.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Prepare_Convoy_308_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1590150783"
  l0.Out = self.f_box_Simple_Node_289_Out
  l0 = self.box_Prepare_Convoy_308
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|291082629", "291082629", "S09M040a_Main", "box_Prepare_Convoy_308.ConvoyStuck", "box_Simple_Node_289.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_308_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|214646525"
  l0.Out = self.f_box_Simple_Node_177_Out
  l0 = self.box_Prepare_Convoy_308
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|610965604", "610965604", "S09M040a_Main", "box_Prepare_Convoy_308.NPCsUnassigned", "box_Simple_Node_177.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_308_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  self:OnEnter_box_Prepare_Convoy_309()
  l1 = self.box_Prepare_Convoy_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|203864128", "203864128", "S09M040a_Main", "box_Prepare_Convoy_308.Prepped", "box_Prepare_Convoy_309.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Prepare_Convoy_308_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|857556739"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_295_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_295_Out_1
  l0 = self.box_Prepare_Convoy_308
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1482883100", "1482883100", "S09M040a_Main", "box_Prepare_Convoy_308.Started", "box_Ordered_Output_295.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_308_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_308_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_308
  self.vip1 = l0.VipID
  self.car1 = l0.VipVehicleID
end
function export:f_box_PrepareClueController_306_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_240
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Notification010",
    item = "Notification",
    id = "642288"
  }
  l0.Duration = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1695405248", "1695405248", "S09M040a_Main", "box_PrepareClueController_306.Disabled", "box_TutorialController_240.Display", clone, l0)
  l0:Display()
end
function export:f_box_OnceOnly_v3_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_244
  l0.Affiliation = "Bratva"
  l0 = self.box_OnceOnly_v3_85
  l1 = self.box_AISquadStateController_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1268352601", "1268352601", "S09M040a_Main", "box_OnceOnly_v3_85.Out", "box_AISquadStateController_244.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Ordered_Output_222_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|346512049"
  l0.Out = self.f_box_Simple_Node_272_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1776190893", "1776190893", "S09M040a_Main", "box_Ordered_Output_222.Out", "box_Simple_Node_272.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_222_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_190
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective060",
    item = "Objective",
    id = "385733"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2081140489", "2081140489", "S09M040a_Main", "box_Ordered_Output_222.Out", "box_MissionMessageController_v3_190.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_SetFloat_v2_276_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_254()
  l0 = self.box_OnceOnly_v3_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1975226708", "1975226708", "S09M040a_Main", "box_SetFloat_v2_276.Out", "box_OnceOnly_v3_254.In", clone, l0)
  l0:In(0)
end
function export:f_box_Prepare_Convoy_310_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2084525532"
  l0.Out = self.f_box_Simple_Node_179_Out
  l0 = self.box_Prepare_Convoy_310
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|704865429", "704865429", "S09M040a_Main", "box_Prepare_Convoy_310.ConvoyStuck", "box_Simple_Node_179.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_310_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1859304899"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_268_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_268_Out_1
  l0 = self.box_Prepare_Convoy_310
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1963342218", "1963342218", "S09M040a_Main", "box_Prepare_Convoy_310.NPCsUnassigned", "box_Ordered_Output_268.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_310_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1282246672"
  l0.Out = self.f_box_Simple_Node_239_Out
  l0 = self.box_Prepare_Convoy_310
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|571463218", "571463218", "S09M040a_Main", "box_Prepare_Convoy_310.Prepped", "box_Simple_Node_239.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_310_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
  l0 = self.box_SnapAndBind_291
  l0.Parent = self.car3
  l0.Child = "9223372061664925010"
  l0 = self.box_Prepare_Convoy_310
  l1 = self.box_SnapAndBind_291
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1265840126", "1265840126", "S09M040a_Main", "box_Prepare_Convoy_310.Started", "box_SnapAndBind_291.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Prepare_Convoy_310_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_310_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_310
  self.vip3 = l0.VipID
  self.car3 = l0.VipVehicleID
end
function export:f_box_S09M040A_VID_Mosaic02_OS_Main_25_EndVideo()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_242()
  l0 = self.box_S09M040A_VID_Mosaic02_OS_Main_25
  l1 = self.box_MultipleOR_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1087566199", "1087566199", "S09M040a_Main", "box_S09M040A_VID_Mosaic02_OS_Main_25.EndVideo", "box_MultipleOR_242.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PrepareClueController_256_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.AllExtraClues
  l0._graph = self
  l0._name = "box_PrepareClueController_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|177493032"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_305_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1394482476", "1394482476", "S09M040a_Main", "box_PrepareClueController_256.Activated", "box_PrepareClueController_305.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PGTController_v2_294_AllSpawned()
  local l0
  self = self._graph
  self:OnEnter_box_PGTController_v2_294()
  l0 = self.box_PGTController_v2_294
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|906186583", "906186583", "S09M040a_Main", "box_PGTController_v2_294.AllSpawned", "box_PGTController_v2_294.AddScriptedAgents", l0, l0)
  l0:AddScriptedAgents()
end
function export:f_box_PGTController_v2_294_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_217()
  l0 = self.box_PGTController_v2_294
  l1 = self.box_AISquadStateMonitor_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|718372162", "718372162", "S09M040a_Main", "box_PGTController_v2_294.ScriptedAgentsAdded", "box_AISquadStateMonitor_217.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_294_Started()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: TEMP HACK", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AI Agent Zone')-- Comment: TEMP HACK")
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060994542431"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|903931423"
  l0.Out = DummyFunction
  l0 = self.box_PGTController_v2_294
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2071017073", "2071017073", "S09M040a_Main", "box_PGTController_v2_294.Started", "box_AI_Agent_Zone_211.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionZone_90_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_90
  l1 = self.box_MissionMessageController_v3_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|421415781", "421415781", "S09M040a_Main", "box_MissionZone_90.Enabled", "box_MissionMessageController_v3_281.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_SnapAndBind_247_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_241()
  l0 = self.box_SnapAndBind_247
  l1 = self.box_MapPointController_v4_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|641583973", "641583973", "S09M040a_Main", "box_SnapAndBind_247.Attached", "box_MapPointController_v4_241.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_196_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_196
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
  l0 = self.box_ListWriter_142
  l0.Input = self.reinforcementsBratvaNPCsCLOs
  l0.Data[0] = "9223372046105062511"
  l0 = self.box_ListWriter_196
  l1 = self.box_ListWriter_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|812795328", "812795328", "S09M040a_Main", "box_ListWriter_196.Added", "box_ListWriter_142.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_196_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_196
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
end
function export:f_box_ListWriter_196_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_196
  self.reinforcementsBratvaVehiclesCLOs = l0.Target
end
function export:f_box_MissionMusicController_141_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1864257525", "1864257525", "S09M040a_Main", "box_MissionMusicController_141.Activated", "box_SetBoolean_v2_287.True", clone, l0)
  l0:True()
end
function export:f_box_MissionCheckpointReach_267_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_206
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective030",
    item = "Objective",
    id = "385730"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_267
  l1 = self.box_MissionMessageController_v3_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1220160048", "1220160048", "S09M040a_Main", "box_MissionCheckpointReach_267.Out", "box_MissionMessageController_v3_206.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_InteractionScriptController_270_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1142984799"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1734974142", "1734974142", "S09M040a_Main", "box_InteractionScriptController_270.Disabled", "box_Ordered_Output_75.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_259_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_314()
  l0 = self.box_PhoneCommunicationController_259
  l1 = self.box_MultipleOR_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|691169548", "691169548", "S09M040a_Main", "box_PhoneCommunicationController_259.OnCommunicationFinished", "box_MultipleOR_314.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_259_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_282()
  l0 = self.box_PhoneCommunicationController_259
  l1 = self.box_MultipleOR_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|362619804", "362619804", "S09M040a_Main", "box_PhoneCommunicationController_259.StartCommunicationOut", "box_MultipleOR_282.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_224_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_90()
  l0 = self.box_MissionZone_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1454034955", "1454034955", "S09M040a_Main", "box_Simple_Node_224.Out", "box_MissionZone_90.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_191_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1131369346"
  l0.Out = self.f_box_Simple_Node_170_Out
  l0 = self.box_MultipleOR_191
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|18054640", "18054640", "S09M040a_Main", "box_MultipleOR_191.Out", "box_Simple_Node_170.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_278_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_271()
  l0 = self.box_MapPointController_v4_278
  l1 = self.box_MultipleOR_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|324298117", "324298117", "S09M040a_Main", "box_MapPointController_v4_278.Shown", "box_MultipleOR_271.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_AISquadStateMonitor_217_CombatState()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1719762435"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_166_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_166_Out_1
  l0 = self.box_AISquadStateMonitor_217
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|676378421", "676378421", "S09M040a_Main", "box_AISquadStateMonitor_217.CombatState", "box_Ordered_Output_166.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_266_A_is_False()
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
  l0._name = "box_SetFloat_v2_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1527223080"
  l0.Out = self.f_box_SetFloat_v2_265_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|665752963", "665752963", "S09M040a_Main", "box_Compare_Boolean_v2_266.A_is_False", "box_SetFloat_v2_265.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Compare_Boolean_v2_266_A_is_True()
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
  l0._name = "box_SetFloat_v2_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|601449679"
  l0.Out = self.f_box_SetFloat_v2_276_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|938603800", "938603800", "S09M040a_Main", "box_Compare_Boolean_v2_266.A_is_True", "box_SetFloat_v2_276.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Ordered_Output_212_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|508217311"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_186_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_186_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_186_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1916842940", "1916842940", "S09M040a_Main", "box_Ordered_Output_212.Out", "box_Ordered_Output_186.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_212_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_168
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/2018454732.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1782004616", "1782004616", "S09M040a_Main", "box_Ordered_Output_212.Out", "box_PlayDialog_v2_168.Start", clone, l0)
  l0:Start()
end
function export:f_box_TutorialController_240_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372044910146005"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|447726210"
  l0.Out = self.f_box_AI_Agent_Zone_285_Out
  l0 = self.box_TutorialController_240
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1595325101", "1595325101", "S09M040a_Main", "box_TutorialController_240.DisplayRequested", "box_AI_Agent_Zone_285.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_240_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372043579956762"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|407904766"
  l0.Out = self.f_box_AI_Agent_Zone_262_Out
  l0 = self.box_TutorialController_240
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1907543761", "1907543761", "S09M040a_Main", "box_TutorialController_240.MessageCompleted", "box_AI_Agent_Zone_262.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptController_225_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_275
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1243035191", "1243035191", "S09M040a_Main", "box_InteractionScriptController_225.Disabled", "box_CinematicPrep_275.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Neutralize_Gameplay_253_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_233()
  l0 = self.box_Neutralize_Gameplay_253
  l1 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1216511456", "1216511456", "S09M040a_Main", "box_Neutralize_Gameplay_253.Neutralized", "box_MultipleOR_233.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Neutralize_Gameplay_253_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_S09M040a_CarVSForklift_283
  l0.Car = self.car1
  l0.StimEmitor = "9223372071710310543"
  l0 = self.box_Neutralize_Gameplay_253
  l1 = self.box_S09M040a_CarVSForklift_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1134461508", "1134461508", "S09M040a_Main", "box_Neutralize_Gameplay_253.Started", "box_S09M040a_CarVSForklift_283.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_288_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_131
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_OnceOnly_v3_288
  l1 = self.box_PlaySound_v2_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1413076707", "1413076707", "S09M040a_Main", "box_OnceOnly_v3_288.Out", "box_PlaySound_v2_131.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriter_299_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_299
  self.escortVan3 = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0._name = "box_PrepareClueController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|500361004"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PrepareClueController_113_Disabled
  l0.Activated = DummyFunction
  l0 = self.box_ListWriter_299
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2061409310", "2061409310", "S09M040a_Main", "box_ListWriter_299.Added", "box_PrepareClueController_113.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ListWriter_299_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_299
  self.escortVan3 = l0.Target
end
function export:f_box_ListWriter_299_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_299
  self.escortVan3 = l0.Target
end
function export:f_box_Ordered_Output_295_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Neutralize_Gameplay_253
  l0.Entity = self.car1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1020380935", "1020380935", "S09M040a_Main", "box_Ordered_Output_295.Out", "box_Neutralize_Gameplay_253.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_295_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1651206709", "1651206709", "S09M040a_Main", "box_Ordered_Output_295.Out", "box_OnceOnly_v3_243.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v3_197_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_144
  l0.Affiliation = "Bratva"
  l0 = self.box_OnceOnly_v3_197
  l1 = self.box_GetNPC_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|237752846", "237752846", "S09M040a_Main", "box_OnceOnly_v3_197.Out", "box_GetNPC_144.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_MissionMessageController_v3_281_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|811848502"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_212_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_212_Out_1
  l0 = self.box_MissionMessageController_v3_281
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|277733987", "277733987", "S09M040a_Main", "box_MissionMessageController_v3_281.Out", "box_Ordered_Output_212.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_127_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1352057659"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_176_Deactivated
  l0 = self.box_Timer_v2_127
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|311783926", "311783926", "S09M040a_Main", "box_Timer_v2_127.TimeElapsed", "box_MissionMusicController_176.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Get_Player_ID_292_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1979277703"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_189_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_189_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1166701548", "1166701548", "S09M040a_Main", "box_Get_Player_ID_292.Out", "box_Ordered_Output_189.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_261_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_242()
  l0 = self.box_CinematicPrep_261
  l1 = self.box_MultipleOR_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|48831151", "48831151", "S09M040a_Main", "box_CinematicPrep_261.PostOut", "box_MultipleOR_242.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_228_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_228
  l1 = self.box_OnceOnly_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|841838368", "841838368", "S09M040a_Main", "box_MultipleOR_228.Out", "box_OnceOnly_v3_85.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_122_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2098383942"
  l0.Out = self.f_box_Simple_Node_226_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|97693382", "97693382", "S09M040a_Main", "box_Ordered_Output_122.Out", "box_Simple_Node_226.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_122_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_308()
  l0 = self.box_Prepare_Convoy_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|838142723", "838142723", "S09M040a_Main", "box_Ordered_Output_122.Out", "box_Prepare_Convoy_308.Prep", clone, l0)
  l0:Prep()
end
function export:f_box_CinematicPrep_275_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|707448926"
  l0.Activated = self.f_box_MissionMusicController_141_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_CinematicPrep_275
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|687696020", "687696020", "S09M040a_Main", "box_CinematicPrep_275.PostOut", "box_MissionMusicController_141.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_170_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_260()
  l0 = self.box_MissionZone_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|138600501", "138600501", "S09M040a_Main", "box_Simple_Node_170.Out", "box_MissionZone_260.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_GetNPC_144_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_144
  self.allNpcs = l0.NPCList
  self:OnEnter_box_PGTController_v2_294()
  l1 = self.box_PGTController_v2_294
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1154177482", "1154177482", "S09M040a_Main", "box_GetNPC_144.GotNPCList", "box_PGTController_v2_294.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S09M040A_VID_Mosaic02_OS_Main_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|248079026", "248079026", "S09M040a_Main", "box_Ordered_Output_75.Out", "box_S09M040A_VID_Mosaic02_OS_Main_25.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_204
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347653"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1323117452", "1323117452", "S09M040a_Main", "box_Ordered_Output_75.Out", "box_PhoneCommunicationController_204.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Entity_v2_245_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_61
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/2278530715.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1605928556", "1605928556", "S09M040a_Main", "box_Compare_Entity_v2_245.Equal", "box_PlayDialog_v2_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Entity_v2_245_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043876904359"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1803004414"
  l0.Out = self.f_box_Compare_Entity_v2_126_Out
  l0.Equal = self.f_box_Compare_Entity_v2_126_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1339820026", "1339820026", "S09M040a_Main", "box_Compare_Entity_v2_245.Out", "box_Compare_Entity_v2_126.In", clone, l0)
  l0:In()
end
function export:f_box_Prepare_EngageMonitor_174_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_260()
  l0 = self.box_Prepare_EngageMonitor_174
  l1 = self.box_MissionZone_260
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|409325824", "409325824", "S09M040a_Main", "box_Prepare_EngageMonitor_174.Disabled", "box_MissionZone_260.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Prepare_EngageMonitor_174_Engaged()
  local l0
  self = self._graph
  self:OnEnter_box_Prepare_EngageMonitor_174()
  l0 = self.box_Prepare_EngageMonitor_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|694141512", "694141512", "S09M040a_Main", "box_Prepare_EngageMonitor_174.Engaged", "box_Prepare_EngageMonitor_174.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Compare_Entity_v2_80_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Van2_ExtraClues
  l0._graph = self
  l0._name = "box_PrepareClueController_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1530368610"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_300_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2034548839", "2034548839", "S09M040a_Main", "box_Compare_Entity_v2_80.Equal", "box_PrepareClueController_300.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Get_Player_ID_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|804314613", "804314613", "S09M040a_Main", "box_Get_Player_ID_187.Out", "box_SetBoolean_v2_274.False", clone, l0)
  l0:False()
end
function export:f_box_OnceOnly_v3_237_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_308()
  l0 = self.box_OnceOnly_v3_237
  l1 = self.box_Prepare_Convoy_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1747364127", "1747364127", "S09M040a_Main", "box_OnceOnly_v3_237.Out", "box_Prepare_Convoy_308.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_282_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_282
  l1 = self.box_OnceOnly_v3_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2042173750", "2042173750", "S09M040a_Main", "box_MultipleOR_282.Out", "box_OnceOnly_v3_312.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_242_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_152
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_242
  l1 = self.box_MissionCheckpointReach_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|451693772", "451693772", "S09M040a_Main", "box_MultipleOR_242.Out", "box_MissionCheckpointReach_152.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_198_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_271()
  l0 = self.box_MultipleOR_271
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|150009128", "150009128", "S09M040a_Main", "box_Simple_Node_198.Out", "box_MultipleOR_271.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_239_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|608875300", "608875300", "S09M040a_Main", "box_Simple_Node_239.Out", "box_OnceOnly_v3_237.In", clone, l0)
  l0:In(0)
end
function export:f_box_Neutralize_Gameplay_216_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_233()
  l0 = self.box_Neutralize_Gameplay_216
  l1 = self.box_MultipleOR_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|685015920", "685015920", "S09M040a_Main", "box_Neutralize_Gameplay_216.Neutralized", "box_MultipleOR_233.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Neutralize_Gameplay_216_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_S09M040a_CarVSForklift_290
  l0.Car = self.car2
  l0.StimEmitor = "9223372071710309393"
  l0 = self.box_Neutralize_Gameplay_216
  l1 = self.box_S09M040a_CarVSForklift_290
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1527103056", "1527103056", "S09M040a_Main", "box_Neutralize_Gameplay_216.Started", "box_S09M040a_CarVSForklift_290.In", l0, l1)
  l1:In()
end
function export:f_box_Network_Surfing_Monitor_249_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_259
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347654"
  l0 = self.box_Network_Surfing_Monitor_249
  l1 = self.box_PhoneCommunicationController_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1784078826", "1784078826", "S09M040a_Main", "box_Network_Surfing_Monitor_249.Disabled", "box_PhoneCommunicationController_259.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Network_Surfing_Monitor_249_OnNetworkSurfingActivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_209()
  l0 = self.box_Network_Surfing_Monitor_249
  l1 = self.box_TutorialController_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1579234688", "1579234688", "S09M040a_Main", "box_Network_Surfing_Monitor_249.OnNetworkSurfingActivated", "box_TutorialController_209.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Network_Surfing_Monitor_249_OnNetworkSurfingDeactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_209()
  l0 = self.box_Network_Surfing_Monitor_249
  l1 = self.box_TutorialController_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|826221166", "826221166", "S09M040a_Main", "box_Network_Surfing_Monitor_249.OnNetworkSurfingDeactivated", "box_TutorialController_209.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionMessageController_v3_284_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_288()
  l0 = self.box_MissionMessageController_v3_284
  l1 = self.box_OnceOnly_v3_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2078644711", "2078644711", "S09M040a_Main", "box_MissionMessageController_v3_284.Out", "box_OnceOnly_v3_288.In", l0, l1)
  l1:In(2)
end
function export:f_box_MissionMusicController_176_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_304()
  l0 = self.box_Mission_End_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1767481323", "1767481323", "S09M040a_Main", "box_MissionMusicController_176.Deactivated", "box_Mission_End_304.End", clone, l0)
  l0:End()
end
function export:f_box_Simple_Node_219_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1479481132"
  l0.Out = self.f_box_Simple_Node_214_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1664563438", "1664563438", "S09M040a_Main", "box_Simple_Node_219.Out", "box_Simple_Node_214.In", clone, l0)
  l0:In()
end
function export:f_box_RewardController_v3_89_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_127
  l0.Seconds = 10
  l0 = self.box_RewardController_v3_89
  l1 = self.box_Timer_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|665915240", "665915240", "S09M040a_Main", "box_RewardController_v3_89.RewardsExecuted", "box_Timer_v2_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_213_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1197781960"
  l0.Out = self.f_box_Get_Player_ID_187_Out
  l0 = self.box_MissionLayer_v2_213
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|853876456", "853876456", "S09M040a_Main", "box_MissionLayer_v2_213.Loaded", "box_Get_Player_ID_187.In", l0, l1)
  l1:In()
end
function export:f_box_SnapAndBind_291_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_257
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/3172548278.bnk"
  l0 = self.box_SnapAndBind_291
  l1 = self.box_PlaySound_v2_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1963909961", "1963909961", "S09M040a_Main", "box_SnapAndBind_291.Attached", "box_PlaySound_v2_257.Play", l0, l1)
  l1:Play()
end
function export:f_box_Prepare_Convoy_307_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|272920015"
  l0.Out = self.f_box_Simple_Node_120_Out
  l0 = self.box_Prepare_Convoy_307
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|207644586", "207644586", "S09M040a_Main", "box_Prepare_Convoy_307.ConvoyStuck", "box_Simple_Node_120.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_307_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1601169820"
  l0.Out = self.f_box_Simple_Node_246_Out
  l0 = self.box_Prepare_Convoy_307
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1543063385", "1543063385", "S09M040a_Main", "box_Prepare_Convoy_307.NPCsUnassigned", "box_Simple_Node_246.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_307_Prepped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1003212480"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_122_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_122_Out_1
  l0 = self.box_Prepare_Convoy_307
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1021776365", "1021776365", "S09M040a_Main", "box_Prepare_Convoy_307.Prepped", "box_Ordered_Output_122.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_119_Aborted()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: TEMP HACK", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'AI Agent Zone')-- Comment: TEMP HACK")
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372060994542431"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|428488232"
  l0.Out = self.f_box_AI_Agent_Zone_248_Out
  l0 = self.box_PGTController_v2_119
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1736601552", "1736601552", "S09M040a_Main", "box_PGTController_v2_119.Aborted", "box_AI_Agent_Zone_248.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_274_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_274
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_274_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_274
  self.allDead = l0.Target
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049707582454"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|726028617"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_270_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_SetBoolean_v2_274
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|979498503", "979498503", "S09M040a_Main", "box_SetBoolean_v2_274.SetFalse", "box_InteractionScriptController_270.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_274_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_274
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_274_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_274
  self.allDead = l0.Target
end
function export:f_box_SetBoolean_v2_274_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_274
  self.allDead = l0.Target
end
function export:f_box_Simple_Node_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|511803819", "511803819", "S09M040a_Main", "box_Simple_Node_140.Out", "box_MultipleOR_194.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_214_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Network_Surfing_Monitor_249()
  l0 = self.box_Network_Surfing_Monitor_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|385841638", "385841638", "S09M040a_Main", "box_Simple_Node_214.Out", "box_Network_Surfing_Monitor_249.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PrepareClueController_232_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PrepareClueMonitor_193()
  l0 = self.box_PrepareClueMonitor_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1819802523", "1819802523", "S09M040a_Main", "box_PrepareClueController_232.Enabled", "box_PrepareClueMonitor_193.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlayDialog_v2_172_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_227
  l0.Parent = "9223372043876904359"
  l0.Child = "9223372045907873872"
  l0.CarIcon = 1
  l0 = self.box_PlayDialog_v2_172
  l1 = self.box_SnapAndBind_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|442692088", "442692088", "S09M040a_Main", "box_PlayDialog_v2_172.Started", "box_SnapAndBind_227.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_SetBoolean_v2_287_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_287
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_287_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_287
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_287_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_287
  self.Checkpoint = l0.Target
end
function export:f_box_SetBoolean_v2_287_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_287
  self.Checkpoint = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|40129228"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_313_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_313_Out_1
  l0 = self.box_SetBoolean_v2_287
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|782887709", "782887709", "S09M040a_Main", "box_SetBoolean_v2_287.SetTrue", "box_Ordered_Output_313.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_287_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_287
  self.Checkpoint = l0.Target
end
function export:f_box_PrepareClueController_302_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372072557569185"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1713327413"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_301_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1221692658", "1221692658", "S09M040a_Main", "box_PrepareClueController_302.Activated", "box_PrepareClueController_301.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetFloat_v2_265_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.EngageTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_254()
  l0 = self.box_OnceOnly_v3_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|477001220", "477001220", "S09M040a_Main", "box_SetFloat_v2_265.Out", "box_OnceOnly_v3_254.In", clone, l0)
  l0:In(1)
end
function export:f_box_PrepareClueController_300_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_269
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/3470714642.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1999094174", "1999094174", "S09M040a_Main", "box_PrepareClueController_300.Activated", "box_PlayDialog_v2_269.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_233_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_284
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
  l0 = self.box_MultipleOR_233
  l1 = self.box_MissionMessageController_v3_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1215283676", "1215283676", "S09M040a_Main", "box_MultipleOR_233.Out", "box_MissionMessageController_v3_284.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Simple_Node_289_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1040847845", "1040847845", "S09M040a_Main", "box_Simple_Node_289.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MissionMessageController_v3_195_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_203()
  l0 = self.box_MissionMessageController_v3_195
  l1 = self.box_ObjectiveMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1881791073", "1881791073", "S09M040a_Main", "box_MissionMessageController_v3_195.Out", "box_ObjectiveMonitor_v2_203.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Entity_v2_125_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1281456529"
  l0.Out = self.f_box_Simple_Node_198_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|797516954", "797516954", "S09M040a_Main", "box_Compare_Entity_v2_125.Equal", "box_Simple_Node_198.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_125_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043579956824"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|219344139"
  l0.Out = self.f_box_Compare_Entity_v2_218_Out
  l0.Equal = self.f_box_Compare_Entity_v2_218_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|316230457", "316230457", "S09M040a_Main", "box_Compare_Entity_v2_125.Out", "box_Compare_Entity_v2_218.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_246_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1691222092", "1691222092", "S09M040a_Main", "box_Simple_Node_246.Out", "box_MultipleOR_194.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_ListWriter_142_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_142
  self.reinforcementsBratvaNPCsCLOs = l0.Target
  l0 = self.box_ListWriter_297
  l0.Input = self.EscortVan1
  l0.Data[0] = "9223372048066923587"
  l0 = self.box_ListWriter_142
  l1 = self.box_ListWriter_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1300356084", "1300356084", "S09M040a_Main", "box_ListWriter_142.Added", "box_ListWriter_297.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_142_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_142
  self.reinforcementsBratvaNPCsCLOs = l0.Target
end
function export:f_box_ListWriter_142_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_142
  self.reinforcementsBratvaNPCsCLOs = l0.Target
end
function export:f_box_PlaySound_v2_257_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_182
  l0.Entity = self.car3
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0 = self.box_PlaySound_v2_257
  l1 = self.box_Neutralize_Gameplay_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1867538576", "1867538576", "S09M040a_Main", "box_PlaySound_v2_257.Out", "box_Neutralize_Gameplay_182.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_310()
  l0 = self.box_Timer_v2_72
  l1 = self.box_Prepare_Convoy_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|904469806", "904469806", "S09M040a_Main", "box_Timer_v2_72.TimeElapsed", "box_Prepare_Convoy_310.Start", l0, l1)
  l1:Start()
end
function export:f_box_Neutralize_Gameplay_182_Neutralized()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|182715501"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_Neutralize_Gameplay_182
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1288181634", "1288181634", "S09M040a_Main", "box_Neutralize_Gameplay_182.Neutralized", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_Neutralize_Gameplay_182_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_S09M040a_CarVSForklift_293
  l0.Car = self.car3
  l0.StimEmitor = "9223372071710310541"
  l0 = self.box_Neutralize_Gameplay_182
  l1 = self.box_S09M040a_CarVSForklift_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|41666836", "41666836", "S09M040a_Main", "box_Neutralize_Gameplay_182.Started", "box_S09M040a_CarVSForklift_293.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_298_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_298
  self.EscortVan2 = l0.Target
  l0 = self.box_ListWriter_299
  l0.Input = self.escortVan3
  l0.Data[0] = "9223372046105062196"
  l0 = self.box_ListWriter_298
  l1 = self.box_ListWriter_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|791875839", "791875839", "S09M040a_Main", "box_ListWriter_298.Added", "box_ListWriter_299.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_298_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_298
  self.EscortVan2 = l0.Target
end
function export:f_box_ListWriter_298_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_298
  self.EscortVan2 = l0.Target
end
function export:f_box_MissionCheckpointReach_152_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669159"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2046909641"
  l0.Activated = self.f_box_MissionMusicController_201_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_MissionCheckpointReach_152
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|716527572", "716527572", "S09M040a_Main", "box_MissionCheckpointReach_152.Out", "box_MissionMusicController_201.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMessageController_v3_190_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_175()
  l0 = self.box_MissionMessageController_v3_190
  l1 = self.box_Escape_Gameplay_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|524160236", "524160236", "S09M040a_Main", "box_MissionMessageController_v3_190.Out", "box_Escape_Gameplay_175.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_168_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_229
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055904688143"
  l0 = self.box_PlayDialog_v2_168
  l1 = self.box_PhoneCommunicationController_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2044292488", "2044292488", "S09M040a_Main", "box_PlayDialog_v2_168.Finished", "box_PhoneCommunicationController_229.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlayDialog_v2_168_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_273
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_PlayDialog_v2_168
  l1 = self.box_PlaySound_v2_273
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|899949672", "899949672", "S09M040a_Main", "box_PlayDialog_v2_168.Started", "box_PlaySound_v2_273.Play", l0, l1)
  l1:Play()
end
function export:f_box_PrepareClueController_301_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_172
  l0.Entity = self.Player
  l0.SoundId = "soundbinary/345401540.bnk"
  l0.Queue = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2144037675", "2144037675", "S09M040a_Main", "box_PrepareClueController_301.Activated", "box_PlayDialog_v2_172.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_166_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_288()
  l0 = self.box_OnceOnly_v3_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|761962753", "761962753", "S09M040a_Main", "box_Ordered_Output_166.Out", "box_OnceOnly_v3_288.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_166_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_217()
  l0 = self.box_AISquadStateMonitor_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1426634907", "1426634907", "S09M040a_Main", "box_Ordered_Output_166.Out", "box_AISquadStateMonitor_217.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ListWriter_234_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_234
  self.Markers = l0.Target
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = nil
  l0.ClueIds = self.Markers
  l0._graph = self
  l0._name = "box_PrepareClueController_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1486972179"
  l0.Enabled = self.f_box_PrepareClueController_232_Enabled
  l0.Disabled = DummyFunction
  l0.Activated = DummyFunction
  l0 = self.box_ListWriter_234
  l1 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1403680489", "1403680489", "S09M040a_Main", "box_ListWriter_234.Added", "box_PrepareClueController_232.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_234_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_234
  self.Markers = l0.Target
  self:OnEnter_box_MultipleOR_191()
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1907929899", "1907929899", "S09M040a_Main", "box_ListWriter_234.Out", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_234_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_234
  self.Markers = l0.Target
end
function export:f_box_Compare_Entity_v2_126_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PrepareClueController.lua")]
  l0.ClueId = "9223372043995244260"
  l0.ClueIds = nil
  l0._graph = self
  l0._name = "box_PrepareClueController_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1513942847"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Activated = self.f_box_PrepareClueController_302_Activated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|849839301", "849839301", "S09M040a_Main", "box_Compare_Entity_v2_126.Equal", "box_PrepareClueController_302.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Compare_Entity_v2_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372043876904357"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1174834557"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_80_Equal
  l0.NotEqual = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2027029086", "2027029086", "S09M040a_Main", "box_Compare_Entity_v2_126.Out", "box_Compare_Entity_v2_80.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_279_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|916594248"
  l0.Out = self.f_box_Get_Player_ID_292_Out
  l0 = self.box_MissionLayer_v2_279
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1634023488", "1634023488", "S09M040a_Main", "box_MissionLayer_v2_279.Loaded", "box_Get_Player_ID_292.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_309_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_ConvoyStuck()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1863264943"
  l0.Out = self.f_box_Simple_Node_208_Out
  l0 = self.box_Prepare_Convoy_309
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|982273979", "982273979", "S09M040a_Main", "box_Prepare_Convoy_309.ConvoyStuck", "box_Simple_Node_208.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_309_DestinationReached()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1466163928"
  l0.Out = self.f_box_Simple_Node_140_Out
  l0 = self.box_Prepare_Convoy_309
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1484404706", "1484404706", "S09M040a_Main", "box_Prepare_Convoy_309.NPCsUnassigned", "box_Simple_Node_140.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_309_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  self:OnEnter_box_Prepare_Convoy_310()
  l1 = self.box_Prepare_Convoy_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2073939225", "2073939225", "S09M040a_Main", "box_Prepare_Convoy_309.Prepped", "box_Prepare_Convoy_310.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Prepare_Convoy_309_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|152112350"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_296_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_296_Out_1
  l0 = self.box_Prepare_Convoy_309
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1425560736", "1425560736", "S09M040a_Main", "box_Prepare_Convoy_309.Started", "box_Ordered_Output_296.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_309_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_Prepare_Convoy_309_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_309
  self.vip2 = l0.VipID
  self.car2 = l0.VipVehicleID
end
function export:f_box_SnapAndBind_252_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_278()
  l0 = self.box_SnapAndBind_252
  l1 = self.box_MapPointController_v4_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2107021244", "2107021244", "S09M040a_Main", "box_SnapAndBind_252.Attached", "box_MapPointController_v4_278.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_271_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_286
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective020",
    item = "Objective",
    id = "385734"
  }
  l0 = self.box_MultipleOR_271
  l1 = self.box_MissionMessageController_v3_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|14718068", "14718068", "S09M040a_Main", "box_MultipleOR_271.Out", "box_MissionMessageController_v3_286.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Ordered_Output_268_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_223
  l0.Entity = "9223372061664925010"
  l0.SoundId = "soundbinary/2864883369.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1964190741", "1964190741", "S09M040a_Main", "box_Ordered_Output_268.Out", "box_PlaySound_v2_223.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_268_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_194()
  l0 = self.box_MultipleOR_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1114604297", "1114604297", "S09M040a_Main", "box_Ordered_Output_268.Out", "box_MultipleOR_194.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_208_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|655881331", "655881331", "S09M040a_Main", "box_Simple_Node_208.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_255_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1698904638", "1698904638", "S09M040a_Main", "box_Get_Player_ID_255.Out", "box_SetBoolean_v2_250.False", clone, l0)
  l0:False()
end
function export:f_box_MissionMessageController_v3_184_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_91
  l0.PlayerEntity = self.Player
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347655"
  l0 = self.box_MissionMessageController_v3_184
  l1 = self.box_PhoneCommunicationController_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1416761790", "1416761790", "S09M040a_Main", "box_MissionMessageController_v3_184.Out", "box_PhoneCommunicationController_91.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlayDialog_v2_61_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_247
  l0.Parent = "9223372044221758892"
  l0.Child = "9223372045907873810"
  l0.CarIcon = 1
  l0 = self.box_PlayDialog_v2_61
  l1 = self.box_SnapAndBind_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1790225822", "1790225822", "S09M040a_Main", "box_PlayDialog_v2_61.Started", "box_SnapAndBind_247.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_PrepareClueMonitor_193_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1355099380"
  l0.Out = self.f_box_Simple_Node_219_Out
  l0 = self.box_PrepareClueMonitor_193
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|428312654", "428312654", "S09M040a_Main", "box_PrepareClueMonitor_193.Disabled", "box_Simple_Node_219.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareClueMonitor_193_DiscoveredAllClues()
  local l0
  self = self._graph
  self:OnEnter_box_PrepareClueMonitor_193()
  l0 = self.box_PrepareClueMonitor_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|2102755265", "2102755265", "S09M040a_Main", "box_PrepareClueMonitor_193.DiscoveredAllClues", "box_PrepareClueMonitor_193.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PrepareClueMonitor_193_DiscoveredClue()
  local l0, l1
  self = self._graph
  l0 = self.box_PrepareClueMonitor_193
  self.temp = l0.ClueOut
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.temp
  l0.Entity2 = "9223372044419131727"
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1593345787"
  l0.Out = self.f_box_Compare_Entity_v2_125_Out
  l0.Equal = self.f_box_Compare_Entity_v2_125_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_PrepareClueMonitor_193
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1940236255", "1940236255", "S09M040a_Main", "box_PrepareClueMonitor_193.DiscoveredClue", "box_Compare_Entity_v2_125.In", l0, l1)
  l1:In()
end
function export:f_box_PrepareClueMonitor_193_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_238
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective020",
    item = "Objective",
    id = "385734"
  }
  l0.IncrementalObjectiveTotal = 5
  l0.HasObjectiveMarker = 0
  l0 = self.box_PrepareClueMonitor_193
  l1 = self.box_MissionMessageController_v3_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|470653065", "470653065", "S09M040a_Main", "box_PrepareClueMonitor_193.Enabled", "box_MissionMessageController_v3_238.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PrepareClueMonitor_193_UndiscoveredClue()
  local l0
  self = self._graph
  l0 = self.box_PrepareClueMonitor_193
  self.temp = l0.ClueOut
end
function export:f_box_PhoneCommunicationController_91_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_89
  l0.ItemDB = "Items.9223372059111819877"
  l0 = self.box_PhoneCommunicationController_91
  l1 = self.box_RewardController_v3_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|57987568", "57987568", "S09M040a_Main", "box_PhoneCommunicationController_91.OnCommunicationFinished", "box_RewardController_v3_89.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Escape_Gameplay_175_Escaped()
  local l0
  self = self._graph
  self:OnEnter_box_Escape_Gameplay_175()
  l0 = self.box_Escape_Gameplay_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|193060056", "193060056", "S09M040a_Main", "box_Escape_Gameplay_175.Escaped", "box_Escape_Gameplay_175.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Escape_Gameplay_175_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_264
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_Escape_Gameplay_175
  l1 = self.box_PlaySound_v2_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1707971579", "1707971579", "S09M040a_Main", "box_Escape_Gameplay_175.Started", "box_PlaySound_v2_264.Play", l0, l1)
  l1:Play()
end
function export:f_box_Escape_Gameplay_175_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_119
  l0.PGTMissionArea = "9223372060994542431"
  l0 = self.box_Escape_Gameplay_175
  l1 = self.box_PGTController_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|101089414", "101089414", "S09M040a_Main", "box_Escape_Gameplay_175.Stopped", "box_PGTController_v2_119.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_PlaySound_v2_273_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_196
  l0.Input = self.reinforcementsBratvaVehiclesCLOs
  l0.Data[0] = "9223372046105062123"
  l0 = self.box_PlaySound_v2_273
  l1 = self.box_ListWriter_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|613404856", "613404856", "S09M040a_Main", "box_PlaySound_v2_273.Out", "box_ListWriter_196.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_189_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_280
  l0.Input = self.Markers
  l0.Data[0] = "9223372044419131727"
  l0.Data[1] = "9223372043579956824"
  l0.Data[2] = "9223372043876904357"
  l0.Data[3] = "9223372043876904359"
  l0.Data[4] = "9223372044221758892"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|670106130", "670106130", "S09M040a_Main", "box_Ordered_Output_189.Out", "box_ListWriter_280.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_189_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_191()
  l0 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|637646682", "637646682", "S09M040a_Main", "box_Ordered_Output_189.Out", "box_MultipleOR_191.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlayDialog_v2_269_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_252
  l0.Parent = "9223372043876904357"
  l0.Child = "9223372045907873804"
  l0.CarIcon = 1
  l0 = self.box_PlayDialog_v2_269
  l1 = self.box_SnapAndBind_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|887037098", "887037098", "S09M040a_Main", "box_PlayDialog_v2_269.Started", "box_SnapAndBind_252.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MissionMusicController_201_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_234
  l0.Input = self.Markers
  l0.Data[0] = "9223372044419131727"
  l0.Data[1] = "9223372043579956824"
  l0.Data[2] = "9223372043876904357"
  l0.Data[3] = "9223372043876904359"
  l0.Data[4] = "9223372044221758892"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|900866707", "900866707", "S09M040a_Main", "box_MissionMusicController_201.Activated", "box_ListWriter_234.Add", clone, l0)
  l0:Add()
end
function export:f_box_Simple_Node_179_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|1381273003", "1381273003", "S09M040a_Main", "box_Simple_Node_179.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_226_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_307()
  l0 = self.box_Prepare_Convoy_307
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_Main|289828286", "289828286", "S09M040a_Main", "box_Simple_Node_226.Out", "box_Prepare_Convoy_307.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_MultipleOR_194()
end
function export:OnEnter_box_ObjectiveMonitor_v2_203()
  local l0
  l0 = self.box_ObjectiveMonitor_v2_203
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S09.S09M040a.Objectives.Objective040",
    item = "Objective",
    id = "385731"
  }
end
function export:OnEnter_box_MissionZone_260()
  local l0
  l0 = self.box_MissionZone_260
  l0.MissionArea = "9223372047965872629"
  l0.MissionLayer = "S09M040a_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MapPointController_v4_241()
  local l0
  l0 = self.box_MapPointController_v4_241
  l0.MapPoint = "9223372045907873810"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:OnEnter_box_OnceOnly_v3_254()
end
function export:OnEnter_box_Mission_End_304()
  local l0
  l0 = self.box_Mission_End_304
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S09M040a_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_314()
end
function export:OnEnter_box_MapPointController_v4_236()
  local l0
  l0 = self.box_MapPointController_v4_236
  l0.MapPoint = "9223372045907873872"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:OnEnter_box_Prepare_Convoy_308()
  local l0
  l0 = self.box_Prepare_Convoy_308
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
function export:OnEnter_box_Prepare_Convoy_310()
  local l0
  l0 = self.box_Prepare_Convoy_310
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
function export:OnEnter_box_PGTController_v2_294()
  local l0
  l0 = self.box_PGTController_v2_294
  l0.PGTMissionArea = "9223372060994542431"
  l0.AgentList = self.allNpcs
end
function export:OnEnter_box_MissionZone_90()
  local l0
  l0 = self.box_MissionZone_90
  l0.MissionArea = "9223372069487817217"
  l0.MissionLayer = "S09M040a_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_191()
end
function export:OnEnter_box_MapPointController_v4_278()
  local l0
  l0 = self.box_MapPointController_v4_278
  l0.MapPoint = "9223372045907873804"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
end
function export:OnEnter_box_AISquadStateMonitor_217()
  local l0
  l0 = self.box_AISquadStateMonitor_217
  l0.Affiliation = "Bratva"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_OnceOnly_v3_288()
end
function export:OnEnter_box_MultipleOR_228()
end
function export:OnEnter_box_Prepare_EngageMonitor_174()
  local l0
  l0 = self.box_Prepare_EngageMonitor_174
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
function export:OnEnter_box_MultipleOR_282()
end
function export:OnEnter_box_MultipleOR_242()
end
function export:OnEnter_box_Network_Surfing_Monitor_249()
  local l0
  l0 = self.box_Network_Surfing_Monitor_249
  l0.CheckNow = 1
end
function export:OnEnter_box_Prepare_Convoy_307()
  local l0
  l0 = self.box_Prepare_Convoy_307
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
function export:OnEnter_box_MultipleOR_233()
end
function export:OnEnter_box_Prepare_Convoy_309()
  local l0
  l0 = self.box_Prepare_Convoy_309
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
function export:OnEnter_box_MultipleOR_271()
end
function export:OnEnter_box_PrepareClueMonitor_193()
  local l0
  l0 = self.box_PrepareClueMonitor_193
  l0.ClueList = self.Markers
  l0.CheckNow = 1
end
function export:OnEnter_box_Escape_Gameplay_175()
  local l0
  l0 = self.box_Escape_Gameplay_175
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
function export:OnEnter_box_TutorialController_209()
  local l0
  l0 = self.box_TutorialController_209
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackOpen",
    item = "Description",
    id = "340376"
  }
  l0.Duration = -1
end
_compilerVersion = 4
