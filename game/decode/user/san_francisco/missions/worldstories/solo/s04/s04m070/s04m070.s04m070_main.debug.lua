export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AIBuddyMonitor.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CraneController.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04_m070_scr_countdown.S04_M070_SCR_Countdown_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_haumcelebration.S04M070_CIN_HaumCelebration_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_showingoffjr.S04M070_CIN_ShowingOffJr_Main.debug.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TalkerController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/Library/common/FP2015.TV_Antenna.debug.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2974452019.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1497291215.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3019176306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3861125065.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1062183988.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04M070_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main"
  self.PlayerEntity = nil
  self.Wrench = nil
  self.WKZ_Van = nil
  self.AimedAtWKZ = 0
  self.CurrentVehicle = nil
  self.S04M070_Active_END = 1
  self.box_Player_Proximity_Monitor_135 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_135
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|35813073"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_135_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_135_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_Teleport_To_SpawnPoint_20 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_20
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|62602109"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_20_TeleportDone
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|91433651"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_125 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_125
  l0._graph = self
  l0._name = "box_PlaySound_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|116481105"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_4 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_4
  l0._graph = self
  l0._name = "box_PGTController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|128802393"
  l0.Started = self.f_box_PGTController_v2_4_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|174939344"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_MissionLayer_v2_89 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_89
  l0._graph = self
  l0._name = "box_MissionLayer_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|237519038"
  l0.Loaded = self.f_box_MissionLayer_v2_89_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Interact_Gameplay_19 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_19
  l0._graph = self
  l0._name = "box_Interact_Gameplay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|252845385"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_19_Interacted
  self.box_MissionController_v4_149 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_149
  l0._graph = self
  l0._name = "box_MissionController_v4_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|276065171"
  self.box_VehicleSeatingController_45 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_45
  l0._graph = self
  l0._name = "box_VehicleSeatingController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|290122686"
  l0.Assigned = self.f_box_VehicleSeatingController_45_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionZone_136 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_136
  l0._graph = self
  l0._name = "box_MissionZone_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|290742972"
  l0.Enabled = self.f_box_MissionZone_136_Enabled
  l0.Disabled = self.f_box_MissionZone_136_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionCheckpointReach_83 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_83
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|310881262"
  l0.Out = self.f_box_MissionCheckpointReach_83_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionZone_141 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_141
  l0._graph = self
  l0._name = "box_MissionZone_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|320909608"
  l0.Enabled = self.f_box_MissionZone_141_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_148 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_148
  l0._graph = self
  l0._name = "box_PlaySound_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|323356542"
  l0.Out = self.f_box_PlaySound_v2_148_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_152 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_152
  l0._graph = self
  l0._name = "box_OnceOnly_v3_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|353065959"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_152_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_132 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_132
  l0._graph = self
  l0._name = "box_Timer_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|408831401"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_132_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_33 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_33
  l0._graph = self
  l0._name = "box_OnceOnly_v3_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|484045817"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_33_Out
  l0.ResetOut = DummyFunction
  self.box_AISquadStateMonitor_58 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_58
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|488470009"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_58_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_58_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_PlaySound_v2_101 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_101
  l0._graph = self
  l0._name = "box_PlaySound_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|496607917"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_101_Finished
  self.box_TV_Antenna_107 = cbox:CreateBox("domino/Library/common/FP2015.TV_Antenna.debug.lua")
  l0 = self.box_TV_Antenna_107
  l0._graph = self
  l0._name = "box_TV_Antenna_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|514035858"
  l0.Out = self.f_box_TV_Antenna_107_Out
  l0.EnterFOV_Output = self.f_box_TV_Antenna_107_EnterFOV_Output
  l0.LeaveFOV_Output = DummyFunction
  l0.RCExit = DummyFunction
  l0.RcHacked = DummyFunction
  self.box_TalkerController_91 = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self.box_TalkerController_91
  l0._graph = self
  l0._name = "box_TalkerController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|605080327"
  l0.Out = self.f_box_TalkerController_91_Out
  self.box_MissionController_v4_106 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_106
  l0._graph = self
  l0._name = "box_MissionController_v4_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|607733312"
  self.box_MissionCheckpointReach_71 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_71
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|634251986"
  l0.Out = self.f_box_MissionCheckpointReach_71_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_AI_Buddy_Controller_30 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_30
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|634612676"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_LogicGate_v2_134 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_134
  l0._graph = self
  l0._name = "box_LogicGate_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|646211187"
  l0.Out = self.f_box_LogicGate_v2_134_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_CinematicPrep_54 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_54
  l0._graph = self
  l0._name = "box_CinematicPrep_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|647328406"
  l0.PreOut = self.f_box_CinematicPrep_54_PreOut
  l0.PostOut = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_82 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|660925504"
  l0.Enabled = self.f_box_Player_Vehicle_Monitor_v2_82_Enabled
  l0.Disabled = self.f_box_Player_Vehicle_Monitor_v2_82_Disabled
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_82_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_82_Leave
  l0.ChangeSeat = self.f_box_Player_Vehicle_Monitor_v2_82_ChangeSeat
  self.box_VehicleSeatingController_62 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_62
  l0._graph = self
  l0._name = "box_VehicleSeatingController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|669131193"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_DriveAndTalk_32 = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.debug.lua")
  l0 = self.box_DriveAndTalk_32
  l0._graph = self
  l0._name = "box_DriveAndTalk_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|672325707"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_box_DriveAndTalk_32_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self.box_PlaySound_v2_123 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_123
  l0._graph = self
  l0._name = "box_PlaySound_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|745495864"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_Buddy_Controller_56 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_56
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|786779654"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = self.f_box_AI_Buddy_Controller_56_IsFollowing
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_Teleport_To_SpawnPoint_40 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_40
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|795332087"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_40_TeleportDone
  self.box_S04M070_CIN_ShowingOffJr_Main_38 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_showingoffjr.S04M070_CIN_ShowingOffJr_Main.debug.lua")
  l0 = self.box_S04M070_CIN_ShowingOffJr_Main_38
  l0._graph = self
  l0._name = "box_S04M070_CIN_ShowingOffJr_Main_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|808997410"
  l0.Out = self.f_box_S04M070_CIN_ShowingOffJr_Main_38_Out
  self.box_AI_Buddy_Monitor_113 = cbox:CreateBox("domino/System/AIBuddyMonitor.lua")
  l0 = self.box_AI_Buddy_Monitor_113
  l0._graph = self
  l0._name = "box_AI_Buddy_Monitor_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|819271502"
  l0.Enabled = self.f_box_AI_Buddy_Monitor_113_Enabled
  l0.Disabled = self.f_box_AI_Buddy_Monitor_113_Disabled
  l0.OnBuddyFollowing = DummyFunction
  l0.OnBuddyInCombat = DummyFunction
  l0.OnBuddyHasNoSeat = DummyFunction
  l0.OnBuddyCantReach = DummyFunction
  l0.OnBuddyNormalRange = DummyFunction
  l0.OnBuddyTooFarBarkRange = DummyFunction
  l0.OnBuddyTooFar = DummyFunction
  l0.OnBuddyTooFarUnspawnRange = self.f_box_AI_Buddy_Monitor_113_OnBuddyTooFarUnspawnRange
  self.box_AI_Buddy_Controller_17 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_17
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|821755301"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_CinematicPrep_109 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_109
  l0._graph = self
  l0._name = "box_CinematicPrep_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|863677846"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_109_PostOut
  self.box_HackableController_v2_111 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_111
  l0._graph = self
  l0._name = "box_HackableController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|864358830"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_111_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S04_M070_SCR_Countdown_Main_46 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04_m070_scr_countdown.S04_M070_SCR_Countdown_Main.debug.lua")
  l0 = self.box_S04_M070_SCR_Countdown_Main_46
  l0._graph = self
  l0._name = "box_S04_M070_SCR_Countdown_Main_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|907038331"
  l0.Out = self.f_box_S04_M070_SCR_Countdown_Main_46_Out
  self.box_Reach_Gameplay_48 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_48
  l0._graph = self
  l0._name = "box_Reach_Gameplay_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|912575592"
  l0.Started = self.f_box_Reach_Gameplay_48_Started
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_48_Reached
  self.box_Perk_Controller_69 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_69
  l0._graph = self
  l0._name = "box_Perk_Controller_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|922093165"
  l0.PerkAdded = self.f_box_Perk_Controller_69_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_PlayDialog_v2_3 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_3
  l0._graph = self
  l0._name = "box_PlayDialog_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|928596208"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_34 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_34
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|944105760"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_34_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_35 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_35
  l0._graph = self
  l0._name = "box_CinematicPrep_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|987718389"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_35_PostOut
  self.box_MultipleOR_53 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|991187629"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_VehicleSeatingController_50 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_50
  l0._graph = self
  l0._name = "box_VehicleSeatingController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|991491982"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_50_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_131 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_131
  l0._graph = self
  l0._name = "box_CLOController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1000561764"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_131_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_44 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1005542916"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_64 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_64
  l0._graph = self
  l0._name = "box_CLOController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1011599651"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_64_OnUserInPlace
  self.box_Interact_Gameplay_8 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_8
  l0._graph = self
  l0._name = "box_Interact_Gameplay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1012444009"
  l0.Started = self.f_box_Interact_Gameplay_8_Started
  l0.Stopped = DummyFunction
  l0.Interacted = DummyFunction
  self.box_MissionCheckpointReach_70 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_70
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1032485514"
  l0.Out = self.f_box_MissionCheckpointReach_70_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hack_Gameplay_31 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_31
  l0._graph = self
  l0._name = "box_Hack_Gameplay_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1046466253"
  l0.Started = self.f_box_Hack_Gameplay_31_Started
  l0.Stopped = self.f_box_Hack_Gameplay_31_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_31_Hacked
  self.box_TriggerMonitor_v2_5 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_5
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1059528117"
  l0.Enabled = self.f_box_TriggerMonitor_v2_5_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_5_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_5_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_5_Leave
  l0.Use = DummyFunction
  self.box_CLOController_42 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_42
  l0._graph = self
  l0._name = "box_CLOController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1109556529"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_42_OnUserInPlace
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1128876813"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_S04M070_CIN_HaumCelebration_Main_39 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M070/s04m070_cin_haumcelebration.S04M070_CIN_HaumCelebration_Main.debug.lua")
  l0 = self.box_S04M070_CIN_HaumCelebration_Main_39
  l0._graph = self
  l0._name = "box_S04M070_CIN_HaumCelebration_Main_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1136178207"
  l0.Out = self.f_box_S04M070_CIN_HaumCelebration_Main_39_Out
  self.box_AI_Buddy_Controller_105 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_105
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1147578477"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_105_IsWaiting
  l0.Assigned = DummyFunction
  self.box_CinematicPrep_73 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_73
  l0._graph = self
  l0._name = "box_CinematicPrep_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1149311291"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_73_PostOut
  self.box_HackableController_v2_120 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_120
  l0._graph = self
  l0._name = "box_HackableController_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1163064041"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_120_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_120_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PhoneCommunicationController_25 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_25
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1187079599"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_23 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_23
  l0._graph = self
  l0._name = "box_PlaySequence_v5_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1264474157"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_23_Finished
  self.box_PlaySound_v2_94 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_94
  l0._graph = self
  l0._name = "box_PlaySound_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1266493176"
  l0.Out = self.f_box_PlaySound_v2_94_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_121 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_121
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1266671881"
  l0.Out = self.f_box_MissionMessageController_v3_121_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_76 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_76
  l0._graph = self
  l0._name = "box_HackableController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1290952698"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_76_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_76_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TalkerController_118 = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self.box_TalkerController_118
  l0._graph = self
  l0._name = "box_TalkerController_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1298458757"
  l0.Out = self.f_box_TalkerController_118_Out
  self.box_LMA_Layer_Controller_10 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_10
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1317136771"
  l0.Loaded = self.f_box_LMA_Layer_Controller_10_Loaded
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1320699164"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_14 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_14
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1331211824"
  l0.Out = self.f_box_MissionMessageController_v3_14_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_151 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_151
  l0._graph = self
  l0._name = "box_MapPointController_v4_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1336084991"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_151_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_AI_Buddy_Controller_57 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_57
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1341697681"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_box_AI_Buddy_Controller_57_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_MultipleOR_114 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_114
  l0._graph = self
  l0._name = "box_MultipleOR_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1341853237"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_114_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1373951850"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AI_Buddy_Controller_115 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_115
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1385578476"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_115_IsWaiting
  l0.Assigned = DummyFunction
  self.box_CLOController_41 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_41
  l0._graph = self
  l0._name = "box_CLOController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1385896027"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_41_OnUserInPlace
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1403344543"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_AI_Buddy_Controller_87 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_87
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1443719721"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_box_AI_Buddy_Controller_87_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_VehicleMonitor_v3_52 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_52
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1503623735"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v3_52_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
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
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v3_52_NoMoveTimer
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
  self.box_CinematicPrep_28 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_28
  l0._graph = self
  l0._name = "box_CinematicPrep_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1565349543"
  l0.PreOut = self.f_box_CinematicPrep_28_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1578206165"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Crane_Controller_104 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_104
  l0._graph = self
  l0._name = "box_Crane_Controller_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1599716554"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = self.f_box_Crane_Controller_104_CanMoveChanged
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1622466213"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_59 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_59
  l0._graph = self
  l0._name = "box_CLOController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1622760539"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_59_OnUserInPlace
  self.box_MultipleOR_142 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_142
  l0._graph = self
  l0._name = "box_MultipleOR_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1629490078"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_142_Out
  self.box_Network_Surfing_Controller_112 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_112
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1639625776"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_112_Deactivated
  self.box_VehicleSeatingController_63 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_63
  l0._graph = self
  l0._name = "box_VehicleSeatingController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1663159914"
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_box_VehicleSeatingController_63_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_81 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_81
  l0._graph = self
  l0._name = "box_Timer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1677298821"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_110 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_110
  l0._graph = self
  l0._name = "box_HackableController_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1709015961"
  l0.Enabled = self.f_box_HackableController_v2_110_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_InteractionScriptMonitor_v2_13 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_13
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1735182587"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_13_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_13_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Timer_v2_154 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_154
  l0._graph = self
  l0._name = "box_Timer_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1736087614"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_154_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TalkerController_80 = cbox:CreateBox("domino/System/TalkerController.lua")
  l0 = self.box_TalkerController_80
  l0._graph = self
  l0._name = "box_TalkerController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1752883193"
  l0.Out = self.f_box_TalkerController_80_Out
  self.box_AI_Buddy_Controller_85 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_85
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1788841581"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = self.f_box_AI_Buddy_Controller_85_IsWaiting
  l0.Assigned = DummyFunction
  self.box_TutorialController_133 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_133
  l0._graph = self
  l0._name = "box_TutorialController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1808092511"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_box_TutorialController_133_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Monitor_18 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_18
  l0._graph = self
  l0._name = "box_Hackable_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1831214944"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_18_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_18_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1841245433"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_138 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_138
  l0._graph = self
  l0._name = "box_PGTController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1846542901"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_116 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_116
  l0._graph = self
  l0._name = "box_MultipleOR_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1848205548"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_116_Out
  self.box_AI_Buddy_Controller_117 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_117
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1849879962"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = self.f_box_AI_Buddy_Controller_117_IsGoingToCLO
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_PlaySound_v2_127 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_127
  l0._graph = self
  l0._name = "box_PlaySound_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1855868718"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_88 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_88
  l0._graph = self
  l0._name = "box_MultipleOR_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1866897996"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_88_Out
  self.box_Timer_v2_93 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_93
  l0._graph = self
  l0._name = "box_Timer_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1874014221"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_93_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_143 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_143
  l0._graph = self
  l0._name = "box_MultipleOR_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1875164862"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_143_Out
  self.box_Perk_Controller_72 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_72
  l0._graph = self
  l0._name = "box_Perk_Controller_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1882349014"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_72_PerkReseted
  self.box_PawnHealthMonitor_v3_79 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_79
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1890515608"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_79_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_79_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_HackableController_v2_75 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_75
  l0._graph = self
  l0._name = "box_HackableController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1903447516"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_75_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_60 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_60
  l0._graph = self
  l0._name = "box_Timer_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1936881694"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_60_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_103 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_103
  l0._graph = self
  l0._name = "box_PlaySound_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1960044891"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_68 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_68
  l0._graph = self
  l0._name = "box_MissionLayer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1989079544"
  l0.Loaded = self.f_box_MissionLayer_v2_68_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_29 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_29
  l0._graph = self
  l0._name = "box_CinematicPrep_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1989178974"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_29_PostOut
  self.box_Mission_End_146 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_146
  l0._graph = self
  l0._name = "box_Mission_End_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2033820323"
  self.box_HackableController_v2_96 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_96
  l0._graph = self
  l0._name = "box_HackableController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2035268918"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_96_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_119 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_119
  l0._graph = self
  l0._name = "box_HackableController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2045689571"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_119_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_24 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_24
  l0._graph = self
  l0._name = "box_OnceOnly_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2068381401"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_24_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_122 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_122
  l0._graph = self
  l0._name = "box_Timer_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2072091596"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_122_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_90 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_90
  l0._graph = self
  l0._name = "box_CinematicPrep_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2074587016"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_90_PostOut
  self.box_PlaySound_v2_100 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_100
  l0._graph = self
  l0._name = "box_PlaySound_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2078273283"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_95 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_95
  l0._graph = self
  l0._name = "box_PlayDialog_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2143490936"
  l0.Started = self.f_box_PlayDialog_v2_95_Started
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
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "S04M070_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1235491429", "1235491429", "S04M070_Main", "CheckPoint_0", "box_MissionLayer_v2_11.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_68
  l0.LayerName = "S04M070_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|459394174", "459394174", "S04M070_Main", "CheckPoint_1", "box_MissionLayer_v2_68.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_89
  l0.LayerName = "S04M070_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|459831007", "459831007", "S04M070_Main", "CheckPoint_2", "box_MissionLayer_v2_89.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_146()
  l0 = self.box_Mission_End_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|279719639", "279719639", "S04M070_Main", "CheckPoint_3", "box_Mission_End_146.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S04M070_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2079711447", "2079711447", "S04M070_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_128_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_23
  l0.SceneEntity = "9223372059169445086"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M070_ElevatorBeautyShot/s04_m070_elevatorbeautyshot.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1220235626", "1220235626", "S04M070_Main", "box_Ordered_Output_128.Out", "box_PlaySequence_v5_23.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_128_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_142()
  l0 = self.box_MultipleOR_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|427845576", "427845576", "S04M070_Main", "box_Ordered_Output_128.Out", "box_MultipleOR_142.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Player_Proximity_Monitor_135_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_136()
  l0 = self.box_Player_Proximity_Monitor_135
  l1 = self.box_MissionZone_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|208609178", "208609178", "S04M070_Main", "box_Player_Proximity_Monitor_135.Disabled", "box_MissionZone_136.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Proximity_Monitor_135_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_135()
  l0 = self.box_Player_Proximity_Monitor_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1672723024", "1672723024", "S04M070_Main", "box_Player_Proximity_Monitor_135.EnterRadius", "box_Player_Proximity_Monitor_135.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptController_145_EnableStateSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047986193919"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|951425221"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_65_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|374463494", "374463494", "S04M070_Main", "box_InteractionScriptController_145.EnableStateSet", "box_InteractionScriptController_65.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Teleport_To_SpawnPoint_20_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|30551661"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_128_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_128_Out_1
  l0 = self.box_Teleport_To_SpawnPoint_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2131965233", "2131965233", "S04M070_Main", "box_Teleport_To_SpawnPoint_20.TeleportDone", "box_Ordered_Output_128.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_92_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_93
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1985352643", "1985352643", "S04M070_Main", "box_Ordered_Output_92.Out", "box_Timer_v2_93.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_92_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1598011932"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_86_EntityIsInVehicle
  l0.EntityIsNotInVehicle = DummyFunction
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1222254955", "1222254955", "S04M070_Main", "box_Ordered_Output_92.Out", "box_VehicleSeatingMonitor_86.IsInVehicle", clone, l0)
  l0:IsInVehicle()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2111595731"
  l0.Out = self.f_box_Get_Player_ID_15_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1010114582", "1010114582", "S04M070_Main", "box_MissionLayer_v2_11.Loaded", "box_Get_Player_ID_15.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_124_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S04_M070_SCR_Countdown_Main_46()
  l0 = self.box_S04_M070_SCR_Countdown_Main_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|525676941", "525676941", "S04M070_Main", "box_Ordered_Output_124.Out", "box_S04_M070_SCR_Countdown_Main_46.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_123
  l0.SoundId = "soundbinary/1482453689.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1581991936", "1581991936", "S04M070_Main", "box_Ordered_Output_124.Out", "box_PlaySound_v2_123.Play", clone, l0)
  l0:Play()
end
function export:f_box_RemoteControlledVehicleController_47_CanExitChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = nil
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1283007055"
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = self.f_box_RemoteControlledVehicleController_36_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1167530404", "1167530404", "S04M070_Main", "box_RemoteControlledVehicleController_47.CanExitChanged", "box_RemoteControlledVehicleController_36.ForceUserOutOfRC", clone, l0)
  l0:ForceUserOutOfRC()
end
function export:f_box_PGTController_v2_4_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_141()
  l0 = self.box_PGTController_v2_4
  l1 = self.box_MissionZone_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1015206561", "1015206561", "S04M070_Main", "box_PGTController_v2_4.Started", "box_MissionZone_141.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|976137880", "976137880", "S04M070_Main", "box_Simple_Node_37.Out", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ForcePawnsVehicleStop_v2_61_ResetOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_82()
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1094619166", "1094619166", "S04M070_Main", "box_ForcePawnsVehicleStop_v2_61.ResetOut", "box_Player_Vehicle_Monitor_v2_82.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ForcePawnsVehicleStop_v2_61_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_82()
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|775259918", "775259918", "S04M070_Main", "box_ForcePawnsVehicleStop_v2_61.Stopped", "box_Player_Vehicle_Monitor_v2_82.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_99_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_8
  l0.Entity = "9223372047986193919"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1293018090", "1293018090", "S04M070_Main", "box_Ordered_Output_99.Out", "box_Interact_Gameplay_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_99_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_122
  l0.Seconds = 27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1283729196", "1283729196", "S04M070_Main", "box_Ordered_Output_99.Out", "box_Timer_v2_122.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_70
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_49
  l1 = self.box_MissionCheckpointReach_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1390136766", "1390136766", "S04M070_Main", "box_MultipleOR_49.Out", "box_MissionCheckpointReach_70.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_142()
  l0 = self.box_MultipleOR_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|631622591", "631622591", "S04M070_Main", "box_Ordered_Output_129.Out", "box_MultipleOR_142.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_129_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMusicController_27()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|578615859", "578615859", "S04M070_Main", "box_Ordered_Output_129.Out", "box_MissionMusicController_27.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_89_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|568325088"
  l0.Out = self.f_box_Get_Player_ID_84_Out
  l0 = self.box_MissionLayer_v2_89
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|545335570", "545335570", "S04M070_Main", "box_MissionLayer_v2_89.Loaded", "box_Get_Player_ID_84.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_19_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|784732603"
  l0.Out = self.f_box_Pawn_Health_Controller_108_Out
  l0 = self.box_Interact_Gameplay_19
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1387818973", "1387818973", "S04M070_Main", "box_Interact_Gameplay_19.Interacted", "box_Pawn_Health_Controller_108.SetInvincible", l0, l1)
  l1:SetInvincible()
end
function export:f_box_Get_Player_ID_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0._name = "box_InteractionScriptController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1884308606"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_box_InteractionScriptController_144_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|504087", "504087", "S04M070_Main", "box_Get_Player_ID_51.Out", "box_InteractionScriptController_144.SetEnableState", clone, l0)
  l0:SetEnableState()
end
function export:f_box_VehicleSeatingController_45_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_50
  l0.Vehicle = self.CurrentVehicle
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0.WalkType = "Jog"
  l0 = self.box_VehicleSeatingController_45
  l1 = self.box_VehicleSeatingController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2081391849", "2081391849", "S04M070_Main", "box_VehicleSeatingController_45.Assigned", "box_VehicleSeatingController_50.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MissionZone_136_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|360325409"
  l0.Out = self.f_box_Simple_Node_140_Out
  l0 = self.box_MissionZone_136
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1210702843", "1210702843", "S04M070_Main", "box_MissionZone_136.Disabled", "box_Simple_Node_140.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_136_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_10
  l0.LMALayerName = "SF_06_Sutro_Tower_LMA"
  l0 = self.box_MissionZone_136
  l1 = self.box_LMA_Layer_Controller_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1938424540", "1938424540", "S04M070_Main", "box_MissionZone_136.Enabled", "box_LMA_Layer_Controller_10.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_83_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_69
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0 = self.box_MissionCheckpointReach_83
  l1 = self.box_Perk_Controller_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1906140073", "1906140073", "S04M070_Main", "box_MissionCheckpointReach_83.Out", "box_Perk_Controller_69.AddPerk", l0, l1)
  l1:AddPerk()
end
function export:f_box_MissionZone_141_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_73
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionZone_141
  l1 = self.box_CinematicPrep_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|212883678", "212883678", "S04M070_Main", "box_MissionZone_141.Enabled", "box_CinematicPrep_73.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySound_v2_148_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_149
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyKilled",
    id = "689089"
  }
  l0 = self.box_PlaySound_v2_148
  l1 = self.box_MissionController_v4_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1277457581", "1277457581", "S04M070_Main", "box_PlaySound_v2_148.Out", "box_MissionController_v4_149.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_OnceOnly_v3_152_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_133()
  l0 = self.box_OnceOnly_v3_152
  l1 = self.box_TutorialController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|650617882", "650617882", "S04M070_Main", "box_OnceOnly_v3_152.Out", "box_TutorialController_133.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_12
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective020",
    item = "Objective",
    id = "341492"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1546926911", "1546926911", "S04M070_Main", "box_Ordered_Output_9.Out", "box_MissionMessageController_v3_12.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateMonitor_58
  l0.Affiliation = "UZulu"
  l0.CheckStateNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|104254130", "104254130", "S04M070_Main", "box_Ordered_Output_9.Out", "box_AISquadStateMonitor_58.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2108927939"
  l0.Out = self.f_box_Simple_Node_139_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|542305898", "542305898", "S04M070_Main", "box_Simple_Node_140.Out", "box_Simple_Node_139.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_132_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_Timer_v2_132
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|890405866", "890405866", "S04M070_Main", "box_Timer_v2_132.TimeElapsed", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_16
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053603311351"
  l0 = self.box_OnceOnly_v3_33
  l1 = self.box_PhoneCommunicationController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2056372901", "2056372901", "S04M070_Main", "box_OnceOnly_v3_33.Out", "box_PhoneCommunicationController_16.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_AISquadStateMonitor_58_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_55
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AISquadStateMonitor_58
  l1 = self.box_PlaySound_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1394693583", "1394693583", "S04M070_Main", "box_AISquadStateMonitor_58.CombatState", "box_PlaySound_v2_55.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_58_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_AISquadStateMonitor_58
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1827656735", "1827656735", "S04M070_Main", "box_AISquadStateMonitor_58.SearchState", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySound_v2_101_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMusicController_27()
  l0 = self.box_PlaySound_v2_101
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|718609752", "718609752", "S04M070_Main", "box_PlaySound_v2_101.Finished", "box_MissionMusicController_27.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_TV_Antenna_107_EnterFOV_Output()
  local l0, l1
  self = self._graph
  l0 = self.box_TV_Antenna_107
  l1 = self.box_OnceOnly_v3_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|931571724", "931571724", "S04M070_Main", "box_TV_Antenna_107.EnterFOV_Output", "box_OnceOnly_v3_152.In", l0, l1)
  l1:In(0)
end
function export:f_box_TV_Antenna_107_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_133()
  l0 = self.box_TV_Antenna_107
  l1 = self.box_TutorialController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1436809477", "1436809477", "S04M070_Main", "box_TV_Antenna_107.Out", "box_TutorialController_133.Display", l0, l1)
  l1:Display()
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_14
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective030",
    item = "Objective",
    id = "341493"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|200461213", "200461213", "S04M070_Main", "box_Ordered_Output_126.Out", "box_MissionMessageController_v3_14.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_125
  l0.SoundId = "soundbinary/3019176306.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|756146123", "756146123", "S04M070_Main", "box_Ordered_Output_126.Out", "box_PlaySound_v2_125.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_84_Out()
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
  l0._name = "box_Ordered_Output_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|966489221"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_130_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_130_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|810441885", "810441885", "S04M070_Main", "box_Get_Player_ID_84.Out", "box_Ordered_Output_130.In", clone, l0)
  l0:In()
end
function export:f_box_TalkerController_91_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_59
  l0.CLO = "9223372060380611443"
  l0 = self.box_TalkerController_91
  l1 = self.box_CLOController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1685151564", "1685151564", "S04M070_Main", "box_TalkerController_91.Out", "box_CLOController_59.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_RemoteControlledVehicleController_7_CanExitChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1705340113", "1705340113", "S04M070_Main", "box_RemoteControlledVehicleController_7.CanExitChanged", "box_Timer_v2_154.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_71_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|357242946"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_MissionCheckpointReach_71
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1055121382", "1055121382", "S04M070_Main", "box_MissionCheckpointReach_71.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_134_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1379264565"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_66_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_66_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_LogicGate_v2_134
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|46607066", "46607066", "S04M070_Main", "box_LogicGate_v2_134.Out", "box_VehicleSeatingMonitor_66.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_CinematicPrep_54_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_21
  l0.Seconds = 3
  l0 = self.box_CinematicPrep_54
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|148426949", "148426949", "S04M070_Main", "box_CinematicPrep_54.PreOut", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Vehicle_Monitor_v2_82_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  self.CurrentVehicle = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_82_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_52()
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  l1 = self.box_VehicleMonitor_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1411060119", "1411060119", "S04M070_Main", "box_Player_Vehicle_Monitor_v2_82.Disabled", "box_VehicleMonitor_v3_52.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_Vehicle_Monitor_v2_82_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_52()
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  l1 = self.box_VehicleMonitor_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1904803378", "1904803378", "S04M070_Main", "box_Player_Vehicle_Monitor_v2_82.Enabled", "box_VehicleMonitor_v3_52.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Player_Vehicle_Monitor_v2_82_Enter()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  self.CurrentVehicle = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_82_Leave()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  self.CurrentVehicle = l0.Vehicle
end
function export:f_box_DriveAndTalk_32_TalkFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_25
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049688397559"
  l0 = self.box_DriveAndTalk_32
  l1 = self.box_PhoneCommunicationController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|249091129", "249091129", "S04M070_Main", "box_DriveAndTalk_32.TalkFinished", "box_PhoneCommunicationController_25.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_78_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_85
  l0.NPC = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|618401983", "618401983", "S04M070_Main", "box_Ordered_Output_78.Out", "box_AI_Buddy_Controller_85.Wait", clone, l0)
  l0:Wait()
end
function export:f_box_Ordered_Output_78_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|199545985", "199545985", "S04M070_Main", "box_Ordered_Output_78.Out", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Pawn_Health_Controller_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|832560136"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_26_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|275077018", "275077018", "S04M070_Main", "box_Pawn_Health_Controller_108.Out", "box_Ordered_Output_26.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Buddy_Controller_56_IsFollowing()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_35
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_AI_Buddy_Controller_56
  l1 = self.box_CinematicPrep_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1029231064", "1029231064", "S04M070_Main", "box_AI_Buddy_Controller_56.IsFollowing", "box_CinematicPrep_35.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_40_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_40
  l1 = self.box_Perk_Controller_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|918952727", "918952727", "S04M070_Main", "box_Teleport_To_SpawnPoint_40.TeleportDone", "box_Perk_Controller_72.ResetPerks", l0, l1)
  l1:ResetPerks()
end
function export:f_box_S04M070_CIN_ShowingOffJr_Main_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  l0.CLO = "9223372046622977133"
  l0 = self.box_S04M070_CIN_ShowingOffJr_Main_38
  l1 = self.box_CLOController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1570030783", "1570030783", "S04M070_Main", "box_S04M070_CIN_ShowingOffJr_Main_38.Out", "box_CLOController_42.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_AI_Buddy_Monitor_113_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_134()
  l0 = self.box_AI_Buddy_Monitor_113
  l1 = self.box_LogicGate_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|106242026", "106242026", "S04M070_Main", "box_AI_Buddy_Monitor_113.Disabled", "box_LogicGate_v2_134.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Buddy_Monitor_113_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_79
  l0.Pawn = self.Wrench
  l0 = self.box_AI_Buddy_Monitor_113
  l1 = self.box_PawnHealthMonitor_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|637231524", "637231524", "S04M070_Main", "box_AI_Buddy_Monitor_113.Enabled", "box_PawnHealthMonitor_v3_79.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Buddy_Monitor_113_OnBuddyTooFarUnspawnRange()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1554720744"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_147_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_147_Out_1
  l0 = self.box_AI_Buddy_Monitor_113
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|944271440", "944271440", "S04M070_Main", "box_AI_Buddy_Monitor_113.OnBuddyTooFarUnspawnRange", "box_Ordered_Output_147.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|209359684", "209359684", "S04M070_Main", "box_Ordered_Output_26.Out", "box_HackableController_v2_76.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1821306556", "1821306556", "S04M070_Main", "box_Ordered_Output_26.Out", "box_MultipleOR_143.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_26_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1285588721"
  l0.Out = self.f_box_Simple_Node_74_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|326196260", "326196260", "S04M070_Main", "box_Ordered_Output_26.Out", "box_Simple_Node_74.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_109_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_88()
  l0 = self.box_CinematicPrep_109
  l1 = self.box_MultipleOR_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|982540220", "982540220", "S04M070_Main", "box_CinematicPrep_109.PostOut", "box_MultipleOR_88.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_111_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_111
  l1 = self.box_S04M070_CIN_HaumCelebration_Main_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1936814469", "1936814469", "S04M070_Main", "box_HackableController_v2_111.Disabled", "box_S04M070_CIN_HaumCelebration_Main_39.In", l0, l1)
  l1:In()
end
function export:f_box_Pawn_Health_Controller_153_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_109
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|241384702", "241384702", "S04M070_Main", "box_Pawn_Health_Controller_153.Out", "box_CinematicPrep_109.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_S04_M070_SCR_Countdown_Main_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|551833104"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_126_Out_1
  l0 = self.box_S04_M070_SCR_Countdown_Main_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|895466384", "895466384", "S04M070_Main", "box_S04_M070_SCR_Countdown_Main_46.Out", "box_Ordered_Output_126.In", l0, l1)
  l1:In()
end
function export:f_box_Reach_Gameplay_48_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_Reach_Gameplay_48
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1814281400", "1814281400", "S04M070_Main", "box_Reach_Gameplay_48.Reached", "box_TriggerMonitor_v2_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Reach_Gameplay_48_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_5()
  l0 = self.box_Reach_Gameplay_48
  l1 = self.box_TriggerMonitor_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|892994636", "892994636", "S04M070_Main", "box_Reach_Gameplay_48.Started", "box_TriggerMonitor_v2_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Perk_Controller_69_PerkAdded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective040",
    item = "Objective",
    id = "341494"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Perk_Controller_69
  l1 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2046633217", "2046633217", "S04M070_Main", "box_Perk_Controller_69.PerkAdded", "box_MissionMessageController_v3_22.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_34_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_60
  l0.Seconds = 2
  l0 = self.box_PhoneCommunicationController_34
  l1 = self.box_Timer_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1715449875", "1715449875", "S04M070_Main", "box_PhoneCommunicationController_34.OnCommunicationFinished", "box_Timer_v2_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_65_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_96
  l0.HackableEntity = "9223372047986193919"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1340624747", "1340624747", "S04M070_Main", "box_InteractionScriptController_65.Disabled", "box_HackableController_v2_96.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_130_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_120()
  l0 = self.box_HackableController_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|8689539", "8689539", "S04M070_Main", "box_Ordered_Output_130.Out", "box_HackableController_v2_120.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|212466554"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_129_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1928997271", "1928997271", "S04M070_Main", "box_Ordered_Output_130.Out", "box_Ordered_Output_129.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_35_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.Objectives.Objective010",
    item = "Objective",
    id = "341491"
  }
  l0 = self.box_CinematicPrep_35
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1648629099", "1648629099", "S04M070_Main", "box_CinematicPrep_35.PostOut", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047986193919"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2141006741"
  l0.Enabled = self.f_box_InteractionScriptController_97_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_53
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|259360909", "259360909", "S04M070_Main", "box_MultipleOR_53.Out", "box_InteractionScriptController_97.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_50_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 2
  l0 = self.box_VehicleSeatingController_50
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|553475278", "553475278", "S04M070_Main", "box_VehicleSeatingController_50.AssignCompleted", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_131_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|872185359"
  l0.Out = self.f_box_Pawn_Health_Controller_153_Out
  l0 = self.box_CLOController_131
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1773282694", "1773282694", "S04M070_Main", "box_CLOController_131.UnspawnedUser", "box_Pawn_Health_Controller_153.UnsetInvincible", l0, l1)
  l1:UnsetInvincible()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_56
  l0.NPC = self.Wrench
  l0 = self.box_Timer_v2_44
  l1 = self.box_AI_Buddy_Controller_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1622613382", "1622613382", "S04M070_Main", "box_Timer_v2_44.TimeElapsed", "box_AI_Buddy_Controller_56.Follow", l0, l1)
  l1:Follow()
end
function export:f_box_CLOController_64_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_64
  self.Wrench = l0.UserID
  l0 = self.box_AI_Buddy_Controller_105
  l0.NPC = self.Wrench
  l0 = self.box_CLOController_64
  l1 = self.box_AI_Buddy_Controller_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1492526637", "1492526637", "S04M070_Main", "box_CLOController_64.OnUserInPlace", "box_AI_Buddy_Controller_105.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_Interact_Gameplay_8_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_13
  l0.InteractionScriptEntity = "9223372047986193919"
  l0 = self.box_Interact_Gameplay_8
  l1 = self.box_InteractionScriptMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1852857267", "1852857267", "S04M070_Main", "box_Interact_Gameplay_8.Started", "box_InteractionScriptMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_70_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372060052285003"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1505955922"
  l0.Out = self.f_box_Phys_Zone_Cleanup_77_Out
  l0 = self.box_MissionCheckpointReach_70
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|370536771", "370536771", "S04M070_Main", "box_MissionCheckpointReach_70.Out", "box_Phys_Zone_Cleanup_77.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hack_Gameplay_31_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_31
  l1 = self.box_OnceOnly_v3_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1447878179", "1447878179", "S04M070_Main", "box_Hack_Gameplay_31.Hacked", "box_OnceOnly_v3_33.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hack_Gameplay_31_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_18()
  l0 = self.box_Hack_Gameplay_31
  l1 = self.box_Hackable_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1801999848", "1801999848", "S04M070_Main", "box_Hack_Gameplay_31.Started", "box_Hackable_Monitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hack_Gameplay_31_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_18()
  l0 = self.box_Hack_Gameplay_31
  l1 = self.box_Hackable_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|153789007", "153789007", "S04M070_Main", "box_Hack_Gameplay_31.Stopped", "box_Hackable_Monitor_18.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_113()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_AI_Buddy_Monitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2064313298", "2064313298", "S04M070_Main", "box_TriggerMonitor_v2_5.Disabled", "box_AI_Buddy_Monitor_113.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_5_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AI_Buddy_Monitor_113()
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_AI_Buddy_Monitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|65739244", "65739244", "S04M070_Main", "box_TriggerMonitor_v2_5.Enabled", "box_AI_Buddy_Monitor_113.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_5_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_17
  l0.NPC = self.Wrench
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_AI_Buddy_Controller_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1202868383", "1202868383", "S04M070_Main", "box_TriggerMonitor_v2_5.Enter", "box_AI_Buddy_Controller_17.Wait", l0, l1)
  l1:Wait()
end
function export:f_box_TriggerMonitor_v2_5_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_30
  l0.NPC = self.Wrench
  l0 = self.box_TriggerMonitor_v2_5
  l1 = self.box_AI_Buddy_Controller_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|750106924", "750106924", "S04M070_Main", "box_TriggerMonitor_v2_5.Leave", "box_AI_Buddy_Controller_30.Follow", l0, l1)
  l1:Follow()
end
function export:f_box_CLOController_42_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_42
  self.CurrentVehicle = l0.UserID
  l0 = self.box_CLOController_41
  l0.CLO = "9223372046622977615"
  l0 = self.box_CLOController_42
  l1 = self.box_CLOController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|12516881", "12516881", "S04M070_Main", "box_CLOController_42.OnUserInPlace", "box_CLOController_41.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_31()
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_Hack_Gameplay_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|75101236", "75101236", "S04M070_Main", "box_MissionMessageController_v3_22.Out", "box_Hack_Gameplay_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_S04M070_CIN_HaumCelebration_Main_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_40
  l0.SpawnPoint = "9223372046622999926"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_S04M070_CIN_HaumCelebration_Main_39
  l1 = self.box_Teleport_To_SpawnPoint_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|750973779", "750973779", "S04M070_Main", "box_S04M070_CIN_HaumCelebration_Main_39.Out", "box_Teleport_To_SpawnPoint_40.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Buddy_Controller_105_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_87
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0 = self.box_AI_Buddy_Controller_105
  l1 = self.box_AI_Buddy_Controller_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|260297074", "260297074", "S04M070_Main", "box_AI_Buddy_Controller_105.IsWaiting", "box_AI_Buddy_Controller_87.GotoCLO", l0, l1)
  l1:GotoCLO()
end
function export:f_box_CinematicPrep_73_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_CinematicPrep_73
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1345133659", "1345133659", "S04M070_Main", "box_CinematicPrep_73.PostOut", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_HackableController_v2_120_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_120()
  l0 = self.box_HackableController_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1668418172", "1668418172", "S04M070_Main", "box_HackableController_v2_120.Disabled", "box_HackableController_v2_120.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_120_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_90
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_120
  l1 = self.box_CinematicPrep_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|436188609", "436188609", "S04M070_Main", "box_HackableController_v2_120.ProfilingDisabled", "box_CinematicPrep_90.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_137_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reach_Gameplay_48
  l0.Entity = "9223372060380611012"
  l0.Entity_AreaRadius = 10
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1349721844", "1349721844", "S04M070_Main", "box_Ordered_Output_137.Out", "box_Reach_Gameplay_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_137_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_135()
  l0 = self.box_Player_Proximity_Monitor_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2012556646", "2012556646", "S04M070_Main", "box_Ordered_Output_137.Out", "box_Player_Proximity_Monitor_135.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySequence_v5_23_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_131
  l0.User = self.Wrench
  l0 = self.box_PlaySequence_v5_23
  l1 = self.box_CLOController_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|964474508", "964474508", "S04M070_Main", "box_PlaySequence_v5_23.Finished", "box_CLOController_131.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_PlaySound_v2_94_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_106
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "AllyAbandoned",
    id = "605440"
  }
  l0 = self.box_PlaySound_v2_94
  l1 = self.box_MissionController_v4_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|615521599", "615521599", "S04M070_Main", "box_PlaySound_v2_94.Out", "box_MissionController_v4_106.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_MissionMessageController_v3_121_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_121
  l1 = self.box_OnceOnly_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2039049052", "2039049052", "S04M070_Main", "box_MissionMessageController_v3_121.Out", "box_OnceOnly_v3_24.In", l0, l1)
  l1:In(0)
end
function export:f_box_RemoteControlledVehicleController_36_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_111
  l0.HackableEntity = "9223372048476329022"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1975561646", "1975561646", "S04M070_Main", "box_RemoteControlledVehicleController_36.UserForcedOutOfRC", "box_HackableController_v2_111.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Simple_Node_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_136()
  l0 = self.box_MissionZone_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1049471426", "1049471426", "S04M070_Main", "box_Simple_Node_74.Out", "box_MissionZone_136.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_76_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|65878113", "65878113", "S04M070_Main", "box_HackableController_v2_76.Disabled", "box_HackableController_v2_76.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_76_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_54
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_76
  l1 = self.box_CinematicPrep_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|210604269", "210604269", "S04M070_Main", "box_HackableController_v2_76.ProfilingDisabled", "box_CinematicPrep_54.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_TalkerController_118_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_95
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/1062183988.bnk"
  l0 = self.box_TalkerController_118
  l1 = self.box_PlayDialog_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|483688887", "483688887", "S04M070_Main", "box_TalkerController_118.Out", "box_PlayDialog_v2_95.Start", l0, l1)
  l1:Start()
end
function export:f_box_LMA_Layer_Controller_10_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_138
  l0.PGTMissionArea = "9223372046687101181"
  l0 = self.box_LMA_Layer_Controller_10
  l1 = self.box_PGTController_v2_138
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2061550260", "2061550260", "S04M070_Main", "box_LMA_Layer_Controller_10.Loaded", "box_PGTController_v2_138.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|145634132"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_MissionMessageController_v3_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|784293731", "784293731", "S04M070_Main", "box_MissionMessageController_v3_12.Out", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 1
  l0._graph = self
  l0._name = "box_InteractionScriptController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1997022009"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_box_InteractionScriptController_43_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_14
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|231123228", "231123228", "S04M070_Main", "box_MissionMessageController_v3_14.Out", "box_InteractionScriptController_43.SetEnableState", l0, l1)
  l1:SetEnableState()
end
function export:f_box_MapPointController_v4_151_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_104
  l0.Entity = "9223372048476329022"
  l0.CanMove = 0
  l0 = self.box_MapPointController_v4_151
  l1 = self.box_Crane_Controller_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1411022152", "1411022152", "S04M070_Main", "box_MapPointController_v4_151.Hidden", "box_Crane_Controller_104.SetCanMove", l0, l1)
  l1:SetCanMove()
end
function export:f_box_AI_Buddy_Controller_57_IsGoingToCLO()
  local l0, l1
  self = self._graph
  l0 = self.box_TalkerController_80
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0 = self.box_AI_Buddy_Controller_57
  l1 = self.box_TalkerController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2034200963", "2034200963", "S04M070_Main", "box_AI_Buddy_Controller_57.IsGoingToCLO", "box_TalkerController_80.SetConversationOnEntity", l0, l1)
  l1:SetConversationOnEntity()
end
function export:f_box_MultipleOR_114_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_134()
  l0 = self.box_MultipleOR_114
  l1 = self.box_LogicGate_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1441975202", "1441975202", "S04M070_Main", "box_MultipleOR_114.Out", "box_LogicGate_v2_134.Close", l0, l1)
  l1:Close()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1870158216"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|333300453", "333300453", "S04M070_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingMonitor_66_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|704132589"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_78_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_78_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1880119950", "1880119950", "S04M070_Main", "box_VehicleSeatingMonitor_66.EntityIsInVehicle", "box_Ordered_Output_78.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingMonitor_66_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1617229346"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|813313684", "813313684", "S04M070_Main", "box_VehicleSeatingMonitor_66.EntityIsNotInVehicle", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_AI_Buddy_Controller_115_IsWaiting()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_117
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0 = self.box_AI_Buddy_Controller_115
  l1 = self.box_AI_Buddy_Controller_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2062340689", "2062340689", "S04M070_Main", "box_AI_Buddy_Controller_115.IsWaiting", "box_AI_Buddy_Controller_117.GotoCLO", l0, l1)
  l1:GotoCLO()
end
function export:f_box_CLOController_41_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_41
  self.Wrench = l0.UserID
  l0 = self.box_VehicleSeatingController_45
  l0.Vehicle = self.CurrentVehicle
  l0.Pawn = self.Wrench
  l0.Seat = "FrontPassenger"
  l0.WalkType = "Jog"
  l0 = self.box_CLOController_41
  l1 = self.box_VehicleSeatingController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|633954816", "633954816", "S04M070_Main", "box_CLOController_41.OnUserInPlace", "box_VehicleSeatingController_45.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1189960401"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_137_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_137_Out_1
  l0 = self.box_MissionMessageController_v3_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|800857682", "800857682", "S04M070_Main", "box_MissionMessageController_v3_6.Out", "box_Ordered_Output_137.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Buddy_Controller_87_IsGoingToCLO()
  local l0, l1
  self = self._graph
  l0 = self.box_TalkerController_91
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0 = self.box_AI_Buddy_Controller_87
  l1 = self.box_TalkerController_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1973151548", "1973151548", "S04M070_Main", "box_AI_Buddy_Controller_87.IsGoingToCLO", "box_TalkerController_91.SetConversationOnEntity", l0, l1)
  l1:SetConversationOnEntity()
end
function export:f_box_VehicleMonitor_v3_52_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_63
  l0.Pawn = self.Wrench
  l0.UseAnimation = 1
  l0.Seat = "FrontPassenger"
  l0 = self.box_VehicleMonitor_v3_52
  l1 = self.box_VehicleSeatingController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|490820809", "490820809", "S04M070_Main", "box_VehicleMonitor_v3_52.Disabled", "box_VehicleSeatingController_63.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_VehicleMonitor_v3_52_NoMoveTimer()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ForcePawnsVehicleStop_v2_61()
  l0 = self.box_VehicleMonitor_v3_52
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1157706947", "1157706947", "S04M070_Main", "box_VehicleMonitor_v3_52.NoMoveTimer", "box_ForcePawnsVehicleStop_v2_61.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Phys_Zone_Cleanup_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372072116240189"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0._name = "box_InteractionScriptController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|56036608"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_box_InteractionScriptController_145_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1979337747", "1979337747", "S04M070_Main", "box_Phys_Zone_Cleanup_77.Out", "box_InteractionScriptController_145.SetEnableState", clone, l0)
  l0:SetEnableState()
end
function export:f_box_Ordered_Output_147_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1622504890", "1622504890", "S04M070_Main", "box_Ordered_Output_147.Out", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_147_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_94
  l0.SoundId = "soundbinary/1497291215.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2036630339", "2036630339", "S04M070_Main", "box_Ordered_Output_147.Out", "box_PlaySound_v2_94.Play", clone, l0)
  l0:Play()
end
function export:f_box_CinematicPrep_28_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = 1
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|111750906"
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = DummyFunction
  l0.CanExitChanged = self.f_box_RemoteControlledVehicleController_47_CanExitChanged
  l0 = self.box_CinematicPrep_28
  l1 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|594490347", "594490347", "S04M070_Main", "box_CinematicPrep_28.PreOut", "box_RemoteControlledVehicleController_47.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_20
  l0.SpawnPoint = "9223372046521920915"
  l0 = self.box_Timer_v2_21
  l1 = self.box_Teleport_To_SpawnPoint_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2000240686", "2000240686", "S04M070_Main", "box_Timer_v2_21.TimeElapsed", "box_Teleport_To_SpawnPoint_20.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingMonitor_86_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_62
  l0.Pawn = self.PlayerEntity
  l0.UseAnimation = 1
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1214035601", "1214035601", "S04M070_Main", "box_VehicleSeatingMonitor_86.EntityIsInVehicle", "box_VehicleSeatingController_62.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_Crane_Controller_104_CanMoveChanged()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_104
  l1 = self.box_MissionMessageController_v3_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1215977097", "1215977097", "S04M070_Main", "box_Crane_Controller_104.CanMoveChanged", "box_MissionMessageController_v3_121.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_115
  l0.NPC = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|849795315", "849795315", "S04M070_Main", "box_Simple_Node_67.Out", "box_AI_Buddy_Controller_115.Wait", clone, l0)
  l0:Wait()
end
function export:f_box_CLOController_59_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_4
  l0.PGTMissionArea = "9223372046687101181"
  l0 = self.box_CLOController_59
  l1 = self.box_PGTController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|590017844", "590017844", "S04M070_Main", "box_CLOController_59.OnUserInPlace", "box_PGTController_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_142_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_127
  l0.SoundId = "soundbinary/2974452019.bnk"
  l0 = self.box_MultipleOR_142
  l1 = self.box_PlaySound_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1016551235", "1016551235", "S04M070_Main", "box_MultipleOR_142.Out", "box_PlaySound_v2_127.Play", l0, l1)
  l1:Play()
end
function export:f_box_Network_Surfing_Controller_112_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_75
  l0.HackableEntity = "9223372048476329022"
  l0 = self.box_Network_Surfing_Controller_112
  l1 = self.box_HackableController_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|872453132", "872453132", "S04M070_Main", "box_Network_Surfing_Controller_112.Deactivated", "box_HackableController_v2_75.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_VehicleSeatingController_63_Unassigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|62979184"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_92_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_92_Out_1
  l0 = self.box_VehicleSeatingController_63
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1736771178", "1736771178", "S04M070_Main", "box_VehicleSeatingController_63.Unassigned", "box_Ordered_Output_92.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_29
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_81
  l1 = self.box_CinematicPrep_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|101796978", "101796978", "S04M070_Main", "box_Timer_v2_81.TimeElapsed", "box_CinematicPrep_29.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_HackableController_v2_110_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_110
  l1 = self.box_Network_Surfing_Controller_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|172468874", "172468874", "S04M070_Main", "box_HackableController_v2_110.Enabled", "box_Network_Surfing_Controller_112.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MissionMusicController_98_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_132
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|776645627", "776645627", "S04M070_Main", "box_MissionMusicController_98.Activated", "box_Timer_v2_132.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractionScriptMonitor_v2_13_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S04_M070_SCR_Countdown_Main_46()
  l0 = self.box_InteractionScriptMonitor_v2_13
  l1 = self.box_S04_M070_SCR_Countdown_Main_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|647933183", "647933183", "S04M070_Main", "box_InteractionScriptMonitor_v2_13.InteractionFinished", "box_S04_M070_SCR_Countdown_Main_46.InInteractionFinish", l0, l1)
  l1:InInteractionFinish()
end
function export:f_box_InteractionScriptMonitor_v2_13_InteractionStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|106520904"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_124_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_124_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|723788976", "723788976", "S04M070_Main", "box_InteractionScriptMonitor_v2_13.InteractionStarted", "box_Ordered_Output_124.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_154_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_TV_Antenna_107
  l0.Reference_Object_Logic = "9223372048476329022"
  l0.LookAt_Trigger_00 = "9223372048476329018"
  l0.LookAt_Trigger_01 = "9223372048476329016"
  l0.LookAt_Trigger_02 = "9223372048476329014"
  l0.LookAt_Trigger_03 = "9223372048476329012"
  l0.LookAt_Trigger_04 = "9223372048476329010"
  l0.LookAt_Trigger_05 = "9223372048476329008"
  l0.LookAt_Trigger_06 = "9223372048476329006"
  l0.LookAt_Trigger_07 = "9223372048476329004"
  l0.LookAt_Trigger_08 = "9223372048476329002"
  l0.Camera_Context_Config = "CameraContext.9223372044265832551"
  l0.Camera_Context_BlendIn = "CameraBlendListDB.9223372048779319830"
  l0.Camera_Context_BlendOut = "CameraBlendListDB.9223372048779319830"
  l0.MapPoint = "9223372048476336470"
  l0.MapPointLocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Link",
    id = "340811"
  }
  l0.IsS04M070 = self.S04M070_Active_END
  l0 = self.box_Timer_v2_154
  l1 = self.box_TV_Antenna_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|121738659", "121738659", "S04M070_Main", "box_Timer_v2_154.TimeElapsed", "box_TV_Antenna_107.In", l0, l1)
  l1:In()
end
function export:f_box_TalkerController_80_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_3
  l0.Entity = self.Wrench
  l0.SoundId = "soundbinary/1062183988.bnk"
  l0 = self.box_TalkerController_80
  l1 = self.box_PlayDialog_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|929387198", "929387198", "S04M070_Main", "box_TalkerController_80.Out", "box_PlayDialog_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_Buddy_Controller_85_IsWaiting()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ForcePawnsVehicleStop_v2_61()
  l0 = self.box_AI_Buddy_Controller_85
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|41451797", "41451797", "S04M070_Main", "box_AI_Buddy_Controller_85.IsWaiting", "box_ForcePawnsVehicleStop_v2_61.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TutorialController_133_NotificationHidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_151
  l0.MapPoint = "9223372048476336470"
  l0 = self.box_TutorialController_133
  l1 = self.box_MapPointController_v4_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1453567750", "1453567750", "S04M070_Main", "box_TutorialController_133.NotificationHidden", "box_MapPointController_v4_151.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_18_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_110
  l0.HackableEntity = "9223372048476329022"
  l0 = self.box_Hackable_Monitor_18
  l1 = self.box_HackableController_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1944400335", "1944400335", "S04M070_Main", "box_Hackable_Monitor_18.Disabled", "box_HackableController_v2_110.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Hackable_Monitor_18_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1914881205"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  l0 = self.box_Hackable_Monitor_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1734342704", "1734342704", "S04M070_Main", "box_Hackable_Monitor_18.HackSuccess", "box_Ordered_Output_102.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_116_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_100
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_MultipleOR_116
  l1 = self.box_PlaySound_v2_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1849913058", "1849913058", "S04M070_Main", "box_MultipleOR_116.Out", "box_PlaySound_v2_100.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_Buddy_Controller_117_IsGoingToCLO()
  local l0, l1
  self = self._graph
  l0 = self.box_TalkerController_118
  l0.Talker = self.Wrench
  l0.Conversation = "ConversationInteractionSettings.9223372060380614537"
  l0 = self.box_AI_Buddy_Controller_117
  l1 = self.box_TalkerController_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1785336509", "1785336509", "S04M070_Main", "box_AI_Buddy_Controller_117.IsGoingToCLO", "box_TalkerController_118.SetConversationOnEntity", l0, l1)
  l1:SetConversationOnEntity()
end
function export:f_box_MultipleOR_88_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_83
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_88
  l1 = self.box_MissionCheckpointReach_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1679618668", "1679618668", "S04M070_Main", "box_MultipleOR_88.Out", "box_MissionCheckpointReach_83.In", l0, l1)
  l1:In()
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
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1413474240", "1413474240", "S04M070_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_93_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_Buddy_Controller_57
  l0.NPC = self.Wrench
  l0.CLO = "9223372060380611013"
  l0 = self.box_Timer_v2_93
  l1 = self.box_AI_Buddy_Controller_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1284675792", "1284675792", "S04M070_Main", "box_Timer_v2_93.TimeElapsed", "box_AI_Buddy_Controller_57.GotoCLO", l0, l1)
  l1:GotoCLO()
end
function export:f_box_MultipleOR_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_103
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_MultipleOR_143
  l1 = self.box_PlaySound_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1479475314", "1479475314", "S04M070_Main", "box_MultipleOR_143.Out", "box_PlaySound_v2_103.Play", l0, l1)
  l1:Play()
end
function export:f_box_Perk_Controller_72_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_81
  l0.Seconds = 3
  l0 = self.box_Perk_Controller_72
  l1 = self.box_Timer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1163960623", "1163960623", "S04M070_Main", "box_Perk_Controller_72.PerkReseted", "box_Timer_v2_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_144_EnableStateSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_64
  l0.CLO = "9223372056618736261"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|601907876", "601907876", "S04M070_Main", "box_InteractionScriptController_144.EnableStateSet", "box_CLOController_64.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PawnHealthMonitor_v3_79_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DriveAndTalk_32
  l0.Pawn1 = self.PlayerEntity
  l0.Pawn2 = self.Wrench
  l0.Conversation = "ConversationSetting.9223372049688397558"
  l0.StartDelay = 1
  l0.SpecificVehicle = self.WKZ_Van
  l0 = self.box_PawnHealthMonitor_v3_79
  l1 = self.box_DriveAndTalk_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|590830818", "590830818", "S04M070_Main", "box_PawnHealthMonitor_v3_79.Enabled", "box_DriveAndTalk_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_PawnHealthMonitor_v3_79_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2026224718"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_150_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_150_Out_1
  l0 = self.box_PawnHealthMonitor_v3_79
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|2141113698", "2141113698", "S04M070_Main", "box_PawnHealthMonitor_v3_79.Killed", "box_Ordered_Output_150.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_75_HackForced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = self.PlayerEntity
  l0.RCEntity = "9223372048476329022"
  l0.CanExit = 0
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|614181166"
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = DummyFunction
  l0.CanExitChanged = self.f_box_RemoteControlledVehicleController_7_CanExitChanged
  l0 = self.box_HackableController_v2_75
  l1 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1733570410", "1733570410", "S04M070_Main", "box_HackableController_v2_75.HackForced", "box_RemoteControlledVehicleController_7.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_31()
  l0 = self.box_Hack_Gameplay_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1308453414", "1308453414", "S04M070_Main", "box_Ordered_Output_102.Out", "box_Hack_Gameplay_31.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_101
  l0.SoundId = "soundbinary/3861125065.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|712807061", "712807061", "S04M070_Main", "box_Ordered_Output_102.Out", "box_PlaySound_v2_101.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_60_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_28
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_60
  l1 = self.box_CinematicPrep_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|914165704", "914165704", "S04M070_Main", "box_Timer_v2_60.TimeElapsed", "box_CinematicPrep_28.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_MissionLayer_v2_68_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|259711628"
  l0.Out = self.f_box_Get_Player_ID_51_Out
  l0 = self.box_MissionLayer_v2_68
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1622290388", "1622290388", "S04M070_Main", "box_MissionLayer_v2_68.Loaded", "box_Get_Player_ID_51.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_29_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_146()
  l0 = self.box_CinematicPrep_29
  l1 = self.box_Mission_End_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|536318743", "536318743", "S04M070_Main", "box_CinematicPrep_29.PostOut", "box_Mission_End_146.End", l0, l1)
  l1:End()
end
function export:f_box_InteractionScriptController_43_EnableStateSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_19
  l0.Entity = "9223372072116240189"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1354872290", "1354872290", "S04M070_Main", "box_InteractionScriptController_43.EnableStateSet", "box_Interact_Gameplay_19.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_150_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_114()
  l0 = self.box_MultipleOR_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|994073684", "994073684", "S04M070_Main", "box_Ordered_Output_150.Out", "box_MultipleOR_114.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_150_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_148
  l0.SoundId = "soundbinary/1497291215.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1475989865", "1475989865", "S04M070_Main", "box_Ordered_Output_150.Out", "box_PlaySound_v2_148.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_96_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_96
  l1 = self.box_S04M070_CIN_ShowingOffJr_Main_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1499215931", "1499215931", "S04M070_Main", "box_HackableController_v2_96.ProfilingDisabled", "box_S04M070_CIN_ShowingOffJr_Main_38.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_119_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_71
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_HackableController_v2_119
  l1 = self.box_MissionCheckpointReach_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|270368016", "270368016", "S04M070_Main", "box_HackableController_v2_119.ProfilingEnabled", "box_MissionCheckpointReach_71.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_24_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_34
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347585"
  l0 = self.box_OnceOnly_v3_24
  l1 = self.box_PhoneCommunicationController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|394664749", "394664749", "S04M070_Main", "box_OnceOnly_v3_24.Out", "box_PhoneCommunicationController_34.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_122_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1730293839"
  l0.Activated = self.f_box_MissionMusicController_98_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_Timer_v2_122
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|853566052", "853566052", "S04M070_Main", "box_Timer_v2_122.TimeElapsed", "box_MissionMusicController_98.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_90_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_88()
  l0 = self.box_CinematicPrep_90
  l1 = self.box_MultipleOR_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1335443942", "1335443942", "S04M070_Main", "box_CinematicPrep_90.PostOut", "box_MultipleOR_88.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_139_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_141()
  l0 = self.box_MissionZone_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|929449292", "929449292", "S04M070_Main", "box_Simple_Node_139.Out", "box_MissionZone_141.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1895390421", "1895390421", "S04M070_Main", "box_Get_Player_ID_15.Out", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_InteractionScriptController_97_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_119
  l0.HackableEntity = "9223372047986193919"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1180647673", "1180647673", "S04M070_Main", "box_InteractionScriptController_97.Enabled", "box_HackableController_v2_119.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_PlayDialog_v2_95_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|136894565"
  l0.Out = self.f_box_Simple_Node_37_Out
  l0 = self.box_PlayDialog_v2_95
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|1844078971", "1844078971", "S04M070_Main", "box_PlayDialog_v2_95.Started", "box_Simple_Node_37.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Player_Proximity_Monitor_135()
  local l0
  l0 = self.box_Player_Proximity_Monitor_135
  l0.TargetEntity = "9223372047986383305"
  l0.Radius = 160
end
function export:OnEnter_box_MissionMusicController_27()
  local l0
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|58387092"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
end
function export:OnEnter_box_ForcePawnsVehicleStop_v2_61()
  local l0
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = "Soft"
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\S04M070.domino|@S04M070_Main|142338637"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_61_Stopped
  l0.ResetOut = self.f_box_ForcePawnsVehicleStop_v2_61_ResetOut
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_MissionZone_136()
  local l0
  l0 = self.box_MissionZone_136
  l0.MissionArea = "9223372047986383305"
  l0.MissionLayer = "S04M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MissionZone_141()
  local l0
  l0 = self.box_MissionZone_141
  l0.MissionArea = "9223372047986383305"
  l0.MissionLayer = "S04M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_LogicGate_v2_134()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_82()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_82
  l0.CheckNow = 1
end
function export:OnEnter_box_AI_Buddy_Monitor_113()
  local l0
  l0 = self.box_AI_Buddy_Monitor_113
  l0.BuddyNPC = self.Wrench
end
function export:OnEnter_box_S04_M070_SCR_Countdown_Main_46()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_Hack_Gameplay_31()
  local l0
  l0 = self.box_Hack_Gameplay_31
  l0.Entity = "9223372055214361305"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 0
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_TriggerMonitor_v2_5()
  local l0
  l0 = self.box_TriggerMonitor_v2_5
  l0.Trigger = "9223372073471818828"
end
function export:OnEnter_box_HackableController_v2_120()
  local l0
  l0 = self.box_HackableController_v2_120
  l0.HackableEntity = "9223372048476329022"
end
function export:OnEnter_box_HackableController_v2_76()
  local l0
  l0 = self.box_HackableController_v2_76
  l0.HackableEntity = "9223372048476329022"
end
function export:OnEnter_box_MultipleOR_114()
end
function export:OnEnter_box_VehicleMonitor_v3_52()
  local l0
  l0 = self.box_VehicleMonitor_v3_52
  l0.Vehicle = self.CurrentVehicle
  l0.NoMoveTime = 0.5
end
function export:OnEnter_box_MultipleOR_142()
end
function export:OnEnter_box_TutorialController_133()
  local l0
  l0 = self.box_TutorialController_133
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M070.EXTRA.Specific_DishMovement",
    item = "Description",
    id = "694087"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Hackable_Monitor_18()
  local l0
  l0 = self.box_Hackable_Monitor_18
  l0.HackableEntity = "9223372048052779651"
end
function export:OnEnter_box_MultipleOR_116()
end
function export:OnEnter_box_MultipleOR_88()
end
function export:OnEnter_box_Mission_End_146()
  local l0
  l0 = self.box_Mission_End_146
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S04M070_Main"
  l0.LmaLayer = "SF_06_Sutro_Tower_LMA"
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
