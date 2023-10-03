export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/ChangePlayerGkModelFromHumanConfig.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_CIN_DusanPenthouseIntro.S17M010_CIN_DusanPenthouseIntro_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_dusanpenthouseoutro.S17M010_CIN_DusanPenthouseOutro_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_farewell.S17M010_CIN_Farewell_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SendTrackingEvent.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/StandaloneLoaderController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:RegisterGlobals("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010.globals.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3689844043.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/210409017.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4151888406.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2494266994.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4089360243.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Marcus_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main"
  self.MarcusDone = DummyFunction
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.BuddyTBone = nil
  self.WKZ_Van = nil
  self.WKZVanState = 0
  self.Wrench = nil
  self.ExoticHack = 0
  self.TimeOfDayHour = 23
  self.TimeOfDayMinutes = 55
  self.HoTC_Xs = {}
  self.HoTC_XsList = nil
  self.PGT_BlumeExt_AIList = {}
  self.PGT_AIList = {}
  self.BlackoutReact02 = nil
  self.BlackoutReact01 = nil
  self.BlumeINT_AIList = {}
  self._1stBlumeINT_EnemyList = {}
  self.BlumeINT_01_Main_Elite_3 = nil
  self.BlumeINT_01_Main_Elite_2 = nil
  self.BlumeINT_01_Main_Elite_1 = nil
  self.BlumeINT_01_Main_Elite_4 = nil
  self.BlumeINT_01_Main_Elite_5 = nil
  self.BlumeINT_01_Main_Enforcer_1 = nil
  self.BlumeINT_01_Main_Enforcer_2 = nil
  self.BlumeINT_01_Main_Enforcer_3 = nil
  self.BlumeINT_01_Main_Enforcer_4 = nil
  self.BlumeINT_01_Main_Enforcer_5 = nil
  self._5 = 0
  self.box_CLOController_193 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_193
  l0._graph = self
  l0._name = "box_CLOController_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|7707826"
  l0.Activated = self.f_box_CLOController_193_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_193_OnUserInPlace
  self.box_MissionCheckpointReach_15 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_15
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|10727542"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_89 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_89
  l0._graph = self
  l0._name = "box_Timer_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|28368525"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_89_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_196 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_196
  l0._graph = self
  l0._name = "box_CLOController_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|36228861"
  l0.Activated = self.f_box_CLOController_196_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_196_OnUserInPlace
  self.box_MissionMessageController_v3_29 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_29
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|54403520"
  l0.Out = self.f_box_MissionMessageController_v3_29_Out
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Monitor_246 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_246
  l0._graph = self
  l0._name = "box_Hackable_Monitor_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|57623513"
  l0.Enabled = self.f_box_Hackable_Monitor_246_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_246_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_249 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_249
  l0._graph = self
  l0._name = "box_HackableController_v2_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|69327170"
  l0.Enabled = self.f_box_HackableController_v2_249_Enabled
  l0.Disabled = self.f_box_HackableController_v2_249_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_249_ProfilingEnabled
  l0.ProfilingDisabled = self.f_box_HackableController_v2_249_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Multiple_AND_248 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_248
  l0._graph = self
  l0._name = "box_Multiple_AND_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|77140431"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_248_Out
  self.box_PhoneCommunicationController_255 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_255
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|86835392"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_255_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_255_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_204 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_204
  l0._graph = self
  l0._name = "box_MultipleOR_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|102369502"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_204_Out
  self.box_PGTController_v2_120 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_120
  l0._graph = self
  l0._name = "box_PGTController_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|119119090"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_120_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_HackableController_v2_160 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_160
  l0._graph = self
  l0._name = "box_HackableController_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|143263623"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_160_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_227 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_227
  l0._graph = self
  l0._name = "box_PlaySound_v2_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|150793339"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_54 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_54
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|159859145"
  l0.Enabled = self.f_box_TriggerMonitor_v2_54_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_54_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_54_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_80 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_80
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|164906400"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_80_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_80_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_80_Leave
  l0.Use = DummyFunction
  self.box_MultipleOR_52 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|165167388"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_Media_System_Custom_Broadcast_Monitor_167 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_167
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|190794285"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_167_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_167_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_45 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_45
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|194705109"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_45_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_45_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_146 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_146
  l0._graph = self
  l0._name = "box_PlaySequence_v5_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|196642279"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_146_Finished
  self.box_MissionMessageController_v3_166 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_166
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|221781575"
  l0.Out = self.f_box_MissionMessageController_v3_166_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_137 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_137
  l0._graph = self
  l0._name = "box_ListWriter_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|221891176"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_137_Added
  l0.Removed = self.f_box_ListWriter_137_Removed
  l0.Out = self.f_box_ListWriter_137_Out
  self.box_S17M010_Marcus_SCR_Main_135 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_135
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|229563161"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = self.f_box_S17M010_Marcus_SCR_Main_135_MistFXOFF
  self.box_AISquadStateController_44 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_44
  l0._graph = self
  l0._name = "box_AISquadStateController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|231869001"
  l0.WanderSet = DummyFunction
  l0.AwareSet = self.f_box_AISquadStateController_44_AwareSet
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_44_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_InteractionScriptMonitor_v2_202 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_202
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|249787030"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_202_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_202_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_CLOController_198 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_198
  l0._graph = self
  l0._name = "box_CLOController_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|268657232"
  l0.Activated = self.f_box_CLOController_198_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_198_OnUserInPlace
  self.box_InteractGameplayController_165 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_165
  l0._graph = self
  l0._name = "box_InteractGameplayController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|287335209"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_165_Completed
  self.box_InteractGameplayController_145 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_145
  l0._graph = self
  l0._name = "box_InteractGameplayController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|290253504"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_145_Completed
  self.box_InteractionScriptMonitor_v2_211 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_211
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|292728553"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_211_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_211_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MissionMessageController_v3_260 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_260
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|312523272"
  l0.Out = self.f_box_MissionMessageController_v3_260_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_223 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_223
  l0._graph = self
  l0._name = "box_PlaySound_v2_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|313637095"
  l0.Out = self.f_box_PlaySound_v2_223_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_InteractionScriptMonitor_v2_188 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_188
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|327229856"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_188_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_188_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MapPointController_v4_121 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_121
  l0._graph = self
  l0._name = "box_MapPointController_v4_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|327600099"
  l0.Shown = self.f_box_MapPointController_v4_121_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_ListForEach_138 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_138
  l0._graph = self
  l0._name = "box_ListForEach_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|341280431"
  l0.Started = self.f_box_ListForEach_138_Started
  l0.Stopped = self.f_box_ListForEach_138_Stopped
  l0.ForEach = self.f_box_ListForEach_138_ForEach
  l0.GotNext = self.f_box_ListForEach_138_GotNext
  l0.EndOfList = self.f_box_ListForEach_138_EndOfList
  l0.GotFirst = DummyFunction
  self.box_PlayDialog_v2_134 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_134
  l0._graph = self
  l0._name = "box_PlayDialog_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|350745474"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_134_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_217 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_217
  l0._graph = self
  l0._name = "box_PlayDialog_v2_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|361657349"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_217_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_238 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_238
  l0._graph = self
  l0._name = "box_Timer_v2_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|363565764"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_238_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_115 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_115
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|366343919"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_115_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_247 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_247
  l0._graph = self
  l0._name = "box_Hackable_Monitor_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|369666924"
  l0.Enabled = self.f_box_Hackable_Monitor_247_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_247_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_225 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_225
  l0._graph = self
  l0._name = "box_Timer_v2_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|374119033"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_225_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_96 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_96
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|376949089"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = self.f_box_S17M010_Marcus_SCR_Main_96_BlackOutStopped
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = DummyFunction
  self.box_Moveable_Entity_Monitor_251 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_251
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|392270443"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_251_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_251_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_PlaySound_v2_234 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_234
  l0._graph = self
  l0._name = "box_PlaySound_v2_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|442099668"
  l0.Out = self.f_box_PlaySound_v2_234_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_226 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_226
  l0._graph = self
  l0._name = "box_PlaySound_v2_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|444254195"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ObjectiveMonitor_v2_109 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_109
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|447944162"
  l0.Enabled = self.f_box_ObjectiveMonitor_v2_109_Enabled
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_box_ObjectiveMonitor_v2_109_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_TriggerMonitor_v2_119 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_119
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|453042905"
  l0.Enabled = self.f_box_TriggerMonitor_v2_119_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_119_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_119_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_3 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_3
  l0._graph = self
  l0._name = "box_MissionLayer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|476193201"
  l0.Loaded = self.f_box_MissionLayer_v2_3_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_241 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_241
  l0._graph = self
  l0._name = "box_Multiple_AND_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|491677906"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_241_Out
  self.box_Moveable_Entity_Monitor_200 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_200
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|502315502"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_200_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_200_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_PhoneCommunicationController_10 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_10
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|505759250"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_58 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_58
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|506790352"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = self.f_box_S17M010_Marcus_SCR_Main_58_MistFXOFF
  self.box_MissionCheckpointReach_76 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_76
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|523614260"
  l0.Out = self.f_box_MissionCheckpointReach_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_183 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_183
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|533730933"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = self.f_box_S17M010_Marcus_SCR_Main_183_MistFXON
  l0.MistFXOFF = DummyFunction
  self.box_InteractionScriptMonitor_v2_199 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_199
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|534912246"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_199_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_199_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Interact_Gameplay_111 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_111
  l0._graph = self
  l0._name = "box_Interact_Gameplay_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|544398300"
  l0.Started = self.f_box_Interact_Gameplay_111_Started
  l0.Stopped = self.f_box_Interact_Gameplay_111_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_111_Interacted
  self.box_Multiple_AND_245 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_245
  l0._graph = self
  l0._name = "box_Multiple_AND_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|545808082"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_245_Out
  self.box_SetBoolean_v2_39 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|561178858"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_Multiple_AND_243 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_243
  l0._graph = self
  l0._name = "box_Multiple_AND_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|561236985"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_243_Out
  self.box_InteractGameplayController_159 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_159
  l0._graph = self
  l0._name = "box_InteractGameplayController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|580458030"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_159_Completed
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|593774066"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|594680436"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_156 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_156
  l0._graph = self
  l0._name = "box_HackableController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|611343004"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_156_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|613383215"
  l0.Activated = self.f_box_CLOController_116_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_116_OnUserInPlace
  self.box_PlaySound_v2_231 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_231
  l0._graph = self
  l0._name = "box_PlaySound_v2_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|630578651"
  l0.Out = self.f_box_PlaySound_v2_231_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|644611716"
  l0.Loaded = self.f_box_MissionLayer_v2_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_194 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_194
  l0._graph = self
  l0._name = "box_CLOController_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|647134152"
  l0.Activated = self.f_box_CLOController_194_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_194_OnUserInPlace
  self.box_PhoneCommunicationController_57 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_57
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|649773013"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_192 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_192
  l0._graph = self
  l0._name = "box_CLOController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|667452304"
  l0.Activated = self.f_box_CLOController_192_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_192_OnUserInPlace
  self.box_PhoneCommunicationController_83 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_83
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|670006266"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|692247049"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_Standalone_Loader_Controller_140 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_140
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|698961131"
  l0.LoadingStarted = DummyFunction
  l0.Loaded = self.f_box_Standalone_Loader_Controller_140_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_Standalone_Loader_Controller_17 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_17
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|699659687"
  l0.LoadingStarted = DummyFunction
  l0.Loaded = self.f_box_Standalone_Loader_Controller_17_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_HackableController_v2_254 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_254
  l0._graph = self
  l0._name = "box_HackableController_v2_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|712130481"
  l0.Enabled = self.f_box_HackableController_v2_254_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Moveable_Entity_Monitor_189 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_189
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|715894856"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_189_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_189_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_HackableController_v2_163 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_163
  l0._graph = self
  l0._name = "box_HackableController_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|737786693"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_163_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PGTController_v2_35 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_35
  l0._graph = self
  l0._name = "box_PGTController_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|740367281"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_35_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_ListForEach_125 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_125
  l0._graph = self
  l0._name = "box_ListForEach_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|750974715"
  l0.Started = self.f_box_ListForEach_125_Started
  l0.Stopped = self.f_box_ListForEach_125_Stopped
  l0.ForEach = self.f_box_ListForEach_125_ForEach
  l0.GotNext = self.f_box_ListForEach_125_GotNext
  l0.EndOfList = self.f_box_ListForEach_125_EndOfList
  l0.GotFirst = DummyFunction
  self.box_PlaySound_v2_133 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_133
  l0._graph = self
  l0._name = "box_PlaySound_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|759265057"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_112 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_112
  l0._graph = self
  l0._name = "box_Interact_Gameplay_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|765780712"
  l0.Started = self.f_box_Interact_Gameplay_112_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_112_Interacted
  self.box_UnspawnController_117 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_117
  l0._graph = self
  l0._name = "box_UnspawnController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|780968319"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_AISquadStateController_36 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_36
  l0._graph = self
  l0._name = "box_AISquadStateController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|804322139"
  l0.WanderSet = DummyFunction
  l0.AwareSet = self.f_box_AISquadStateController_36_AwareSet
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_ListWriter_122 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_122
  l0._graph = self
  l0._name = "box_ListWriter_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|812454649"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_122_Added
  l0.Removed = self.f_box_ListWriter_122_Removed
  l0.Out = self.f_box_ListWriter_122_Out
  self.box_TriggerMonitor_v2_95 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_95
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|816946825"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_95_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_143 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_143
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|820404239"
  l0.Out = self.f_box_MissionMessageController_v3_143_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_9 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_9
  l0._graph = self
  l0._name = "box_HackableController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|821662088"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_9_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Perk_Controller_99 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_99
  l0._graph = self
  l0._name = "box_Perk_Controller_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|847147842"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_99_PerkReseted
  self.box_TriggerMonitor_v2_253 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_253
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|880060651"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_253_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_147 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_147
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|905012157"
  l0.Out = self.f_box_MissionMessageController_v3_147_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_82 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_82
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|927568752"
  l0.Enabled = self.f_box_TriggerMonitor_v2_82_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_82_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_82_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_40 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_40
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|929139640"
  l0.Out = self.f_box_MissionMessageController_v3_40_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySequence_v5_149 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_149
  l0._graph = self
  l0._name = "box_PlaySequence_v5_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|937016863"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_149_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_118 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_118
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|941971639"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_118_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_48 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_48
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|953923994"
  l0.Out = self.f_box_MissionCheckpointReach_48_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_184 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_184
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|960531546"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = DummyFunction
  self.box_MissionMessageController_v3_114 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_114
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|974888284"
  l0.Out = self.f_box_MissionMessageController_v3_114_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_124 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_124
  l0._graph = self
  l0._name = "box_HackableController_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|975784937"
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
  self.box_Moveable_Entity_Monitor_213 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_213
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|977608506"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_213_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_213_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_239 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_239
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1024453244"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = DummyFunction
  self.box_MissionCheckpointReach_110 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_110
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1076540206"
  l0.Out = self.f_box_MissionCheckpointReach_110_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionZone_78 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_78
  l0._graph = self
  l0._name = "box_MissionZone_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1094747753"
  l0.Enabled = self.f_box_MissionZone_78_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PGTController_v2_61 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_61
  l0._graph = self
  l0._name = "box_PGTController_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1100813122"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_61_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_HackableController_v2_228 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_228
  l0._graph = self
  l0._name = "box_HackableController_v2_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1120541384"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = self.f_box_HackableController_v2_228_ProfileReset
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_250 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_250
  l0._graph = self
  l0._name = "box_HackableController_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1131390253"
  l0.Enabled = self.f_box_HackableController_v2_250_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_250_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_InteractGameplayController_164 = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self.box_InteractGameplayController_164
  l0._graph = self
  l0._name = "box_InteractGameplayController_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1133005479"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_InteractGameplayController_164_Completed
  self.box_InteractionScriptMonitor_v2_203 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_203
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1193932534"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_203_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_203_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_HackableController_v2_161 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_161
  l0._graph = self
  l0._name = "box_HackableController_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1199161768"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_161_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_136 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_136
  l0._graph = self
  l0._name = "box_HackableController_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1202951360"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_136_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_136_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_85 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_85
  l0._graph = self
  l0._name = "box_PlaySound_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1206516010"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_85_Started
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_216 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_216
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1209543296"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_216_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_216_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_TriggerMonitor_v2_252 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_252
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1213177743"
  l0.Enabled = self.f_box_TriggerMonitor_v2_252_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_252_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_252_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_208 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_208
  l0._graph = self
  l0._name = "box_MultipleOR_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1221084155"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_208_Out
  self.box_CLOController_187 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_187
  l0._graph = self
  l0._name = "box_CLOController_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1224461222"
  l0.Activated = self.f_box_CLOController_187_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_187_OnUserInPlace
  self.box_Standalone_Loader_Controller_141 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_141
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1272218210"
  l0.LoadingStarted = DummyFunction
  l0.Loaded = self.f_box_Standalone_Loader_Controller_141_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_Timer_v2_256 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_256
  l0._graph = self
  l0._name = "box_Timer_v2_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1279388359"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_256_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_158 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_158
  l0._graph = self
  l0._name = "box_PlaySequence_v5_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1291854109"
  l0.Started = self.f_box_PlaySequence_v5_158_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_195 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_195
  l0._graph = self
  l0._name = "box_CLOController_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1306664551"
  l0.Activated = self.f_box_CLOController_195_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_195_OnUserInPlace
  self.box_PlaySound_v2_222 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_222
  l0._graph = self
  l0._name = "box_PlaySound_v2_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1315713518"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_72 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_72
  l0._graph = self
  l0._name = "box_Interact_Gameplay_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1342250059"
  l0.Started = self.f_box_Interact_Gameplay_72_Started
  l0.Stopped = self.f_box_Interact_Gameplay_72_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_72_Interacted
  self.box_AISquadStateController_38 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_38
  l0._graph = self
  l0._name = "box_AISquadStateController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1375750064"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_38_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_Hackable_Monitor_244 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_244
  l0._graph = self
  l0._name = "box_Hackable_Monitor_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1386959005"
  l0.Enabled = self.f_box_Hackable_Monitor_244_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_244_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_230 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_230
  l0._graph = self
  l0._name = "box_PlaySound_v2_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1387015027"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Media_System_Custom_Broadcast_Monitor_63 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_63
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1405087469"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_63_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_63_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_25 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_25
  l0._graph = self
  l0._name = "box_MapPointController_v4_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1418829943"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_25_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_S17M010_CIN_Farewell_Main_50 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_farewell.S17M010_CIN_Farewell_Main.debug.lua")
  l0 = self.box_S17M010_CIN_Farewell_Main_50
  l0._graph = self
  l0._name = "box_S17M010_CIN_Farewell_Main_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1419118169"
  l0.EndCine = self.f_box_S17M010_CIN_Farewell_Main_50_EndCine
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1448867004"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_HackableController_v2_32 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_32
  l0._graph = self
  l0._name = "box_HackableController_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1464998903"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_32_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S17M010_CIN_DusanPenthouseIntro_Main_41 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/S17M010_CIN_DusanPenthouseIntro.S17M010_CIN_DusanPenthouseIntro_Main.debug.lua")
  l0 = self.box_S17M010_CIN_DusanPenthouseIntro_Main_41
  l0._graph = self
  l0._name = "box_S17M010_CIN_DusanPenthouseIntro_Main_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1495047947"
  l0.EndCine = self.f_box_S17M010_CIN_DusanPenthouseIntro_Main_41_EndCine
  self.box_Hackable_Monitor_240 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_240
  l0._graph = self
  l0._name = "box_Hackable_Monitor_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1499648645"
  l0.Enabled = self.f_box_Hackable_Monitor_240_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_240_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1509997801"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_PhoneCommunicationController_34 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_34
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1526376244"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_34_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = self.f_box_PhoneCommunicationController_34_Out
  self.box_MissionMessageController_v3_148 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_148
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1531393346"
  l0.Out = self.f_box_MissionMessageController_v3_148_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListForEach_123 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_123
  l0._graph = self
  l0._name = "box_ListForEach_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1543807828"
  l0.Started = self.f_box_ListForEach_123_Started
  l0.Stopped = self.f_box_ListForEach_123_Stopped
  l0.ForEach = self.f_box_ListForEach_123_ForEach
  l0.GotNext = self.f_box_ListForEach_123_GotNext
  l0.EndOfList = self.f_box_ListForEach_123_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Interact_Gameplay_179 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_179
  l0._graph = self
  l0._name = "box_Interact_Gameplay_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1561299595"
  l0.Started = self.f_box_Interact_Gameplay_179_Started
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_179_Interacted
  self.box_S17M010_Marcus_SCR_Main_12 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_12
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1563132264"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = self.f_box_S17M010_Marcus_SCR_Main_12_MarcusEnteredBlume
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = DummyFunction
  self.box_Interact_Gameplay_132 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_132
  l0._graph = self
  l0._name = "box_Interact_Gameplay_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1592061391"
  l0.Started = self.f_box_Interact_Gameplay_132_Started
  l0.Stopped = self.f_box_Interact_Gameplay_132_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_132_Interacted
  self.box_Moveable_Entity_Monitor_210 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_210
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1593420289"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_210_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_210_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_Multiple_AND_257 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_257
  l0._graph = self
  l0._name = "box_Multiple_AND_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1603013769"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_257_Out
  self.box_CLOController_191 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_191
  l0._graph = self
  l0._name = "box_CLOController_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1642322171"
  l0.Activated = self.f_box_CLOController_191_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_191_OnUserInPlace
  self.box_S17M010_CIN_DusanPenthouseOutro_Main_43 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_cin_dusanpenthouseoutro.S17M010_CIN_DusanPenthouseOutro_Main.debug.lua")
  l0 = self.box_S17M010_CIN_DusanPenthouseOutro_Main_43
  l0._graph = self
  l0._name = "box_S17M010_CIN_DusanPenthouseOutro_Main_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1666878610"
  l0.EndCine = self.f_box_S17M010_CIN_DusanPenthouseOutro_Main_43_EndCine
  self.box_MapPointController_v4_144 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_144
  l0._graph = self
  l0._name = "box_MapPointController_v4_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1671122747"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_144_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionZone_79 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_79
  l0._graph = self
  l0._name = "box_MissionZone_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1679483887"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_79_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_Moveable_Entity_Monitor_205 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_205
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1702641387"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_205_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_205_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MapPointController_v4_46 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_46
  l0._graph = self
  l0._name = "box_MapPointController_v4_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1710840287"
  l0.Shown = self.f_box_MapPointController_v4_46_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v4_131 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_131
  l0._graph = self
  l0._name = "box_MapPointController_v4_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1735846343"
  l0.Shown = self.f_box_MapPointController_v4_131_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v3_101 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_101
  l0._graph = self
  l0._name = "box_OnceOnly_v3_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1737852069"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_101_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_37 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_37
  l0._graph = self
  l0._name = "box_MissionLayer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1744196331"
  l0.Loaded = self.f_box_MissionLayer_v2_37_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1750186125"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_CinematicPrep_102 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_102
  l0._graph = self
  l0._name = "box_CinematicPrep_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1782437012"
  l0.PreOut = self.f_box_CinematicPrep_102_PreOut
  l0.PostOut = DummyFunction
  self.box_TriggerMonitor_v2_49 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_49
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1795192279"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_49_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_49_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_49_Leave
  l0.Use = DummyFunction
  self.box_InteractionScriptMonitor_v2_218 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_218
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1812116173"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_218_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_218_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Teleport_To_SpawnPoint_14 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_14
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1830332567"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_14_TeleportDone
  self.box_HackableController_v2_162 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_162
  l0._graph = self
  l0._name = "box_HackableController_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1848866516"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_162_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_237 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_237
  l0._graph = self
  l0._name = "box_Timer_v2_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1850969824"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_237_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Standalone_Loader_Controller_142 = cbox:CreateBox("domino/System/StandaloneLoaderController.lua")
  l0 = self.box_Standalone_Loader_Controller_142
  l0._graph = self
  l0._name = "box_Standalone_Loader_Controller_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1858857003"
  l0.LoadingStarted = DummyFunction
  l0.Loaded = self.f_box_Standalone_Loader_Controller_142_Loaded
  l0.PreviousZoneUnloaded = DummyFunction
  self.box_PlayDialog_v2_229 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_229
  l0._graph = self
  l0._name = "box_PlayDialog_v2_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1865133810"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_229_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v4_94 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_94
  l0._graph = self
  l0._name = "box_MapPointController_v4_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1867398344"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_94_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_128 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_128
  l0._graph = self
  l0._name = "box_CinematicPrep_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1893357519"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_128_PostOut
  self.box_Multiple_AND_73 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_73
  l0._graph = self
  l0._name = "box_Multiple_AND_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1894863734"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_73_Out
  self.box_CLOController_197 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_197
  l0._graph = self
  l0._name = "box_CLOController_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1906404719"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_197_OnUserInPlace
  self.box_MissionLayer_v2_75 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_75
  l0._graph = self
  l0._name = "box_MissionLayer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1936534563"
  l0.Loaded = self.f_box_MissionLayer_v2_75_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_GetNPC_190 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_190
  l0._graph = self
  l0._name = "box_GetNPC_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1971731081"
  l0.GotNPCList = self.f_box_GetNPC_190_GotNPCList
  self.box_CinematicPrep_2 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1972243505"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_2_PostOut
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1980027099"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_30 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_30
  l0._graph = self
  l0._name = "box_PGTController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2003563420"
  l0.Started = self.f_box_PGTController_v2_30_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_30_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_S17M010_Marcus_SCR_Main_178 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S17/S17M010/s17m010_marcus_scr.S17M010_Marcus_SCR_Main.debug.lua")
  l0 = self.box_S17M010_Marcus_SCR_Main_178
  l0._graph = self
  l0._name = "box_S17M010_Marcus_SCR_Main_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2005178184"
  l0.Out = DummyFunction
  l0.MarcusEnteredBlume = DummyFunction
  l0.BlackOutStopped = DummyFunction
  l0.EndMarcusOutro = DummyFunction
  l0.EndTS = DummyFunction
  l0.FinalHackFinished = DummyFunction
  l0.MistFXON = DummyFunction
  l0.MistFXOFF = DummyFunction
  self.box_PhoneCommunicationController_6 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2010558652"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_6_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_242 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_242
  l0._graph = self
  l0._name = "box_Hackable_Monitor_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2018253638"
  l0.Enabled = self.f_box_Hackable_Monitor_242_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_242_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PhoneCommunicationController_51 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_51
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2033882156"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_51_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_181 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_181
  l0._graph = self
  l0._name = "box_OnceOnly_v3_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2043911720"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_181_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2052459525"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_Multiple_AND_88 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_88
  l0._graph = self
  l0._name = "box_Multiple_AND_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2066211892"
  l0._DynamicAnchors = {Condition = 10}
  l0.Out = self.f_box_Multiple_AND_88_Out
  self.box_CinematicPrep_55 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_55
  l0._graph = self
  l0._name = "box_CinematicPrep_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2125261286"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_55_PostOut
  self.box_MultipleOR_24 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_24
  l0._graph = self
  l0._name = "box_MultipleOR_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2131956980"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_24_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:FromCheckPoint3()
  local l0
  l0 = self.box_CinematicPrep_102
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|184604117", "184604117", "S17M010_Marcus_Main", "FromCheckPoint3", "box_CinematicPrep_102.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:FromCheckPoint4()
  local l0
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "S17M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1020094886", "1020094886", "S17M010_Marcus_Main", "FromCheckPoint4", "box_MissionLayer_v2_5.Load", self, l0)
  l0:Load()
end
function export:FromCheckPoint5()
  local l0
  l0 = self.box_MissionLayer_v2_75
  l0.LayerName = "S17M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1166611013", "1166611013", "S17M010_Marcus_Main", "FromCheckPoint5", "box_MissionLayer_v2_75.Load", self, l0)
  l0:Load()
end
function export:FromCheckPoint6()
  local l0
  l0 = self.box_MissionLayer_v2_37
  l0.LayerName = "S17M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1669354723", "1669354723", "S17M010_Marcus_Main", "FromCheckPoint6", "box_MissionLayer_v2_37.Load", self, l0)
  l0:Load()
end
function export:FromCheckPoint7()
  local l0
  l0 = self.box_MissionLayer_v2_3
  l0.LayerName = "S17M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1477632269", "1477632269", "S17M010_Marcus_Main", "FromCheckPoint7", "box_MissionLayer_v2_3.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_Teleport_To_SpawnPoint_14
  l0.SpawnPoint = "9223372046882226527"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485449"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|296835110", "296835110", "S17M010_Marcus_Main", "In", "box_Teleport_To_SpawnPoint_14.In", self, l0)
  l0:In()
end
function export:f_box_AI_Agent_Zone_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_120
  l0.PGTMissionArea = "9223372047627005640"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|871726772", "871726772", "S17M010_Marcus_Main", "box_AI_Agent_Zone_13.Out", "box_PGTController_v2_120.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetTimeOfDay_152_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|292896674"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_93_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|299549314", "299549314", "S17M010_Marcus_Main", "box_SetTimeOfDay_152.Out", "box_TimeScale_Controller_93.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_CLOController_193_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_198
  l0.CLO = "9223372064392405962"
  l0 = self.box_CLOController_193
  l1 = self.box_CLOController_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|814340332", "814340332", "S17M010_Marcus_Main", "box_CLOController_193.Activated", "box_CLOController_198.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_193_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_193
  self.BlumeINT_01_Main_Enforcer_1 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|412747809", "412747809", "S17M010_Marcus_Main", "box_CLOController_193.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(5)
end
function export:f_box_Timer_v2_89_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1552112994"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_127_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_127_Out_1
  l0 = self.box_Timer_v2_89
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1421655747", "1421655747", "S17M010_Marcus_Main", "box_Timer_v2_89.TimeElapsed", "box_Ordered_Output_127.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_196_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_195
  l0.CLO = "9223372064392405971"
  l0 = self.box_CLOController_196
  l1 = self.box_CLOController_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|368669806", "368669806", "S17M010_Marcus_Main", "box_CLOController_196.Activated", "box_CLOController_195.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_196_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_196
  self.BlumeINT_01_Main_Enforcer_3 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1946495044", "1946495044", "S17M010_Marcus_Main", "box_CLOController_196.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(7)
end
function export:f_box_MissionMessageController_v3_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_132()
  l0 = self.box_MissionMessageController_v3_29
  l1 = self.box_Interact_Gameplay_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|33855799", "33855799", "S17M010_Marcus_Main", "box_MissionMessageController_v3_29.Out", "box_Interact_Gameplay_132.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_246_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_247
  l0.HackableEntity = "9223372049200548055"
  l0 = self.box_Hackable_Monitor_246
  l1 = self.box_Hackable_Monitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1744033413", "1744033413", "S17M010_Marcus_Main", "box_Hackable_Monitor_246.Enabled", "box_Hackable_Monitor_247.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_246_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_248()
  l0 = self.box_Hackable_Monitor_246
  l1 = self.box_Multiple_AND_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|32478327", "32478327", "S17M010_Marcus_Main", "box_Hackable_Monitor_246.HackSuccess", "box_Multiple_AND_248.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TimeScale_Controller_107_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372059659744851"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|301128665"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_168_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|766749103", "766749103", "S17M010_Marcus_Main", "box_TimeScale_Controller_107.Locked", "box_Dynamic_Media_Controller_168.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_InteractionScriptController_23_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = nil
  l0.InteractionEntityList = {
    "9223372047942737398",
    "9223372059814089830"
  }
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1493929840"
  l0.Enabled = self.f_box_InteractionScriptController_31_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|982431685", "982431685", "S17M010_Marcus_Main", "box_InteractionScriptController_23.Disabled", "box_InteractionScriptController_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_249_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_249()
  l0 = self.box_HackableController_v2_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|767670606", "767670606", "S17M010_Marcus_Main", "box_HackableController_v2_249.Disabled", "box_HackableController_v2_249.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_249_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_249()
  l0 = self.box_HackableController_v2_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1977497944", "1977497944", "S17M010_Marcus_Main", "box_HackableController_v2_249.Enabled", "box_HackableController_v2_249.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_249_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_253()
  l0 = self.box_HackableController_v2_249
  l1 = self.box_TriggerMonitor_v2_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1712072782", "1712072782", "S17M010_Marcus_Main", "box_HackableController_v2_249.ProfilingDisabled", "box_TriggerMonitor_v2_253.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_249_ProfilingEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_253()
  l0 = self.box_HackableController_v2_249
  l1 = self.box_TriggerMonitor_v2_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|130798892", "130798892", "S17M010_Marcus_Main", "box_HackableController_v2_249.ProfilingEnabled", "box_TriggerMonitor_v2_253.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Multiple_AND_248_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060353716041"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1162839497"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_172_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Multiple_AND_248
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1281797252", "1281797252", "S17M010_Marcus_Main", "box_Multiple_AND_248.Out", "box_VisibilityController_v2_172.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_255_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_73()
  l0 = self.box_PhoneCommunicationController_255
  l1 = self.box_Multiple_AND_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2077252504", "2077252504", "S17M010_Marcus_Main", "box_PhoneCommunicationController_255.OnCommunicationFinished", "box_Multiple_AND_73.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PhoneCommunicationController_255_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_242
  l0.HackableEntity = "9223372049200548057"
  l0 = self.box_PhoneCommunicationController_255
  l1 = self.box_Hackable_Monitor_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1951905955", "1951905955", "S17M010_Marcus_Main", "box_PhoneCommunicationController_255.StartCommunicationOut", "box_Hackable_Monitor_242.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InventoryController_v2_90_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_238
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2146504332", "2146504332", "S17M010_Marcus_Main", "box_InventoryController_v2_90.Switched", "box_Timer_v2_238.Start", clone, l0)
  l0:Start()
end
function export:f_box_MaterialController_68_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491738"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|182957757"
  l0.ByIndexSet = self.f_box_MaterialController_70_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1122042091", "1122042091", "S17M010_Marcus_Main", "box_MaterialController_68.ByIndexSet", "box_MaterialController_70.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MultipleOR_204_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_188()
  l0 = self.box_MultipleOR_204
  l1 = self.box_InteractionScriptMonitor_v2_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|800573245", "800573245", "S17M010_Marcus_Main", "box_MultipleOR_204.Out", "box_InteractionScriptMonitor_v2_188.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_120_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_137
  l0.Input = self.HoTC_Xs
  l0.Data[0] = "9223372049200548061"
  l0.Data[1] = "9223372049200548059"
  l0.Data[2] = "9223372049200548057"
  l0.Data[3] = "9223372049200548055"
  l0.Data[4] = "9223372049200548053"
  l0 = self.box_PGTController_v2_120
  l1 = self.box_ListWriter_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1054165853", "1054165853", "S17M010_Marcus_Main", "box_PGTController_v2_120.AllSpawned", "box_ListWriter_137.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_160_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_248()
  l0 = self.box_HackableController_v2_160
  l1 = self.box_Multiple_AND_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1209038679", "1209038679", "S17M010_Marcus_Main", "box_HackableController_v2_160.HackForced", "box_Multiple_AND_248.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Get_Player_ID_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|837333949"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_180_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_180_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|775174755", "775174755", "S17M010_Marcus_Main", "box_Get_Player_ID_26.Out", "box_Ordered_Output_180.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_105_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Marcus_SCR_Main_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1530453361", "1530453361", "S17M010_Marcus_Main", "box_TimeScale_Controller_105.Locked", "box_S17M010_Marcus_SCR_Main_135.Deactivate Mist FX", clone, l0)
  l0:Deactivate_Mist_FX()
end
function export:f_box_TriggerMonitor_v2_54_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_61
  l0.PGTMissionArea = "9223372047942737451"
  l0 = self.box_TriggerMonitor_v2_54
  l1 = self.box_PGTController_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|249282957", "249282957", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_54.Disabled", "box_PGTController_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_54_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_25
  l0.MapPoint = "9223372050376288754"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.LocMapMarkerDescription = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0 = self.box_TriggerMonitor_v2_54
  l1 = self.box_MapPointController_v4_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|27726448", "27726448", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_54.Enabled", "box_MapPointController_v4_25.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_54_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_54()
  l0 = self.box_TriggerMonitor_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2063760016", "2063760016", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_54.Enter", "box_TriggerMonitor_v2_54.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_80_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_45
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873289"
  l0 = self.box_TriggerMonitor_v2_80
  l1 = self.box_PhoneCommunicationController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|668009869", "668009869", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_80.Disabled", "box_PhoneCommunicationController_45.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_80_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = 0
  l0._graph = self
  l0._name = "box_Player_State_Controller_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1690142958"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = self.f_box_Player_State_Controller_71_ClimbInteractionAllowedSet
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_80
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1379512075", "1379512075", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_80.Enter", "box_Player_State_Controller_71.SetClimbInteractionAllowed", l0, l1)
  l1:SetClimbInteractionAllowed()
end
function export:f_box_TriggerMonitor_v2_80_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = 1
  l0._graph = self
  l0._name = "box_Player_State_Controller_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1744212282"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = self.f_box_Player_State_Controller_129_ClimbInteractionAllowedSet
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_80
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1556518137", "1556518137", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_80.Leave", "box_Player_State_Controller_129.SetClimbInteractionAllowed", l0, l1)
  l1:SetClimbInteractionAllowed()
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_228
  l0.HackableEntity = self.PlayerEntity
  l0.Hacker = self.PlayerEntity
  l0 = self.box_MultipleOR_52
  l1 = self.box_HackableController_v2_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2084106483", "2084106483", "S17M010_Marcus_Main", "box_MultipleOR_52.Out", "box_HackableController_v2_228.ResetProfile", l0, l1)
  l1:ResetProfile()
end
function export:f_box_MaterialController_70_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491740"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1804228722"
  l0.ByIndexSet = self.f_box_MaterialController_77_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|64969347", "64969347", "S17M010_Marcus_Main", "box_MaterialController_70.ByIndexSet", "box_MaterialController_77.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_167_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_167()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|259896728", "259896728", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Monitor_167.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_167.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_167_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057914442823"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|273866544"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_170_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_167
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1495807719", "1495807719", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Monitor_167.Disabled", "box_Media_System_Custom_Broadcast_Controller_170.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_PhoneCommunicationController_45_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_257()
  l0 = self.box_PhoneCommunicationController_45
  l1 = self.box_Multiple_AND_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2134299218", "2134299218", "S17M010_Marcus_Main", "box_PhoneCommunicationController_45.OnCommunicationFinished", "box_Multiple_AND_257.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_PhoneCommunicationController_45_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_45
  l1 = self.box_OnceOnly_v3_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|708683561", "708683561", "S17M010_Marcus_Main", "box_PhoneCommunicationController_45.OnCommunicationStarted", "box_OnceOnly_v3_101.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_146_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|281959511"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_157_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_157_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_PlaySequence_v5_146
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1285507142", "1285507142", "S17M010_Marcus_Main", "box_PlaySequence_v5_146.Finished", "box_Ordered_Output_157.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_166_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_181()
  l0 = self.box_MissionMessageController_v3_166
  l1 = self.box_OnceOnly_v3_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1210445238", "1210445238", "S17M010_Marcus_Main", "box_MissionMessageController_v3_166.Out", "box_OnceOnly_v3_181.In", l0, l1)
  l1:In(0)
end
function export:f_box_ListWriter_137_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_137
  self.HoTC_Xs = l0.Target
  l0 = self.box_ListForEach_138
  l0.List = self.HoTC_Xs
  l0 = self.box_ListWriter_137
  l1 = self.box_ListForEach_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1339901140", "1339901140", "S17M010_Marcus_Main", "box_ListWriter_137.Added", "box_ListForEach_138.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_137_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_137
  self.HoTC_Xs = l0.Target
end
function export:f_box_ListWriter_137_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_137
  self.HoTC_Xs = l0.Target
end
function export:f_box_S17M010_Marcus_SCR_Main_135_MistFXOFF()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047942737395"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|336337372"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_220_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_S17M010_Marcus_SCR_Main_135
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1188954534", "1188954534", "S17M010_Marcus_Main", "box_S17M010_Marcus_SCR_Main_135.MistFXOFF", "box_MoveableEntityController_220.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_AISquadStateController_44_AwareSet()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateController_44()
  l0 = self.box_AISquadStateController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1691893343", "1691893343", "S17M010_Marcus_Main", "box_AISquadStateController_44.AwareSet", "box_AISquadStateController_44.SetInTargetedSearch", l0, l0)
  l0:SetInTargetedSearch()
end
function export:f_box_AISquadStateController_44_TargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_147
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective100",
    item = "Objective",
    id = "353070"
  }
  l0 = self.box_AISquadStateController_44
  l1 = self.box_MissionMessageController_v3_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|815294262", "815294262", "S17M010_Marcus_Main", "box_AISquadStateController_44.TargetedSearchSet", "box_MissionMessageController_v3_147.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Player_State_Controller_212_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_216()
  l0 = self.box_Moveable_Entity_Monitor_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|75458588", "75458588", "S17M010_Marcus_Main", "box_Player_State_Controller_212.MaxSpeedReset", "box_Moveable_Entity_Monitor_216.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_212_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_216()
  l0 = self.box_Moveable_Entity_Monitor_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|929713878", "929713878", "S17M010_Marcus_Main", "box_Player_State_Controller_212.MaxSpeedSet", "box_Moveable_Entity_Monitor_216.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InteractionScriptMonitor_v2_202_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_209()
  l0 = self.box_InteractionScriptMonitor_v2_202
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1229843674", "1229843674", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_202.Disabled", "box_Player_State_Controller_209.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_202_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_202()
  l0 = self.box_InteractionScriptMonitor_v2_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|423783164", "423783164", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_202.InteractionFinished", "box_InteractionScriptMonitor_v2_202.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetTimeOfDay_104_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|986514282"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_92_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1460281277", "1460281277", "S17M010_Marcus_Main", "box_SetTimeOfDay_104.Out", "box_TimeScale_Controller_92.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_CLOController_198_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_196
  l0.CLO = "9223372064392405968"
  l0 = self.box_CLOController_198
  l1 = self.box_CLOController_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1721445230", "1721445230", "S17M010_Marcus_Main", "box_CLOController_198.Activated", "box_CLOController_196.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_198_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_198
  self.BlumeINT_01_Main_Enforcer_2 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1018117347", "1018117347", "S17M010_Marcus_Main", "box_CLOController_198.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(6)
end
function export:f_box_MaterialController_65_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491742"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|100611296"
  l0.ByIndexSet = self.f_box_MaterialController_68_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|443696292", "443696292", "S17M010_Marcus_Main", "box_MaterialController_65.ByIndexSet", "box_MaterialController_68.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_170_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = {
    "9223372060353716035",
    "9223372060353716039",
    "9223372060353716037",
    "9223372060353716041"
  }
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1526844511"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_176_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|775881394", "775881394", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Controller_170.LoadAndPlayRequested", "box_VisibilityController_v2_176.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_157_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_149()
  l0 = self.box_PlaySequence_v5_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1374003677", "1374003677", "S17M010_Marcus_Main", "box_Ordered_Output_157.Out", "box_PlaySequence_v5_149.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_157_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_125
  l0.List = self.HoTC_Xs
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1902627370", "1902627370", "S17M010_Marcus_Main", "box_Ordered_Output_157.Out", "box_ListForEach_125.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractGameplayController_165_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_161
  l0.HackableEntity = "9223372049200548057"
  l0 = self.box_InteractGameplayController_165
  l1 = self.box_HackableController_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1082636575", "1082636575", "S17M010_Marcus_Main", "box_InteractGameplayController_165.Completed", "box_HackableController_v2_161.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_InteractGameplayController_145_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_156
  l0.HackableEntity = "9223372049200548061"
  l0 = self.box_InteractGameplayController_145
  l1 = self.box_HackableController_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1260700890", "1260700890", "S17M010_Marcus_Main", "box_InteractGameplayController_145.Completed", "box_HackableController_v2_156.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_InteractionScriptMonitor_v2_211_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_215()
  l0 = self.box_InteractionScriptMonitor_v2_211
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1526645314", "1526645314", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_211.Disabled", "box_Player_State_Controller_215.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_211_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_211()
  l0 = self.box_InteractionScriptMonitor_v2_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|745794125", "745794125", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_211.InteractionFinished", "box_InteractionScriptMonitor_v2_211.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TimeScale_Controller_93_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|683250686", "683250686", "S17M010_Marcus_Main", "box_TimeScale_Controller_93.Locked", "box_CinematicPrep_2.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Player_State_Controller_186_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_200()
  l0 = self.box_Moveable_Entity_Monitor_200
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1787599559", "1787599559", "S17M010_Marcus_Main", "box_Player_State_Controller_186.MaxSpeedReset", "box_Moveable_Entity_Monitor_200.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_186_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_200()
  l0 = self.box_Moveable_Entity_Monitor_200
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1497138569", "1497138569", "S17M010_Marcus_Main", "box_Player_State_Controller_186.MaxSpeedSet", "box_Moveable_Entity_Monitor_200.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Dynamic_Media_Controller_168_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_167()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1945027606", "1945027606", "S17M010_Marcus_Main", "box_Dynamic_Media_Controller_168.ChannelChanged", "box_Media_System_Custom_Broadcast_Monitor_167.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_260_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_MissionMessageController_v3_260
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|383622623", "383622623", "S17M010_Marcus_Main", "box_MissionMessageController_v3_260.Out", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_223_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|68350681"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_223
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|104425403", "104425403", "S17M010_Marcus_Main", "box_PlaySound_v2_223.Out", "box_MissionMusicController_224.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_55
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1469978265", "1469978265", "S17M010_Marcus_Main", "box_Get_Player_ID_16.Out", "box_CinematicPrep_55.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_InteractionScriptMonitor_v2_188_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_186()
  l0 = self.box_InteractionScriptMonitor_v2_188
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|370749274", "370749274", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_188.Disabled", "box_Player_State_Controller_186.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_188_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_188()
  l0 = self.box_InteractionScriptMonitor_v2_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1082435693", "1082435693", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_188.InteractionFinished", "box_InteractionScriptMonitor_v2_188.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v4_121_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_119()
  l0 = self.box_MapPointController_v4_121
  l1 = self.box_TriggerMonitor_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|278513778", "278513778", "S17M010_Marcus_Main", "box_MapPointController_v4_121.Shown", "box_TriggerMonitor_v2_119.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MoveableEntityController_220_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Moveable_Entity_Monitor_251
  l0.MoveableEntity = "9223372047942737395"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|907433720", "907433720", "S17M010_Marcus_Main", "box_MoveableEntityController_220.MovedForward", "box_Moveable_Entity_Monitor_251.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListForEach_138_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_138
  self.HoTC_XsList = l0.Data
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1719672363"
  l0.Out = self.f_box_SetTimeOfDay_154_Out
  l0 = self.box_ListForEach_138
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1486692097", "1486692097", "S17M010_Marcus_Main", "box_ListForEach_138.EndOfList", "box_SetTimeOfDay_154.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_ListForEach_138_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_138
  self.HoTC_XsList = l0.Data
  l0 = self.box_HackableController_v2_32
  l0.HackableEntity = self.HoTC_XsList
  l0 = self.box_ListForEach_138
  l1 = self.box_HackableController_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|88090298", "88090298", "S17M010_Marcus_Main", "box_ListForEach_138.ForEach", "box_HackableController_v2_32.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_ListForEach_138_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_138
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_138_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_138
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_138_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_138
  self.HoTC_XsList = l0.Data
end
function export:f_box_PlayDialog_v2_134_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_217
  l0.SoundId = "soundbinary/2494266994.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_134
  l1 = self.box_PlayDialog_v2_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|981950168", "981950168", "S17M010_Marcus_Main", "box_PlayDialog_v2_134.Finished", "box_PlayDialog_v2_217.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_217_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_229
  l0.SoundId = "soundbinary/210409017.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_217
  l1 = self.box_PlayDialog_v2_229
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1022308087", "1022308087", "S17M010_Marcus_Main", "box_PlayDialog_v2_217.Finished", "box_PlayDialog_v2_229.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_238_TimeElapsed()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Change back to Marcus", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Change GraphicKit Model On Player From Human Config')-- Comment: Change back to Marcus")
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  l0.Model = nil
  l0.VoiceActorName = "dialogactors.dialogactors.marcus"
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_On_Player_From_Human_Config_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|496753973"
  l0.Failed = self.f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_91_Failed
  l0.Changed = DummyFunction
  l0.ResetDone = self.f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_91_ResetDone
  l0 = self.box_Timer_v2_238
  l1 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2089776868", "2089776868", "S17M010_Marcus_Main", "box_Timer_v2_238.TimeElapsed", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_91.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_PhoneCommunicationController_115_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_143
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective070",
    item = "Objective",
    id = "353067"
  }
  l0.IncrementalObjectiveTotal = 2
  l0 = self.box_PhoneCommunicationController_115
  l1 = self.box_MissionMessageController_v3_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1216721353", "1216721353", "S17M010_Marcus_Main", "box_PhoneCommunicationController_115.StartCommunicationOut", "box_MissionMessageController_v3_143.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Hackable_Monitor_247_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_145
  l0.Entity = "9223372060029104420"
  l0 = self.box_Hackable_Monitor_247
  l1 = self.box_InteractGameplayController_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|162498890", "162498890", "S17M010_Marcus_Main", "box_Hackable_Monitor_247.Enabled", "box_InteractGameplayController_145.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_247_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_248()
  l0 = self.box_Hackable_Monitor_247
  l1 = self.box_Multiple_AND_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2116143577", "2116143577", "S17M010_Marcus_Main", "box_Hackable_Monitor_247.HackSuccess", "box_Multiple_AND_248.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Timer_v2_225_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_85
  l0.SoundId = "soundbinary/4089360243.bnk"
  l0 = self.box_Timer_v2_225
  l1 = self.box_PlaySound_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|457617450", "457617450", "S17M010_Marcus_Main", "box_Timer_v2_225.TimeElapsed", "box_PlaySound_v2_85.Play", l0, l1)
  l1:Play()
end
function export:f_box_S17M010_Marcus_SCR_Main_96_BlackOutStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_78
  l0.MissionArea = "9223372048400195025"
  l0.MissionLayer = "S17M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
  l0 = self.box_S17M010_Marcus_SCR_Main_96
  l1 = self.box_MissionZone_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|549366491", "549366491", "S17M010_Marcus_Main", "box_S17M010_Marcus_SCR_Main_96.BlackOutStopped", "box_MissionZone_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MaterialController_84_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491740"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|478434924"
  l0.ByIndexSet = self.f_box_MaterialController_86_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1849355501", "1849355501", "S17M010_Marcus_Main", "box_MaterialController_84.ByIndexSet", "box_MaterialController_86.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Moveable_Entity_Monitor_251_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = nil
  l0.InteractionEntityList = {
    "9223372047942737389",
    "9223372047942737388"
  }
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1277550233"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_221_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Moveable_Entity_Monitor_251
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1434894058", "1434894058", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_251.Enabled", "box_InteractionScriptController_221.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Moveable_Entity_Monitor_251_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = nil
  l0.InteractionEntityList = {
    "9223372047942737398",
    "9223372059814089830"
  }
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|143421990"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Moveable_Entity_Monitor_251
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1521517659", "1521517659", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_251.OnFwdMovementFinished", "box_InteractionScriptController_219.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_130_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_131
  l0.MapPoint = "9223372059659744851"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2082556288", "2082556288", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Controller_130.LoadAndPlayRequested", "box_MapPointController_v4_131.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySound_v2_234_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|234642823"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_234
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|695114404", "695114404", "S17M010_Marcus_Main", "box_PlaySound_v2_234.Out", "box_MissionMusicController_235.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ObjectiveMonitor_v2_109_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_179
  l0.Entity = "9223372046997400130"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_ObjectiveMonitor_v2_109
  l1 = self.box_Interact_Gameplay_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|475951311", "475951311", "S17M010_Marcus_Main", "box_ObjectiveMonitor_v2_109.Enabled", "box_Interact_Gameplay_179.Start", l0, l1)
  l1:Start()
end
function export:f_box_ObjectiveMonitor_v2_109_ObjectiveCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_118
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873285"
  l0 = self.box_ObjectiveMonitor_v2_109
  l1 = self.box_PhoneCommunicationController_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|140410854", "140410854", "S17M010_Marcus_Main", "box_ObjectiveMonitor_v2_109.ObjectiveCompleted", "box_PhoneCommunicationController_118.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_119_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_6
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060828744379"
  l0 = self.box_TriggerMonitor_v2_119
  l1 = self.box_PhoneCommunicationController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|733666985", "733666985", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_119.Disabled", "box_PhoneCommunicationController_6.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_119_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_250()
  l0 = self.box_TriggerMonitor_v2_119
  l1 = self.box_HackableController_v2_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1259383425", "1259383425", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_119.Enabled", "box_HackableController_v2_250.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_TriggerMonitor_v2_119_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_119()
  l0 = self.box_TriggerMonitor_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2108021821", "2108021821", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_119.Enter", "box_TriggerMonitor_v2_119.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_3_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_142
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0 = self.box_MissionLayer_v2_3
  l1 = self.box_Standalone_Loader_Controller_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2092070415", "2092070415", "S17M010_Marcus_Main", "box_MissionLayer_v2_3.Loaded", "box_Standalone_Loader_Controller_142.Load", l0, l1)
  l1:Load()
end
function export:f_box_MaterialController_86_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_73()
  l0 = self.box_Multiple_AND_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1126185049", "1126185049", "S17M010_Marcus_Main", "box_MaterialController_86.ByIndexSet", "box_Multiple_AND_73.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Multiple_AND_241_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060353716035"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|847200333"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_173_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Multiple_AND_241
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1529327094", "1529327094", "S17M010_Marcus_Main", "box_Multiple_AND_241.Out", "box_VisibilityController_v2_173.Show", l0, l1)
  l1:Show()
end
function export:f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_91_Failed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: Failed to Change to Marcus", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Failed to Change to Marcus")
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1511293641"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1736675035", "1736675035", "S17M010_Marcus_Main", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_91.Failed", "box_Simple_Node_98.In", clone, l0)
  l0:In()
end
function export:f_box_Change_GraphicKit_Model_On_Player_From_Human_Config_91_ResetDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangePlayerGkModelFromHumanConfig.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1124121957", "1124121957", "S17M010_Marcus_Main", "box_Change_GraphicKit_Model_On_Player_From_Human_Config_91.ResetDone", "box_Perk_Controller_99.ResetPerks", clone, l0)
  l0:ResetPerks()
end
function export:f_box_Moveable_Entity_Monitor_200_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_199()
  l0 = self.box_Moveable_Entity_Monitor_200
  l1 = self.box_InteractionScriptMonitor_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1212442996", "1212442996", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_200.Disabled", "box_InteractionScriptMonitor_v2_199.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Moveable_Entity_Monitor_200_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_186()
  l0 = self.box_Moveable_Entity_Monitor_200
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|879436408", "879436408", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_200.OnBkwMovementFinished", "box_Player_State_Controller_186.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|734826140", "734826140", "S17M010_Marcus_Main", "box_Ordered_Output_42.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2016567420"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_233_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|683989010", "683989010", "S17M010_Marcus_Main", "box_Ordered_Output_42.Out", "box_MissionMusicController_233.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_S17M010_Marcus_SCR_Main_58_MistFXOFF()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|591031550"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_185_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_185_Out_1
  l0 = self.box_S17M010_Marcus_SCR_Main_58
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1676660315", "1676660315", "S17M010_Marcus_Main", "box_S17M010_Marcus_SCR_Main_58.MistFXOFF", "box_Ordered_Output_185.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_76_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_72()
  l0 = self.box_MissionCheckpointReach_76
  l1 = self.box_Interact_Gameplay_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|845670520", "845670520", "S17M010_Marcus_Main", "box_MissionCheckpointReach_76.Out", "box_Interact_Gameplay_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_State_Controller_215_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_213()
  l0 = self.box_Moveable_Entity_Monitor_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1126289895", "1126289895", "S17M010_Marcus_Main", "box_Player_State_Controller_215.MaxSpeedReset", "box_Moveable_Entity_Monitor_213.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_215_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_213()
  l0 = self.box_Moveable_Entity_Monitor_213
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|319909683", "319909683", "S17M010_Marcus_Main", "box_Player_State_Controller_215.MaxSpeedSet", "box_Moveable_Entity_Monitor_213.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S17M010_Marcus_SCR_Main_183_MistFXON()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateController_44()
  l0 = self.box_S17M010_Marcus_SCR_Main_183
  l1 = self.box_AISquadStateController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1881008134", "1881008134", "S17M010_Marcus_Main", "box_S17M010_Marcus_SCR_Main_183.MistFXON", "box_AISquadStateController_44.SetInAware", l0, l1)
  l1:SetInAware()
end
function export:f_box_InteractionScriptMonitor_v2_199_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_201()
  l0 = self.box_InteractionScriptMonitor_v2_199
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|487846483", "487846483", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_199.Disabled", "box_Player_State_Controller_201.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_199_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_199()
  l0 = self.box_InteractionScriptMonitor_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|859174748", "859174748", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_199.InteractionFinished", "box_InteractionScriptMonitor_v2_199.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Interact_Gameplay_111_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_111()
  l0 = self.box_Interact_Gameplay_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|91439556", "91439556", "S17M010_Marcus_Main", "box_Interact_Gameplay_111.Interacted", "box_Interact_Gameplay_111.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_111_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_Interact_Gameplay_111
  l1 = self.box_MissionCheckpointReach_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|931472797", "931472797", "S17M010_Marcus_Main", "box_Interact_Gameplay_111.Started", "box_MissionCheckpointReach_8.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_111_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1507251952"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_64_Out_2
  l0 = self.box_Interact_Gameplay_111
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1669669411", "1669669411", "S17M010_Marcus_Main", "box_Interact_Gameplay_111.Stopped", "box_Ordered_Output_64.In", l0, l1)
  l1:In()
end
function export:f_box_SendTrackingEvent_259_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_CIN_DusanPenthouseIntro_Main_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2004745479", "2004745479", "S17M010_Marcus_Main", "box_SendTrackingEvent_259.Out", "box_S17M010_CIN_DusanPenthouseIntro_Main_41.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_245_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060353716037"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1581471807"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_175_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Multiple_AND_245
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1927738228", "1927738228", "S17M010_Marcus_Main", "box_Multiple_AND_245.Out", "box_VisibilityController_v2_175.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionMusicController_236_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_234
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|732547398", "732547398", "S17M010_Marcus_Main", "box_MissionMusicController_236.Deactivated", "box_PlaySound_v2_234.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "S17M010_Main"
  l0 = self.box_SetBoolean_v2_39
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1951902485", "1951902485", "S17M010_Marcus_Main", "box_SetBoolean_v2_39.SetTrue", "box_MissionLayer_v2_7.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  Globals.S17M010.PlayFromCheckpoint = l0.Target
end
function export:f_box_Multiple_AND_243_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372060353716039"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2038466278"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_174_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Multiple_AND_243
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|91792280", "91792280", "S17M010_Marcus_Main", "box_Multiple_AND_243.Out", "box_VisibilityController_v2_174.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractGameplayController_159_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_163
  l0.HackableEntity = "9223372049200548053"
  l0 = self.box_InteractGameplayController_159
  l1 = self.box_HackableController_v2_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|839322067", "839322067", "S17M010_Marcus_Main", "box_InteractGameplayController_159.Completed", "box_HackableController_v2_163.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_MaterialController_66_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491738"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|391153547"
  l0.ByIndexSet = self.f_box_MaterialController_84_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2145754927", "2145754927", "S17M010_Marcus_Main", "box_MaterialController_66.ByIndexSet", "box_MaterialController_84.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_185_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_110
  l0.Checkpoint = "CheckPoint_5"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1465459863", "1465459863", "S17M010_Marcus_Main", "box_Ordered_Output_185.Out", "box_MissionCheckpointReach_110.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_185_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_204()
  l0 = self.box_MultipleOR_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2120683620", "2120683620", "S17M010_Marcus_Main", "box_Ordered_Output_185.Out", "box_MultipleOR_204.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1278481298"
  l0.Out = self.f_box_Get_Player_ID_53_Out
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|413198933", "413198933", "S17M010_Marcus_Main", "box_MissionLayer_v2_7.Loaded", "box_Get_Player_ID_53.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_27_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059840201907"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1549009207"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_155_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1433069696", "1433069696", "S17M010_Marcus_Main", "box_InteractionScriptController_27.Disabled", "box_InteractionScriptController_155.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_156_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_160
  l0.HackableEntity = "9223372049200548055"
  l0 = self.box_HackableController_v2_156
  l1 = self.box_HackableController_v2_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|123869466", "123869466", "S17M010_Marcus_Main", "box_HackableController_v2_156.HackForced", "box_HackableController_v2_160.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_CLOController_116_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_191
  l0.CLO = "9223372064392405946"
  l0 = self.box_CLOController_116
  l1 = self.box_CLOController_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|844695653", "844695653", "S17M010_Marcus_Main", "box_CLOController_116.Activated", "box_CLOController_191.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_116_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  self.BlumeINT_01_Main_Elite_2 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|50281213", "50281213", "S17M010_Marcus_Main", "box_CLOController_116.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Get_Player_ID_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = nil
  l0.InteractionEntityList = {
    "9223372047942737389",
    "9223372047942737388"
  }
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|58287000"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_23_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|530995742", "530995742", "S17M010_Marcus_Main", "box_Get_Player_ID_74.Out", "box_InteractionScriptController_23.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_182_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_40
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective080",
    item = "Objective",
    id = "353068"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|538415627", "538415627", "S17M010_Marcus_Main", "box_InteractionScriptController_182.Enabled", "box_MissionMessageController_v3_40.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_PlaySound_v2_231_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372061969623036"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1082805584"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_231
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1990968735", "1990968735", "S17M010_Marcus_Main", "box_PlaySound_v2_231.Out", "box_MissionMusicController_232.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_5_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_17
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_Standalone_Loader_Controller_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|375009174", "375009174", "S17M010_Marcus_Main", "box_MissionLayer_v2_5.Loaded", "box_Standalone_Loader_Controller_17.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Marcus_SCR_Main_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|107649638", "107649638", "S17M010_Marcus_Main", "box_Ordered_Output_21.Out", "box_S17M010_Marcus_SCR_Main_12.MarcusEntersBlume", clone, l0)
  l0:MarcusEntersBlume()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372061969623036"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|982273076"
  l0.Activated = self.f_box_MissionMusicController_20_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1498127419", "1498127419", "S17M010_Marcus_Main", "box_Ordered_Output_21.Out", "box_MissionMusicController_20.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_194_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_193
  l0.CLO = "9223372064392405958"
  l0 = self.box_CLOController_194
  l1 = self.box_CLOController_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|46741498", "46741498", "S17M010_Marcus_Main", "box_CLOController_194.Activated", "box_CLOController_193.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_194_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_194
  self.BlumeINT_01_Main_Elite_5 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|601077816", "601077816", "S17M010_Marcus_Main", "box_CLOController_194.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(4)
end
function export:f_box_CLOController_192_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_194
  l0.CLO = "9223372064392405955"
  l0 = self.box_CLOController_192
  l1 = self.box_CLOController_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|78814515", "78814515", "S17M010_Marcus_Main", "box_CLOController_192.Activated", "box_CLOController_194.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_192_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_192
  self.BlumeINT_01_Main_Elite_4 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1295721987", "1295721987", "S17M010_Marcus_Main", "box_CLOController_192.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_TimeScale_Controller_113_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1193737488", "1193737488", "S17M010_Marcus_Main", "box_TimeScale_Controller_113.Unlocked", "MarcusDone", clone, self)
  self:MarcusDone()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = {
    "9223372060353716035",
    "9223372060353716039",
    "9223372060353716037",
    "9223372060353716041"
  }
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1085177670"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_171_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_11
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1863426830", "1863426830", "S17M010_Marcus_Main", "box_MultipleOR_11.Out", "box_VisibilityController_v2_171.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Standalone_Loader_Controller_140_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|154559853"
  l0.Out = self.f_box_Get_Player_ID_26_Out
  l0 = self.box_Standalone_Loader_Controller_140
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|163140549", "163140549", "S17M010_Marcus_Main", "box_Standalone_Loader_Controller_140.Loaded", "box_Get_Player_ID_26.In", l0, l1)
  l1:In()
end
function export:f_box_Standalone_Loader_Controller_17_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|321034528"
  l0.Out = self.f_box_Get_Player_ID_16_Out
  l0 = self.box_Standalone_Loader_Controller_17
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|646313871", "646313871", "S17M010_Marcus_Main", "box_Standalone_Loader_Controller_17.Loaded", "box_Get_Player_ID_16.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_254_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_254()
  l0 = self.box_HackableController_v2_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|877730626", "877730626", "S17M010_Marcus_Main", "box_HackableController_v2_254.Enabled", "box_HackableController_v2_254.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_Moveable_Entity_Monitor_189_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_204()
  l0 = self.box_Moveable_Entity_Monitor_189
  l1 = self.box_MultipleOR_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|443971200", "443971200", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_189.Disabled", "box_MultipleOR_204.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Moveable_Entity_Monitor_189_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_201()
  l0 = self.box_Moveable_Entity_Monitor_189
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1005480423", "1005480423", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_189.OnBkwMovementFinished", "box_Player_State_Controller_201.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_HackableController_v2_163_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_241()
  l0 = self.box_HackableController_v2_163
  l1 = self.box_Multiple_AND_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1559946201", "1559946201", "S17M010_Marcus_Main", "box_HackableController_v2_163.HackForced", "box_Multiple_AND_241.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PGTController_v2_35_Aborted()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_38
  l0.Affiliation = "UZulu"
  l0 = self.box_PGTController_v2_35
  l1 = self.box_AISquadStateController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1896486111", "1896486111", "S17M010_Marcus_Main", "box_PGTController_v2_35.Aborted", "box_AISquadStateController_38.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_ListForEach_125_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_125
  self.HoTC_XsList = l0.Data
  l0 = self.box_Hackable_Monitor_240
  l0.HackableEntity = "9223372049200548053"
  l0 = self.box_ListForEach_125
  l1 = self.box_Hackable_Monitor_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1884452923", "1884452923", "S17M010_Marcus_Main", "box_ListForEach_125.EndOfList", "box_Hackable_Monitor_240.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListForEach_125_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_125
  self.HoTC_XsList = l0.Data
  l0 = self.box_HackableController_v2_124
  l0.HackableEntity = self.HoTC_XsList
  l0 = self.box_ListForEach_125
  l1 = self.box_HackableController_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1521000639", "1521000639", "S17M010_Marcus_Main", "box_ListForEach_125.ForEach", "box_HackableController_v2_124.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_ListForEach_125_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_125
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_125_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_125
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_125_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_125
  self.HoTC_XsList = l0.Data
end
function export:f_box_Interact_Gameplay_112_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_166
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective070",
    item = "Objective",
    id = "353067"
  }
  l0 = self.box_Interact_Gameplay_112
  l1 = self.box_MissionMessageController_v3_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|45806193", "45806193", "S17M010_Marcus_Main", "box_Interact_Gameplay_112.Interacted", "box_MissionMessageController_v3_166.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Interact_Gameplay_112_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047942737389"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|231174590"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Interact_Gameplay_112
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|107727481", "107727481", "S17M010_Marcus_Main", "box_Interact_Gameplay_112.Started", "box_InteractionScriptController_169.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateController_36_AwareSet()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateController_36()
  l0 = self.box_AISquadStateController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1038494017", "1038494017", "S17M010_Marcus_Main", "box_AISquadStateController_36.AwareSet", "box_AISquadStateController_36.SetInTargetedSearch", l0, l0)
  l0:SetInTargetedSearch()
end
function export:f_box_ListWriter_122_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_122
  self.HoTC_Xs = l0.Target
  l0 = self.box_ListForEach_123
  l0.List = self.HoTC_Xs
  l0 = self.box_ListWriter_122
  l1 = self.box_ListForEach_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1652495218", "1652495218", "S17M010_Marcus_Main", "box_ListWriter_122.Added", "box_ListForEach_123.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_122_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_122
  self.HoTC_Xs = l0.Target
end
function export:f_box_ListWriter_122_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_122
  self.HoTC_Xs = l0.Target
end
function export:f_box_TriggerMonitor_v2_95_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_94
  l0.MapPoint = "9223372049200633874"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_MapPointController_v4_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1800670799", "1800670799", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_95.Disabled", "box_MapPointController_v4_94.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_95_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|367792545", "367792545", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_95.Enter", "box_TriggerMonitor_v2_95.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ObjectiveMonitor_v2_109
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective070",
    item = "Objective",
    id = "353067"
  }
  l0 = self.box_MissionMessageController_v3_143
  l1 = self.box_ObjectiveMonitor_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|684409589", "684409589", "S17M010_Marcus_Main", "box_MissionMessageController_v3_143.Out", "box_ObjectiveMonitor_v2_109.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_9_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_9()
  l0 = self.box_HackableController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1448960154", "1448960154", "S17M010_Marcus_Main", "box_HackableController_v2_9.Disabled", "box_HackableController_v2_9.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_180_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049784027705"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|596012709"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_27_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2027017914", "2027017914", "S17M010_Marcus_Main", "box_Ordered_Output_180.Out", "box_InteractionScriptController_27.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_180_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Marcus_SCR_Main_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1782545248", "1782545248", "S17M010_Marcus_Main", "box_Ordered_Output_180.Out", "box_S17M010_Marcus_SCR_Main_184.Activate_ALL_Civ", clone, l0)
  l0:Activate_ALL_Civ()
end
function export:f_box_Perk_Controller_99_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1878121080"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_box_SmartphoneAppController_108_OverrideCleared
  l0 = self.box_Perk_Controller_99
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|131726040", "131726040", "S17M010_Marcus_Main", "box_Perk_Controller_99.PerkReseted", "box_SmartphoneAppController_108.ClearOverride", l0, l1)
  l1:ClearOverride()
end
function export:f_box_VisibilityController_v2_173_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_257()
  l0 = self.box_Multiple_AND_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|799098107", "799098107", "S17M010_Marcus_Main", "box_VisibilityController_v2_173.Shown", "box_Multiple_AND_257.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Get_Player_ID_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1212567209"
  l0.Out = self.f_box_SetTimeOfDay_153_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1141657879", "1141657879", "S17M010_Marcus_Main", "box_Get_Player_ID_56.Out", "box_SetTimeOfDay_153.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_TriggerMonitor_v2_253_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_254()
  l0 = self.box_TriggerMonitor_v2_253
  l1 = self.box_HackableController_v2_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|28542992", "28542992", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_253.Enter", "box_HackableController_v2_254.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_MissionMessageController_v3_147_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_121
  l0.MapPoint = "9223372050376288754"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.LocMapMarkerDescription = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0 = self.box_MissionMessageController_v3_147
  l1 = self.box_MapPointController_v4_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1523698097", "1523698097", "S17M010_Marcus_Main", "box_MissionMessageController_v3_147.Out", "box_MapPointController_v4_121.Show", l0, l1)
  l1:Show()
end
function export:f_box_TriggerMonitor_v2_82_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_83
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873288"
  l0 = self.box_TriggerMonitor_v2_82
  l1 = self.box_PhoneCommunicationController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|20943318", "20943318", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_82.Disabled", "box_PhoneCommunicationController_83.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_82_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_144
  l0.MapPoint = "9223372059659744851"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_82
  l1 = self.box_MapPointController_v4_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|256837617", "256837617", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_82.Enabled", "box_MapPointController_v4_144.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_82_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_82()
  l0 = self.box_TriggerMonitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|745187223", "745187223", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_82.Enter", "box_TriggerMonitor_v2_82.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_46
  l0.MapPoint = "9223372049200633874"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerDescription = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_40
  l1 = self.box_MapPointController_v4_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|740897703", "740897703", "S17M010_Marcus_Main", "box_MissionMessageController_v3_40.Out", "box_MapPointController_v4_46.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySequence_v5_149_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_158
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_outro.seq"
  l0 = self.box_PlaySequence_v5_149
  l1 = self.box_PlaySequence_v5_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|678301253", "678301253", "S17M010_Marcus_Main", "box_PlaySequence_v5_149.Stopped", "box_PlaySequence_v5_158.Start", l0, l1)
  l1:Start()
end
function export:f_box_MaterialController_81_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063013491742"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|581291308"
  l0.ByIndexSet = self.f_box_MaterialController_66_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|473521256", "473521256", "S17M010_Marcus_Main", "box_MaterialController_81.ByIndexSet", "box_MaterialController_66.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_PhoneCommunicationController_118_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047942737389"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|627750634"
  l0.Enabled = self.f_box_InteractionScriptController_182_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PhoneCommunicationController_118
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1705828914", "1705828914", "S17M010_Marcus_Main", "box_PhoneCommunicationController_118.StartCommunicationOut", "box_InteractionScriptController_182.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Marcus_SCR_Main_183
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|598097714", "598097714", "S17M010_Marcus_Main", "box_Ordered_Output_103.Out", "box_S17M010_Marcus_SCR_Main_183.ActivateMistFX", clone, l0)
  l0:ActivateMistFX()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_226
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2091111899", "2091111899", "S17M010_Marcus_Main", "box_Ordered_Output_103.Out", "box_PlaySound_v2_226.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_103_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_225
  l0.Seconds = 1.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1111041539", "1111041539", "S17M010_Marcus_Main", "box_Ordered_Output_103.Out", "box_Timer_v2_225.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_48
  l1 = self.box_S17M010_Marcus_SCR_Main_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|494011065", "494011065", "S17M010_Marcus_Main", "box_MissionCheckpointReach_48.Out", "box_S17M010_Marcus_SCR_Main_96.In", l0, l1)
  l1:In()
end
function export:f_box_MoveableEntityController_177_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047627005640"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|3785824"
  l0.Out = self.f_box_AI_Agent_Zone_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1347610273", "1347610273", "S17M010_Marcus_Main", "box_MoveableEntityController_177.MovedForward", "box_AI_Agent_Zone_13.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_114_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_181()
  l0 = self.box_MissionMessageController_v3_114
  l1 = self.box_OnceOnly_v3_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1387125228", "1387125228", "S17M010_Marcus_Main", "box_MissionMessageController_v3_114.Out", "box_OnceOnly_v3_181.In", l0, l1)
  l1:In(1)
end
function export:f_box_Moveable_Entity_Monitor_213_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_218()
  l0 = self.box_Moveable_Entity_Monitor_213
  l1 = self.box_InteractionScriptMonitor_v2_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|38912615", "38912615", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_213.Disabled", "box_InteractionScriptMonitor_v2_218.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Moveable_Entity_Monitor_213_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_215()
  l0 = self.box_Moveable_Entity_Monitor_213
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|152074016", "152074016", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_213.OnBkwMovementFinished", "box_Player_State_Controller_215.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_MissionMusicController_20_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_230
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|908521727", "908521727", "S17M010_Marcus_Main", "box_MissionMusicController_20.Activated", "box_PlaySound_v2_230.Play", clone, l0)
  l0:Play()
end
function export:f_box_TimeScale_Controller_92_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_48
  l0.Checkpoint = "CheckPoint_3"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1501768622", "1501768622", "S17M010_Marcus_Main", "box_TimeScale_Controller_92.Locked", "box_MissionCheckpointReach_48.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_110_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1495637875"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_MissionCheckpointReach_110
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1129956742", "1129956742", "S17M010_Marcus_Main", "box_MissionCheckpointReach_110.Out", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_171_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372059659744851"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2021945046"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_100_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|339036926", "339036926", "S17M010_Marcus_Main", "box_VisibilityController_v2_171.Hidden", "box_Dynamic_Media_Controller_100.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_AI_Agent_Zone_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_115
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372067060012753"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1453629638", "1453629638", "S17M010_Marcus_Main", "box_AI_Agent_Zone_151.Out", "box_PhoneCommunicationController_115.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_MissionZone_78_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_29
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective055",
    item = "Objective",
    id = "397703"
  }
  l0 = self.box_MissionZone_78
  l1 = self.box_MissionMessageController_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|932759325", "932759325", "S17M010_Marcus_Main", "box_MissionZone_78.Enabled", "box_MissionMessageController_v3_29.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PGTController_v2_61_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateController_36()
  l0 = self.box_PGTController_v2_61
  l1 = self.box_AISquadStateController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2096151579", "2096151579", "S17M010_Marcus_Main", "box_PGTController_v2_61.AllSpawned", "box_AISquadStateController_36.SetInAware", l0, l1)
  l1:SetInAware()
end
function export:f_box_HackableController_v2_228_ProfileReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|92989801"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_90_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0 = self.box_HackableController_v2_228
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|964273595", "964273595", "S17M010_Marcus_Main", "box_HackableController_v2_228.ProfileReset", "box_InventoryController_v2_90.SwitchLocalPlayerInventoryToNormal", l0, l1)
  l1:SwitchLocalPlayerInventoryToNormal()
end
function export:f_box_HackableController_v2_250_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_250()
  l0 = self.box_HackableController_v2_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1579266400", "1579266400", "S17M010_Marcus_Main", "box_HackableController_v2_250.Enabled", "box_HackableController_v2_250.EnableProfiling", l0, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_250_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_15
  l0.Checkpoint = "CheckPoint_7"
  l0 = self.box_HackableController_v2_250
  l1 = self.box_MissionCheckpointReach_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|445251646", "445251646", "S17M010_Marcus_Main", "box_HackableController_v2_250.ProfilingEnabled", "box_MissionCheckpointReach_15.In", l0, l1)
  l1:In()
end
function export:f_box_InteractGameplayController_164_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_162
  l0.HackableEntity = "9223372049200548059"
  l0 = self.box_InteractGameplayController_164
  l1 = self.box_HackableController_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|281302529", "281302529", "S17M010_Marcus_Main", "box_InteractGameplayController_164.Completed", "box_HackableController_v2_162.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_VisibilityController_v2_172_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062840947029"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|939419101"
  l0.ByIndexSet = self.f_box_MaterialController_81_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|387254890", "387254890", "S17M010_Marcus_Main", "box_VisibilityController_v2_172.Shown", "box_MaterialController_81.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_InteractionScriptMonitor_v2_203_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_207()
  l0 = self.box_InteractionScriptMonitor_v2_203
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|290122427", "290122427", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_203.Disabled", "box_Player_State_Controller_207.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_203_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_203()
  l0 = self.box_InteractionScriptMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|902152281", "902152281", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_203.InteractionFinished", "box_InteractionScriptMonitor_v2_203.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_161_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_243()
  l0 = self.box_HackableController_v2_161
  l1 = self.box_Multiple_AND_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|240701873", "240701873", "S17M010_Marcus_Main", "box_HackableController_v2_161.HackForced", "box_Multiple_AND_243.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_HackableController_v2_136_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_136()
  l0 = self.box_HackableController_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|198832013", "198832013", "S17M010_Marcus_Main", "box_HackableController_v2_136.Disabled", "box_HackableController_v2_136.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_136_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059659744851"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|554439483"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_136
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2051673800", "2051673800", "S17M010_Marcus_Main", "box_HackableController_v2_136.ProfilingDisabled", "box_InteractionScriptController_106.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlaySound_v2_85_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_134
  l0.SoundId = "soundbinary/4151888406.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlaySound_v2_85
  l1 = self.box_PlayDialog_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1764610460", "1764610460", "S17M010_Marcus_Main", "box_PlaySound_v2_85.Started", "box_PlayDialog_v2_134.Start", l0, l1)
  l1:Start()
end
function export:f_box_Moveable_Entity_Monitor_216_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_Moveable_Entity_Monitor_216
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1162443989", "1162443989", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_216.Disabled", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_216_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_212()
  l0 = self.box_Moveable_Entity_Monitor_216
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1066594362", "1066594362", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_216.OnBkwMovementFinished", "box_Player_State_Controller_212.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_SetTimeOfDay_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|159795683"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_105_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1034355314", "1034355314", "S17M010_Marcus_Main", "box_SetTimeOfDay_153.Out", "box_TimeScale_Controller_105.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_TriggerMonitor_v2_252_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_249()
  l0 = self.box_TriggerMonitor_v2_252
  l1 = self.box_HackableController_v2_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1047788101", "1047788101", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_252.Disabled", "box_HackableController_v2_249.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_TriggerMonitor_v2_252_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_80()
  l0 = self.box_TriggerMonitor_v2_252
  l1 = self.box_TriggerMonitor_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1993005326", "1993005326", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_252.Enabled", "box_TriggerMonitor_v2_80.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_252_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_249()
  l0 = self.box_TriggerMonitor_v2_252
  l1 = self.box_HackableController_v2_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1354297629", "1354297629", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_252.Enter", "box_HackableController_v2_249.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_208_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_203()
  l0 = self.box_MultipleOR_208
  l1 = self.box_InteractionScriptMonitor_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|156004747", "156004747", "S17M010_Marcus_Main", "box_MultipleOR_208.Out", "box_InteractionScriptMonitor_v2_203.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_187_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  l0.CLO = "9223372064147326397"
  l0 = self.box_CLOController_187
  l1 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|514110153", "514110153", "S17M010_Marcus_Main", "box_CLOController_187.Activated", "box_CLOController_116.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_187_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_187
  self.BlumeINT_01_Main_Elite_1 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1681452267", "1681452267", "S17M010_Marcus_Main", "box_CLOController_187.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Standalone_Loader_Controller_141_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|850000761"
  l0.Out = self.f_box_Get_Player_ID_56_Out
  l0 = self.box_Standalone_Loader_Controller_141
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|472490569", "472490569", "S17M010_Marcus_Main", "box_Standalone_Loader_Controller_141.Loaded", "box_Get_Player_ID_56.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_221_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|885450195", "885450195", "S17M010_Marcus_Main", "box_InteractionScriptController_221.Disabled", "box_CinematicPrep_1.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Get_Player_ID_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|245371401", "245371401", "S17M010_Marcus_Main", "box_Get_Player_ID_53.Out", "box_MultipleOR_52.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_256_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_255
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372073114603530"
  l0 = self.box_Timer_v2_256
  l1 = self.box_PhoneCommunicationController_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|352859905", "352859905", "S17M010_Marcus_Main", "box_Timer_v2_256.TimeElapsed", "box_PhoneCommunicationController_255.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PlaySequence_v5_158_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047627005640"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2097922409"
  l0.Out = self.f_box_AI_Agent_Zone_18_Out
  l0 = self.box_PlaySequence_v5_158
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|540250613", "540250613", "S17M010_Marcus_Main", "box_PlaySequence_v5_158.Started", "box_AI_Agent_Zone_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_195_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_197
  l0.CLO = "9223372064392405974"
  l0 = self.box_CLOController_195
  l1 = self.box_CLOController_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1479295255", "1479295255", "S17M010_Marcus_Main", "box_CLOController_195.Activated", "box_CLOController_197.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_195_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_195
  self.BlumeINT_01_Main_Enforcer_4 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|973455243", "973455243", "S17M010_Marcus_Main", "box_CLOController_195.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(8)
end
function export:f_box_InteractionScriptController_59_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047942737451"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2025154690"
  l0.Out = self.f_box_AI_Agent_Zone_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1427020597", "1427020597", "S17M010_Marcus_Main", "box_InteractionScriptController_59.Disabled", "box_AI_Agent_Zone_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Interact_Gameplay_72_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_72()
  l0 = self.box_Interact_Gameplay_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1639320839", "1639320839", "S17M010_Marcus_Main", "box_Interact_Gameplay_72.Interacted", "box_Interact_Gameplay_72.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_72_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_252()
  l0 = self.box_Interact_Gameplay_72
  l1 = self.box_TriggerMonitor_v2_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1091933108", "1091933108", "S17M010_Marcus_Main", "box_Interact_Gameplay_72.Started", "box_TriggerMonitor_v2_252.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_72_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_80()
  l0 = self.box_Interact_Gameplay_72
  l1 = self.box_TriggerMonitor_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1437508893", "1437508893", "S17M010_Marcus_Main", "box_Interact_Gameplay_72.Stopped", "box_TriggerMonitor_v2_80.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateController_38_VanishSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_24()
  l0 = self.box_AISquadStateController_38
  l1 = self.box_MultipleOR_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|216357616", "216357616", "S17M010_Marcus_Main", "box_AISquadStateController_38.VanishSet", "box_MultipleOR_24.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Monitor_244_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_164
  l0.Entity = "9223372060029104422"
  l0 = self.box_Hackable_Monitor_244
  l1 = self.box_InteractGameplayController_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1230453824", "1230453824", "S17M010_Marcus_Main", "box_Hackable_Monitor_244.Enabled", "box_InteractGameplayController_164.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_244_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_245()
  l0 = self.box_Hackable_Monitor_244
  l1 = self.box_Multiple_AND_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2089771434", "2089771434", "S17M010_Marcus_Main", "box_Hackable_Monitor_244.HackSuccess", "box_Multiple_AND_245.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Simple_Node_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_260
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective100",
    item = "Objective",
    id = "353070"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|265193268", "265193268", "S17M010_Marcus_Main", "box_Simple_Node_22.Out", "box_MissionMessageController_v3_260.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_63_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_63()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|341840128", "341840128", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Monitor_63.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_63.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_63_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372057914442823"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|431362205"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_130_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_63
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2062712869", "2062712869", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Monitor_63.Disabled", "box_Media_System_Custom_Broadcast_Controller_130.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_MapPointController_v4_25_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059840201907"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1796587411"
  l0.Enabled = self.f_box_InteractionScriptController_150_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MapPointController_v4_25
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1145180119", "1145180119", "S17M010_Marcus_Main", "box_MapPointController_v4_25.Hidden", "box_InteractionScriptController_150.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S17M010_CIN_Farewell_Main_50_EndCine()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|676545188"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_113_Unlocked
  l0.Out = DummyFunction
  l0 = self.box_S17M010_CIN_Farewell_Main_50
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1250464952", "1250464952", "S17M010_Marcus_Main", "box_S17M010_CIN_Farewell_Main_50.EndCine", "box_TimeScale_Controller_113.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_InteractionScriptController_139_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372049784027705"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1985441257"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_126_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2020558882", "2020558882", "S17M010_Marcus_Main", "box_InteractionScriptController_139.Disabled", "box_InteractionScriptController_126.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_207_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_205()
  l0 = self.box_Moveable_Entity_Monitor_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1367648609", "1367648609", "S17M010_Marcus_Main", "box_Player_State_Controller_207.MaxSpeedReset", "box_Moveable_Entity_Monitor_205.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_207_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_205()
  l0 = self.box_Moveable_Entity_Monitor_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|917398188", "917398188", "S17M010_Marcus_Main", "box_Player_State_Controller_207.MaxSpeedSet", "box_Moveable_Entity_Monitor_205.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_4
  l1 = self.box_S17M010_Marcus_SCR_Main_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1970296064", "1970296064", "S17M010_Marcus_Main", "box_MultipleOR_4.Out", "box_S17M010_Marcus_SCR_Main_58.Deactivate Mist FX", l0, l1)
  l1:Deactivate_Mist_FX()
end
function export:f_box_HackableController_v2_32_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_136()
  l0 = self.box_HackableController_v2_32
  l1 = self.box_HackableController_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|591279278", "591279278", "S17M010_Marcus_Main", "box_HackableController_v2_32.HackForced", "box_HackableController_v2_136.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Player_State_Controller_201_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_189()
  l0 = self.box_Moveable_Entity_Monitor_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|124622751", "124622751", "S17M010_Marcus_Main", "box_Player_State_Controller_201.MaxSpeedReset", "box_Moveable_Entity_Monitor_189.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_201_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_189()
  l0 = self.box_Moveable_Entity_Monitor_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1393365232", "1393365232", "S17M010_Marcus_Main", "box_Player_State_Controller_201.MaxSpeedSet", "box_Moveable_Entity_Monitor_189.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_InteractionScriptController_31_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372047942737395"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|973195981"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_177_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1707288831", "1707288831", "S17M010_Marcus_Main", "box_InteractionScriptController_31.Enabled", "box_MoveableEntityController_177.MoveForward", clone, l0)
  l0:MoveForward()
end
function export:f_box_S17M010_CIN_DusanPenthouseIntro_Main_41_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_S17M010_CIN_DusanPenthouseIntro_Main_41
  l1 = self.box_S17M010_CIN_DusanPenthouseOutro_Main_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1977728798", "1977728798", "S17M010_Marcus_Main", "box_S17M010_CIN_DusanPenthouseIntro_Main_41.EndCine", "box_S17M010_CIN_DusanPenthouseOutro_Main_43.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_187
  l0.CLO = "9223372064147326398"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|537838193", "537838193", "S17M010_Marcus_Main", "box_Ordered_Output_47.Out", "box_CLOController_187.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_227
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1560549127", "1560549127", "S17M010_Marcus_Main", "box_Ordered_Output_47.Out", "box_PlaySound_v2_227.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_240_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_159
  l0.Entity = "9223372060029104416"
  l0 = self.box_Hackable_Monitor_240
  l1 = self.box_InteractGameplayController_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1467041102", "1467041102", "S17M010_Marcus_Main", "box_Hackable_Monitor_240.Enabled", "box_InteractGameplayController_159.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_240_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_241()
  l0 = self.box_Hackable_Monitor_240
  l1 = self.box_Multiple_AND_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2069770407", "2069770407", "S17M010_Marcus_Main", "box_Hackable_Monitor_240.HackSuccess", "box_Multiple_AND_241.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1818275769"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_97_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1319980198", "1319980198", "S17M010_Marcus_Main", "box_Ordered_Output_64.Out", "box_Media_System_Custom_Broadcast_Controller_97.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_62
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|884017038", "884017038", "S17M010_Marcus_Main", "box_Ordered_Output_64.Out", "box_PlaySound_v2_62.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_64_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_133
  l0.SoundId = "soundbinary/3689844043.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1039572920", "1039572920", "S17M010_Marcus_Main", "box_Ordered_Output_64.Out", "box_PlaySound_v2_133.Play", clone, l0)
  l0:Play()
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1847635037"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_206_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_206_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_206_Out_2
  l0 = self.box_CinematicPrep_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1895490326", "1895490326", "S17M010_Marcus_Main", "box_CinematicPrep_1.PostOut", "box_Ordered_Output_206.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_34_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_222
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_PhoneCommunicationController_34
  l1 = self.box_PlaySound_v2_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|511530593", "511530593", "S17M010_Marcus_Main", "box_PhoneCommunicationController_34.OnCommunicationStarted", "box_PlaySound_v2_222.Play", l0, l1)
  l1:Play()
end
function export:f_box_PhoneCommunicationController_34_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_PhoneCommunicationController_34
  l1 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|178409980", "178409980", "S17M010_Marcus_Main", "box_PhoneCommunicationController_34.Out", "box_TriggerMonitor_v2_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VisibilityController_v2_176_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062840947029"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|271938550"
  l0.ByIndexSet = self.f_box_MaterialController_65_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1772017528", "1772017528", "S17M010_Marcus_Main", "box_VisibilityController_v2_176.Shown", "box_MaterialController_65.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MissionMessageController_v3_148_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_76
  l0.Checkpoint = "CheckPoint_6"
  l0 = self.box_MissionMessageController_v3_148
  l1 = self.box_MissionCheckpointReach_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1977626575", "1977626575", "S17M010_Marcus_Main", "box_MissionMessageController_v3_148.Out", "box_MissionCheckpointReach_76.In", l0, l1)
  l1:In()
end
function export:f_box_ListForEach_123_EndOfList()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_123
  self.HoTC_XsList = l0.Data
  self:OnEnter_box_TriggerMonitor_v2_82()
  l1 = self.box_TriggerMonitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1578082912", "1578082912", "S17M010_Marcus_Main", "box_ListForEach_123.EndOfList", "box_TriggerMonitor_v2_82.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListForEach_123_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_123
  self.HoTC_XsList = l0.Data
  self:OnEnter_box_HackableController_v2_9()
  l1 = self.box_HackableController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1741362174", "1741362174", "S17M010_Marcus_Main", "box_ListForEach_123.ForEach", "box_HackableController_v2_9.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListForEach_123_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_123
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_123_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_123
  self.HoTC_XsList = l0.Data
end
function export:f_box_ListForEach_123_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_123
  self.HoTC_XsList = l0.Data
end
function export:f_box_InteractionScriptController_155_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.TimeOfDayHour
  l0.Minute = self.TimeOfDayMinutes
  l0._graph = self
  l0._name = "box_SetTimeOfDay_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|6852135"
  l0.Out = self.f_box_SetTimeOfDay_152_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1545270281", "1545270281", "S17M010_Marcus_Main", "box_InteractionScriptController_155.Disabled", "box_SetTimeOfDay_152.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Ordered_Output_127_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 55
  l0._graph = self
  l0._name = "box_SetTimeOfDay_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|255820709"
  l0.Out = self.f_box_SetTimeOfDay_104_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1619897140", "1619897140", "S17M010_Marcus_Main", "box_Ordered_Output_127.Out", "box_SetTimeOfDay_104.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Ordered_Output_127_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S17M010_Marcus_SCR_Main_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|954693554", "954693554", "S17M010_Marcus_Main", "box_Ordered_Output_127.Out", "box_S17M010_Marcus_SCR_Main_178.ActivateCivilianCLOs", clone, l0)
  l0:ActivateCivilianCLOs()
end
function export:f_box_Interact_Gameplay_179_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_114
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective070",
    item = "Objective",
    id = "353067"
  }
  l0 = self.box_Interact_Gameplay_179
  l1 = self.box_MissionMessageController_v3_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|30250173", "30250173", "S17M010_Marcus_Main", "box_Interact_Gameplay_179.Interacted", "box_MissionMessageController_v3_114.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Interact_Gameplay_179_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_112
  l0.Entity = "9223372046997400124"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_Interact_Gameplay_179
  l1 = self.box_Interact_Gameplay_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1437184199", "1437184199", "S17M010_Marcus_Main", "box_Interact_Gameplay_179.Started", "box_Interact_Gameplay_112.Start", l0, l1)
  l1:Start()
end
function export:f_box_S17M010_Marcus_SCR_Main_12_MarcusEnteredBlume()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_79
  l0.MissionArea = "9223372048400195025"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_S17M010_Marcus_SCR_Main_12
  l1 = self.box_MissionZone_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1938571272", "1938571272", "S17M010_Marcus_Main", "box_S17M010_Marcus_SCR_Main_12.MarcusEnteredBlume", "box_MissionZone_79.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VisibilityController_v2_175_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_246
  l0.HackableEntity = "9223372049200548061"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1904010487", "1904010487", "S17M010_Marcus_Main", "box_VisibilityController_v2_175.Shown", "box_Hackable_Monitor_246.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Interact_Gameplay_132_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_132()
  l0 = self.box_Interact_Gameplay_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1113518633", "1113518633", "S17M010_Marcus_Main", "box_Interact_Gameplay_132.Interacted", "box_Interact_Gameplay_132.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_132_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372059840201907"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1424528330"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_139_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Interact_Gameplay_132
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1290143314", "1290143314", "S17M010_Marcus_Main", "box_Interact_Gameplay_132.Started", "box_InteractionScriptController_139.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_132_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|646293283"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_Interact_Gameplay_132
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1505095332", "1505095332", "S17M010_Marcus_Main", "box_Interact_Gameplay_132.Stopped", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_Moveable_Entity_Monitor_210_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_208()
  l0 = self.box_Moveable_Entity_Monitor_210
  l1 = self.box_MultipleOR_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|209084717", "209084717", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_210.Disabled", "box_MultipleOR_208.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_210_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_209()
  l0 = self.box_Moveable_Entity_Monitor_210
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1843241261", "1843241261", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_210.OnBkwMovementFinished", "box_Player_State_Controller_209.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_Multiple_AND_257_Out()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: We don't know why but timer needed to play phone comm back to back in this case, KCoughlan, FBeauchamp", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Timer_v2')-- Comment: We don't know why but timer needed to play phone comm back to back in this case, KCoughlan, FBeauchamp")
  l0 = self.box_Multiple_AND_257
  l1 = self.box_Timer_v2_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1606362267", "1606362267", "S17M010_Marcus_Main", "box_Multiple_AND_257.Out", "box_Timer_v2_256.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_State_Controller_209_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_210()
  l0 = self.box_Moveable_Entity_Monitor_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1522174351", "1522174351", "S17M010_Marcus_Main", "box_Player_State_Controller_209.MaxSpeedReset", "box_Moveable_Entity_Monitor_210.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_209_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_210()
  l0 = self.box_Moveable_Entity_Monitor_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|961586482", "961586482", "S17M010_Marcus_Main", "box_Player_State_Controller_209.MaxSpeedSet", "box_Moveable_Entity_Monitor_210.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ListLength_258_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_UnspawnController_117
  l0.EntityList = self._1stBlumeINT_EnemyList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|515330592", "515330592", "S17M010_Marcus_Main", "box_ListLength_258.NotEmpty", "box_UnspawnController_117.UnspawnEntity", clone, l0)
  l0:UnspawnEntity()
end
function export:f_box_CLOController_191_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_192
  l0.CLO = "9223372064392405949"
  l0 = self.box_CLOController_191
  l1 = self.box_CLOController_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1875995323", "1875995323", "S17M010_Marcus_Main", "box_CLOController_191.Activated", "box_CLOController_192.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_191_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_191
  self.BlumeINT_01_Main_Elite_3 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1732185074", "1732185074", "S17M010_Marcus_Main", "box_CLOController_191.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_S17M010_CIN_DusanPenthouseOutro_Main_43_EndCine()
  local l0, l1
  self = self._graph
  l0 = self.box_S17M010_CIN_DusanPenthouseOutro_Main_43
  l1 = self.box_S17M010_CIN_Farewell_Main_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1080887941", "1080887941", "S17M010_Marcus_Main", "box_S17M010_CIN_DusanPenthouseOutro_Main_43.EndCine", "box_S17M010_CIN_Farewell_Main_50.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_144_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_148
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S17.S17M010.Objectives.Objective090",
    item = "Objective",
    id = "353069"
  }
  l0 = self.box_MapPointController_v4_144
  l1 = self.box_MissionMessageController_v3_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|810741341", "810741341", "S17M010_Marcus_Main", "box_MapPointController_v4_144.Hidden", "box_MissionMessageController_v3_148.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionZone_79_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_51
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055155331766"
  l0 = self.box_MissionZone_79
  l1 = self.box_PhoneCommunicationController_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1931840479", "1931840479", "S17M010_Marcus_Main", "box_MissionZone_79.Disabled", "box_PhoneCommunicationController_51.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Player_State_Controller_71_ClimbInteractionAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = 0
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|589804"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|831543682", "831543682", "S17M010_Marcus_Main", "box_Player_State_Controller_71.ClimbInteractionAllowedSet", "box_Player_State_Controller_69.SetCoverAllowed", clone, l0)
  l0:SetCoverAllowed()
end
function export:f_box_Moveable_Entity_Monitor_205_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_202()
  l0 = self.box_Moveable_Entity_Monitor_205
  l1 = self.box_InteractionScriptMonitor_v2_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1013295452", "1013295452", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_205.Disabled", "box_InteractionScriptMonitor_v2_202.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Moveable_Entity_Monitor_205_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_207()
  l0 = self.box_Moveable_Entity_Monitor_205
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1059172633", "1059172633", "S17M010_Marcus_Main", "box_Moveable_Entity_Monitor_205.OnBkwMovementFinished", "box_Player_State_Controller_207.ResetMaxSpeed", l0, l1)
  l1:ResetMaxSpeed()
end
function export:f_box_MapPointController_v4_46_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_95()
  l0 = self.box_MapPointController_v4_46
  l1 = self.box_TriggerMonitor_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|798231165", "798231165", "S17M010_Marcus_Main", "box_MapPointController_v4_46.Shown", "box_TriggerMonitor_v2_95.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetTimeOfDay_154_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|58071390"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_107_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2118466274", "2118466274", "S17M010_Marcus_Main", "box_SetTimeOfDay_154.Out", "box_TimeScale_Controller_107.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_MapPointController_v4_131_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_122
  l0.Input = self.HoTC_Xs
  l0.Data[0] = "9223372049200548061"
  l0.Data[1] = "9223372049200548059"
  l0.Data[2] = "9223372049200548057"
  l0.Data[3] = "9223372049200548055"
  l0.Data[4] = "9223372049200548053"
  l0 = self.box_MapPointController_v4_131
  l1 = self.box_ListWriter_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1672114608", "1672114608", "S17M010_Marcus_Main", "box_MapPointController_v4_131.Shown", "box_ListWriter_122.Add", l0, l1)
  l1:Add()
end
function export:f_box_OnceOnly_v3_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_146
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_intro.seq"
  l0 = self.box_OnceOnly_v3_101
  l1 = self.box_PlaySequence_v5_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1757008362", "1757008362", "S17M010_Marcus_Main", "box_OnceOnly_v3_101.Out", "box_PlaySequence_v5_146.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_37_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_141
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0 = self.box_MissionLayer_v2_37
  l1 = self.box_Standalone_Loader_Controller_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|215367738", "215367738", "S17M010_Marcus_Main", "box_MissionLayer_v2_37.Loaded", "box_Standalone_Loader_Controller_141.Load", l0, l1)
  l1:Load()
end
function export:f_box_Player_State_Controller_129_ClimbInteractionAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = 1
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2063505982"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1199737672", "1199737672", "S17M010_Marcus_Main", "box_Player_State_Controller_129.ClimbInteractionAllowedSet", "box_Player_State_Controller_67.SetCoverAllowed", clone, l0)
  l0:SetCoverAllowed()
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|953298554"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_103_Out_2
  l0 = self.box_MultipleOR_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1662261391", "1662261391", "S17M010_Marcus_Main", "box_MultipleOR_33.Out", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_102_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  l0.Bool = Globals.S17M010.PlayFromCheckpoint
  l0 = self.box_CinematicPrep_102
  l1 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1774734529", "1774734529", "S17M010_Marcus_Main", "box_CinematicPrep_102.PreOut", "box_SetBoolean_v2_39.True", l0, l1)
  l1:True()
end
function export:f_box_TriggerMonitor_v2_49_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1555887669", "1555887669", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_49.Disabled", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_49_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_190
  l0.Affiliation = "UZulu"
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_GetNPC_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|908337850", "908337850", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_49.Enter", "box_GetNPC_190.GetEnemiesAlive", l0, l1)
  l1:GetEnemiesAlive()
end
function export:f_box_TriggerMonitor_v2_49_Leave()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1619706066", "1619706066", "S17M010_Marcus_Main", "box_TriggerMonitor_v2_49.Leave", "box_TriggerMonitor_v2_49.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_150_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_111()
  l0 = self.box_Interact_Gameplay_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1929506179", "1929506179", "S17M010_Marcus_Main", "box_InteractionScriptController_150.Enabled", "box_Interact_Gameplay_111.Start", clone, l0)
  l0:Start()
end
function export:f_box_MaterialController_77_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_128
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1719255813", "1719255813", "S17M010_Marcus_Main", "box_MaterialController_77.ByIndexSet", "box_CinematicPrep_128.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_InteractionScriptMonitor_v2_218_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_State_Controller_212()
  l0 = self.box_InteractionScriptMonitor_v2_218
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1809012360", "1809012360", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_218.Disabled", "box_Player_State_Controller_212.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_InteractionScriptMonitor_v2_218_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_218()
  l0 = self.box_InteractionScriptMonitor_v2_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2109265481", "2109265481", "S17M010_Marcus_Main", "box_InteractionScriptMonitor_v2_218.InteractionFinished", "box_InteractionScriptMonitor_v2_218.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_97_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  l0.TrackingEvent = "QuickCloseFinalMissionContextHack"
  l0._graph = self
  l0._name = "box_SendTrackingEvent_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|544777966"
  l0.Out = self.f_box_SendTrackingEvent_259_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1576431578", "1576431578", "S17M010_Marcus_Main", "box_Media_System_Custom_Broadcast_Controller_97.EndedAllCustomMediaBroadcasts", "box_SendTrackingEvent_259.In", clone, l0)
  l0:In()
end
function export:f_box_Teleport_To_SpawnPoint_14_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_Teleport_To_SpawnPoint_14
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1621246802", "1621246802", "S17M010_Marcus_Main", "box_Teleport_To_SpawnPoint_14.TeleportDone", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_206_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_208()
  l0 = self.box_MultipleOR_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1065387812", "1065387812", "S17M010_Marcus_Main", "box_Ordered_Output_206.Out", "box_MultipleOR_208.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_206_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|972446804", "972446804", "S17M010_Marcus_Main", "box_Ordered_Output_206.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_206_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|552117283"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_236_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1115328694", "1115328694", "S17M010_Marcus_Main", "box_Ordered_Output_206.Out", "box_MissionMusicController_236.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_HackableController_v2_162_HackForced()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_245()
  l0 = self.box_HackableController_v2_162
  l1 = self.box_Multiple_AND_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1966318077", "1966318077", "S17M010_Marcus_Main", "box_HackableController_v2_162.HackForced", "box_Multiple_AND_245.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_237_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_237
  l1 = self.box_S17M010_Marcus_SCR_Main_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|491842279", "491842279", "S17M010_Marcus_Main", "box_Timer_v2_237.TimeElapsed", "box_S17M010_Marcus_SCR_Main_239.StopBlackOut", l0, l1)
  l1:StopBlackOut()
end
function export:f_box_Standalone_Loader_Controller_142_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|614888777"
  l0.Out = self.f_box_Get_Player_ID_74_Out
  l0 = self.box_Standalone_Loader_Controller_142
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1278996889", "1278996889", "S17M010_Marcus_Main", "box_Standalone_Loader_Controller_142.Loaded", "box_Get_Player_ID_74.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_229_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_10
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372060828744378"
  l0 = self.box_PlayDialog_v2_229
  l1 = self.box_PhoneCommunicationController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1177462838", "1177462838", "S17M010_Marcus_Main", "box_PlayDialog_v2_229.Finished", "box_PhoneCommunicationController_10.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MapPointController_v4_94_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_34
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490877225"
  l0 = self.box_MapPointController_v4_94
  l1 = self.box_PhoneCommunicationController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1442069745", "1442069745", "S17M010_Marcus_Main", "box_MapPointController_v4_94.Hidden", "box_PhoneCommunicationController_34.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SmartphoneAppController_108_OverrideCleared()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: delay to prevent HUD bug", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Timer_v2')-- Comment: delay to prevent HUD bug")
  l0 = self.box_Timer_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1143238875", "1143238875", "S17M010_Marcus_Main", "box_SmartphoneAppController_108.OverrideCleared", "box_Timer_v2_89.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_128_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1915358809"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_214_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_214_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_214_Out_2
  l0 = self.box_CinematicPrep_128
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|700470164", "700470164", "S17M010_Marcus_Main", "box_CinematicPrep_128.PostOut", "box_Ordered_Output_214.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_73_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_149()
  l0 = self.box_Multiple_AND_73
  l1 = self.box_PlaySequence_v5_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1936083816", "1936083816", "S17M010_Marcus_Main", "box_Multiple_AND_73.Out", "box_PlaySequence_v5_149.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_197_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_197
  self.BlumeINT_01_Main_Enforcer_5 = l0.UserID
  self:OnEnter_box_Multiple_AND_88()
  l1 = self.box_Multiple_AND_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|647272325", "647272325", "S17M010_Marcus_Main", "box_CLOController_197.OnUserInPlace", "box_Multiple_AND_88.Condition", l0, l1)
  l1:Condition(9)
end
function export:f_box_Ordered_Output_214_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1379166615", "1379166615", "S17M010_Marcus_Main", "box_Ordered_Output_214.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_214_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1982795458", "1982795458", "S17M010_Marcus_Main", "box_Ordered_Output_214.Out", "box_MultipleOR_33.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_214_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|2109207853"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_60_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|439566923", "439566923", "S17M010_Marcus_Main", "box_Ordered_Output_214.Out", "box_MissionMusicController_60.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_MissionLayer_v2_75_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Standalone_Loader_Controller_140
  l0.StandaloneLoader = "9223372052039367221"
  l0.LayerName = "SF_08_Blume_Campus_HMA"
  l0 = self.box_MissionLayer_v2_75
  l1 = self.box_Standalone_Loader_Controller_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|877999266", "877999266", "S17M010_Marcus_Main", "box_MissionLayer_v2_75.Loaded", "box_Standalone_Loader_Controller_140.Load", l0, l1)
  l1:Load()
end
function export:f_box_GetNPC_190_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_190
  self._1stBlumeINT_EnemyList = l0.NPCList
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self._1stBlumeINT_EnemyList
  l0._graph = self
  l0._name = "box_ListLength_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1634372490"
  l0.Out = DummyFunction
  l0.Empty = DummyFunction
  l0.NotEmpty = self.f_box_ListLength_258_NotEmpty
  l0 = self.box_GetNPC_190
  l1 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|480934180", "480934180", "S17M010_Marcus_Main", "box_GetNPC_190.GotNPCList", "box_ListLength_258.GetLength", l0, l1)
  l1:GetLength()
end
function export:f_box_CinematicPrep_2_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|502941857"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1311753952", "1311753952", "S17M010_Marcus_Main", "box_CinematicPrep_2.PostOut", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_126_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_237
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1063479017", "1063479017", "S17M010_Marcus_Main", "box_InteractionScriptController_126.Disabled", "box_Timer_v2_237.Start", clone, l0)
  l0:Start()
end
function export:f_box_PGTController_v2_30_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_PGTController_v2_30
  l1 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1074316448", "1074316448", "S17M010_Marcus_Main", "box_PGTController_v2_30.AllSpawned", "box_MultipleOR_33.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_30_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_252()
  l0 = self.box_PGTController_v2_30
  l1 = self.box_TriggerMonitor_v2_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1655467774", "1655467774", "S17M010_Marcus_Main", "box_PGTController_v2_30.Started", "box_TriggerMonitor_v2_252.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_6_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_35
  l0.PGTMissionArea = "9223372047627005640"
  l0 = self.box_PhoneCommunicationController_6
  l1 = self.box_PGTController_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|941566701", "941566701", "S17M010_Marcus_Main", "box_PhoneCommunicationController_6.StartCommunicationOut", "box_PGTController_v2_35.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_MissionMusicController_233_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_231
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1549606563", "1549606563", "S17M010_Marcus_Main", "box_MissionMusicController_233.Deactivated", "box_PlaySound_v2_231.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_242_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractGameplayController_165
  l0.Entity = "9223372060029104424"
  l0 = self.box_Hackable_Monitor_242
  l1 = self.box_InteractGameplayController_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1403847982", "1403847982", "S17M010_Marcus_Main", "box_Hackable_Monitor_242.Enabled", "box_InteractGameplayController_165.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_242_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_243()
  l0 = self.box_Hackable_Monitor_242
  l1 = self.box_Multiple_AND_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1066899012", "1066899012", "S17M010_Marcus_Main", "box_Hackable_Monitor_242.HackSuccess", "box_Multiple_AND_243.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Dynamic_Media_Controller_100_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_63()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|333434254", "333434254", "S17M010_Marcus_Main", "box_Dynamic_Media_Controller_100.ChannelChanged", "box_Media_System_Custom_Broadcast_Monitor_63.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_AI_Agent_Zone_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_54()
  l0 = self.box_TriggerMonitor_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|15549431", "15549431", "S17M010_Marcus_Main", "box_AI_Agent_Zone_19.Out", "box_TriggerMonitor_v2_54.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_51_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_PhoneCommunicationController_51
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1437925942", "1437925942", "S17M010_Marcus_Main", "box_PhoneCommunicationController_51.StartCommunicationOut", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VisibilityController_v2_174_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_244
  l0.HackableEntity = "9223372049200548059"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1191873975", "1191873975", "S17M010_Marcus_Main", "box_VisibilityController_v2_174.Shown", "box_Hackable_Monitor_244.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_OnceOnly_v3_181_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_57
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873284"
  l0 = self.box_OnceOnly_v3_181
  l1 = self.box_PhoneCommunicationController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|38040249", "38040249", "S17M010_Marcus_Main", "box_OnceOnly_v3_181.Out", "box_PhoneCommunicationController_57.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_211()
  l0 = self.box_MultipleOR_87
  l1 = self.box_InteractionScriptMonitor_v2_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1853203555", "1853203555", "S17M010_Marcus_Main", "box_MultipleOR_87.Out", "box_InteractionScriptMonitor_v2_211.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_88_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372047942737451"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1092175212"
  l0.Out = self.f_box_AI_Agent_Zone_151_Out
  l0 = self.box_Multiple_AND_88
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1353152843", "1353152843", "S17M010_Marcus_Main", "box_Multiple_AND_88.Out", "box_AI_Agent_Zone_151.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Agent_Zone_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_30
  l0.PGTMissionArea = "9223372047627005640"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|485499285", "485499285", "S17M010_Marcus_Main", "box_AI_Agent_Zone_18.Out", "box_PGTController_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMusicController_60_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_223
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|97538187", "97538187", "S17M010_Marcus_Main", "box_MissionMusicController_60.Deactivated", "box_PlaySound_v2_223.Play", clone, l0)
  l0:Play()
end
function export:f_box_CinematicPrep_55_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1401067154"
  l0.Out = self.f_box_Simple_Node_22_Out
  l0 = self.box_CinematicPrep_55
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1554011208", "1554011208", "S17M010_Marcus_Main", "box_CinematicPrep_55.PostOut", "box_Simple_Node_22.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_24_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047942737389"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1334978237"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_59_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_24
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1012888562", "1012888562", "S17M010_Marcus_Main", "box_MultipleOR_24.Out", "box_InteractionScriptController_59.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_HackableController_v2_249()
  local l0
  l0 = self.box_HackableController_v2_249
  l0.HackableEntityList = {
    "9223372072728784976",
    "9223372072944914340",
    "9223372072944914342",
    "9223372072944914344"
  }
end
function export:OnEnter_box_Multiple_AND_248()
end
function export:OnEnter_box_MultipleOR_204()
end
function export:OnEnter_box_TriggerMonitor_v2_54()
  local l0
  l0 = self.box_TriggerMonitor_v2_54
  l0.Trigger = "9223372062348106168"
end
function export:OnEnter_box_TriggerMonitor_v2_80()
  local l0
  l0 = self.box_TriggerMonitor_v2_80
  l0.Trigger = "9223372056694419620"
end
function export:OnEnter_box_MultipleOR_52()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_167()
end
function export:OnEnter_box_AISquadStateController_44()
  local l0
  l0 = self.box_AISquadStateController_44
  l0.Target = self.PlayerEntity
  l0.Position = "9223372061439132885"
  l0.Affiliation = "UZulu"
  l0.IsThreat = 1
  l0.SearchOverrideParamTimeout = 120
end
function export:OnEnter_box_Player_State_Controller_212()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|240902324"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_212_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_212_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_InteractionScriptMonitor_v2_202()
  local l0
  DrawTextToScreen("Comment: Top Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Top Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_202
  l0.InteractionScriptEntity = "9223372047942737389"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_211()
  local l0
  DrawTextToScreen("Comment: Bottom Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Bottom Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_211
  l0.InteractionScriptEntity = "9223372059814089830"
end
function export:OnEnter_box_Player_State_Controller_186()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|297540608"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_186_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_186_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_InteractionScriptMonitor_v2_188()
  local l0
  DrawTextToScreen("Comment: Top Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Top Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_188
  l0.InteractionScriptEntity = "9223372047942737389"
end
function export:OnEnter_box_TriggerMonitor_v2_119()
  local l0
  l0 = self.box_TriggerMonitor_v2_119
  l0.Trigger = "9223372050376288752"
end
function export:OnEnter_box_Multiple_AND_241()
end
function export:OnEnter_box_Moveable_Entity_Monitor_200()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_200
  l0.MoveableEntity = "9223372047942737387"
end
function export:OnEnter_box_Player_State_Controller_215()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|525659877"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_215_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_215_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_InteractionScriptMonitor_v2_199()
  local l0
  DrawTextToScreen("Comment: Bottom Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Bottom Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_199
  l0.InteractionScriptEntity = "9223372059814089830"
end
function export:OnEnter_box_Interact_Gameplay_111()
  local l0
  l0 = self.box_Interact_Gameplay_111
  l0.Entity = "9223372059840201907"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Multiple_AND_245()
end
function export:OnEnter_box_Multiple_AND_243()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_HackableController_v2_254()
  local l0
  l0 = self.box_HackableController_v2_254
  l0.HackableEntityList = {
    "9223372072728784976",
    "9223372072944914340",
    "9223372072944914342",
    "9223372072944914344"
  }
end
function export:OnEnter_box_Moveable_Entity_Monitor_189()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_189
  l0.MoveableEntity = "9223372047942737397"
end
function export:OnEnter_box_AISquadStateController_36()
  local l0
  l0 = self.box_AISquadStateController_36
  l0.Target = self.PlayerEntity
  l0.Position = "9223372061439133644"
  l0.Affiliation = "UZulu"
  l0.IsThreat = 1
end
function export:OnEnter_box_TriggerMonitor_v2_95()
  local l0
  l0 = self.box_TriggerMonitor_v2_95
  l0.Trigger = "9223372049200630596"
end
function export:OnEnter_box_HackableController_v2_9()
  local l0
  l0 = self.box_HackableController_v2_9
  l0.HackableEntity = self.HoTC_XsList
end
function export:OnEnter_box_TriggerMonitor_v2_253()
  local l0
  l0 = self.box_TriggerMonitor_v2_253
  l0.Trigger = "9223372072944914338"
end
function export:OnEnter_box_TriggerMonitor_v2_82()
  local l0
  l0 = self.box_TriggerMonitor_v2_82
  l0.Trigger = "9223372048675068201"
end
function export:OnEnter_box_PlaySequence_v5_149()
  local l0
  l0 = self.box_PlaySequence_v5_149
  l0.SceneEntity = "9223372059638308216"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_blumetouchscreen_loop.seq"
end
function export:OnEnter_box_Moveable_Entity_Monitor_213()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_213
  l0.MoveableEntity = "9223372047942737397"
end
function export:OnEnter_box_HackableController_v2_250()
  local l0
  l0 = self.box_HackableController_v2_250
  l0.HackableEntity = "9223372072728784976"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_203()
  local l0
  DrawTextToScreen("Comment: Bottom Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Bottom Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_203
  l0.InteractionScriptEntity = "9223372059814089830"
end
function export:OnEnter_box_HackableController_v2_136()
  local l0
  l0 = self.box_HackableController_v2_136
  l0.HackableEntity = self.HoTC_XsList
end
function export:OnEnter_box_Moveable_Entity_Monitor_216()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_216
  l0.MoveableEntity = "9223372047942737387"
end
function export:OnEnter_box_TriggerMonitor_v2_252()
  local l0
  l0 = self.box_TriggerMonitor_v2_252
  l0.Trigger = "9223372072944913531"
end
function export:OnEnter_box_MultipleOR_208()
end
function export:OnEnter_box_Interact_Gameplay_72()
  local l0
  l0 = self.box_Interact_Gameplay_72
  l0.Entity = "9223372059659744851"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_63()
end
function export:OnEnter_box_Player_State_Controller_207()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1443562856"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_207_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_207_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_Player_State_Controller_201()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1474684174"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_201_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_201_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Interact_Gameplay_132()
  local l0
  l0 = self.box_Interact_Gameplay_132
  l0.Entity = "9223372049784027705"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Moveable_Entity_Monitor_210()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_210
  l0.MoveableEntity = "9223372047942737387"
end
function export:OnEnter_box_Multiple_AND_257()
end
function export:OnEnter_box_Player_State_Controller_209()
  local l0
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Idle"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_marcus.domino|@S17M010_Marcus_Main|1615474671"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_209_MaxSpeedSet
  l0.MaxSpeedReset = self.f_box_Player_State_Controller_209_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Moveable_Entity_Monitor_205()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_205
  l0.MoveableEntity = "9223372047942737397"
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_TriggerMonitor_v2_49()
  local l0
  l0 = self.box_TriggerMonitor_v2_49
  l0.Trigger = "9223372047942737405"
end
function export:OnEnter_box_InteractionScriptMonitor_v2_218()
  local l0
  DrawTextToScreen("Comment: Top Elevator Keypad", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InteractionScriptMonitor_v2')-- Comment: Top Elevator Keypad")
  l0 = self.box_InteractionScriptMonitor_v2_218
  l0.InteractionScriptEntity = "9223372047942737389"
end
function export:OnEnter_box_Multiple_AND_73()
end
function export:OnEnter_box_OnceOnly_v3_181()
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_Multiple_AND_88()
end
function export:OnEnter_box_MultipleOR_24()
end
function export:MarcusDone()
end
function export:Out()
end
_compilerVersion = 4
