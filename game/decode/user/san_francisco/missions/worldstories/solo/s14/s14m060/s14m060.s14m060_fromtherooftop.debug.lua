export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/CameraContextController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/CraneController.lua")
  cbox:RegisterBox("domino/System/CraneMonitor.lua")
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/FelonySoundController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/LookAtTriggerMonitor.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RandomFloat.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_CallCopsFelony.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_GetCivilians_IDs.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_ScreenAndBinkManager.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/CameraSetDominoReference.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:RegisterBox("domino/System/WaitQualitiesLoaded.lua")
  cbox:RegisterBox("domino/System/WitnessSytemController_v2.lua")
  cbox:LoadResource("soundbinary/2832665886.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2012609525.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2040736871.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4209862543.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2875387979.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/721270724.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1883853094.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/407543336.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2729294870.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/848446457.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2118464269.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2439147412.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3951895310.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2995245855.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/798665175.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2196104692.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S14M060_FromTheRooftop"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop"
  self.PlayerEntity = nil
  self.Is_CheckPoint3 = 0
  self.IsZipLineStarted = 0
  self.Wrench = nil
  self.IsE3 = 0
  self.Is_CheckPoint_0_E3 = 0
  self.LivingRoomCivilians = {}
  self.DiningRoomCivilians = {}
  self.EscapeCar = nil
  self.WrenchPostLanding = nil
  self.KitchenCivilians = {}
  self.Zipline_Drone = nil
  self.SecurityGuards = {}
  self.Enemy01 = nil
  self.EnemyRead = nil
  self.Enemy02 = nil
  self.Enemy03 = nil
  self.Enemy04 = nil
  self.Enemy05 = nil
  self.Enemy06 = nil
  self.Enemy07 = nil
  self.Enemy08 = nil
  self.Enemy10 = nil
  self.Enemy09 = nil
  self.Enemy11 = nil
  self.Enemy12 = nil
  self.Agent_List = {}
  self.Wrench_OutroCar = nil
  self.Car_OutroCar = nil
  self.window_washer = {}
  self.MicrowaveGuy = nil
  self.AcidBathGuy = nil
  self.WrenchZiplineCheering = nil
  self.Is_THEATER = 0
  self.Is_BOOTH = 0
  self.Is_STAGE = 0
  self.Drone_Fly_Var = nil
  self.Drone_Fly_Zipline_Var = nil
  self.AgentX = nil
  self.Agents_to_Adopt = {}
  self.Is_ScriptedChopper = 0
  self.Location_1_TS_Man = nil
  self.Location_1_TS_Woman = nil
  self.SoundPoint_E3_Screen_FU_Display = "9223372051991368951"
  self.SoundPoint_E3_FakeDialog_Woman = "9223372051991368953"
  self.SoundPoint_E3_FakeDialog_Man = "9223372051991368955"
  self.LandingOnPenthouse_TriggerList = {}
  self.WomanPhoneReward = nil
  self.IsInCombat = 0
  self._9223372052434292655 = nil
  self.Screen_Min = 0
  self.Screen_Max = 0
  self.DusanHelico_Var = nil
  self.Is_DownloadStarted = 0
  self.Agent_To_Adopt_Wave2 = {}
  self.Is_PhotoObjectiveCompleted = 0
  self.Is_DownloadCompleted = 0
  self.TS_Stealth_Approach_Played = 0
  self.Thruss_Car = nil
  self.BedroomGuard02 = nil
  self.BedroomGuard01 = nil
  self.RooftopGuard02 = nil
  self.RooftopGuard01 = nil
  self.CarroomGuard_01 = nil
  self.CarroomGuard_02 = nil
  self.LobbyGuard_01 = nil
  self.TerrasseGuard_02 = nil
  self.TerrasseGuard_01 = nil
  self._9223372050956213032 = nil
  self.fake_car = nil
  self.StartedPenthouseInfiltration = 0
  self.Location_2_Woman = nil
  self.PlanOfAttackTS_Failsafe = {}
  self.manual_reinfo_01 = nil
  self.manual_reinfo_02 = nil
  self.Manual_Reinfo_list = {}
  self.Is_CheckPoint4 = 0
  self.IsSecondCraneRopeBroken = 0
  self.IsEscapeBeat = 0
  self.CombatAsBeenTriggered = 0
  self.IsFelonyTriggered = 0
  self.RegroupWrenchObjective = "9223372064407027960"
  self.Wrench_SFView_Loop = nil
  self.Crane_XPos = 0
  self.Crane_YPos = 0
  self.Crane_ZPos = 0
  self.box_Timer_v2_721 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_721
  l0._graph = self
  l0._name = "box_Timer_v2_721"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|3800997"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_721_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_589 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_589
  l0._graph = self
  l0._name = "box_SetBoolean_v2_589"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|4638671"
  l0.Out = self.f_box_SetBoolean_v2_589_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_589_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_589_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_589_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_589_SetFromBool
  self.box_Crane_Controller_271 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_271
  l0._graph = self
  l0._name = "box_Crane_Controller_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|22878281"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = self.f_box_Crane_Controller_271_CanMoveChanged
  self.box_Media_System_Custom_Broadcast_Monitor_506 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_506
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_506"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|36607397"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_506_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_506_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_EntityLoadingMonitor_4 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_4
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|43979513"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_4_AllLoaded
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|47769075"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_TriggerMonitor_v2_205 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_205
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|64241491"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_205_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_630 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_630
  l0._graph = self
  l0._name = "box_CinematicPrep_630"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|77031896"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_630_PostOut
  self.box_OnceOnly_v3_707 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_707
  l0._graph = self
  l0._name = "box_OnceOnly_v3_707"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|81512674"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_707_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_202 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_202
  l0._graph = self
  l0._name = "box_SetBoolean_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|83402588"
  l0.Out = self.f_box_SetBoolean_v2_202_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_202_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_202_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_202_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_202_SetFromBool
  self.box_CinematicPrep_259 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_259
  l0._graph = self
  l0._name = "box_CinematicPrep_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|85682824"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_259_PostOut
  self.box_SetBoolean_v2_286 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_286
  l0._graph = self
  l0._name = "box_SetBoolean_v2_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|91465294"
  l0.Out = self.f_box_SetBoolean_v2_286_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_286_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_286_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_286_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_286_SetFromBool
  self.box_HackableController_v2_260 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_260
  l0._graph = self
  l0._name = "box_HackableController_v2_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|92058808"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_260_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_LogicGate_v2_199 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_199
  l0._graph = self
  l0._name = "box_LogicGate_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|99626622"
  l0.Out = self.f_box_LogicGate_v2_199_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_199_Closed
  self.box_Timer_v2_565 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_565
  l0._graph = self
  l0._name = "box_Timer_v2_565"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|110236951"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_565_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_612 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_612
  l0._graph = self
  l0._name = "box_Timer_v2_612"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|113329526"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_612_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_127 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_127
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|113886073"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_127_TeleportDone
  self.box_TriggerMonitor_v2_118 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_118
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|127013499"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_118_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_118_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_744 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_744
  l0._graph = self
  l0._name = "box_Timer_v2_744"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|129191761"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_744_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_274 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_274
  l0._graph = self
  l0._name = "box_MultipleOR_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|150844105"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|156225609"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_40 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_40
  l0._graph = self
  l0._name = "box_OnceOnly_v3_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|161602144"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_40_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_611 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_611
  l0._graph = self
  l0._name = "box_Timer_v2_611"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|174115277"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_611_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Wait_Qualities_Loaded_725 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_725
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_725"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|176140647"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_725_Loaded
  self.box_CLOMonitor_677 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_677
  l0._graph = self
  l0._name = "box_CLOMonitor_677"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|190815583"
  l0.Enabled = self.f_box_CLOMonitor_677_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_677_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_677_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_677_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CameraContextController_329 = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_329
  l0._graph = self
  l0._name = "box_CameraContextController_329"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|194268460"
  l0.ContextStarted = self.f_box_CameraContextController_329_ContextStarted
  l0.ContextStopped = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_344 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_344
  l0._graph = self
  l0._name = "box_Multiple_AND_344"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|196054344"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_344_Out
  self.box_CLOMonitor_673 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_673
  l0._graph = self
  l0._name = "box_CLOMonitor_673"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|233155532"
  l0.Enabled = self.f_box_CLOMonitor_673_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_673_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_673_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_673_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Timer_v2_223 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_223
  l0._graph = self
  l0._name = "box_Timer_v2_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|235920751"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_223_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_320 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_320
  l0._graph = self
  l0._name = "box_MissionLayer_v2_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|242217538"
  l0.Loaded = self.f_box_MissionLayer_v2_320_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_284 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_284
  l0._graph = self
  l0._name = "box_SetBoolean_v2_284"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|253353409"
  l0.Out = self.f_box_SetBoolean_v2_284_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_284_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_284_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_284_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_284_SetFromBool
  self.box_SetBoolean_v2_155 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_155
  l0._graph = self
  l0._name = "box_SetBoolean_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|255033743"
  l0.Out = self.f_box_SetBoolean_v2_155_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_155_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_155_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_155_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_155_SetFromBool
  self.box_PlaySequence_v5_45 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_45
  l0._graph = self
  l0._name = "box_PlaySequence_v5_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|259523515"
  l0._DynamicAnchors = {
    EntityIn = {
      "ReferenceCamera"
    },
    SPOut = {"DedsecLogo"}
  }
  l0.Started = self.f_box_PlaySequence_v5_45_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_45_Finished
  l0.SPOut.DedsecLogo = self.f_box_PlaySequence_v5_45_SPOut__DedsecLogo_
  self.box_Timer_v2_631 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_631
  l0._graph = self
  l0._name = "box_Timer_v2_631"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|262667656"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_631_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Mission_End_25 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_25
  l0._graph = self
  l0._name = "box_Mission_End_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|264971817"
  self.box_PlaySound_v2_209 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_209
  l0._graph = self
  l0._name = "box_PlaySound_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|267049484"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_176 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_176
  l0._graph = self
  l0._name = "box_SetBoolean_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|279009966"
  l0.Out = self.f_box_SetBoolean_v2_176_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_176_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_176_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_176_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_176_SetFromBool
  self.box_Timer_v2_303 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_303
  l0._graph = self
  l0._name = "box_Timer_v2_303"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|280457683"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_303_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_191 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_191
  l0._graph = self
  l0._name = "box_OnceOnly_v3_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|281150388"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_191_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_53 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_53
  l0._graph = self
  l0._name = "box_SetBoolean_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|281567362"
  l0.Out = self.f_box_SetBoolean_v2_53_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_53_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_53_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_53_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_53_SetFromBool
  self.box_CLOController_32 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_32
  l0._graph = self
  l0._name = "box_CLOController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|284151745"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_32_OnUserInPlace
  self.box_MultipleOR_181 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_181
  l0._graph = self
  l0._name = "box_MultipleOR_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|302332971"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_181_Out
  self.box_PhoneCommunicationController_323 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_323
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|312994254"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LogicGate_v2_173 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_173
  l0._graph = self
  l0._name = "box_LogicGate_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|322827336"
  l0.Out = self.f_box_LogicGate_v2_173_Out
  l0.Opened = self.f_box_LogicGate_v2_173_Opened
  l0.Closed = DummyFunction
  self.box_SetBoolean_v2_283 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_283
  l0._graph = self
  l0._name = "box_SetBoolean_v2_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|326440941"
  l0.Out = self.f_box_SetBoolean_v2_283_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_283_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_283_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_283_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_283_SetFromBool
  self.box_Timer_v2_326 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_326
  l0._graph = self
  l0._name = "box_Timer_v2_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|329698532"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_326_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LMA_Layer_Controller_15 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_15
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|333042928"
  l0.Loaded = self.f_box_LMA_Layer_Controller_15_Loaded
  l0.Unloaded = DummyFunction
  self.box_TriggerMonitor_v2_732 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_732
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_732"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|340591476"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_732_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_295 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_295
  l0._graph = self
  l0._name = "box_Timer_v2_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|352427185"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_295_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_238 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_238
  l0._graph = self
  l0._name = "box_SetBoolean_v2_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|353976769"
  l0.Out = self.f_box_SetBoolean_v2_238_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_238_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_238_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_238_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_238_SetFromBool
  self.box_SetBoolean_v2_73 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_73
  l0._graph = self
  l0._name = "box_SetBoolean_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|354993734"
  l0.Out = self.f_box_SetBoolean_v2_73_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_73_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_73_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_73_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_73_SetFromBool
  self.box_SetBoolean_v2_247 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_247
  l0._graph = self
  l0._name = "box_SetBoolean_v2_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|367701002"
  l0.Out = self.f_box_SetBoolean_v2_247_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_247_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_247_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_247_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_247_SetFromBool
  self.box_S14M060_CallCopsFelony_72 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_CallCopsFelony.debug.lua")
  l0 = self.box_S14M060_CallCopsFelony_72
  l0._graph = self
  l0._name = "box_S14M060_CallCopsFelony_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|374154227"
  l0.Out_FirstWaveSpawned = self.f_box_S14M060_CallCopsFelony_72_Out_FirstWaveSpawned
  l0.Out_CarReadyToAdopt = self.f_box_S14M060_CallCopsFelony_72_Out_CarReadyToAdopt
  l0.Out_SecondWaveSpawned = self.f_box_S14M060_CallCopsFelony_72_Out_SecondWaveSpawned
  self.box_PlaySound_v2_299 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_299
  l0._graph = self
  l0._name = "box_PlaySound_v2_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|376797694"
  l0.Out = self.f_box_PlaySound_v2_299_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_743 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_743
  l0._graph = self
  l0._name = "box_OnceOnly_v3_743"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|379260643"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_743_Out
  l0.ResetOut = DummyFunction
  self.box_TriggerMonitor_v2_80 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_80
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|380236681"
  l0.Enabled = self.f_box_TriggerMonitor_v2_80_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_80_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_80_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v4_348 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_348
  l0._graph = self
  l0._name = "box_MapPointController_v4_348"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|381821167"
  l0.Shown = self.f_box_MapPointController_v4_348_Shown
  l0.Hidden = self.f_box_MapPointController_v4_348_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_TriggerMonitor_v2_665 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_665
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_665"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|389296429"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_665_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_603 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_603
  l0._graph = self
  l0._name = "box_Timer_v2_603"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|394465143"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_603_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_553 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_553
  l0._graph = self
  l0._name = "box_Timer_v2_553"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|399745900"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_553_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_306 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_306
  l0._graph = self
  l0._name = "box_PlaySound_v2_306"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|403372248"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_645 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_645
  l0._graph = self
  l0._name = "box_SetBoolean_v2_645"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|414837770"
  l0.Out = self.f_box_SetBoolean_v2_645_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_645_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_645_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_645_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_645_SetFromBool
  self.box_Set_Domino_Camera_Reference_719 = cbox:CreateBox("domino/System/CameraSetDominoReference.lua")
  l0 = self.box_Set_Domino_Camera_Reference_719
  l0._graph = self
  l0._name = "box_Set_Domino_Camera_Reference_719"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|427604104"
  l0.Out = self.f_box_Set_Domino_Camera_Reference_719_Out
  self.box_PlaySound_v2_311 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_311
  l0._graph = self
  l0._name = "box_PlaySound_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|429515152"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|433174104"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_MissionZone_64 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_64
  l0._graph = self
  l0._name = "box_MissionZone_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|433963223"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_64_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_405 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_405
  l0._graph = self
  l0._name = "box_PlaySound_v2_405"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|441168832"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_EntityLoadingMonitor_351 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_351
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_351"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|441730749"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_351_AllLoaded
  self.box_MultipleOR_156 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_156
  l0._graph = self
  l0._name = "box_MultipleOR_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|443046912"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_156_Out
  self.box_LookAtTriggerMonitor_Monitor_184 = cbox:CreateBox("domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_184
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|469600159"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_184_EnterFOV
  l0.LeaveFOV = DummyFunction
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|472025079"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_Timer_v2_600 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_600
  l0._graph = self
  l0._name = "box_Timer_v2_600"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|473338561"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_600_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOMonitor_676 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_676
  l0._graph = self
  l0._name = "box_CLOMonitor_676"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|477515655"
  l0.Enabled = self.f_box_CLOMonitor_676_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_676_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_676_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_676_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_PlaySound_v2_632 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_632
  l0._graph = self
  l0._name = "box_PlaySound_v2_632"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|483834509"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionCheckpointReach_162 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_162
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|491827833"
  l0.Out = self.f_box_MissionCheckpointReach_162_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_288 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_288
  l0._graph = self
  l0._name = "box_CLOController_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|493749049"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_288_OnUserInPlace
  self.box_OnceOnly_v3_185 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_185
  l0._graph = self
  l0._name = "box_OnceOnly_v3_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|496103849"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_185_Out
  l0.ResetOut = DummyFunction
  self.box_LMA_Layer_Controller_332 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_332
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_332"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|501341038"
  l0.Loaded = self.f_box_LMA_Layer_Controller_332_Loaded
  l0.Unloaded = DummyFunction
  self.box_PlaySequence_v5_49 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_49
  l0._graph = self
  l0._name = "box_PlaySequence_v5_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|526923489"
  l0.Started = self.f_box_PlaySequence_v5_49_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_49_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_49_Finished
  self.box_MultipleOR_165 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_165
  l0._graph = self
  l0._name = "box_MultipleOR_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|530451813"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_165_Out
  self.box_PlayerOnlyTriggerNoRCTip_318 = cbox:CreateBox("domino/Library/common/MissionSpecificIngredients.PlayerOnlyTriggerNoRCTip.debug.lua")
  l0 = self.box_PlayerOnlyTriggerNoRCTip_318
  l0._graph = self
  l0._name = "box_PlayerOnlyTriggerNoRCTip_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|531457207"
  l0.Enter = self.f_box_PlayerOnlyTriggerNoRCTip_318_Enter
  self.box_PlaySound_v2_292 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_292
  l0._graph = self
  l0._name = "box_PlaySound_v2_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|545754724"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_691 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_691
  l0._graph = self
  l0._name = "box_HackableController_v2_691"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|553390907"
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
  self.box_Timer_v2_297 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_297
  l0._graph = self
  l0._name = "box_Timer_v2_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|561718829"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_297_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_179 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_179
  l0._graph = self
  l0._name = "box_CLOController_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|563356616"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_179_OnUserInPlace
  self.box_Crane_Controller_347 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_347
  l0._graph = self
  l0._name = "box_Crane_Controller_347"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|594728572"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = DummyFunction
  self.box_EntityLoadingMonitor_70 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_70
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|597877399"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_70_AllLoaded
  self.box_Crane_Controller_277 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_277
  l0._graph = self
  l0._name = "box_Crane_Controller_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|605199413"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = self.f_box_Crane_Controller_277_CanMoveChanged
  self.box_CLOMonitor_679 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_679
  l0._graph = self
  l0._name = "box_CLOMonitor_679"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|629253433"
  l0.Enabled = self.f_box_CLOMonitor_679_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_679_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_679_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_679_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_ListWriter_183 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_183
  l0._graph = self
  l0._name = "box_ListWriter_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|648338230"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_183_Added
  l0.Removed = self.f_box_ListWriter_183_Removed
  l0.Out = self.f_box_ListWriter_183_Out
  self.box_S14M060_ScreenAndBinkManager_149 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_ScreenAndBinkManager.debug.lua")
  l0 = self.box_S14M060_ScreenAndBinkManager_149
  l0._graph = self
  l0._name = "box_S14M060_ScreenAndBinkManager_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|681411905"
  self.box_PlaySound_v2_556 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_556
  l0._graph = self
  l0._name = "box_PlaySound_v2_556"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|704637180"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_220 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_220
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|710405370"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_EntityLoadingMonitor_349 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_349
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_349"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|710652158"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_349_AllLoaded
  self.box_MultipleOR_125 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_125
  l0._graph = self
  l0._name = "box_MultipleOR_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|733093757"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_125_Out
  self.box_SetBoolean_v2_85 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_85
  l0._graph = self
  l0._name = "box_SetBoolean_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|749592683"
  l0.Out = self.f_box_SetBoolean_v2_85_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_85_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_85_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_85_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_85_SetFromBool
  self.box_SetBoolean_v2_239 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_239
  l0._graph = self
  l0._name = "box_SetBoolean_v2_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|761131808"
  l0.Out = self.f_box_SetBoolean_v2_239_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_239_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_239_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_239_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_239_SetFromBool
  self.box_Crane_Controller_197 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_197
  l0._graph = self
  l0._name = "box_Crane_Controller_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|771249613"
  l0.PlatformPositionSet = self.f_box_Crane_Controller_197_PlatformPositionSet
  l0.CanMoveChanged = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_151 = cbox:CreateBox("domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_151
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|776629588"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_151_EnterFOV
  l0.LeaveFOV = DummyFunction
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_EntityLoadingMonitor_97 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_97
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|778649797"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_EntityLoadingMonitor_97_Disabled
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_97_AllLoaded
  self.box_MultipleOR_333 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_333
  l0._graph = self
  l0._name = "box_MultipleOR_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|789920316"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_333_Out
  self.box_Timer_v2_608 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_608
  l0._graph = self
  l0._name = "box_Timer_v2_608"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|795241405"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_608_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_62 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_62
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|795694491"
  l0.Out = self.f_box_MissionCheckpointReach_62_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_257 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_257
  l0._graph = self
  l0._name = "box_Timer_v2_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|809244814"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_257_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AgentStateMonitor_V2_122 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_122
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|814897764"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = self.f_box_AgentStateMonitor_V2_122_AllInUnawareState
  l0.AwareState = DummyFunction
  l0.AllInAwareState = self.f_box_AgentStateMonitor_V2_122_AllInAwareState
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = self.f_box_AgentStateMonitor_V2_122_CombatState
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = DummyFunction
  l0.IsDistracted = DummyFunction
  self.box_MissionMessageController_v3_226 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_226
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|816816632"
  l0.Out = self.f_box_MissionMessageController_v3_226_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_48 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|827923111"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_48_OnUserInPlace
  self.box_Timer_v2_634 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_634
  l0._graph = self
  l0._name = "box_Timer_v2_634"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|828698988"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_634_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_692 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_692
  l0._graph = self
  l0._name = "box_HackableController_v2_692"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|840571989"
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
  self.box_Timer_v2_586 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_586
  l0._graph = self
  l0._name = "box_Timer_v2_586"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|841883921"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_586_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_63 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_63
  l0._graph = self
  l0._name = "box_MultipleOR_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|849153930"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_63_Out
  self.box_OnceOnly_v3_230 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_230
  l0._graph = self
  l0._name = "box_OnceOnly_v3_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|849616610"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_230_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_625 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_625
  l0._graph = self
  l0._name = "box_Timer_v2_625"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|853132693"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_625_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S14M060_GetCivilians_IDs_83 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M060/S14M060.S14M060_GetCivilians_IDs.debug.lua")
  l0 = self.box_S14M060_GetCivilians_IDs_83
  l0._graph = self
  l0._name = "box_S14M060_GetCivilians_IDs_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|862000130"
  l0.Out_AllCiviliansRegistered = self.f_box_S14M060_GetCivilians_IDs_83_Out_AllCiviliansRegistered
  self.box_SetBoolean_v2_248 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_248
  l0._graph = self
  l0._name = "box_SetBoolean_v2_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|863473026"
  l0.Out = self.f_box_SetBoolean_v2_248_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_248_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_248_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_248_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_248_SetFromBool
  self.box_MultipleOR_57 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_57
  l0._graph = self
  l0._name = "box_MultipleOR_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|894430812"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_57_Out
  self.box_MissionLayer_v2_321 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_321
  l0._graph = self
  l0._name = "box_MissionLayer_v2_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|896326901"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_321_Unloaded
  l0.Reseted = DummyFunction
  self.box_Perk_Controller_67 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_67
  l0._graph = self
  l0._name = "box_Perk_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|897435409"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_67_PerkReseted
  self.box_PlaySound_v2_735 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_735
  l0._graph = self
  l0._name = "box_PlaySound_v2_735"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|917186253"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_352 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_352
  l0._graph = self
  l0._name = "box_MultipleOR_352"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|917378561"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_352_Out
  self.box_MultipleOR_315 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_315
  l0._graph = self
  l0._name = "box_MultipleOR_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|920051726"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_315_Out
  self.box_PlaySequence_v5_5 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_5
  l0._graph = self
  l0._name = "box_PlaySequence_v5_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|930170776"
  l0._DynamicAnchors = {
    EntityIn = {
      "DusanHelico"
    },
    SPOut = {
      "ReleasePlayer"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.ReleasePlayer = self.f_box_PlaySequence_v5_5_SPOut__ReleasePlayer_
  self.box_MissionMessageController_v3_55 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_55
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|952973847"
  l0.Out = self.f_box_MissionMessageController_v3_55_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySequence_v5_195 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_195
  l0._graph = self
  l0._name = "box_PlaySequence_v5_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|970406691"
  l0._DynamicAnchors = {
    EntityIn = {"Wrench_Var"}
  }
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_PlaySequence_v5_195_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MapPointController_v4_76 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_76
  l0._graph = self
  l0._name = "box_MapPointController_v4_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|974023623"
  l0.Shown = self.f_box_MapPointController_v4_76_Shown
  l0.Hidden = self.f_box_MapPointController_v4_76_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_395 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_395
  l0._graph = self
  l0._name = "box_SetBoolean_v2_395"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|979015834"
  l0.Out = self.f_box_SetBoolean_v2_395_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_395_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_395_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_395_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_395_SetFromBool
  self.box_OnceOnly_v3_264 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_264
  l0._graph = self
  l0._name = "box_OnceOnly_v3_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|983307812"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_264_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_398 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_398
  l0._graph = self
  l0._name = "box_MultipleOR_398"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|992612533"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_398_Out
  self.box_PhoneCommunicationController_150 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_150
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|998453360"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_150_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CameraContextController_330 = cbox:CreateBox("domino/System/CameraContextController.lua")
  l0 = self.box_CameraContextController_330
  l0._graph = self
  l0._name = "box_CameraContextController_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1001367896"
  l0.ContextStarted = DummyFunction
  l0.ContextStopped = self.f_box_CameraContextController_330_ContextStopped
  l0.Out = DummyFunction
  self.box_MultipleOR_242 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_242
  l0._graph = self
  l0._name = "box_MultipleOR_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1013153015"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_242_Out
  self.box_SetBoolean_v2_396 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_396
  l0._graph = self
  l0._name = "box_SetBoolean_v2_396"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1024418287"
  l0.Out = self.f_box_SetBoolean_v2_396_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_396_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_396_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_396_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_396_SetFromBool
  self.box_Crane_Controller_316 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_316
  l0._graph = self
  l0._name = "box_Crane_Controller_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1036876942"
  l0.PlatformPositionSet = DummyFunction
  l0.CanMoveChanged = DummyFunction
  self.box_PlaySound_v2_296 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_296
  l0._graph = self
  l0._name = "box_PlaySound_v2_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1038404119"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_EntityLoadingMonitor_328 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_328
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1038498547"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_328_AllLoaded
  self.box_Timer_v2_304 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_304
  l0._graph = self
  l0._name = "box_Timer_v2_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1045739603"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_304_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Security_Camera_Monitor_562 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_562
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_562"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1047953502"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_562_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_562_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_PlaySound_v2_739 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_739
  l0._graph = self
  l0._name = "box_PlaySound_v2_739"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1051471221"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_189 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_189
  l0._graph = self
  l0._name = "box_MultipleOR_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1053865764"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_189_Out
  self.box_CinematicPrep_390 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_390
  l0._graph = self
  l0._name = "box_CinematicPrep_390"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1058829274"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_390_PostOut
  self.box_MultipleOR_158 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_158
  l0._graph = self
  l0._name = "box_MultipleOR_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1061746952"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_158_Out
  self.box_TriggerMonitor_v2_404 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_404
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_404"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1067374647"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_404_Disabled
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_404_Leave
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_143 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_143
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1068155693"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_143_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_285 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_285
  l0._graph = self
  l0._name = "box_MultipleOR_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1070559407"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_285_Out
  self.box_PlaySound_v2_234 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_234
  l0._graph = self
  l0._name = "box_PlaySound_v2_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1082348687"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_171 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_171
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1086206357"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_171_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_171_Leave
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_571 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_571
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_571"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1086948549"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_571_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_571_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Download_Gameplay_58 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_58
  l0._graph = self
  l0._name = "box_Download_Gameplay_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1091337404"
  l0.Started = self.f_box_Download_Gameplay_58_Started
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_58_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_CinematicPrep_13 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_13
  l0._graph = self
  l0._name = "box_CinematicPrep_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1093160593"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_13_PostOut
  self.box_Escape_Gameplay_33 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_33
  l0._graph = self
  l0._name = "box_Escape_Gameplay_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1094658154"
  l0.Started = self.f_box_Escape_Gameplay_33_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_33_Escaped
  l0.LeftArea = DummyFunction
  self.box_CLOMonitor_69 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_69
  l0._graph = self
  l0._name = "box_CLOMonitor_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1105864018"
  l0.Enabled = self.f_box_CLOMonitor_69_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_69_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_69_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_69_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_SetBoolean_v2_60 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_60
  l0._graph = self
  l0._name = "box_SetBoolean_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1109273602"
  l0.Out = self.f_box_SetBoolean_v2_60_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_60_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_60_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_60_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_60_SetFromBool
  self.box_TriggerMonitor_v2_331 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_331
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_331"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1111848269"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_331_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_658 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_658
  l0._graph = self
  l0._name = "box_OnceOnly_v3_658"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1143780660"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_658_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_729 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_729
  l0._graph = self
  l0._name = "box_SetBoolean_v2_729"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1163609687"
  l0.Out = self.f_box_SetBoolean_v2_729_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_729_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_729_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_729_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_729_SetFromBool
  self.box_OnceOnly_v3_208 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_208
  l0._graph = self
  l0._name = "box_OnceOnly_v3_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1166932051"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_208_Out
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_174 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_174
  l0._graph = self
  l0._name = "box_SetBoolean_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1173995760"
  l0.Out = self.f_box_SetBoolean_v2_174_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_174_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_174_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_174_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_174_SetFromBool
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1178057652"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SetBoolean_v2_10 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_10
  l0._graph = self
  l0._name = "box_SetBoolean_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1181454983"
  l0.Out = self.f_box_SetBoolean_v2_10_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_10_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_10_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_10_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_10_SetFromBool
  self.box_MultipleOR_246 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_246
  l0._graph = self
  l0._name = "box_MultipleOR_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1185205244"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_246_Out
  self.box_CinematicPrep_287 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_287
  l0._graph = self
  l0._name = "box_CinematicPrep_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1206795480"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_287_PostOut
  self.box_Perk_Controller_24 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_24
  l0._graph = self
  l0._name = "box_Perk_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1220760406"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_HackableController_v2_693 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_693
  l0._graph = self
  l0._name = "box_HackableController_v2_693"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1234048190"
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
  self.box_MultipleOR_241 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_241
  l0._graph = self
  l0._name = "box_MultipleOR_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1267898707"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_241_Out
  self.box_LMA_Layer_Controller_327 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_327
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1267926729"
  l0.Loaded = self.f_box_LMA_Layer_Controller_327_Loaded
  l0.Unloaded = DummyFunction
  self.box_PhoneCommunicationController_222 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_222
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1279119644"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_222_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_668 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_668
  l0._graph = self
  l0._name = "box_CLOController_668"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1305815655"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_SetBoolean_v2_240 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_240
  l0._graph = self
  l0._name = "box_SetBoolean_v2_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1310515519"
  l0.Out = self.f_box_SetBoolean_v2_240_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_240_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_240_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_240_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_240_SetFromBool
  self.box_Multiple_AND_75 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_75
  l0._graph = self
  l0._name = "box_Multiple_AND_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1315448617"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_75_Out
  self.box_Wait_Qualities_Loaded_728 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_728
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_728"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1321849998"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_728_Loaded
  self.box_Interact_Gameplay_56 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_56
  l0._graph = self
  l0._name = "box_Interact_Gameplay_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1341469585"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_56_Interacted
  self.box_PGTController_v2_14 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_14
  l0._graph = self
  l0._name = "box_PGTController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1343683582"
  l0.Started = self.f_box_PGTController_v2_14_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_14_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_160 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_160
  l0._graph = self
  l0._name = "box_MultipleOR_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1346500438"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_160_Out
  self.box_CLOController_290 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_290
  l0._graph = self
  l0._name = "box_CLOController_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1358080332"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_334 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_334
  l0._graph = self
  l0._name = "box_PlaySound_v2_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1368969287"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_334_Finished
  self.box_Timer_v2_628 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_628
  l0._graph = self
  l0._name = "box_Timer_v2_628"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1389465769"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_628_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_142 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_142
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1391625721"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_136 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_136
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1400541713"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_136_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_136_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_136_Leave
  l0.Use = DummyFunction
  self.box_SetBoolean_v2_198 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_198
  l0._graph = self
  l0._name = "box_SetBoolean_v2_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1408341472"
  l0.Out = self.f_box_SetBoolean_v2_198_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_198_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_198_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_198_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_198_SetFromBool
  self.box_TriggerMonitor_v2_169 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_169
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1416555344"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_169_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_169_Leave
  l0.Use = DummyFunction
  self.box_Multiple_AND_681 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_681
  l0._graph = self
  l0._name = "box_Multiple_AND_681"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1429773067"
  l0._DynamicAnchors = {Condition = 8}
  l0.Out = self.f_box_Multiple_AND_681_Out
  self.box_PhoneCommunicationController_147 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_147
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1429904941"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_607 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_607
  l0._graph = self
  l0._name = "box_Timer_v2_607"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1456802395"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_607_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_322 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_322
  l0._graph = self
  l0._name = "box_MissionLayer_v2_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1498461029"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_322_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1499597038"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_PhoneCommunicationController_152 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_152
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1503463683"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_110 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_110
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1505597676"
  l0.Out = self.f_box_MissionCheckpointReach_110_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_695 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_695
  l0._graph = self
  l0._name = "box_HackableController_v2_695"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1510191798"
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
  self.box_Timer_v2_627 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_627
  l0._graph = self
  l0._name = "box_Timer_v2_627"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1511076216"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_627_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_756 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_756
  l0._graph = self
  l0._name = "box_MultipleOR_756"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1515785803"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_756_Out
  self.box_Crane_Controller_26 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_26
  l0._graph = self
  l0._name = "box_Crane_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1517848129"
  l0.PlatformPositionSet = self.f_box_Crane_Controller_26_PlatformPositionSet
  l0.CanMoveChanged = DummyFunction
  self.box_MultipleOR_98 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_98
  l0._graph = self
  l0._name = "box_MultipleOR_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1518172719"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_98_Out
  self.box_MissionCheckpointReach_161 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_161
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1527411875"
  l0.Out = self.f_box_MissionCheckpointReach_161_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_FelonyTargetMonitor_211 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_211
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1540699394"
  l0.Started = self.f_box_FelonyTargetMonitor_211_Started
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = self.f_box_FelonyTargetMonitor_211_Chasing
  l0.Searching = self.f_box_FelonyTargetMonitor_211_Searching
  l0.Evaded = DummyFunction
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_PhoneCommunicationController_144 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_144
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1548238895"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionZone_11 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_11
  l0._graph = self
  l0._name = "box_MissionZone_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1549642109"
  l0.Enabled = self.f_box_MissionZone_11_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PGTController_v2_602 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_602
  l0._graph = self
  l0._name = "box_PGTController_v2_602"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1562240976"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionMessageController_v3_43 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_43
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1566793406"
  l0.Out = self.f_box_MissionMessageController_v3_43_Out
  l0.MessageCompleted = DummyFunction
  self.box_LogicGate_v2_219 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_219
  l0._graph = self
  l0._name = "box_LogicGate_v2_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1577808850"
  l0.Out = self.f_box_LogicGate_v2_219_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_219_Closed
  self.box_Crane_Controller_196 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_196
  l0._graph = self
  l0._name = "box_Crane_Controller_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1584659381"
  l0.PlatformPositionSet = self.f_box_Crane_Controller_196_PlatformPositionSet
  l0.CanMoveChanged = DummyFunction
  self.box_HackableController_v2_696 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_696
  l0._graph = self
  l0._name = "box_HackableController_v2_696"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1588653865"
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
  self.box_InteractionScriptMonitor_v2_154 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_154
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1622585933"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_154_Enabled
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_154_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_Timer_v2_555 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_555
  l0._graph = self
  l0._name = "box_Timer_v2_555"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1623074547"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_555_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_289 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_289
  l0._graph = self
  l0._name = "box_Hackable_Monitor_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1687338389"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_box_Hackable_Monitor_289_HackContextual
  l0.AllHacked = DummyFunction
  self.box_LookAtTriggerMonitor_Monitor_186 = cbox:CreateBox("domino/System/LookAtTriggerMonitor.lua")
  l0 = self.box_LookAtTriggerMonitor_Monitor_186
  l0._graph = self
  l0._name = "box_LookAtTriggerMonitor_Monitor_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1692361118"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterFOV = self.f_box_LookAtTriggerMonitor_Monitor_186_EnterFOV
  l0.LeaveFOV = DummyFunction
  l0.InsideFOV = DummyFunction
  l0.OutsideFOV = DummyFunction
  self.box_MissionMessageController_v3_218 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_218
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1694638585"
  l0.Out = self.f_box_MissionMessageController_v3_218_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_700 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_700
  l0._graph = self
  l0._name = "box_Timer_v2_700"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1695158218"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_700_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_29 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_29
  l0._graph = self
  l0._name = "box_PlaySequence_v5_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1695755447"
  l0._DynamicAnchors = {
    EntityOut = {
      "WrenchPostLanding"
    },
    SPOut = {
      "TheEnd",
      "OutroCar_CIN"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_29_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_29_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_29_Finished
  l0.SPOut.TheEnd = self.f_box_PlaySequence_v5_29_SPOut__TheEnd_
  l0.SPOut.OutroCar_CIN = self.f_box_PlaySequence_v5_29_SPOut__OutroCar_CIN_
  self.box_MissionCheckpointReach_210 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_210
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1698610989"
  l0.Out = self.f_box_MissionCheckpointReach_210_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_99 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1701955337"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_EntityLoadingMonitor_350 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_350
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_350"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1703649560"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_350_AllLoaded
  self.box_HackableController_v2_699 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_699
  l0._graph = self
  l0._name = "box_HackableController_v2_699"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1738770997"
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
  self.box_MissionLayer_v2_279 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_279
  l0._graph = self
  l0._name = "box_MissionLayer_v2_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1751899057"
  l0.Loaded = self.f_box_MissionLayer_v2_279_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_294 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_294
  l0._graph = self
  l0._name = "box_PlaySound_v2_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1760884126"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_182 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_182
  l0._graph = self
  l0._name = "box_MultipleOR_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1770170066"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_182_Out
  self.box_CLOMonitor_675 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_675
  l0._graph = self
  l0._name = "box_CLOMonitor_675"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1771554472"
  l0.Enabled = self.f_box_CLOMonitor_675_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_675_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_675_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_675_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CLOMonitor_314 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_314
  l0._graph = self
  l0._name = "box_CLOMonitor_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1776711456"
  l0.Enabled = self.f_box_CLOMonitor_314_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_314_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_314_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_314_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_HackableController_v2_694 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_694
  l0._graph = self
  l0._name = "box_HackableController_v2_694"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1782430585"
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
  self.box_MultipleOR_61 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1786954342"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1789026291"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MultipleOR_131 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_131
  l0._graph = self
  l0._name = "box_MultipleOR_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1799768600"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self.box_PlaySound_v2_272 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_272
  l0._graph = self
  l0._name = "box_PlaySound_v2_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1812565548"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_272_Started
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_281 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_281
  l0._graph = self
  l0._name = "box_SetBoolean_v2_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1812669139"
  l0.Out = self.f_box_SetBoolean_v2_281_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_281_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_281_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_281_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_281_SetFromBool
  self.box_PhoneCommunicationController_577 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_577
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_577"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1821573264"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_EntityLoadingMonitor_68 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_68
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1827498587"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_68_AllLoaded
  self.box_Timer_v2_576 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_576
  l0._graph = self
  l0._name = "box_Timer_v2_576"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1847371739"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_576_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_133 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_133
  l0._graph = self
  l0._name = "box_Timer_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1854340800"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_133_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_561 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_561
  l0._graph = self
  l0._name = "box_Timer_v2_561"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1860291920"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_561_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Crane_Controller_3 = cbox:CreateBox("domino/System/CraneController.lua")
  l0 = self.box_Crane_Controller_3
  l0._graph = self
  l0._name = "box_Crane_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1874545831"
  l0.PlatformPositionSet = self.f_box_Crane_Controller_3_PlatformPositionSet
  l0.CanMoveChanged = DummyFunction
  self.box_CraneMonitor_78 = cbox:CreateBox("domino/System/CraneMonitor.lua")
  l0 = self.box_CraneMonitor_78
  l0._graph = self
  l0._name = "box_CraneMonitor_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1887274958"
  l0.Out = self.f_box_CraneMonitor_78_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.RopeIntact = DummyFunction
  l0.RopeBroken = self.f_box_CraneMonitor_78_RopeBroken
  self.box_Timer_v2_573 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_573
  l0._graph = self
  l0._name = "box_Timer_v2_573"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1905764581"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_573_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_662 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_662
  l0._graph = self
  l0._name = "box_OnceOnly_v3_662"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1910634908"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_662_Out
  l0.ResetOut = DummyFunction
  self.box_HackableController_v2_698 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_698
  l0._graph = self
  l0._name = "box_HackableController_v2_698"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1911031985"
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
  self.box_Timer_v2_570 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_570
  l0._graph = self
  l0._name = "box_Timer_v2_570"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1912026061"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_570_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_74 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_74
  l0._graph = self
  l0._name = "box_OnceOnly_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1927737730"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_74_Out
  l0.ResetOut = DummyFunction
  self.box_EntityLoadingMonitor_71 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_71
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1953008076"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_71_AllLoaded
  self.box_CraneMonitor_166 = cbox:CreateBox("domino/System/CraneMonitor.lua")
  l0 = self.box_CraneMonitor_166
  l0._graph = self
  l0._name = "box_CraneMonitor_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1954796010"
  l0.Out = self.f_box_CraneMonitor_166_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.RopeIntact = DummyFunction
  l0.RopeBroken = self.f_box_CraneMonitor_166_RopeBroken
  self.box_Timer_v2_594 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_594
  l0._graph = self
  l0._name = "box_Timer_v2_594"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1957778543"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_594_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_740 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_740
  l0._graph = self
  l0._name = "box_PlaySound_v2_740"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1970106953"
  l0.Out = self.f_box_PlaySound_v2_740_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_582 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_582
  l0._graph = self
  l0._name = "box_Timer_v2_582"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1976387141"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_582_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Wait_Qualities_Loaded_727 = cbox:CreateBox("domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_727
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_727"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1992600218"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_727_Loaded
  self.box_PlaySound_v2_325 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_325
  l0._graph = self
  l0._name = "box_PlaySound_v2_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2007391732"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_309 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_309
  l0._graph = self
  l0._name = "box_PlaySound_v2_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2026142441"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_738 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_738
  l0._graph = self
  l0._name = "box_PlaySound_v2_738"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2030559018"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_126 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_126
  l0._graph = self
  l0._name = "box_CinematicPrep_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2040492544"
  l0.PreOut = self.f_box_CinematicPrep_126_PreOut
  l0.PostOut = DummyFunction
  self.box_TriggerMonitor_v2_225 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_225
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2066873317"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_225_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_644 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_644
  l0._graph = self
  l0._name = "box_Timer_v2_644"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2081084563"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_644_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_178 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_178
  l0._graph = self
  l0._name = "box_MissionController_v4_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2081094028"
  self.box_TriggerMonitor_v2_124 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_124
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2082808748"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_124_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_590 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_590
  l0._graph = self
  l0._name = "box_Timer_v2_590"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2097507721"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_590_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_148 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_148
  l0._graph = self
  l0._name = "box_GetNPC_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2099920241"
  l0.GotNPCList = self.f_box_GetNPC_148_GotNPCList
  self.box_CLOMonitor_678 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_678
  l0._graph = self
  l0._name = "box_CLOMonitor_678"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2102975904"
  l0.Enabled = self.f_box_CLOMonitor_678_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_678_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_678_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_678_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_Teleport_To_SpawnPoint_66 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_66
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2131332514"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_66_TeleportDone
  self.box_TriggerMonitor_v2_206 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_206
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2135786889"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_206_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_301 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_301
  l0._graph = self
  l0._name = "box_PlaySound_v2_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2146460296"
  l0.Out = self.f_box_PlaySound_v2_301_Out
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
function export:CheckPoint_0_E3STAGE()
  local l0
  l0 = self.box_Timer_v2_700
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|106532762", "106532762", "S14M060_FromTheRooftop", "CheckPoint_0_E3STAGE", "box_Timer_v2_700.Start", self, l0)
  l0:Start()
end
function export:In_BOOTH()
  local l0
  l0 = self.box_LMA_Layer_Controller_332
  l0.LMALayerName = "SF_08_Skyscraper_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|391028837", "391028837", "S14M060_FromTheRooftop", "In_BOOTH", "box_LMA_Layer_Controller_332.Load", self, l0)
  l0:Load()
end
function export:In_CheckPoint_0_E3BOOTH()
  local l0
  self:OnEnter_box_MultipleOR_242()
  l0 = self.box_MultipleOR_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|276989355", "276989355", "S14M060_FromTheRooftop", "In_CheckPoint_0_E3BOOTH", "box_MultipleOR_242.Input", self, l0)
  l0:Input(1)
end
function export:In_CheckPoint_0_E3THEATER()
  local l0
  self:OnEnter_box_MultipleOR_241()
  l0 = self.box_MultipleOR_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|785224432", "785224432", "S14M060_FromTheRooftop", "In_CheckPoint_0_E3THEATER", "box_MultipleOR_241.Input", self, l0)
  l0:Input(1)
end
function export:In_CheckPoint_3_E3BOOTH()
  local l0
  l0 = self.box_SetBoolean_v2_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|964595331", "964595331", "S14M060_FromTheRooftop", "In_CheckPoint_3_E3BOOTH", "box_SetBoolean_v2_247.True", self, l0)
  l0:True()
end
function export:In_CheckPoint_3_E3STAGE()
  local l0
  l0 = self.box_SetBoolean_v2_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2098610085", "2098610085", "S14M060_FromTheRooftop", "In_CheckPoint_3_E3STAGE", "box_SetBoolean_v2_248.True", self, l0)
  l0:True()
end
function export:In_CheckPoint_3_E3THEATER()
  local l0
  l0 = self.box_SetBoolean_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1439420579", "1439420579", "S14M060_FromTheRooftop", "In_CheckPoint_3_E3THEATER", "box_SetBoolean_v2_85.True", self, l0)
  l0:True()
end
function export:In_CheckPoint_4_E3BOOTH()
  local l0
  l0 = self.box_SetBoolean_v2_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|14402570", "14402570", "S14M060_FromTheRooftop", "In_CheckPoint_4_E3BOOTH", "box_SetBoolean_v2_286.True", self, l0)
  l0:True()
end
function export:In_CheckPoint_4_E3STAGE()
  local l0
  l0 = self.box_SetBoolean_v2_283
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|994942913", "994942913", "S14M060_FromTheRooftop", "In_CheckPoint_4_E3STAGE", "box_SetBoolean_v2_283.True", self, l0)
  l0:True()
end
function export:In_CheckPoint_4_E3THEATER()
  local l0
  l0 = self.box_SetBoolean_v2_284
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|761733114", "761733114", "S14M060_FromTheRooftop", "In_CheckPoint_4_E3THEATER", "box_SetBoolean_v2_284.True", self, l0)
  l0:True()
end
function export:In_CheckPt_3()
  local l0
  l0 = self.box_SetBoolean_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|716237816", "716237816", "S14M060_FromTheRooftop", "In_CheckPt_3", "box_SetBoolean_v2_10.True", self, l0)
  l0:True()
end
function export:In_CheckPt_4()
  local l0
  l0 = self.box_SetBoolean_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1748302311", "1748302311", "S14M060_FromTheRooftop", "In_CheckPt_4", "box_SetBoolean_v2_155.True", self, l0)
  l0:True()
end
function export:In_CheckPt_5()
  local l0
  self:OnEnter_box_Mission_End_25()
  l0 = self.box_Mission_End_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|192736971", "192736971", "S14M060_FromTheRooftop", "In_CheckPt_5", "box_Mission_End_25.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In_RealMissionNOT_E3()
  local l0
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.IN_KitchenCivilians
  l0._graph = self
  l0._name = "box_Set_List_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1163618450"
  l0.Out = self.f_box_Set_List_130_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|572119502", "572119502", "S14M060_FromTheRooftop", "In_RealMissionNOT_E3", "box_Set_List_130.FromList", self, l0)
  l0:FromList()
end
function export:In_STAGE()
  local l0
  l0 = self.box_LMA_Layer_Controller_327
  l0.LMALayerName = "SF_08_Skyscraper_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|4202281", "4202281", "S14M060_FromTheRooftop", "In_STAGE", "box_LMA_Layer_Controller_327.Load", self, l0)
  l0:Load()
end
function export:In_THEATER()
  local l0
  l0 = self.box_LMA_Layer_Controller_15
  l0.LMALayerName = "SF_08_Skyscraper_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|859821405", "859821405", "S14M060_FromTheRooftop", "In_THEATER", "box_LMA_Layer_Controller_15.Load", self, l0)
  l0:Load()
end
function export:f_box_Timer_v2_721_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_195()
  l0 = self.box_Timer_v2_721
  l1 = self.box_PlaySequence_v5_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1250858453", "1250858453", "S14M060_FromTheRooftop", "box_Timer_v2_721.TimeElapsed", "box_PlaySequence_v5_195.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_589_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_589
  self.Is_DownloadCompleted = l0.Target
end
function export:f_box_SetBoolean_v2_589_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_589
  self.Is_DownloadCompleted = l0.Target
end
function export:f_box_SetBoolean_v2_589_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_589
  self.Is_DownloadCompleted = l0.Target
end
function export:f_box_SetBoolean_v2_589_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_589
  self.Is_DownloadCompleted = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2077405026"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_270_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_270_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_270_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_270_Out_3
  l0 = self.box_SetBoolean_v2_589
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|282567814", "282567814", "S14M060_FromTheRooftop", "box_SetBoolean_v2_589.SetTrue", "box_Ordered_Output_270.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_589_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_589
  self.Is_DownloadCompleted = l0.Target
end
function export:f_box_Ordered_Output_659_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_396()
  l0 = self.box_SetBoolean_v2_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1849431938", "1849431938", "S14M060_FromTheRooftop", "box_Ordered_Output_659.Out", "box_SetBoolean_v2_396.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_659_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_658
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1635798774", "1635798774", "S14M060_FromTheRooftop", "box_Ordered_Output_659.Out", "box_OnceOnly_v3_658.In", clone, l0)
  l0:In(1)
end
function export:f_box_Crane_Controller_271_CanMoveChanged()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|546079782"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_50_Hidden
  l0 = self.box_Crane_Controller_271
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|485986709", "485986709", "S14M060_FromTheRooftop", "box_Crane_Controller_271.CanMoveChanged", "box_Show_Or_Hide_All_UI_50.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_430_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371193"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_431"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|593458622"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|872739475", "872739475", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_431.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371189"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_428"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1420595941"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|82363976", "82363976", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_428.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371191"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_432"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|995119843"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1450596000", "1450596000", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_432.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371209"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_449"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|409644057"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1541638900", "1541638900", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_449.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371211"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_422"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|546253272"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1975000793", "1975000793", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_422.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371207"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_433"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1324555664"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|893531785", "893531785", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_433.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371205"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_429"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1821750595"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1900412738", "1900412738", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_429.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371203"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_424"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|200602210"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1397260981", "1397260981", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_424.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371201"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_441"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1002103254"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|32981676", "32981676", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_441.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292693"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_426"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|285627914"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|336655192", "336655192", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_426.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052412704291"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_442"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1263335438"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|872378341", "872378341", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_442.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279731"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_448"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1746596811"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|867706652", "867706652", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_448.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279735"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_435"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1557415230"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|850442354", "850442354", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_435.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279733"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_423"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1061532861"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|155845365", "155845365", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_423.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279801"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_440"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1021880522"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|433709177", "433709177", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_440.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279799"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_436"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|882732531"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|166284575", "166284575", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_436.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279797"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_439"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|313338213"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1679393167", "1679393167", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_439.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091515"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_452"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2051812578"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1294702879", "1294702879", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_452.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292691"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|590920518"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1167630508", "1167630508", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_101.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_430_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091517"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1506937039"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1311298411", "1311298411", "S14M060_FromTheRooftop", "box_Ordered_Output_430.Out", "box_MaterialController_102.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Compare_Floats_v2_324_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_344()
  l0 = self.box_Multiple_AND_344
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1310645542", "1310645542", "S14M060_FromTheRooftop", "box_Compare_Floats_v2_324.A_eq_B", "box_Multiple_AND_344.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_168_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|608332857"
  l0.Out = self.f_box_Simple_Node_167_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1450281514", "1450281514", "S14M060_FromTheRooftop", "box_Ordered_Output_168.Out", "box_Simple_Node_167.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_168_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1281157375", "1281157375", "S14M060_FromTheRooftop", "box_Ordered_Output_168.Out", "box_MultipleOR_158.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Random_Float_615_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_612
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_612
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1399098802", "1399098802", "S14M060_FromTheRooftop", "box_Random_Float_615.Out", "box_Timer_v2_612.Start", clone, l0)
  l0:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_506_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_506()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_506
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|567101856", "567101856", "S14M060_FromTheRooftop", "box_Media_System_Custom_Broadcast_Monitor_506.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_506.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_506_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_505"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|734145125"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_505_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_505_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_505_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_505_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_505_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_505_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_505_Out_6
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_506
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|84127422", "84127422", "S14M060_FromTheRooftop", "box_Media_System_Custom_Broadcast_Monitor_506.Disabled", "box_Ordered_Output_505.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|757328843", "757328843", "S14M060_FromTheRooftop", "box_Ordered_Output_90.Out", "box_MultipleOR_165.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|624668047", "624668047", "S14M060_FromTheRooftop", "box_Ordered_Output_90.Out", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_EntityLoadingMonitor_4_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CraneMonitor_166
  l0.Entity = "9223372051084305624"
  l0 = self.box_EntityLoadingMonitor_4
  l1 = self.box_CraneMonitor_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1095810567", "1095810567", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_4.AllLoaded", "box_CraneMonitor_166.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_8
  l1 = self.box_S14M060_ScreenAndBinkManager_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1968252426", "1968252426", "S14M060_FromTheRooftop", "box_MultipleOR_8.Out", "box_S14M060_ScreenAndBinkManager_149.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_564_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_THEATER
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_755"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|556136878"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_755_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1287026704", "1287026704", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_564.A_is_False", "box_Compare_Boolean_v2_755.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_564_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_756()
  l0 = self.box_MultipleOR_756
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|857654550", "857654550", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_564.A_is_True", "box_MultipleOR_756.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_TriggerMonitor_v2_205_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_DownloadStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1300982067"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_188_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_TriggerMonitor_v2_205
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1112293726", "1112293726", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_205.Enter", "box_Compare_Boolean_v2_188.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_399_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292655"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|494979041"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|894117326", "894117326", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_187.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292657"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1699699495"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|956877470", "956877470", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_339.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292659"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1495625820"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1783074609", "1783074609", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_340.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279737"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1517686462"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|613605190", "613605190", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_341.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292653"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_394"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1354852921"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1395189800", "1395189800", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_394.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371255"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_412"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1854507666"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1893611242", "1893611242", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_412.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371257"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_388"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1089755739"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|866149943", "866149943", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_388.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371231"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_420"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|578299887"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|158382159", "158382159", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_420.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371227"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_413"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|398794058"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1164760119", "1164760119", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_413.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371229"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_416"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1501313841"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|646331020", "646331020", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_416.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371198"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_418"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|476511967"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2071865017", "2071865017", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_418.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371196"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_415"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1960185642"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2134625161", "2134625161", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_415.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292663"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_419"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|763519490"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|979337608", "979337608", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_419.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292661"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_414"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|163540233"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1222278573", "1222278573", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_414.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371233"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_417"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|158136822"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|914984685", "914984685", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_MaterialController_417.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_399_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_430"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|26838190"
  l0._DynamicAnchors = {Out = 20}
  l0.Out[0] = self.f_box_Ordered_Output_430_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_430_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_430_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_430_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_430_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_430_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_430_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_430_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_430_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_430_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_430_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_430_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_430_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_430_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_430_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_430_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_430_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_430_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_430_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_430_Out_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1037586678", "1037586678", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_Ordered_Output_430.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_399_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_445"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|816091260"
  l0._DynamicAnchors = {Out = 15}
  l0.Out[0] = self.f_box_Ordered_Output_445_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_445_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_445_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_445_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_445_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_445_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_445_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_445_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_445_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_445_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_445_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_445_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_445_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_445_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_445_Out_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2029782772", "2029782772", "S14M060_FromTheRooftop", "box_Ordered_Output_399.Out", "box_Ordered_Output_445.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_217_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1537050221", "1537050221", "S14M060_FromTheRooftop", "box_Ordered_Output_217.Out", "box_SetBoolean_v2_73.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_217_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_136()
  l0 = self.box_TriggerMonitor_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|196724387", "196724387", "S14M060_FromTheRooftop", "box_Ordered_Output_217.Out", "box_TriggerMonitor_v2_136.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_217_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_351
  l0.AutoDisable = 1
  l0.Entity = "9223372051084305624"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1359051764", "1359051764", "S14M060_FromTheRooftop", "box_Ordered_Output_217.Out", "box_EntityLoadingMonitor_351.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_630_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|680738276"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_153_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_630
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1678230294", "1678230294", "S14M060_FromTheRooftop", "box_CinematicPrep_630.PostOut", "box_Show_Or_Hide_All_UI_153.Show", l0, l1)
  l1:Show()
end
function export:f_box_OnceOnly_v3_707_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_704"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|792655476"
  l0.Out = self.f_box_Simple_Node_704_Out
  l0 = self.box_OnceOnly_v3_707
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1883924373", "1883924373", "S14M060_FromTheRooftop", "box_OnceOnly_v3_707.Out", "box_Simple_Node_704.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_202_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_202
  self.IsFelonyTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_202_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_202
  self.IsFelonyTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_202_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_202
  self.IsFelonyTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_202_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_202
  self.IsFelonyTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_202_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_202
  self.IsFelonyTriggered = l0.Target
end
function export:f_box_CinematicPrep_259_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|85724489"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_265_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_259
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1313874114", "1313874114", "S14M060_FromTheRooftop", "box_CinematicPrep_259.PostOut", "box_Show_Or_Hide_All_UI_265.Show", l0, l1)
  l1:Show()
end
function export:f_box_Show_Or_Hide_All_UI_265_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1045020190"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_237_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_237_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1293392305", "1293392305", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_265.Shown", "box_Ordered_Output_237.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_286_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_286
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_286_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_286
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_286_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_286
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_286_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_286
  self.Is_BOOTH = l0.Target
  self:OnEnter_box_MultipleOR_285()
  l1 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|210832188", "210832188", "S14M060_FromTheRooftop", "box_SetBoolean_v2_286.SetTrue", "box_MultipleOR_285.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_286_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_286
  self.Is_BOOTH = l0.Target
end
function export:f_box_HackableController_v2_260_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372053677910348"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_581"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1415146068"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_581_Hidden
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_260
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1387546426", "1387546426", "S14M060_FromTheRooftop", "box_HackableController_v2_260.ProfilingDisabled", "box_VisibilityController_v2_581.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_726_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_744
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1197832323", "1197832323", "S14M060_FromTheRooftop", "box_Ordered_Output_726.Out", "box_Timer_v2_744.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_726_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_662()
  l0 = self.box_OnceOnly_v3_662
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1953704233", "1953704233", "S14M060_FromTheRooftop", "box_Ordered_Output_726.Out", "box_OnceOnly_v3_662.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1475281887"
  l0.Out = self.f_box_Simple_Node_106_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1403314304", "1403314304", "S14M060_FromTheRooftop", "box_Ordered_Output_21.Out", "box_Simple_Node_106.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1740374682", "1740374682", "S14M060_FromTheRooftop", "box_Ordered_Output_21.Out", "box_SetBoolean_v2_176.True", clone, l0)
  l0:True()
end
function export:f_box_LogicGate_v2_199_Closed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_144
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372059629595444"
  l0 = self.box_LogicGate_v2_199
  l1 = self.box_PhoneCommunicationController_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|704479817", "704479817", "S14M060_FromTheRooftop", "box_LogicGate_v2_199.Closed", "box_PhoneCommunicationController_144.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LogicGate_v2_199_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_219()
  l0 = self.box_LogicGate_v2_199
  l1 = self.box_LogicGate_v2_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2073286350", "2073286350", "S14M060_FromTheRooftop", "box_LogicGate_v2_199.Out", "box_LogicGate_v2_219.Close", l0, l1)
  l1:Close()
end
function export:f_box_Compare_Boolean_v2_38_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_222
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372061197375648"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|782170233", "782170233", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_38.A_is_False", "box_PhoneCommunicationController_222.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_38_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_75()
  l0 = self.box_Multiple_AND_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1558389582", "1558389582", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_38.A_is_True", "box_Multiple_AND_75.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Random_Float_633_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_603
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_603
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1761503565", "1761503565", "S14M060_FromTheRooftop", "box_Random_Float_633.Out", "box_Timer_v2_603.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_565_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371198"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_516"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|672621340"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_565
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|17914482", "17914482", "S14M060_FromTheRooftop", "box_Timer_v2_565.TimeElapsed", "box_Dynamic_Media_Controller_516.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_MissionMusicController_357_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_404()
  l0 = self.box_TriggerMonitor_v2_404
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|383242070", "383242070", "S14M060_FromTheRooftop", "box_MissionMusicController_357.Activated", "box_TriggerMonitor_v2_404.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_612_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371205"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_528"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1531370320"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_612
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|160920481", "160920481", "S14M060_FromTheRooftop", "box_Timer_v2_612.TimeElapsed", "box_Dynamic_Media_Controller_528.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Teleport_To_SpawnPoint_127_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_127
  l1 = self.box_Wait_Qualities_Loaded_725
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|230680432", "230680432", "S14M060_FromTheRooftop", "box_Teleport_To_SpawnPoint_127.TeleportDone", "box_Wait_Qualities_Loaded_725.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_118_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_DownloadStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_401"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1904502055"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_401_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_TriggerMonitor_v2_118
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1924983920", "1924983920", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_118.Disabled", "box_Compare_Boolean_v2_401.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_118_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_118()
  l0 = self.box_TriggerMonitor_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2134068545", "2134068545", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_118.Enter", "box_TriggerMonitor_v2_118.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_744_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_743()
  l0 = self.box_Timer_v2_744
  l1 = self.box_OnceOnly_v3_743
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|827254564", "827254564", "S14M060_FromTheRooftop", "box_Timer_v2_744.TimeElapsed", "box_OnceOnly_v3_743.In", l0, l1)
  l1:In(1)
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_348()
  l0 = self.box_MissionMessageController_v3_23
  l1 = self.box_MapPointController_v4_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|649285032", "649285032", "S14M060_FromTheRooftop", "box_MissionMessageController_v3_23.Out", "box_MapPointController_v4_348.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_718_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Set_Domino_Camera_Reference_719
  l0.Slot = 0
  l0.ReferenceEntity = "9223372054449039678"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1701321012", "1701321012", "S14M060_FromTheRooftop", "box_VisibilityController_v2_718.Hidden", "box_Set_Domino_Camera_Reference_719.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_601_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|778530145", "778530145", "S14M060_FromTheRooftop", "box_Ordered_Output_601.Out", "box_Timer_v2_223.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_601_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_602
  l0.PGTMissionArea = "9223372047225690698"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|698626895", "698626895", "S14M060_FromTheRooftop", "box_Ordered_Output_601.Out", "box_PGTController_v2_602.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_Ordered_Output_601_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = nil
  l0.RCEntity = nil
  l0._graph = self
  l0._name = "box_Toy_Car_Controller_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|249693008"
  l0.CalledBack = self.f_box_Toy_Car_Controller_19_CalledBack
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|111404972", "111404972", "S14M060_FromTheRooftop", "box_Ordered_Output_601.Out", "box_Toy_Car_Controller_19.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Ordered_Output_601_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1840230032"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_46_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|594379406", "594379406", "S14M060_FromTheRooftop", "box_Ordered_Output_601.Out", "box_Ordered_Output_46.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_55
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14E3.S14M060.Objectives.Objective055",
    item = "Objective",
    id = "608402"
  }
  l0 = self.box_OnceOnly_v3_40
  l1 = self.box_MissionMessageController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1199251332", "1199251332", "S14M060_FromTheRooftop", "box_OnceOnly_v3_40.Out", "box_MissionMessageController_v3_55.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Timer_v2_611_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052412704291"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_531"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|697313766"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_611
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1277360922", "1277360922", "S14M060_FromTheRooftop", "box_Timer_v2_611.TimeElapsed", "box_Dynamic_Media_Controller_531.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Wait_Qualities_Loaded_725_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_721
  l0.Seconds = 3
  l0 = self.box_Wait_Qualities_Loaded_725
  l1 = self.box_Timer_v2_721
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|494901886", "494901886", "S14M060_FromTheRooftop", "box_Wait_Qualities_Loaded_725.Loaded", "box_Timer_v2_721.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_667_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|951858608"
  l0.Out = self.f_box_Simple_Node_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1965327501", "1965327501", "S14M060_FromTheRooftop", "box_Ordered_Output_667.Out", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_667_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_665()
  l0 = self.box_TriggerMonitor_v2_665
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|942592504", "942592504", "S14M060_FromTheRooftop", "box_Ordered_Output_667.Out", "box_TriggerMonitor_v2_665.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_682_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1881110588", "1881110588", "S14M060_FromTheRooftop", "box_Simple_Node_682.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_733_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_118()
  l0 = self.box_TriggerMonitor_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|906540600", "906540600", "S14M060_FromTheRooftop", "box_Ordered_Output_733.Out", "box_TriggerMonitor_v2_118.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_733_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_732
  l0.Trigger = "9223372052593259318"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1426980677", "1426980677", "S14M060_FromTheRooftop", "box_Ordered_Output_733.Out", "box_TriggerMonitor_v2_732.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOMonitor_677_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_684"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|984159750"
  l0.Out = self.f_box_Simple_Node_684_Out
  l0 = self.box_CLOMonitor_677
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1660438618", "1660438618", "S14M060_FromTheRooftop", "box_CLOMonitor_677.Enabled", "box_Simple_Node_684.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_677_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_677
  self.LobbyGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_677_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_677
  self.LobbyGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_677_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_677
  self.LobbyGuard_01 = l0.UserID
  l0 = self.box_HackableController_v2_695
  l0.HackableEntity = self.LobbyGuard_01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale03",
    item = "",
    id = "4294988663"
  }
  l0 = self.box_CLOMonitor_677
  l1 = self.box_HackableController_v2_695
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|211295167", "211295167", "S14M060_FromTheRooftop", "box_CLOMonitor_677.OnUserInPlace", "box_HackableController_v2_695.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_CameraContextController_329_ContextStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_45
  l0.SceneEntity = "9223372048671901461"
  l0.SequenceFile = "sequences/san_francisco/E3_2016/E3_EndRoofTopMarcus_CIN/e3_endrooftopmarcus_cin.seq"
  l0.EntityIn.ReferenceCamera = "9223372054449039678"
  l0 = self.box_CameraContextController_329
  l1 = self.box_PlaySequence_v5_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2102743641", "2102743641", "S14M060_FromTheRooftop", "box_CameraContextController_329.ContextStarted", "box_PlaySequence_v5_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_344_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_350
  l0.AutoDisable = 1
  l0.Entity = "9223372051084305624"
  l0 = self.box_Multiple_AND_344
  l1 = self.box_EntityLoadingMonitor_350
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1421070493", "1421070493", "S14M060_FromTheRooftop", "box_Multiple_AND_344.Out", "box_EntityLoadingMonitor_350.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_InteractionScriptController_192_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_260
  l0.HackableEntity = "9223372046811303584"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|832947063", "832947063", "S14M060_FromTheRooftop", "box_InteractionScriptController_192.Disabled", "box_HackableController_v2_260.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_VisibilityController_v2_580_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_571
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372054453149238"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1851846408", "1851846408", "S14M060_FromTheRooftop", "box_VisibilityController_v2_580.Shown", "box_PhoneCommunicationController_571.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_CLOMonitor_673_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_689"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1354393728"
  l0.Out = self.f_box_Simple_Node_689_Out
  l0 = self.box_CLOMonitor_673
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1611265440", "1611265440", "S14M060_FromTheRooftop", "box_CLOMonitor_673.Enabled", "box_Simple_Node_689.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_673_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_673
  self.BedroomGuard01 = l0.UserID
end
function export:f_box_CLOMonitor_673_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_673
  self.BedroomGuard01 = l0.UserID
end
function export:f_box_CLOMonitor_673_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_673
  self.BedroomGuard01 = l0.UserID
  l0 = self.box_HackableController_v2_699
  l0.HackableEntity = self.BedroomGuard01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale06",
    item = "",
    id = "4294988667"
  }
  l0 = self.box_CLOMonitor_673
  l1 = self.box_HackableController_v2_699
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1775597982", "1775597982", "S14M060_FromTheRooftop", "box_CLOMonitor_673.OnUserInPlace", "box_HackableController_v2_699.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Simple_Node_86_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|734818696"
  l0.Out = self.f_box_Simple_Node_92_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1361028840", "1361028840", "S14M060_FromTheRooftop", "box_Simple_Node_86.Out", "box_Simple_Node_92.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_223_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_220
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372061197375647"
  l0 = self.box_Timer_v2_223
  l1 = self.box_PhoneCommunicationController_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|271899143", "271899143", "S14M060_FromTheRooftop", "box_Timer_v2_223.TimeElapsed", "box_PhoneCommunicationController_220.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_320_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_127
  l0.SpawnPoint = "9223372047969945881"
  l0 = self.box_MissionLayer_v2_320
  l1 = self.box_Teleport_To_SpawnPoint_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1883453206", "1883453206", "S14M060_FromTheRooftop", "box_MissionLayer_v2_320.Loaded", "box_Teleport_To_SpawnPoint_127.In", l0, l1)
  l1:In()
end
function export:f_box_Toy_Car_Controller_19_CalledBack()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1596168489"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1386565683", "1386565683", "S14M060_FromTheRooftop", "box_Toy_Car_Controller_19.CalledBack", "box_Flying_Drone_Controller_18.CallBack", clone, l0)
  l0:CallBack()
end
function export:f_box_Ordered_Output_736_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|509589651", "509589651", "S14M060_FromTheRooftop", "box_Ordered_Output_736.Out", "box_Perk_Controller_67.ResetPerks", clone, l0)
  l0:ResetPerks()
end
function export:f_box_Ordered_Output_736_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_735
  l0.SoundId = "soundbinary/2729294870.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|576183636", "576183636", "S14M060_FromTheRooftop", "box_Ordered_Output_736.Out", "box_PlaySound_v2_735.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_736_Out_2()
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
  l0._name = "box_MissionMusicController_358"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|738820453"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|126092719", "126092719", "S14M060_FromTheRooftop", "box_Ordered_Output_736.Out", "box_MissionMusicController_358.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Show_Or_Hide_All_UI_34_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372054449039678"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_718"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|158415913"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_718_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1177917486", "1177917486", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_34.Hidden", "box_VisibilityController_v2_718.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetBoolean_v2_284_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_284_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Is_THEATER = l0.Target
  self:OnEnter_box_MultipleOR_285()
  l1 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1075421541", "1075421541", "S14M060_FromTheRooftop", "box_SetBoolean_v2_284.SetTrue", "box_MultipleOR_285.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_284_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_284
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_155_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_155
  self.Is_CheckPoint4 = l0.Target
end
function export:f_box_SetBoolean_v2_155_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_155
  self.Is_CheckPoint4 = l0.Target
end
function export:f_box_SetBoolean_v2_155_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_155
  self.Is_CheckPoint4 = l0.Target
end
function export:f_box_SetBoolean_v2_155_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_155
  self.Is_CheckPoint4 = l0.Target
  self:OnEnter_box_MultipleOR_156()
  l1 = self.box_MultipleOR_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|75376649", "75376649", "S14M060_FromTheRooftop", "box_SetBoolean_v2_155.SetTrue", "box_MultipleOR_156.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_155_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_155
  self.Is_CheckPoint4 = l0.Target
end
function export:f_box_PlaySequence_v5_45_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|385404974"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0 = self.box_PlaySequence_v5_45
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|981343145", "981343145", "S14M060_FromTheRooftop", "box_PlaySequence_v5_45.Finished", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_45_SPOut__DedsecLogo_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052897006598"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|756188033"
  l0.Enabled = self.f_box_LightController_342_Enabled
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_45
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2092908289", "2092908289", "S14M060_FromTheRooftop", "box_PlaySequence_v5_45.SPOut", "box_LightController_342.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySequence_v5_45_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_601"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|159501384"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_601_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_601_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_601_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_601_Out_3
  l0 = self.box_PlaySequence_v5_45
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1735419674", "1735419674", "S14M060_FromTheRooftop", "box_PlaySequence_v5_45.Started", "box_Ordered_Output_601.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_194_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1080792005"
  l0.Out = self.f_box_Simple_Node_180_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1392525794", "1392525794", "S14M060_FromTheRooftop", "box_Ordered_Output_194.Out", "box_Simple_Node_180.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_194_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v4_76()
  l0 = self.box_MapPointController_v4_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|672762415", "672762415", "S14M060_FromTheRooftop", "box_Ordered_Output_194.Out", "box_MapPointController_v4_76.Show", clone, l0)
  l0:Show()
end
function export:f_box_Timer_v2_631_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_632
  l0.SoundId = "soundbinary/2875387979.bnk"
  l0 = self.box_Timer_v2_631
  l1 = self.box_PlaySound_v2_632
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1546960043", "1546960043", "S14M060_FromTheRooftop", "box_Timer_v2_631.TimeElapsed", "box_PlaySound_v2_632.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_176_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_176
  self.IsEscapeBeat = l0.Target
end
function export:f_box_SetBoolean_v2_176_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_176
  self.IsEscapeBeat = l0.Target
end
function export:f_box_SetBoolean_v2_176_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_176
  self.IsEscapeBeat = l0.Target
end
function export:f_box_SetBoolean_v2_176_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_176
  self.IsEscapeBeat = l0.Target
  self:OnEnter_box_Escape_Gameplay_33()
  l1 = self.box_Escape_Gameplay_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|736979560", "736979560", "S14M060_FromTheRooftop", "box_SetBoolean_v2_176.SetTrue", "box_Escape_Gameplay_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_176_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_176
  self.IsEscapeBeat = l0.Target
end
function export:f_box_Timer_v2_303_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_402"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1590692244"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_402_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_402_Out_1
  l0 = self.box_Timer_v2_303
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|25566940", "25566940", "S14M060_FromTheRooftop", "box_Timer_v2_303.TimeElapsed", "box_Ordered_Output_402.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_191_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_191
  l1 = self.box_SetBoolean_v2_198
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1800715757", "1800715757", "S14M060_FromTheRooftop", "box_OnceOnly_v3_191.Out", "box_SetBoolean_v2_198.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_53_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_53_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IsE3 = l0.Target
  l1 = self.box_MultipleOR_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|722481310", "722481310", "S14M060_FromTheRooftop", "box_SetBoolean_v2_53.SetTrue", "box_MultipleOR_131.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_53_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_53
  self.IsE3 = l0.Target
end
function export:f_box_CLOController_32_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_32
  self.WrenchZiplineCheering = l0.UserID
end
function export:f_box_Simple_Node_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1647864991"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_117_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_117_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1288788000", "1288788000", "S14M060_FromTheRooftop", "box_Simple_Node_111.Out", "box_Ordered_Output_117.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_193_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_56
  l0.Entity = "9223372051777342069"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1442602579", "1442602579", "S14M060_FromTheRooftop", "box_InteractionScriptController_193.Enabled", "box_Interact_Gameplay_56.Start", clone, l0)
  l0:Start()
end
function export:f_box_Random_Float_595_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_594
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_594
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1221824717", "1221824717", "S14M060_FromTheRooftop", "box_Random_Float_595.Out", "box_Timer_v2_594.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_181_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_178
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective090",
    item = "Objective",
    id = "684024"
  }
  l0 = self.box_MultipleOR_181
  l1 = self.box_MissionController_v4_178
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|420847463", "420847463", "S14M060_FromTheRooftop", "box_MultipleOR_181.Out", "box_MissionController_v4_178.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Ordered_Output_706_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_321
  l0.LayerName = "S14M060_SFView_CIN"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|515634937", "515634937", "S14M060_FromTheRooftop", "box_Ordered_Output_706.Out", "box_MissionLayer_v2_321.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_706_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_707()
  l0 = self.box_OnceOnly_v3_707
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1511230108", "1511230108", "S14M060_FromTheRooftop", "box_Ordered_Output_706.Out", "box_OnceOnly_v3_707.In", clone, l0)
  l0:In(1)
end
function export:f_box_LogicGate_v2_173_Opened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_182()
  l0 = self.box_LogicGate_v2_173
  l1 = self.box_MultipleOR_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|954980034", "954980034", "S14M060_FromTheRooftop", "box_LogicGate_v2_173.Opened", "box_MultipleOR_182.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_173_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_182()
  l0 = self.box_LogicGate_v2_173
  l1 = self.box_MultipleOR_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|936832419", "936832419", "S14M060_FromTheRooftop", "box_LogicGate_v2_173.Out", "box_MultipleOR_182.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_283_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_283_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_283_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_283_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Is_STAGE = l0.Target
  self:OnEnter_box_MultipleOR_285()
  l1 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|531915762", "531915762", "S14M060_FromTheRooftop", "box_SetBoolean_v2_283.SetTrue", "box_MultipleOR_285.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_283_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_283
  self.Is_STAGE = l0.Target
end
function export:f_box_Timer_v2_326_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_325
  l0.SoundId = "soundbinary/4209862543.bnk"
  l0 = self.box_Timer_v2_326
  l1 = self.box_PlaySound_v2_325
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|924802378", "924802378", "S14M060_FromTheRooftop", "box_Timer_v2_326.TimeElapsed", "box_PlaySound_v2_325.Play", l0, l1)
  l1:Play()
end
function export:f_box_LMA_Layer_Controller_15_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_241()
  l0 = self.box_LMA_Layer_Controller_15
  l1 = self.box_MultipleOR_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1156582338", "1156582338", "S14M060_FromTheRooftop", "box_LMA_Layer_Controller_15.Loaded", "box_MultipleOR_241.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_732_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_732
  l1 = self.box_SetBoolean_v2_729
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|238143655", "238143655", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_732.Enter", "box_SetBoolean_v2_729.True", l0, l1)
  l1:True()
end
function export:f_box_Timer_v2_295_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_292
  l0.SoundId = "soundbinary/2995245855.bnk"
  l0 = self.box_Timer_v2_295
  l1 = self.box_PlaySound_v2_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|745068733", "745068733", "S14M060_FromTheRooftop", "box_Timer_v2_295.TimeElapsed", "box_PlaySound_v2_292.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_238_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_238
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_238_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_238
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_238_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_238
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_238_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_238
  self.Is_THEATER = l0.Target
  l0 = self.box_MissionCheckpointReach_62
  l0.Checkpoint = "CheckPoint_0_E3THEATER"
  l0 = self.box_SetBoolean_v2_238
  l1 = self.box_MissionCheckpointReach_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|456059634", "456059634", "S14M060_FromTheRooftop", "box_SetBoolean_v2_238.SetTrue", "box_MissionCheckpointReach_62.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_238_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_238
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_73_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.IsZipLineStarted = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.IsZipLineStarted = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.IsZipLineStarted = l0.Target
end
function export:f_box_SetBoolean_v2_73_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.IsZipLineStarted = l0.Target
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046811303584"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|565535063"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Trigger_Controller_28_Disabled
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_SetBoolean_v2_73
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|46117866", "46117866", "S14M060_FromTheRooftop", "box_SetBoolean_v2_73.SetTrue", "box_Trigger_Controller_28.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_SetBoolean_v2_73_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_73
  self.IsZipLineStarted = l0.Target
end
function export:f_box_SetBoolean_v2_247_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_247
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_247_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_247
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_247_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_247
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_247_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_247
  self.Is_BOOTH = l0.Target
  self:OnEnter_box_MultipleOR_246()
  l1 = self.box_MultipleOR_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2025584249", "2025584249", "S14M060_FromTheRooftop", "box_SetBoolean_v2_247.SetTrue", "box_MultipleOR_246.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_247_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_247
  self.Is_BOOTH = l0.Target
end
function export:f_box_S14M060_CallCopsFelony_72_Out_CarReadyToAdopt()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M060_CallCopsFelony_72
  self.Agents_to_Adopt = l0.AgentListWave1_OUT
  self.Agent_To_Adopt_Wave2 = l0.AgentListWave2_OUT
  l1 = self.box_MultipleOR_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1991568390", "1991568390", "S14M060_FromTheRooftop", "box_S14M060_CallCopsFelony_72.Out_CarReadyToAdopt", "box_MultipleOR_274.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_S14M060_CallCopsFelony_72_Out_FirstWaveSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M060_CallCopsFelony_72
  self.Agents_to_Adopt = l0.AgentListWave1_OUT
  self.Agent_To_Adopt_Wave2 = l0.AgentListWave2_OUT
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.Agents_to_Adopt
  l0._graph = self
  l0._name = "box_Set_List_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1142391561"
  l0.Out = self.f_box_Set_List_89_Out
  l0 = self.box_S14M060_CallCopsFelony_72
  l1 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2136201782", "2136201782", "S14M060_FromTheRooftop", "box_S14M060_CallCopsFelony_72.Out_FirstWaveSpawned", "box_Set_List_89.FromList", l0, l1)
  l1:FromList()
end
function export:f_box_S14M060_CallCopsFelony_72_Out_SecondWaveSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M060_CallCopsFelony_72
  self.Agents_to_Adopt = l0.AgentListWave1_OUT
  self.Agent_To_Adopt_Wave2 = l0.AgentListWave2_OUT
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = self.Agent_To_Adopt_Wave2
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_598"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1652403808"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_598_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_S14M060_CallCopsFelony_72
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|873054388", "873054388", "S14M060_FromTheRooftop", "box_S14M060_CallCopsFelony_72.Out_SecondWaveSpawned", "box_FelonyTargetController_598.AddScripted", l0, l1)
  l1:AddScripted()
end
function export:f_box_PlaySound_v2_299_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_311
  l0.SoundId = "soundbinary/3951895310.bnk"
  l0 = self.box_PlaySound_v2_299
  l1 = self.box_PlaySound_v2_311
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|968265447", "968265447", "S14M060_FromTheRooftop", "box_PlaySound_v2_299.Out", "box_PlaySound_v2_311.Play", l0, l1)
  l1:Play()
end
function export:f_box_OnceOnly_v3_743_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2068960250"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_307_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_307_Out_1
  l0 = self.box_OnceOnly_v3_743
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1602282767", "1602282767", "S14M060_FromTheRooftop", "box_OnceOnly_v3_743.Out", "box_Ordered_Output_307.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_80_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = nil
  l0.RCEntity = nil
  l0.CanExit = nil
  l0._graph = self
  l0._name = "box_RemoteControlledVehicleController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2048495190"
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = self.f_box_RemoteControlledVehicleController_135_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  l0 = self.box_TriggerMonitor_v2_80
  l1 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1589074752", "1589074752", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_80.Disabled", "box_RemoteControlledVehicleController_135.ForceUserOutOfRC", l0, l1)
  l1:ForceUserOutOfRC()
end
function export:f_box_TriggerMonitor_v2_80_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1396946858"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0 = self.box_TriggerMonitor_v2_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1829226508", "1829226508", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_80.Enabled", "box_Ordered_Output_91.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_80_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_76()
  l0 = self.box_TriggerMonitor_v2_80
  l1 = self.box_MapPointController_v4_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1094544078", "1094544078", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_80.Enter", "box_MapPointController_v4_76.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Simple_Node_626_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = nil
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1312823195"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_262_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1665181917", "1665181917", "S14M060_FromTheRooftop", "box_Simple_Node_626.Out", "box_FelonySoundController_262.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v4_348_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_318()
  l0 = self.box_MapPointController_v4_348
  l1 = self.box_PlayerOnlyTriggerNoRCTip_318
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1230082095", "1230082095", "S14M060_FromTheRooftop", "box_MapPointController_v4_348.Hidden", "box_PlayerOnlyTriggerNoRCTip_318.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_348_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlayerOnlyTriggerNoRCTip_318()
  l0 = self.box_MapPointController_v4_348
  l1 = self.box_PlayerOnlyTriggerNoRCTip_318
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|953802971", "953802971", "S14M060_FromTheRooftop", "box_MapPointController_v4_348.Shown", "box_PlayerOnlyTriggerNoRCTip_318.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CameraContextController_330
  l0.BlendOut = "CameraBlendListDB.9223372048779319827"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|146429758", "146429758", "S14M060_FromTheRooftop", "box_Ordered_Output_93.Out", "box_CameraContextController_330.StopContext", clone, l0)
  l0:StopContext()
end
function export:f_box_Ordered_Output_93_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1181016193"
  l0.Out = self.f_box_Simple_Node_82_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1654106749", "1654106749", "S14M060_FromTheRooftop", "box_Ordered_Output_93.Out", "box_Simple_Node_82.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_665_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_669"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|457423180"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_669_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_669_Out_1
  l0 = self.box_TriggerMonitor_v2_665
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|914420280", "914420280", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_665.Enter", "box_Ordered_Output_669.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_603_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371193"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_521"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|189236238"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_603
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1993021428", "1993021428", "S14M060_FromTheRooftop", "box_Timer_v2_603.TimeElapsed", "box_Dynamic_Media_Controller_521.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Timer_v2_553_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371240"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_540"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|703100463"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_553
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1625019359", "1625019359", "S14M060_FromTheRooftop", "box_Timer_v2_553.TimeElapsed", "box_Dynamic_Media_Controller_540.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_SetBoolean_v2_645_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_645
  self.TS_Stealth_Approach_Played = l0.Target
end
function export:f_box_SetBoolean_v2_645_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_645
  self.TS_Stealth_Approach_Played = l0.Target
end
function export:f_box_SetBoolean_v2_645_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_645
  self.TS_Stealth_Approach_Played = l0.Target
end
function export:f_box_SetBoolean_v2_645_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_645
  self.TS_Stealth_Approach_Played = l0.Target
end
function export:f_box_SetBoolean_v2_645_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_645
  self.TS_Stealth_Approach_Played = l0.Target
end
function export:f_box_Set_Domino_Camera_Reference_719_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraContextController_329
  l0.Config = "CameraContext.9223372052417673292"
  l0.BlendIn = "CameraBlendListDB.9223372052743926082"
  l0 = self.box_Set_Domino_Camera_Reference_719
  l1 = self.box_CameraContextController_329
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1433982064", "1433982064", "S14M060_FromTheRooftop", "box_Set_Domino_Camera_Reference_719.Out", "box_CameraContextController_329.StartContext", l0, l1)
  l1:StartContext()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_37
  l1 = self.box_Wait_Qualities_Loaded_727
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|339452169", "339452169", "S14M060_FromTheRooftop", "box_MultipleOR_37.Out", "box_Wait_Qualities_Loaded_727.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_64_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MissionZone_64
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2077467076", "2077467076", "S14M060_FromTheRooftop", "box_MissionZone_64.Disabled", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_EntityLoadingMonitor_351_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_316
  l0.Entity = "9223372051084305624"
  l0.Rotation = -65
  l0.PlatformHeight = 6
  l0.SliderPosition = 47
  l0 = self.box_EntityLoadingMonitor_351
  l1 = self.box_Crane_Controller_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|762622402", "762622402", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_351.AllLoaded", "box_Crane_Controller_316.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_MultipleOR_156_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "S14M060_Main"
  l0 = self.box_MultipleOR_156
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2026987605", "2026987605", "S14M060_FromTheRooftop", "box_MultipleOR_156.Out", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:f_box_Simple_Node_221_Out()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|287053140"
  l0.Out = self.f_box_Simple_Node_111_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1661788311", "1661788311", "S14M060_FromTheRooftop", "box_Simple_Node_221.Out", "box_Simple_Node_111.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_669_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_668
  l0.CLO = "9223372051158221880"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1527619537", "1527619537", "S14M060_FromTheRooftop", "box_Ordered_Output_669.Out", "box_CLOController_668.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_669_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_665()
  l0 = self.box_TriggerMonitor_v2_665
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|946293838", "946293838", "S14M060_FromTheRooftop", "box_Ordered_Output_669.Out", "box_TriggerMonitor_v2_665.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_LookAtTriggerMonitor_Monitor_184_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_185()
  l0 = self.box_LookAtTriggerMonitor_Monitor_184
  l1 = self.box_OnceOnly_v3_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1696340890", "1696340890", "S14M060_FromTheRooftop", "box_LookAtTriggerMonitor_Monitor_184.EnterFOV", "box_OnceOnly_v3_185.In", l0, l1)
  l1:In(1)
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_328
  l0.AutoDisable = 1
  l0.Entity = "9223372051084305624"
  l0 = self.box_MultipleOR_12
  l1 = self.box_EntityLoadingMonitor_328
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1984974284", "1984974284", "S14M060_FromTheRooftop", "box_MultipleOR_12.Out", "box_EntityLoadingMonitor_328.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_600_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292689"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_552"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|378361402"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_600
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1153782648", "1153782648", "S14M060_FromTheRooftop", "box_Timer_v2_600.TimeElapsed", "box_Dynamic_Media_Controller_552.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_CLOMonitor_676_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_682"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|187384596"
  l0.Out = self.f_box_Simple_Node_682_Out
  l0 = self.box_CLOMonitor_676
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|760424653", "760424653", "S14M060_FromTheRooftop", "box_CLOMonitor_676.Enabled", "box_Simple_Node_682.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_676_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_676
  self.TerrasseGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_676_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_676
  self.TerrasseGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_676_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_676
  self.TerrasseGuard_01 = l0.UserID
  l0 = self.box_HackableController_v2_694
  l0.HackableEntity = self.TerrasseGuard_01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale01",
    item = "",
    id = "4294988661"
  }
  l0 = self.box_CLOMonitor_676
  l1 = self.box_HackableController_v2_694
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|406629880", "406629880", "S14M060_FromTheRooftop", "box_CLOMonitor_676.OnUserInPlace", "box_HackableController_v2_694.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Compare_Floats_v2_319_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Crane_ZPos
  l0.B = 134.5
  l0.Tolerance = 4
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|29469849"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Floats_v2_324_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|640192465", "640192465", "S14M060_FromTheRooftop", "box_Compare_Floats_v2_319.A_eq_B", "box_Compare_Floats_v2_324.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_162_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_40()
  l0 = self.box_MissionCheckpointReach_162
  l1 = self.box_OnceOnly_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|699187536", "699187536", "S14M060_FromTheRooftop", "box_MissionCheckpointReach_162.Out", "box_OnceOnly_v3_40.In", l0, l1)
  l1:In(1)
end
function export:f_box_CLOController_288_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_288
  self.Location_2_Woman = l0.UserID
  self:OnEnter_box_Hackable_Monitor_289()
  l1 = self.box_Hackable_Monitor_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1191886525", "1191886525", "S14M060_FromTheRooftop", "box_CLOController_288.OnUserInPlace", "box_Hackable_Monitor_289.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_185_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_DownloadStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_578"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1186540157"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_578_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_185
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|190738060", "190738060", "S14M060_FromTheRooftop", "box_OnceOnly_v3_185.Out", "box_Compare_Boolean_v2_578.In", l0, l1)
  l1:In()
end
function export:f_box_Lanes_Restrictions_Control_266_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053520319797"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1113052541"
  l0.Out = self.f_box_Lanes_Restrictions_Control_263_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|586079487", "586079487", "S14M060_FromTheRooftop", "box_Lanes_Restrictions_Control_266.Out", "box_Lanes_Restrictions_Control_263.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_708_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_322
  l0.LayerName = "S14M060_SFView_CIN"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|805578830", "805578830", "S14M060_FromTheRooftop", "box_Ordered_Output_708.Out", "box_MissionLayer_v2_322.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_708_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_707()
  l0 = self.box_OnceOnly_v3_707
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|21920319", "21920319", "S14M060_FromTheRooftop", "box_Ordered_Output_708.Out", "box_OnceOnly_v3_707.In", clone, l0)
  l0:In(0)
end
function export:f_box_LMA_Layer_Controller_332_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_242()
  l0 = self.box_LMA_Layer_Controller_332
  l1 = self.box_MultipleOR_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1952348814", "1952348814", "S14M060_FromTheRooftop", "box_LMA_Layer_Controller_332.Loaded", "box_MultipleOR_242.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DebugExecuteConsole_v2_308_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_257
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1872461895", "1872461895", "S14M060_FromTheRooftop", "box_DebugExecuteConsole_v2_308.Executed", "box_Timer_v2_257.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_49_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_706"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|321272250"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_706_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_706_Out_1
  l0 = self.box_PlaySequence_v5_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2100916011", "2100916011", "S14M060_FromTheRooftop", "box_PlaySequence_v5_49.Finished", "box_Ordered_Output_706.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_49_Skipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_708"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|498819468"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_708_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_708_Out_1
  l0 = self.box_PlaySequence_v5_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1796876508", "1796876508", "S14M060_FromTheRooftop", "box_PlaySequence_v5_49.Skipped", "box_Ordered_Output_708.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_49_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|929504164"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_298_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_298_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_298_Out_2
  l0 = self.box_PlaySequence_v5_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1590416727", "1590416727", "S14M060_FromTheRooftop", "box_PlaySequence_v5_49.Started", "box_Ordered_Output_298.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_165_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_97()
  l0 = self.box_MultipleOR_165
  l1 = self.box_EntityLoadingMonitor_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1123650572", "1123650572", "S14M060_FromTheRooftop", "box_MultipleOR_165.Out", "box_EntityLoadingMonitor_97.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayerOnlyTriggerNoRCTip_318_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|71908512"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_217_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_217_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_217_Out_2
  l0 = self.box_PlayerOnlyTriggerNoRCTip_318
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1509928158", "1509928158", "S14M060_FromTheRooftop", "box_PlayerOnlyTriggerNoRCTip_318.Enter", "box_Ordered_Output_217.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_50_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_126
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|267174457", "267174457", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_50.Hidden", "box_CinematicPrep_126.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Compare_Boolean_v2_755_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_756()
  l0 = self.box_MultipleOR_756
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|558519502", "558519502", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_755.A_is_True", "box_MultipleOR_756.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Timer_v2_297_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_296
  l0.SoundId = "soundbinary/1883853094.bnk"
  l0 = self.box_Timer_v2_297
  l1 = self.box_PlaySound_v2_296
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|892608911", "892608911", "S14M060_FromTheRooftop", "box_Timer_v2_297.TimeElapsed", "box_PlaySound_v2_296.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_179_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_179
  self.Wrench_SFView_Loop = l0.UserID
  self:OnEnter_box_PlaySequence_v5_195()
  l1 = self.box_PlaySequence_v5_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1839664182", "1839664182", "S14M060_FromTheRooftop", "box_CLOController_179.OnUserInPlace", "box_PlaySequence_v5_195.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_146_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LookAtTriggerMonitor_Monitor_151
  l0.Trigger = "9223372053010032721"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1120373216", "1120373216", "S14M060_FromTheRooftop", "box_Ordered_Output_146.Out", "box_LookAtTriggerMonitor_Monitor_151.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_146_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LookAtTriggerMonitor_Monitor_184
  l0.Trigger = "9223372053010112296"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1377496047", "1377496047", "S14M060_FromTheRooftop", "box_Ordered_Output_146.Out", "box_LookAtTriggerMonitor_Monitor_184.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_146_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LookAtTriggerMonitor_Monitor_186
  l0.Trigger = "9223372053010112298"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1971808903", "1971808903", "S14M060_FromTheRooftop", "box_Ordered_Output_146.Out", "box_LookAtTriggerMonitor_Monitor_186.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_146_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_STAGE
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_564"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|51257133"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_564_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_564_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|878740712", "878740712", "S14M060_FromTheRooftop", "box_Ordered_Output_146.Out", "box_Compare_Boolean_v2_564.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_146_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_183
  l0.Input = self.PlanOfAttackTS_Failsafe
  l0.Data[0] = "9223372051412650561"
  l0.Data[1] = "9223372055104907228"
  l0.Data[2] = "9223372055104907253"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1724567267", "1724567267", "S14M060_FromTheRooftop", "box_Ordered_Output_146.Out", "box_ListWriter_183.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_353_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_556
  l0.SoundId = "soundbinary/2832665886.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1222350718", "1222350718", "S14M060_FromTheRooftop", "box_Ordered_Output_353.Out", "box_PlaySound_v2_556.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_353_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|777473556"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_293_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_293_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_293_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|151675791", "151675791", "S14M060_FromTheRooftop", "box_Ordered_Output_353.Out", "box_Ordered_Output_293.In", clone, l0)
  l0:In()
end
function export:f_box_Trigger_Controller_28_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FelonyTargetMonitor_211
  l0.FelonyType = "Police"
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1045385707", "1045385707", "S14M060_FromTheRooftop", "box_Trigger_Controller_28.Disabled", "box_FelonyTargetMonitor_211.Start", clone, l0)
  l0:Start()
end
function export:f_box_InteractionScriptController_231_InteractionForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|32896703"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_168_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_168_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1403767618", "1403767618", "S14M060_FromTheRooftop", "box_InteractionScriptController_231.InteractionForced", "box_Ordered_Output_168.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_331()
  l0 = self.box_TriggerMonitor_v2_331
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|286865369", "286865369", "S14M060_FromTheRooftop", "box_Ordered_Output_54.Out", "box_TriggerMonitor_v2_331.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_124()
  l0 = self.box_TriggerMonitor_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1680069885", "1680069885", "S14M060_FromTheRooftop", "box_Ordered_Output_54.Out", "box_TriggerMonitor_v2_124.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetTimeOfDay_280_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_279
  l0.LayerName = "S14M060_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1013564448", "1013564448", "S14M060_FromTheRooftop", "box_SetTimeOfDay_280.Out", "box_MissionLayer_v2_279.Load", clone, l0)
  l0:Load()
end
function export:f_box_Random_Float_583_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_582
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_582
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|481901959", "481901959", "S14M060_FromTheRooftop", "box_Random_Float_583.Out", "box_Timer_v2_582.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_244_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_259
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|981658516", "981658516", "S14M060_FromTheRooftop", "box_Simple_Node_244.Out", "box_CinematicPrep_259.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_EntityLoadingMonitor_70_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_197
  l0.Entity = "9223372049574754202"
  l0.Rotation = -10
  l0.PlatformHeight = 6
  l0.SliderPosition = 50
  l0 = self.box_EntityLoadingMonitor_70
  l1 = self.box_Crane_Controller_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1522053942", "1522053942", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_70.AllLoaded", "box_Crane_Controller_197.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_Crane_Controller_277_CanMoveChanged()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_66
  l0.SpawnPoint = "9223372047969945881"
  l0 = self.box_Crane_Controller_277
  l1 = self.box_Teleport_To_SpawnPoint_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1078179669", "1078179669", "S14M060_FromTheRooftop", "box_Crane_Controller_277.CanMoveChanged", "box_Teleport_To_SpawnPoint_66.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_346_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1690648428"
  l0.Out = self.f_box_Simple_Node_338_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1677257552", "1677257552", "S14M060_FromTheRooftop", "box_Ordered_Output_346.Out", "box_Simple_Node_338.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_346_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_344()
  l0 = self.box_Multiple_AND_344
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|109252143", "109252143", "S14M060_FromTheRooftop", "box_Ordered_Output_346.Out", "box_Multiple_AND_344.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Simple_Node_167_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|612957485", "612957485", "S14M060_FromTheRooftop", "box_Simple_Node_167.Out", "box_MultipleOR_99.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_683_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2011654878", "2011654878", "S14M060_FromTheRooftop", "box_Simple_Node_683.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|573127580"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1269854024", "1269854024", "S14M060_FromTheRooftop", "box_Ordered_Output_20.Out", "box_Ordered_Output_54.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_147
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051309651807"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1855459027", "1855459027", "S14M060_FromTheRooftop", "box_Ordered_Output_20.Out", "box_PhoneCommunicationController_147.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_CLOMonitor_679_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_685"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2036490337"
  l0.Out = self.f_box_Simple_Node_685_Out
  l0 = self.box_CLOMonitor_679
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|863613889", "863613889", "S14M060_FromTheRooftop", "box_CLOMonitor_679.Enabled", "box_Simple_Node_685.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_679_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_679
  self.CarroomGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_679_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_679
  self.CarroomGuard_01 = l0.UserID
end
function export:f_box_CLOMonitor_679_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_679
  self.CarroomGuard_01 = l0.UserID
  l0 = self.box_HackableController_v2_696
  l0.HackableEntity = self.CarroomGuard_01
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale04",
    item = "",
    id = "4294988664"
  }
  l0 = self.box_CLOMonitor_679
  l1 = self.box_HackableController_v2_696
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|822042111", "822042111", "S14M060_FromTheRooftop", "box_CLOMonitor_679.OnUserInPlace", "box_HackableController_v2_696.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_ListWriter_183_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_183
  self.PlanOfAttackTS_Failsafe = l0.Target
  l0 = self.box_TriggerMonitor_v2_205
  l0.TriggerList = self.PlanOfAttackTS_Failsafe
  l0.AutoDisable = 1
  l0 = self.box_ListWriter_183
  l1 = self.box_TriggerMonitor_v2_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1482346119", "1482346119", "S14M060_FromTheRooftop", "box_ListWriter_183.Added", "box_TriggerMonitor_v2_205.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_183_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.PlanOfAttackTS_Failsafe = l0.Target
end
function export:f_box_ListWriter_183_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.PlanOfAttackTS_Failsafe = l0.Target
end
function export:f_box_SecurityCamController_392_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052593105134"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372053010112296"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_393"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|826872999"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_393_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|143783225", "143783225", "S14M060_FromTheRooftop", "box_SecurityCamController_392.InitialTargetSet", "box_SecurityCamController_393.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_Ordered_Output_108_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14M060_GetCivilians_IDs_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|199552939", "199552939", "S14M060_FromTheRooftop", "box_Ordered_Output_108.Out", "box_S14M060_GetCivilians_IDs_83.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_108_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_24
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|571787017", "571787017", "S14M060_FromTheRooftop", "box_Ordered_Output_108.Out", "box_Perk_Controller_24.AddPerk", clone, l0)
  l0:AddPerk()
end
function export:f_box_Show_Or_Hide_All_UI_389_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|881723444", "881723444", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_389.Shown", "box_OnceOnly_v3_264.In", clone, l0)
  l0:In(0)
end
function export:f_box_Show_Or_Hide_All_UI_153_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1846210339"
  l0.Out = self.f_box_Simple_Node_129_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|433885796", "433885796", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_153.Shown", "box_Simple_Node_129.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_212_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|588959055"
  l0.Out = self.f_box_Simple_Node_244_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|338845185", "338845185", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_212.A_is_False", "box_Simple_Node_244.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_212_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372048779320403"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1149209623"
  l0.Out = self.f_box_FelonyTargetController_201_Out
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|384329529", "384329529", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_212.A_is_True", "box_FelonyTargetController_201.StartChase", clone, l0)
  l0:StartChase()
end
function export:f_box_Simple_Node_690_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1187257407", "1187257407", "S14M060_FromTheRooftop", "box_Simple_Node_690.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(7)
end
function export:f_box_EntityLoadingMonitor_349_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_3
  l0.Entity = "9223372049574754202"
  l0.Rotation = 87
  l0.PlatformHeight = 15
  l0.SliderPosition = 47.5
  l0 = self.box_EntityLoadingMonitor_349
  l1 = self.box_Crane_Controller_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|270500903", "270500903", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_349.AllLoaded", "box_Crane_Controller_3.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_SecurityCamController_17_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052593104110"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372053010032721"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_391"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2138779541"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_391_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1757945231", "1757945231", "S14M060_FromTheRooftop", "box_SecurityCamController_17.InitialTargetSet", "box_SecurityCamController_391.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_Ordered_Output_145_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372074665742399"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_355"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|747929495"
  l0.Activated = self.f_box_MissionMusicController_355_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|844551525", "844551525", "S14M060_FromTheRooftop", "box_Ordered_Output_145.Out", "box_MissionMusicController_355.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_145_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_CheckPoint4
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|772729765"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_159_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_159_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1922775628", "1922775628", "S14M060_FromTheRooftop", "box_Ordered_Output_145.Out", "box_Compare_Boolean_v2_159.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_145_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|563631531"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_146_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_146_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_146_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_146_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_146_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1854796501", "1854796501", "S14M060_FromTheRooftop", "box_Ordered_Output_145.Out", "box_Ordered_Output_146.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_125_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|935655885"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_300_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_300_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_300_Out_2
  l0 = self.box_MultipleOR_125
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1016776617", "1016776617", "S14M060_FromTheRooftop", "box_MultipleOR_125.Out", "box_Ordered_Output_300.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_505_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292655"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1468602837"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1086750708", "1086750708", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_MaterialController_65.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_505_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292657"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_504"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|693743816"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1376751567", "1376751567", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_MaterialController_504.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_505_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292659"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_507"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|328187441"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|564686719", "564686719", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_MaterialController_507.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_505_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279737"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_503"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1147948151"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|913267693", "913267693", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_Dynamic_Media_Controller_503.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_505_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292653"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_502"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|970882040"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1521762415", "1521762415", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_Dynamic_Media_Controller_502.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_505_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371255"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_501"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|608632939"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|824734475", "824734475", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_Dynamic_Media_Controller_501.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_505_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 0
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_559"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1620062361"
  l0.Out = self.f_box_SetFloat_v2_559_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|777566850", "777566850", "S14M060_FromTheRooftop", "box_Ordered_Output_505.Out", "box_SetFloat_v2_559.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Simple_Node_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_64()
  l0 = self.box_MissionZone_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1255453374", "1255453374", "S14M060_FromTheRooftop", "box_Simple_Node_92.Out", "box_MissionZone_64.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionMusicController_355_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_733"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|187716134"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_733_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_733_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1888183818", "1888183818", "S14M060_FromTheRooftop", "box_MissionMusicController_355.Activated", "box_Ordered_Output_733.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_85_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_85
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_85_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_85
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_85_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_85
  self.Is_THEATER = l0.Target
end
function export:f_box_SetBoolean_v2_85_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_85
  self.Is_THEATER = l0.Target
  self:OnEnter_box_MultipleOR_246()
  l1 = self.box_MultipleOR_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|947614035", "947614035", "S14M060_FromTheRooftop", "box_SetBoolean_v2_85.SetTrue", "box_MultipleOR_246.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_85_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_85
  self.Is_THEATER = l0.Target
end
function export:f_box_LightController_342_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_737"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1385448464"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_737_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_737_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|655933143", "655933143", "S14M060_FromTheRooftop", "box_LightController_342.Enabled", "box_Ordered_Output_737.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_239_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_239
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_239_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_239
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_239_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_239
  self.Is_BOOTH = l0.Target
end
function export:f_box_SetBoolean_v2_239_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_239
  self.Is_BOOTH = l0.Target
  l0 = self.box_MissionCheckpointReach_210
  l0.Checkpoint = "CheckPoint_0_E3BOOTH"
  l0 = self.box_SetBoolean_v2_239
  l1 = self.box_MissionCheckpointReach_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|127628663", "127628663", "S14M060_FromTheRooftop", "box_SetBoolean_v2_239.SetTrue", "box_MissionCheckpointReach_210.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_239_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_239
  self.Is_BOOTH = l0.Target
end
function export:f_box_Crane_Controller_197_PlatformPositionSet()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_71
  l0.AutoDisable = 1
  l0.Entity = "9223372047411549960"
  l0 = self.box_Crane_Controller_197
  l1 = self.box_EntityLoadingMonitor_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1441669910", "1441669910", "S14M060_FromTheRooftop", "box_Crane_Controller_197.PlatformPositionSet", "box_EntityLoadingMonitor_71.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_159_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_InteractionScriptMonitor_v2_154
  l0.InteractionScriptEntity = "9223372047411549960"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1391162542", "1391162542", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_159.A_is_False", "box_InteractionScriptMonitor_v2_154.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_159_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_160()
  l0 = self.box_MultipleOR_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1043706825", "1043706825", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_159.A_is_True", "box_MultipleOR_160.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_LookAtTriggerMonitor_Monitor_151_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_185()
  l0 = self.box_LookAtTriggerMonitor_Monitor_151
  l1 = self.box_OnceOnly_v3_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1094937101", "1094937101", "S14M060_FromTheRooftop", "box_LookAtTriggerMonitor_Monitor_151.EnterFOV", "box_OnceOnly_v3_185.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_293_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_390
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|20909146", "20909146", "S14M060_FromTheRooftop", "box_Ordered_Output_293.Out", "box_CinematicPrep_390.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_293_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_295
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1600129090", "1600129090", "S14M060_FromTheRooftop", "box_Ordered_Output_293.Out", "box_Timer_v2_295.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_293_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_288
  l0.CLO = "9223372052576303046"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1501708989", "1501708989", "S14M060_FromTheRooftop", "box_Ordered_Output_293.Out", "box_CLOController_288.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_EntityLoadingMonitor_97_AllLoaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_315()
  l0 = self.box_EntityLoadingMonitor_97
  l1 = self.box_MultipleOR_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|606201431", "606201431", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_97.AllLoaded", "box_MultipleOR_315.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_EntityLoadingMonitor_97_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CraneMonitor_78()
  l0 = self.box_EntityLoadingMonitor_97
  l1 = self.box_CraneMonitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1745759484", "1745759484", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_97.Disabled", "box_CraneMonitor_78.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_333_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|723238415"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_145_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_145_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_145_Out_2
  l0 = self.box_MultipleOR_333
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|237725917", "237725917", "S14M060_FromTheRooftop", "box_MultipleOR_333.Out", "box_Ordered_Output_145.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_704_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_705"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|913992327"
  l0.Out = self.f_box_Simple_Node_705_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1388026585", "1388026585", "S14M060_FromTheRooftop", "box_Simple_Node_704.Out", "box_Simple_Node_705.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_608_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279801"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_534"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1412247821"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_608
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1537341674", "1537341674", "S14M060_FromTheRooftop", "box_Timer_v2_608.TimeElapsed", "box_Dynamic_Media_Controller_534.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_MissionCheckpointReach_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MissionCheckpointReach_62
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1851830749", "1851830749", "S14M060_FromTheRooftop", "box_MissionCheckpointReach_62.Out", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_257_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_143
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051309651805"
  l0 = self.box_Timer_v2_257
  l1 = self.box_PhoneCommunicationController_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|717174342", "717174342", "S14M060_FromTheRooftop", "box_Timer_v2_257.TimeElapsed", "box_PhoneCommunicationController_143.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_AgentStateMonitor_V2_122_AllInAwareState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_398()
  l0 = self.box_AgentStateMonitor_V2_122
  l1 = self.box_MultipleOR_398
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|176390276", "176390276", "S14M060_FromTheRooftop", "box_AgentStateMonitor_V2_122.AllInAwareState", "box_MultipleOR_398.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AgentStateMonitor_V2_122_AllInUnawareState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_398()
  l0 = self.box_AgentStateMonitor_V2_122
  l1 = self.box_MultipleOR_398
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|873124925", "873124925", "S14M060_FromTheRooftop", "box_AgentStateMonitor_V2_122.AllInUnawareState", "box_MultipleOR_398.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AgentStateMonitor_V2_122_CombatState()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_659"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|8707653"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_659_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_659_Out_1
  l0 = self.box_AgentStateMonitor_V2_122
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|704042552", "704042552", "S14M060_FromTheRooftop", "box_AgentStateMonitor_V2_122.CombatState", "box_Ordered_Output_659.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_445_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371244"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_450"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1216945945"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1357366732", "1357366732", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_450.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371240"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_443"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1454442665"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|931728244", "931728244", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_443.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371242"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_444"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1342600746"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2015483031", "2015483031", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_444.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292681"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_447"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|854614376"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1695421909", "1695421909", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_447.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292683"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_438"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|661251543"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|646283494", "646283494", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_438.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371252"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_437"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2052644348"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1460613314", "1460613314", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_437.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371250"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_434"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1557113025"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|870102638", "870102638", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_434.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371248"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_421"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1753358683"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|99862439", "99862439", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_421.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371246"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_427"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|976830459"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|635031578", "635031578", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_427.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371183"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_446"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|166266693"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2011761690", "2011761690", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_446.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371185"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_425"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|113920071"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|167750833", "167750833", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_425.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091515"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_453"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1242531147"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1177667752", "1177667752", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_453.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292687"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_454"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|312819726"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|222775566", "222775566", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_454.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292689"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_455"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1938770553"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|237748422", "237748422", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_455.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_445_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292685"
  l0.Index = 2
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|874299867"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2105379376", "2105379376", "S14M060_FromTheRooftop", "box_Ordered_Output_445.Out", "box_MaterialController_337.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MissionMessageController_v3_226_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_75()
  l0 = self.box_MissionMessageController_v3_226
  l1 = self.box_Multiple_AND_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1665751599", "1665751599", "S14M060_FromTheRooftop", "box_MissionMessageController_v3_226.Out", "box_Multiple_AND_75.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SecurityCamController_393_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_CheckPoint3
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1442777807"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_7_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_7_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1592963334", "1592963334", "S14M060_FromTheRooftop", "box_SecurityCamController_393.InitialTargetSet", "box_Compare_Boolean_v2_7.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_48_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_48
  self.EscapeCar = l0.UserID
end
function export:f_box_Timer_v2_634_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279735"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_536"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1075724157"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_634
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1848284473", "1848284473", "S14M060_FromTheRooftop", "box_Timer_v2_634.TimeElapsed", "box_Dynamic_Media_Controller_536.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_LightController_343_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372049057674243"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372053440552468"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|711309459"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_17_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|836567697", "836567697", "S14M060_FromTheRooftop", "box_LightController_343.Disabled", "box_SecurityCamController_17.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_Set_List_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.LivingRoomCivilians = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.IN_DiningRoomCivilians
  l0._graph = self
  l0._name = "box_Set_List_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1235649029"
  l0.Out = self.f_box_Set_List_77_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|534437652", "534437652", "S14M060_FromTheRooftop", "box_Set_List_81.Out", "box_Set_List_77.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_Timer_v2_586_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371248"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_545"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|162449823"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_586
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|226730467", "226730467", "S14M060_FromTheRooftop", "box_Timer_v2_586.TimeElapsed", "box_Dynamic_Media_Controller_545.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_MultipleOR_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_63
  l1 = self.box_SetBoolean_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1245107291", "1245107291", "S14M060_FromTheRooftop", "box_MultipleOR_63.Out", "box_SetBoolean_v2_53.True", l0, l1)
  l1:True()
end
function export:f_box_OnceOnly_v3_230_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_346"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|607061195"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_346_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_346_Out_1
  l0 = self.box_OnceOnly_v3_230
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1395418152", "1395418152", "S14M060_FromTheRooftop", "box_OnceOnly_v3_230.Out", "box_Ordered_Output_346.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_625_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279797"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_529"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1858848117"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_625
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|793060972", "793060972", "S14M060_FromTheRooftop", "box_Timer_v2_625.TimeElapsed", "box_Dynamic_Media_Controller_529.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Compare_Boolean_v2_647_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_150
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051309651817"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2065104743", "2065104743", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_647.A_is_False", "box_PhoneCommunicationController_150.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_S14M060_GetCivilians_IDs_83_Out_AllCiviliansRegistered()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M060_GetCivilians_IDs_83
  self.LivingRoomCivilians = l0.LivingRoomCivilians_OUT
  self.DiningRoomCivilians = l0.DiningRoomCivilians_OUT
  self.KitchenCivilians = l0.KitchenCivilians_OUT
  self.MicrowaveGuy = l0.MicrowaveGuy_OUT
  self.AcidBathGuy = l0.AcidBathGuy_OUT
  self:OnEnter_box_MultipleOR_12()
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1542221436", "1542221436", "S14M060_FromTheRooftop", "box_S14M060_GetCivilians_IDs_83.Out_AllCiviliansRegistered", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_248_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_248
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_248_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_248
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_248_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_248
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_248_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_248
  self.Is_STAGE = l0.Target
  self:OnEnter_box_MultipleOR_246()
  l1 = self.box_MultipleOR_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|997933490", "997933490", "S14M060_FromTheRooftop", "box_SetBoolean_v2_248.SetTrue", "box_MultipleOR_246.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_248_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_248
  self.Is_STAGE = l0.Target
end
function export:f_box_Random_Float_624_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_611
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_611
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2140089252", "2140089252", "S14M060_FromTheRooftop", "box_Random_Float_624.Out", "box_Timer_v2_611.Start", clone, l0)
  l0:Start()
end
function export:f_box_Show_Or_Hide_All_UI_134_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1580409173"
  l0.Out = self.f_box_Simple_Node_261_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1544049792", "1544049792", "S14M060_FromTheRooftop", "box_Show_Or_Hide_All_UI_134.Shown", "box_Simple_Node_261.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_172_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_173()
  l0 = self.box_LogicGate_v2_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|428924068", "428924068", "S14M060_FromTheRooftop", "box_Simple_Node_172.Out", "box_LogicGate_v2_173.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_57_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|97130504"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_MultipleOR_57
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1426857551", "1426857551", "S14M060_FromTheRooftop", "box_MultipleOR_57.Out", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_321_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1860762133"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_207_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_207_Out_1
  l0 = self.box_MissionLayer_v2_321
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|11304773", "11304773", "S14M060_FromTheRooftop", "box_MissionLayer_v2_321.Unloaded", "box_Ordered_Output_207.In", l0, l1)
  l1:In()
end
function export:f_box_Perk_Controller_67_PerkReseted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_25()
  l0 = self.box_Perk_Controller_67
  l1 = self.box_Mission_End_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|279772299", "279772299", "S14M060_FromTheRooftop", "box_Perk_Controller_67.PerkReseted", "box_Mission_End_25.End", l0, l1)
  l1:End()
end
function export:f_box_Simple_Node_705_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1398025014", "1398025014", "S14M060_FromTheRooftop", "box_Simple_Node_705.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Random_Float_563_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_555
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_555
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|36550755", "36550755", "S14M060_FromTheRooftop", "box_Random_Float_563.Out", "box_Timer_v2_555.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_352_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_348()
  l0 = self.box_MultipleOR_352
  l1 = self.box_MapPointController_v4_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|571198800", "571198800", "S14M060_FromTheRooftop", "box_MultipleOR_352.Out", "box_MapPointController_v4_348.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_315_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CraneMonitor_78()
  l0 = self.box_MultipleOR_315
  l1 = self.box_CraneMonitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|31601548", "31601548", "S14M060_FromTheRooftop", "box_MultipleOR_315.Out", "box_CraneMonitor_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_298_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|235844705"
  l0.Out = self.f_box_Simple_Node_86_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1225924293", "1225924293", "S14M060_FromTheRooftop", "box_Ordered_Output_298.Out", "box_Simple_Node_86.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_298_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372074665743731"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_359"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1291023477"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1469499172", "1469499172", "S14M060_FromTheRooftop", "box_Ordered_Output_298.Out", "box_MissionMusicController_359.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_298_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_294
  l0.SoundId = "soundbinary/848446457.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1843916", "1843916", "S14M060_FromTheRooftop", "box_Ordered_Output_298.Out", "box_PlaySound_v2_294.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySequence_v5_5_SPOut__ReleasePlayer_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_354"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1679761428"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_354_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_354_Out_1
  l0 = self.box_PlaySequence_v5_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|659286582", "659286582", "S14M060_FromTheRooftop", "box_PlaySequence_v5_5.SPOut", "box_Ordered_Output_354.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_300_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/WitnessSytemController_v2.lua")]
  l0._graph = self
  l0._name = "box_WitnessSystemController_v2_604"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1217166188"
  l0.DenunciatorEnabled = self.f_box_WitnessSystemController_v2_604_DenunciatorEnabled
  l0.DenunciatorDisabled = DummyFunction
  l0.DetectorEnabled = DummyFunction
  l0.DetectorDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|806061350", "806061350", "S14M060_FromTheRooftop", "box_Ordered_Output_300.Out", "box_WitnessSystemController_v2_604.EnableDenunciator", clone, l0)
  l0:EnableDenunciator()
end
function export:f_box_Ordered_Output_300_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_299
  l0.SoundId = "soundbinary/2196104692.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1581776434", "1581776434", "S14M060_FromTheRooftop", "box_Ordered_Output_300.Out", "box_PlaySound_v2_299.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_300_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_739
  l0.SoundId = "soundbinary/2729294870.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2005159655", "2005159655", "S14M060_FromTheRooftop", "box_Ordered_Output_300.Out", "box_PlaySound_v2_739.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_CheckPoint3
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1403670253"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_16_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2004431077", "2004431077", "S14M060_FromTheRooftop", "box_Simple_Node_6.Out", "box_Compare_Boolean_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_55_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372051777342069"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|289430192"
  l0.Enabled = self.f_box_InteractionScriptController_193_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_55
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1785992760", "1785992760", "S14M060_FromTheRooftop", "box_MissionMessageController_v3_55.Out", "box_InteractionScriptController_193.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySequence_v5_195_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372051976425807"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1317902668"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_128_Hidden
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_195
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|517500201", "517500201", "S14M060_FromTheRooftop", "box_PlaySequence_v5_195.Stopped", "box_VisibilityController_v2_128.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v4_76_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_80()
  l0 = self.box_MapPointController_v4_76
  l1 = self.box_TriggerMonitor_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1129020595", "1129020595", "S14M060_FromTheRooftop", "box_MapPointController_v4_76.Hidden", "box_TriggerMonitor_v2_80.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_76_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_80()
  l0 = self.box_MapPointController_v4_76
  l1 = self.box_TriggerMonitor_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1623568528", "1623568528", "S14M060_FromTheRooftop", "box_MapPointController_v4_76.Shown", "box_TriggerMonitor_v2_80.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_395_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_395
  self.Is_DownloadStarted = l0.Target
end
function export:f_box_SetBoolean_v2_395_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_395
  self.Is_DownloadStarted = l0.Target
end
function export:f_box_SetBoolean_v2_395_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_395
  self.Is_DownloadStarted = l0.Target
end
function export:f_box_SetBoolean_v2_395_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_395
  self.Is_DownloadStarted = l0.Target
  l0 = self.box_Timer_v2_297
  l0.Seconds = 5
  l0 = self.box_SetBoolean_v2_395
  l1 = self.box_Timer_v2_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|524433060", "524433060", "S14M060_FromTheRooftop", "box_SetBoolean_v2_395.SetTrue", "box_Timer_v2_297.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_395_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_395
  self.Is_DownloadStarted = l0.Target
end
function export:f_box_OnceOnly_v3_264_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|882806223"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_134_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_OnceOnly_v3_264
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1436600974", "1436600974", "S14M060_FromTheRooftop", "box_OnceOnly_v3_264.Out", "box_Show_Or_Hide_All_UI_134.Show", l0, l1)
  l1:Show()
end
function export:f_box_Simple_Node_684_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|870549191", "870549191", "S14M060_FromTheRooftop", "box_Simple_Node_684.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_MultipleOR_398_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_396()
  l0 = self.box_MultipleOR_398
  l1 = self.box_SetBoolean_v2_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|921754837", "921754837", "S14M060_FromTheRooftop", "box_MultipleOR_398.Out", "box_SetBoolean_v2_396.False", l0, l1)
  l1:False()
end
function export:f_box_PhoneCommunicationController_150_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_150
  l1 = self.box_SetBoolean_v2_645
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1092125316", "1092125316", "S14M060_FromTheRooftop", "box_PhoneCommunicationController_150.OnCommunicationFinished", "box_SetBoolean_v2_645.True", l0, l1)
  l1:True()
end
function export:f_box_CameraContextController_330_ContextStopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_29()
  l0 = self.box_CameraContextController_330
  l1 = self.box_PlaySequence_v5_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|909918167", "909918167", "S14M060_FromTheRooftop", "box_CameraContextController_330.ContextStopped", "box_PlaySequence_v5_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_242_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_242
  l1 = self.box_SetBoolean_v2_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1803616316", "1803616316", "S14M060_FromTheRooftop", "box_MultipleOR_242.Out", "box_SetBoolean_v2_239.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_396_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_396
  self.IsInCombat = l0.Target
end
function export:f_box_SetBoolean_v2_396_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_396
  self.IsInCombat = l0.Target
end
function export:f_box_SetBoolean_v2_396_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_396
  self.IsInCombat = l0.Target
end
function export:f_box_SetBoolean_v2_396_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_396
  self.IsInCombat = l0.Target
  l1 = self.box_OnceOnly_v3_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1826171993", "1826171993", "S14M060_FromTheRooftop", "box_SetBoolean_v2_396.SetTrue", "box_OnceOnly_v3_191.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_396_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_396
  self.IsInCombat = l0.Target
end
function export:f_box_Simple_Node_245_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Escape_Gameplay_33()
  l0 = self.box_Escape_Gameplay_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1201544443", "1201544443", "S14M060_FromTheRooftop", "box_Simple_Node_245.Out", "box_Escape_Gameplay_33.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_EntityLoadingMonitor_328_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_26
  l0.Entity = "9223372051084305624"
  l0.Rotation = 19
  l0.PlatformHeight = 10
  l0.SliderPosition = 31
  l0 = self.box_EntityLoadingMonitor_328
  l1 = self.box_Crane_Controller_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|625107927", "625107927", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_328.AllLoaded", "box_Crane_Controller_26.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_Ordered_Output_237_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1031629314"
  l0.Out = self.f_box_Simple_Node_245_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1527727361", "1527727361", "S14M060_FromTheRooftop", "box_Ordered_Output_237.Out", "box_Simple_Node_245.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_237_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1304199153"
  l0.Out = self.f_box_Simple_Node_249_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1106711282", "1106711282", "S14M060_FromTheRooftop", "box_Ordered_Output_237.Out", "box_Simple_Node_249.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_2_Out()
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
  l0._name = "box_Ordered_Output_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|670412438"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_108_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_108_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1964409663", "1964409663", "S14M060_FromTheRooftop", "box_Get_Player_ID_2.Out", "box_Ordered_Output_108.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_304_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_306
  l0.Entity = self.SoundPoint_E3_FakeDialog_Man
  l0.SoundId = "soundbinary/2118464269.bnk"
  l0 = self.box_Timer_v2_304
  l1 = self.box_PlaySound_v2_306
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|556345929", "556345929", "S14M060_FromTheRooftop", "box_Timer_v2_304.TimeElapsed", "box_PlaySound_v2_306.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_562_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TS_Stealth_Approach_Played
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_647"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|859980936"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_647_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Security_Camera_Monitor_562
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1003057572", "1003057572", "S14M060_FromTheRooftop", "box_Security_Camera_Monitor_562.Disabled", "box_Compare_Boolean_v2_647.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_562_OnStartExitCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_562()
  l0 = self.box_Security_Camera_Monitor_562
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1195537579", "1195537579", "S14M060_FromTheRooftop", "box_Security_Camera_Monitor_562.OnStartExitCamera", "box_Security_Camera_Monitor_562.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Random_Float_574_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_573
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_573
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1223095030", "1223095030", "S14M060_FromTheRooftop", "box_Random_Float_574.Out", "box_Timer_v2_573.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_189_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_189
  l1 = self.box_SetBoolean_v2_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1137648904", "1137648904", "S14M060_FromTheRooftop", "box_MultipleOR_189.Out", "box_SetBoolean_v2_240.True", l0, l1)
  l1:True()
end
function export:f_box_CinematicPrep_390_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_142
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051309651803"
  l0 = self.box_CinematicPrep_390
  l1 = self.box_PhoneCommunicationController_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1123188247", "1123188247", "S14M060_FromTheRooftop", "box_CinematicPrep_390.PostOut", "box_PhoneCommunicationController_142.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_158_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|446266729"
  l0.Out = self.f_box_Simple_Node_221_Out
  l0 = self.box_MultipleOR_158
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|708122049", "708122049", "S14M060_FromTheRooftop", "box_MultipleOR_158.Out", "box_Simple_Node_221.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_404_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_405
  l0.SoundId = "soundbinary/2040736871.bnk"
  l0 = self.box_TriggerMonitor_v2_404
  l1 = self.box_PlaySound_v2_405
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|366947375", "366947375", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_404.Disabled", "box_PlaySound_v2_405.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_404_Leave()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_404()
  l0 = self.box_TriggerMonitor_v2_404
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1448151842", "1448151842", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_404.Leave", "box_TriggerMonitor_v2_404.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_143_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372074665742398"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_356"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|489064938"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PhoneCommunicationController_143
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1507318769", "1507318769", "S14M060_FromTheRooftop", "box_PhoneCommunicationController_143.OnCommunicationFinished", "box_MissionMusicController_356.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_229_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Crane_XPos
  l0.B = 40
  l0.Tolerance = 4
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2075485856"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Floats_v2_312_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|835553031", "835553031", "S14M060_FromTheRooftop", "box_Ordered_Output_229.Out", "box_Compare_Floats_v2_312.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_229_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_206()
  l0 = self.box_TriggerMonitor_v2_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|186579642", "186579642", "S14M060_FromTheRooftop", "box_Ordered_Output_229.Out", "box_TriggerMonitor_v2_206.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_229_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_225()
  l0 = self.box_TriggerMonitor_v2_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|129852178", "129852178", "S14M060_FromTheRooftop", "box_Ordered_Output_229.Out", "box_TriggerMonitor_v2_225.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_285_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_285
  l1 = self.box_SetBoolean_v2_281
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|551969107", "551969107", "S14M060_FromTheRooftop", "box_MultipleOR_285.Out", "box_SetBoolean_v2_281.True", l0, l1)
  l1:True()
end
function export:f_box_Compare_Boolean_v2_157_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_43
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives.Objective020",
    item = "Objective",
    id = "354179"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1877727974", "1877727974", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_157.A_is_False", "box_MissionMessageController_v3_43.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Compare_Boolean_v2_157_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_70
  l0.AutoDisable = 1
  l0.Entity = "9223372049574754202"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1810665689", "1810665689", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_157.A_is_True", "box_EntityLoadingMonitor_70.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Random_Float_606_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_625
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_625
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|386035364", "386035364", "S14M060_FromTheRooftop", "box_Random_Float_606.Out", "box_Timer_v2_625.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_180_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_179
  l0.CLO = "9223372070342151134"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1864443546", "1864443546", "S14M060_FromTheRooftop", "box_Simple_Node_180.Out", "box_CLOController_179.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TriggerMonitor_v2_171_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_173()
  l0 = self.box_TriggerMonitor_v2_171
  l1 = self.box_LogicGate_v2_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|110099346", "110099346", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_171.Enter", "box_LogicGate_v2_173.Close", l0, l1)
  l1:Close()
end
function export:f_box_TriggerMonitor_v2_171_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_173()
  l0 = self.box_TriggerMonitor_v2_171
  l1 = self.box_LogicGate_v2_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1968971246", "1968971246", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_171.Leave", "box_LogicGate_v2_173.Open", l0, l1)
  l1:Open()
end
function export:f_box_PhoneCommunicationController_571_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_743()
  l0 = self.box_PhoneCommunicationController_571
  l1 = self.box_OnceOnly_v3_743
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|160499973", "160499973", "S14M060_FromTheRooftop", "box_PhoneCommunicationController_571.OnCommunicationFinished", "box_OnceOnly_v3_743.In", l0, l1)
  l1:In(0)
end
function export:f_box_PhoneCommunicationController_571_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_662()
  l0 = self.box_PhoneCommunicationController_571
  l1 = self.box_OnceOnly_v3_662
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1238054526", "1238054526", "S14M060_FromTheRooftop", "box_PhoneCommunicationController_571.OnCommunicationStarted", "box_OnceOnly_v3_662.In", l0, l1)
  l1:In(0)
end
function export:f_box_Download_Gameplay_58_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_593"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1675180564"
  l0.Out = self.f_box_Simple_Node_593_Out
  l0 = self.box_Download_Gameplay_58
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1800700852", "1800700852", "S14M060_FromTheRooftop", "box_Download_Gameplay_58.DownloadCompleted", "box_Simple_Node_593.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_58_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1747976805"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_256_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_256_Out_1
  l0 = self.box_Download_Gameplay_58
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1387731232", "1387731232", "S14M060_FromTheRooftop", "box_Download_Gameplay_58.Started", "box_Ordered_Output_256.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_13_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_333()
  l0 = self.box_CinematicPrep_13
  l1 = self.box_MultipleOR_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1547698703", "1547698703", "S14M060_FromTheRooftop", "box_CinematicPrep_13.PostOut", "box_MultipleOR_333.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Escape_Gameplay_33_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1731115961"
  l0.Out = self.f_box_Simple_Node_31_Out
  l0 = self.box_Escape_Gameplay_33
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|82800385", "82800385", "S14M060_FromTheRooftop", "box_Escape_Gameplay_33.Escaped", "box_Simple_Node_31.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_33_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_136()
  l0 = self.box_Escape_Gameplay_33
  l1 = self.box_TriggerMonitor_v2_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1246608118", "1246608118", "S14M060_FromTheRooftop", "box_Escape_Gameplay_33.Started", "box_TriggerMonitor_v2_136.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_79_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1870616827", "1870616827", "S14M060_FromTheRooftop", "box_Simple_Node_79.Out", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOMonitor_69_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_688"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1187134976"
  l0.Out = self.f_box_Simple_Node_688_Out
  l0 = self.box_CLOMonitor_69
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|31847423", "31847423", "S14M060_FromTheRooftop", "box_CLOMonitor_69.Enabled", "box_Simple_Node_688.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_69_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_69
  self.RooftopGuard02 = l0.UserID
end
function export:f_box_CLOMonitor_69_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_69
  self.RooftopGuard02 = l0.UserID
end
function export:f_box_CLOMonitor_69_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_69
  self.RooftopGuard02 = l0.UserID
  l0 = self.box_HackableController_v2_698
  l0.HackableEntity = self.RooftopGuard02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluFemale02",
    item = "",
    id = "4294988671"
  }
  l0 = self.box_CLOMonitor_69
  l1 = self.box_HackableController_v2_698
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1115884749", "1115884749", "S14M060_FromTheRooftop", "box_CLOMonitor_69.OnUserInPlace", "box_HackableController_v2_698.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_SetBoolean_v2_60_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_60_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.IsE3 = l0.Target
  l1 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1094822783", "1094822783", "S14M060_FromTheRooftop", "box_SetBoolean_v2_60.SetTrue", "box_MultipleOR_61.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_60_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_60
  self.IsE3 = l0.Target
end
function export:f_box_TriggerMonitor_v2_331_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_208()
  l0 = self.box_TriggerMonitor_v2_331
  l1 = self.box_OnceOnly_v3_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|286074379", "286074379", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_331.Enter", "box_OnceOnly_v3_208.In", l0, l1)
  l1:In(0)
end
function export:f_box_Lanes_Restrictions_Control_263_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_48
  l0.CLO = "9223372051123028533"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1493184385", "1493184385", "S14M060_FromTheRooftop", "box_Lanes_Restrictions_Control_263.Out", "box_CLOController_48.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Set_List_89_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.Agent_List = l0.Target
end
function export:f_box_OnceOnly_v3_658_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_DownloadStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_575"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1476464197"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_575_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_OnceOnly_v3_658
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1441009532", "1441009532", "S14M060_FromTheRooftop", "box_OnceOnly_v3_658.Out", "box_Compare_Boolean_v2_575.In", l0, l1)
  l1:In()
end
function export:f_box_FelonyTargetController_201_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_630
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|633489612", "633489612", "S14M060_FromTheRooftop", "box_FelonyTargetController_201.Out", "box_CinematicPrep_630.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_SetBoolean_v2_729_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_729
  self.StartedPenthouseInfiltration = l0.Target
end
function export:f_box_SetBoolean_v2_729_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_729
  self.StartedPenthouseInfiltration = l0.Target
end
function export:f_box_SetBoolean_v2_729_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_729
  self.StartedPenthouseInfiltration = l0.Target
end
function export:f_box_SetBoolean_v2_729_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_729
  self.StartedPenthouseInfiltration = l0.Target
end
function export:f_box_SetBoolean_v2_729_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_729
  self.StartedPenthouseInfiltration = l0.Target
end
function export:f_box_Set_List_130_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.KitchenCivilians = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.IN_LivingRoomCivilians
  l0._graph = self
  l0._name = "box_Set_List_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|838824044"
  l0.Out = self.f_box_Set_List_81_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|382780817", "382780817", "S14M060_FromTheRooftop", "box_Set_List_130.Out", "box_Set_List_81.FromList", clone, l0)
  l0:FromList()
end
function export:f_box_OnceOnly_v3_208_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|618813704"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_OnceOnly_v3_208
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|699607567", "699607567", "S14M060_FromTheRooftop", "box_OnceOnly_v3_208.Out", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_174_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_174
  self.IsSecondCraneRopeBroken = l0.Target
end
function export:f_box_SetBoolean_v2_174_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_174
  self.IsSecondCraneRopeBroken = l0.Target
end
function export:f_box_SetBoolean_v2_174_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_174
  self.IsSecondCraneRopeBroken = l0.Target
end
function export:f_box_SetBoolean_v2_174_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_174
  self.IsSecondCraneRopeBroken = l0.Target
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|891345094"
  l0.Out = self.f_box_Simple_Node_172_Out
  l0 = self.box_SetBoolean_v2_174
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|570807271", "570807271", "S14M060_FromTheRooftop", "box_SetBoolean_v2_174.SetTrue", "box_Simple_Node_172.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_174_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_174
  self.IsSecondCraneRopeBroken = l0.Target
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1045382807"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|989318241", "989318241", "S14M060_FromTheRooftop", "box_MissionLayer_v2_1.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsE3
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1575480143"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_35_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1857943631", "1857943631", "S14M060_FromTheRooftop", "box_Simple_Node_82.Out", "box_Compare_Boolean_v2_35.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_10_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.Is_CheckPoint3 = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.Is_CheckPoint3 = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.Is_CheckPoint3 = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.Is_CheckPoint3 = l0.Target
  self:OnEnter_box_MultipleOR_156()
  l1 = self.box_MultipleOR_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|600896681", "600896681", "S14M060_FromTheRooftop", "box_SetBoolean_v2_10.SetTrue", "box_MultipleOR_156.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_10_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.Is_CheckPoint3 = l0.Target
end
function export:f_box_Simple_Node_163_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|860041466", "860041466", "S14M060_FromTheRooftop", "box_Simple_Node_163.Out", "box_MultipleOR_98.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_246_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_246
  l1 = self.box_SetBoolean_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|390235151", "390235151", "S14M060_FromTheRooftop", "box_MultipleOR_246.Out", "box_SetBoolean_v2_60.True", l0, l1)
  l1:True()
end
function export:f_box_Compare_Boolean_v2_578_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_199()
  l0 = self.box_LogicGate_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|978891515", "978891515", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_578.A_is_False", "box_LogicGate_v2_199.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_688_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1414167263", "1414167263", "S14M060_FromTheRooftop", "box_Simple_Node_688.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(5)
end
function export:f_box_Simple_Node_588_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1101780630"
  l0.Out = self.f_box_Simple_Node_79_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|489744934", "489744934", "S14M060_FromTheRooftop", "box_Simple_Node_588.Out", "box_Simple_Node_79.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_680_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_676
  l0.CLO = "9223372049666719393"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1403478440", "1403478440", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_676.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_678
  l0.CLO = "9223372049666651949"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1013430011", "1013430011", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_678.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_677
  l0.CLO = "9223372049349992159"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2089659048", "2089659048", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_677.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_679
  l0.CLO = "9223372052085902082"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1901006613", "1901006613", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_679.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_675
  l0.CLO = "9223372048716244425"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1450361660", "1450361660", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_675.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_69
  l0.CLO = "9223372052085900159"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1976428892", "1976428892", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_673
  l0.CLO = "9223372051158221880"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2010825304", "2010825304", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_673.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_680_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOMonitor_314
  l0.CLO = "9223372050100273130"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|457654513", "457654513", "S14M060_FromTheRooftop", "box_Ordered_Output_680.Out", "box_CLOMonitor_314.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_VisibilityController_v2_269_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_5
  l0.SceneEntity = "9223372048840582144"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/s14_dusanheli_scr.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|157177335", "157177335", "S14M060_FromTheRooftop", "box_VisibilityController_v2_269.Shown", "box_PlaySequence_v5_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_287_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052897006598"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_345"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1977600650"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_345_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CinematicPrep_287
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1587406713", "1587406713", "S14M060_FromTheRooftop", "box_CinematicPrep_287.PostOut", "box_LightController_345.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_WitnessSystemController_v2_604_DenunciatorEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/WitnessSytemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CombatAsBeenTriggered
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|689239648"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_212_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_212_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|789280420", "789280420", "S14M060_FromTheRooftop", "box_WitnessSystemController_v2_604.DenunciatorEnabled", "box_Compare_Boolean_v2_212.In", clone, l0)
  l0:In()
end
function export:f_box_Set_List_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.DiningRoomCivilians = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.IN_MicrowaveGuy
  l0._graph = self
  l0._name = "box_Set_Entity_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1795602418"
  l0.Out = self.f_box_Set_Entity_227_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1625943753", "1625943753", "S14M060_FromTheRooftop", "box_Set_List_77.Out", "box_Set_Entity_227.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_291_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_290
  l0.CLO = "9223372052576303046"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|584182793", "584182793", "S14M060_FromTheRooftop", "box_Ordered_Output_291.Out", "box_CLOController_290.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_291_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_289()
  l0 = self.box_Hackable_Monitor_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2087762273", "2087762273", "S14M060_FromTheRooftop", "box_Ordered_Output_291.Out", "box_Hackable_Monitor_289.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Random_Float_587_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_586
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_586
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1189687129", "1189687129", "S14M060_FromTheRooftop", "box_Random_Float_587.Out", "box_Timer_v2_586.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_241_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_241
  l1 = self.box_SetBoolean_v2_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1124101013", "1124101013", "S14M060_FromTheRooftop", "box_MultipleOR_241.Out", "box_SetBoolean_v2_238.True", l0, l1)
  l1:True()
end
function export:f_box_LMA_Layer_Controller_327_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_189()
  l0 = self.box_LMA_Layer_Controller_327
  l1 = self.box_MultipleOR_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1266912082", "1266912082", "S14M060_FromTheRooftop", "box_LMA_Layer_Controller_327.Loaded", "box_MultipleOR_189.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_476_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371193"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_473"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2088060580"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1029744676", "1029744676", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_473.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371189"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_486"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|404185450"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|410448541", "410448541", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_486.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371191"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_407"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1532637563"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|359478491", "359478491", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_407.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371209"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_479"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1000670361"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1909572369", "1909572369", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_479.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371211"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_477"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1372407711"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|61902214", "61902214", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_477.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371207"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_484"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|761255425"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2022088209", "2022088209", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_484.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371205"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_499"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1508484285"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2143222124", "2143222124", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_499.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371203"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_408"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|693598877"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|709895875", "709895875", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_408.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371201"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_495"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1273260229"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1935460182", "1935460182", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_495.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292693"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_468"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2092364207"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1962685897", "1962685897", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_468.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052412704291"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_471"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1532315870"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|99889596", "99889596", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_471.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279731"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_488"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|639059407"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|211343255", "211343255", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_488.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279735"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_489"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1581971771"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|328048282", "328048282", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_489.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279733"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_497"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1842802076"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|907254575", "907254575", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_497.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279801"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_465"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1135946309"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1562514103", "1562514103", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_465.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279799"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_500"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|998117172"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|432552427", "432552427", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_500.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279797"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_400"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|345945939"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2126412544", "2126412544", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_400.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091515"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_466"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|67915980"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1579059217", "1579059217", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_MaterialController_466.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_476_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_494"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2093524773"
  l0._DynamicAnchors = {Out = 17}
  l0.Out[0] = self.f_box_Ordered_Output_494_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_494_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_494_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_494_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_494_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_494_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_494_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_494_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_494_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_494_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_494_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_494_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_494_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_494_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_494_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_494_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_494_Out_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1115077178", "1115077178", "S14M060_FromTheRooftop", "box_Ordered_Output_476.Out", "box_Ordered_Output_494.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_222_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_PhoneCommunicationController_222
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1116235074", "1116235074", "S14M060_FromTheRooftop", "box_PhoneCommunicationController_222.OnCommunicationFinished", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_94_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_84()
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|270287434", "270287434", "S14M060_FromTheRooftop", "box_Simple_Node_94.Out", "box_EnvironmentWeatherOverride_84.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_188_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_219()
  l0 = self.box_LogicGate_v2_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1016480869", "1016480869", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_188.A_is_False", "box_LogicGate_v2_219.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_249_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1651387607", "1651387607", "S14M060_FromTheRooftop", "box_Simple_Node_249.Out", "box_MultipleOR_36.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2135462143"
  l0.Out = self.f_box_Simple_Node_95_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1874155875", "1874155875", "S14M060_FromTheRooftop", "box_Simple_Node_96.Out", "box_Simple_Node_95.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_240_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_240
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_240_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_240
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_240_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_240
  self.Is_STAGE = l0.Target
end
function export:f_box_SetBoolean_v2_240_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_240
  self.Is_STAGE = l0.Target
  l0 = self.box_MissionCheckpointReach_110
  l0.Checkpoint = "CheckPoint_0_E3STAGE"
  l0 = self.box_SetBoolean_v2_240
  l1 = self.box_MissionCheckpointReach_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1883778849", "1883778849", "S14M060_FromTheRooftop", "box_SetBoolean_v2_240.SetTrue", "box_MissionCheckpointReach_110.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_240_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_240
  self.Is_STAGE = l0.Target
end
function export:f_box_FelonySoundController_262_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_736"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|249847561"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_736_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_736_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_736_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1789550898", "1789550898", "S14M060_FromTheRooftop", "box_FelonySoundController_262.Enabled", "box_Ordered_Output_736.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_75_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_Multiple_AND_75
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|696688203", "696688203", "S14M060_FromTheRooftop", "box_Multiple_AND_75.Out", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VisibilityController_v2_128_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049574754200"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1885968298"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_224_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1828984370", "1828984370", "S14M060_FromTheRooftop", "box_VisibilityController_v2_128.Hidden", "box_VisibilityController_v2_224.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Wait_Qualities_Loaded_728_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_287
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Wait_Qualities_Loaded_728
  l1 = self.box_CinematicPrep_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|229422612", "229422612", "S14M060_FromTheRooftop", "box_Wait_Qualities_Loaded_728.Loaded", "box_CinematicPrep_287.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Interact_Gameplay_56_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_731"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1807951254"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_731_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_731_Out_1
  l0 = self.box_Interact_Gameplay_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|347306125", "347306125", "S14M060_FromTheRooftop", "box_Interact_Gameplay_56.Interacted", "box_Ordered_Output_731.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_14_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_148
  l0.Group = "PenthouseSecurity"
  l0 = self.box_PGTController_v2_14
  l1 = self.box_GetNPC_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1614030634", "1614030634", "S14M060_FromTheRooftop", "box_PGTController_v2_14.AllSpawned", "box_GetNPC_148.GetEnemies", l0, l1)
  l1:GetEnemies()
end
function export:f_box_PGTController_v2_14_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_667"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|184717625"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_667_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_667_Out_1
  l0 = self.box_PGTController_v2_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1610761047", "1610761047", "S14M060_FromTheRooftop", "box_PGTController_v2_14.Started", "box_Ordered_Output_667.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_160_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_161
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_MultipleOR_160
  l1 = self.box_MissionCheckpointReach_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1950484086", "1950484086", "S14M060_FromTheRooftop", "box_MultipleOR_160.Out", "box_MissionCheckpointReach_161.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_689_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1230861258", "1230861258", "S14M060_FromTheRooftop", "box_Simple_Node_689.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(6)
end
function export:f_box_PlaySound_v2_334_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_738
  l0.SoundId = "soundbinary/2729294870.bnk"
  l0 = self.box_PlaySound_v2_334
  l1 = self.box_PlaySound_v2_738
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1405555534", "1405555534", "S14M060_FromTheRooftop", "box_PlaySound_v2_334.Finished", "box_PlaySound_v2_738.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_737_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_334
  l0.SoundId = "soundbinary/407543336.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1917001176", "1917001176", "S14M060_FromTheRooftop", "box_Ordered_Output_737.Out", "box_PlaySound_v2_334.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_737_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_326
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|248681571", "248681571", "S14M060_FromTheRooftop", "box_Ordered_Output_737.Out", "box_Timer_v2_326.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_235_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_74()
  l0 = self.box_OnceOnly_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|847813372", "847813372", "S14M060_FromTheRooftop", "box_Ordered_Output_235.Out", "box_OnceOnly_v3_74.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_235_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_234
  l0.SoundId = "soundbinary/2439147412.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1444687985", "1444687985", "S14M060_FromTheRooftop", "box_Ordered_Output_235.Out", "box_PlaySound_v2_234.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_628_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371211"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_524"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1471818247"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_628
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|106309523", "106309523", "S14M060_FromTheRooftop", "box_Timer_v2_628.TimeElapsed", "box_Dynamic_Media_Controller_524.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_121_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_562()
  l0 = self.box_Security_Camera_Monitor_562
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2125266259", "2125266259", "S14M060_FromTheRooftop", "box_Ordered_Output_121.Out", "box_Security_Camera_Monitor_562.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_121_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_331()
  l0 = self.box_TriggerMonitor_v2_331
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2014936515", "2014936515", "S14M060_FromTheRooftop", "box_Ordered_Output_121.Out", "box_TriggerMonitor_v2_331.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_121_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_124()
  l0 = self.box_TriggerMonitor_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|349369049", "349369049", "S14M060_FromTheRooftop", "box_Ordered_Output_121.Out", "box_TriggerMonitor_v2_124.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_98()
  l0 = self.box_MultipleOR_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1711045276", "1711045276", "S14M060_FromTheRooftop", "box_Ordered_Output_91.Out", "box_MultipleOR_98.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1308756019"
  l0.Out = self.f_box_Simple_Node_96_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|926037784", "926037784", "S14M060_FromTheRooftop", "box_Ordered_Output_91.Out", "box_Simple_Node_96.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_136_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_352()
  l0 = self.box_TriggerMonitor_v2_136
  l1 = self.box_MultipleOR_352
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|843635702", "843635702", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_136.Disabled", "box_MultipleOR_352.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_136_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M060.Objectives",
    item = "Objective",
    id = "697844"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_TriggerMonitor_v2_136
  l1 = self.box_MissionMessageController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1428106367", "1428106367", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_136.Enter", "box_MissionMessageController_v3_23.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TriggerMonitor_v2_136_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_218
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0 = self.box_TriggerMonitor_v2_136
  l1 = self.box_MissionMessageController_v3_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1704672345", "1704672345", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_136.Leave", "box_MissionMessageController_v3_218.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Compare_Boolean_v2_16_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_CheckPoint4
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1573464505"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_39_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1112578156", "1112578156", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_16.A_is_False", "box_Compare_Boolean_v2_39.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_16_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1084214424", "1084214424", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_16.A_is_True", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_SetBoolean_v2_198_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_198
  self.CombatAsBeenTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_198_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_198
  self.CombatAsBeenTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_198_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_198
  self.CombatAsBeenTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_198_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_198
  self.CombatAsBeenTriggered = l0.Target
end
function export:f_box_SetBoolean_v2_198_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_198
  self.CombatAsBeenTriggered = l0.Target
end
function export:f_box_VisibilityController_v2_581_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372052897006598"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_343"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|831734291"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_343_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1075269375", "1075269375", "S14M060_FromTheRooftop", "box_VisibilityController_v2_581.Hidden", "box_LightController_343.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_169_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EntityLoadingMonitor_97()
  l0 = self.box_TriggerMonitor_v2_169
  l1 = self.box_EntityLoadingMonitor_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1900701757", "1900701757", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_169.Enter", "box_EntityLoadingMonitor_97.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_169_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_315()
  l0 = self.box_TriggerMonitor_v2_169
  l1 = self.box_MultipleOR_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1530585144", "1530585144", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_169.Leave", "box_MultipleOR_315.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_461()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|573578285", "573578285", "S14M060_FromTheRooftop", "box_Ordered_Output_107.Out", "box_Media_System_Custom_Broadcast_Controller_461.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_399"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|68454009"
  l0._DynamicAnchors = {Out = 17}
  l0.Out[0] = self.f_box_Ordered_Output_399_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_399_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_399_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_399_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_399_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_399_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_399_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_399_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_399_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_399_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_399_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_399_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_399_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_399_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_399_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_399_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_399_Out_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1479624930", "1479624930", "S14M060_FromTheRooftop", "box_Ordered_Output_107.Out", "box_Ordered_Output_399.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_268_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372049574754200"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1205384602"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_269_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|751490191", "751490191", "S14M060_FromTheRooftop", "box_VisibilityController_v2_268.Shown", "box_VisibilityController_v2_269.Show", clone, l0)
  l0:Show()
end
function export:f_box_Multiple_AND_681_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_14
  l0.PGTMissionArea = "9223372047225690698"
  l0 = self.box_Multiple_AND_681
  l1 = self.box_PGTController_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1322184377", "1322184377", "S14M060_FromTheRooftop", "box_Multiple_AND_681.Out", "box_PGTController_v2_14.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_7_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Is_CheckPoint4
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1076174378"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_157_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_157_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1241136783", "1241136783", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_7.A_is_False", "box_Compare_Boolean_v2_157.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_7_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1719344788"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_164_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_164_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|473626892", "473626892", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_7.A_is_True", "box_Ordered_Output_164.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_607_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371201"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_526"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|941266019"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_607
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2035823490", "2035823490", "S14M060_FromTheRooftop", "box_Timer_v2_607.TimeElapsed", "box_Dynamic_Media_Controller_526.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Simple_Node_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1712113643"
  l0.Out = self.f_box_Simple_Node_109_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1612867535", "1612867535", "S14M060_FromTheRooftop", "box_Simple_Node_106.Out", "box_Simple_Node_109.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_575_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_577
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372054453149237"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|550677158", "550677158", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_575.A_is_False", "box_PhoneCommunicationController_577.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_456_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292655"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_460"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|148796256"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|402537687", "402537687", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_460.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292657"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_464"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|492164134"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1098297211", "1098297211", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_464.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292659"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_459"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|299163114"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|451115965", "451115965", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_459.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434279737"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_462"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1973975542"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|626272784", "626272784", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_462.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292653"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_463"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1845474690"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|129116484", "129116484", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_463.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371255"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_409"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2119615914"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1748881621", "1748881621", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_409.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371231"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_482"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|42102919"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1237215818", "1237215818", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_482.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371257"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_467"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1757215224"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2081560572", "2081560572", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_467.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371227"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_411"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|378876768"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|84835761", "84835761", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_411.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371229"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_496"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1876122455"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1728072175", "1728072175", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_496.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371198"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_474"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|384454618"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1678435644", "1678435644", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_474.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371196"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_472"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1140569409"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|251843394", "251843394", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_472.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292663"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_490"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1303813688"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|293330739", "293330739", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_490.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292661"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_481"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1431697991"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1151857359", "1151857359", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_481.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371233"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_458"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2140176903"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|429907709", "429907709", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_MaterialController_458.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_456_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_476"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1271736812"
  l0._DynamicAnchors = {Out = 19}
  l0.Out[0] = self.f_box_Ordered_Output_476_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_476_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_476_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_476_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_476_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_476_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_476_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_476_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_476_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_476_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_476_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_476_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_476_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_476_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_476_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_476_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_476_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_476_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_476_Out_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1257954091", "1257954091", "S14M060_FromTheRooftop", "box_Ordered_Output_456.Out", "box_Ordered_Output_476.In", clone, l0)
  l0:In()
end
function export:f_box_Random_Float_622_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_634
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_634
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1072231461", "1072231461", "S14M060_FromTheRooftop", "box_Random_Float_622.Out", "box_Timer_v2_634.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_322_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1386457017"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_235_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_235_Out_1
  l0 = self.box_MissionLayer_v2_322
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|659879352", "659879352", "S14M060_FromTheRooftop", "box_MissionLayer_v2_322.Unloaded", "box_Ordered_Output_235.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_11()
  l0 = self.box_MultipleOR_9
  l1 = self.box_MissionZone_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1562310442", "1562310442", "S14M060_FromTheRooftop", "box_MultipleOR_9.Out", "box_MissionZone_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_110_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MissionCheckpointReach_110
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|151866871", "151866871", "S14M060_FromTheRooftop", "box_MissionCheckpointReach_110.Out", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Random_Float_610_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_607
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_607
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|789826414", "789826414", "S14M060_FromTheRooftop", "box_Random_Float_610.Out", "box_Timer_v2_607.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_627_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371191"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_519"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|620294854"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_627
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|365816123", "365816123", "S14M060_FromTheRooftop", "box_Timer_v2_627.TimeElapsed", "box_Dynamic_Media_Controller_519.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_MultipleOR_756_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1396760202"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_121_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_121_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_121_Out_2
  l0 = self.box_MultipleOR_756
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1088607490", "1088607490", "S14M060_FromTheRooftop", "box_MultipleOR_756.Out", "box_Ordered_Output_121.In", l0, l1)
  l1:In()
end
function export:f_box_Crane_Controller_26_PlatformPositionSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372046811303584"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|199574186"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_192_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Crane_Controller_26
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|843418504", "843418504", "S14M060_FromTheRooftop", "box_Crane_Controller_26.PlatformPositionSet", "box_InteractionScriptController_192.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Random_Float_620_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_608
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_608
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1488969970", "1488969970", "S14M060_FromTheRooftop", "box_Random_Float_620.Out", "box_Timer_v2_608.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_98_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|38504377"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0 = self.box_MultipleOR_98
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|550365382", "550365382", "S14M060_FromTheRooftop", "box_MultipleOR_98.Out", "box_Ordered_Output_90.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_161_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_40()
  l0 = self.box_MissionCheckpointReach_161
  l1 = self.box_OnceOnly_v3_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1146707305", "1146707305", "S14M060_FromTheRooftop", "box_MissionCheckpointReach_161.Out", "box_OnceOnly_v3_40.In", l0, l1)
  l1:In(0)
end
function export:f_box_FelonyTargetMonitor_211_Chasing()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_202()
  l0 = self.box_FelonyTargetMonitor_211
  l1 = self.box_SetBoolean_v2_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|376454236", "376454236", "S14M060_FromTheRooftop", "box_FelonyTargetMonitor_211.Chasing", "box_SetBoolean_v2_202.True", l0, l1)
  l1:True()
end
function export:f_box_FelonyTargetMonitor_211_Searching()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_202()
  l0 = self.box_FelonyTargetMonitor_211
  l1 = self.box_SetBoolean_v2_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|865461350", "865461350", "S14M060_FromTheRooftop", "box_FelonyTargetMonitor_211.Searching", "box_SetBoolean_v2_202.False", l0, l1)
  l1:False()
end
function export:f_box_FelonyTargetMonitor_211_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|252879304"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_34_Hidden
  l0 = self.box_FelonyTargetMonitor_211
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|764339045", "764339045", "S14M060_FromTheRooftop", "box_FelonyTargetMonitor_211.Started", "box_Show_Or_Hide_All_UI_34.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionZone_11_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_680"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1193506092"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_680_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_680_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_680_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_680_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_680_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_680_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_680_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_680_Out_7
  l0 = self.box_MissionZone_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|283753053", "283753053", "S14M060_FromTheRooftop", "box_MissionZone_11.Enabled", "box_Ordered_Output_680.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|261253017"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_194_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_194_Out_1
  l0 = self.box_MissionMessageController_v3_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1735365292", "1735365292", "S14M060_FromTheRooftop", "box_MissionMessageController_v3_43.Out", "box_Ordered_Output_194.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_39_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|800698496", "800698496", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_39.A_is_True", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_35_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S14M060_CallCopsFelony_72()
  l0 = self.box_S14M060_CallCopsFelony_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1723215904", "1723215904", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_35.A_is_True", "box_S14M060_CallCopsFelony_72.Spawn_Second_Wave", clone, l0)
  l0:Spawn_Second_Wave()
end
function export:f_box_LogicGate_v2_219_Closed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_152
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372051309651808"
  l0 = self.box_LogicGate_v2_219
  l1 = self.box_PhoneCommunicationController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2121864628", "2121864628", "S14M060_FromTheRooftop", "box_LogicGate_v2_219.Closed", "box_PhoneCommunicationController_152.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LogicGate_v2_219_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_199()
  l0 = self.box_LogicGate_v2_219
  l1 = self.box_LogicGate_v2_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1480031747", "1480031747", "S14M060_FromTheRooftop", "box_LogicGate_v2_219.Out", "box_LogicGate_v2_199.Close", l0, l1)
  l1:Close()
end
function export:f_box_Simple_Node_261_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_333()
  l0 = self.box_MultipleOR_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|84643110", "84643110", "S14M060_FromTheRooftop", "box_Simple_Node_261.Out", "box_MultipleOR_333.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Crane_Controller_196_PlatformPositionSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_158()
  l0 = self.box_Crane_Controller_196
  l1 = self.box_MultipleOR_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1212289054", "1212289054", "S14M060_FromTheRooftop", "box_Crane_Controller_196.PlatformPositionSet", "box_MultipleOR_158.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_402_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_301
  l0.Entity = self.SoundPoint_E3_Screen_FU_Display
  l0.SoundId = "soundbinary/798665175.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|445620808", "445620808", "S14M060_FromTheRooftop", "box_Ordered_Output_402.Out", "box_PlaySound_v2_301.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_402_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372074665742397"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_357"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|111088037"
  l0.Activated = self.f_box_MissionMusicController_357_Activated
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|24996934", "24996934", "S14M060_FromTheRooftop", "box_Ordered_Output_402.Out", "box_MissionMusicController_357.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Random_Float_623_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_627
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_627
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|270777307", "270777307", "S14M060_FromTheRooftop", "box_Random_Float_623.Out", "box_Timer_v2_627.Start", clone, l0)
  l0:Start()
end
function export:f_box_SetFloat_v2_559_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.Screen_Min = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 2
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_560"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1622653019"
  l0.Out = self.f_box_SetFloat_v2_560_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|17778766", "17778766", "S14M060_FromTheRooftop", "box_SetFloat_v2_559.Out", "box_SetFloat_v2_560.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Simple_Node_170_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_181()
  l0 = self.box_MultipleOR_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1796659792", "1796659792", "S14M060_FromTheRooftop", "box_Simple_Node_170.Out", "box_MultipleOR_181.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_154_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_162
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_InteractionScriptMonitor_v2_154
  l1 = self.box_MissionCheckpointReach_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1049935595", "1049935595", "S14M060_FromTheRooftop", "box_InteractionScriptMonitor_v2_154.Enabled", "box_MissionCheckpointReach_162.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_154_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_160()
  l0 = self.box_InteractionScriptMonitor_v2_154
  l1 = self.box_MultipleOR_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|124269304", "124269304", "S14M060_FromTheRooftop", "box_InteractionScriptMonitor_v2_154.InteractionFinished", "box_MultipleOR_160.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetFloat_v2_560_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.Screen_Max = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_518"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1874885856"
  l0._DynamicAnchors = {Out = 44}
  l0.Out[0] = self.f_box_Ordered_Output_518_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_518_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_518_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_518_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_518_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_518_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_518_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_518_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_518_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_518_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_518_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_518_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_518_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_518_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_518_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_518_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_518_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_518_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_518_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_518_Out_19
  l0.Out[20] = self.f_box_Ordered_Output_518_Out_20
  l0.Out[21] = self.f_box_Ordered_Output_518_Out_21
  l0.Out[22] = self.f_box_Ordered_Output_518_Out_22
  l0.Out[23] = self.f_box_Ordered_Output_518_Out_23
  l0.Out[24] = self.f_box_Ordered_Output_518_Out_24
  l0.Out[25] = self.f_box_Ordered_Output_518_Out_25
  l0.Out[26] = self.f_box_Ordered_Output_518_Out_26
  l0.Out[27] = self.f_box_Ordered_Output_518_Out_27
  l0.Out[28] = self.f_box_Ordered_Output_518_Out_28
  l0.Out[29] = self.f_box_Ordered_Output_518_Out_29
  l0.Out[30] = self.f_box_Ordered_Output_518_Out_30
  l0.Out[31] = self.f_box_Ordered_Output_518_Out_31
  l0.Out[32] = self.f_box_Ordered_Output_518_Out_32
  l0.Out[33] = self.f_box_Ordered_Output_518_Out_33
  l0.Out[34] = self.f_box_Ordered_Output_518_Out_34
  l0.Out[35] = self.f_box_Ordered_Output_518_Out_35
  l0.Out[36] = self.f_box_Ordered_Output_518_Out_36
  l0.Out[37] = self.f_box_Ordered_Output_518_Out_37
  l0.Out[38] = self.f_box_Ordered_Output_518_Out_38
  l0.Out[39] = self.f_box_Ordered_Output_518_Out_39
  l0.Out[40] = self.f_box_Ordered_Output_518_Out_40
  l0.Out[41] = self.f_box_Ordered_Output_518_Out_41
  l0.Out[42] = self.f_box_Ordered_Output_518_Out_42
  l0.Out[43] = self.f_box_Ordered_Output_518_Out_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1528610848", "1528610848", "S14M060_FromTheRooftop", "box_SetFloat_v2_560.Out", "box_Ordered_Output_518.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_555_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371227"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_514"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1744608919"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_555
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1431383119", "1431383119", "S14M060_FromTheRooftop", "box_Timer_v2_555.TimeElapsed", "box_Dynamic_Media_Controller_514.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_117_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1906226431", "1906226431", "S14M060_FromTheRooftop", "box_Ordered_Output_117.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_117_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1954804709", "1954804709", "S14M060_FromTheRooftop", "box_Ordered_Output_117.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_FelonyTargetController_598_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S14M060_CallCopsFelony_72()
  l0 = self.box_S14M060_CallCopsFelony_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|661384651", "661384651", "S14M060_FromTheRooftop", "box_FelonyTargetController_598.ScriptedAgentsAdded", "box_S14M060_CallCopsFelony_72.Launch_SecondWave", clone, l0)
  l0:Launch_SecondWave()
end
function export:f_box_Simple_Node_593_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_589
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|210008465", "210008465", "S14M060_FromTheRooftop", "box_Simple_Node_593.Out", "box_SetBoolean_v2_589.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_354_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_389"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|674564208"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_389_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1986520790", "1986520790", "S14M060_FromTheRooftop", "box_Ordered_Output_354.Out", "box_Show_Or_Hide_All_UI_389.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_354_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_353"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|564219465"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_353_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_353_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|978801109", "978801109", "S14M060_FromTheRooftop", "box_Ordered_Output_354.Out", "box_Ordered_Output_353.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_289_HackContextual()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1242314046"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_291_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_291_Out_1
  l0 = self.box_Hackable_Monitor_289
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1283860412", "1283860412", "S14M060_FromTheRooftop", "box_Hackable_Monitor_289.HackContextual", "box_Ordered_Output_291.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_338_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1817365146"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_273_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_273_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1295672686", "1295672686", "S14M060_FromTheRooftop", "box_Simple_Node_338.Out", "box_Ordered_Output_273.In", clone, l0)
  l0:In()
end
function export:f_box_LookAtTriggerMonitor_Monitor_186_EnterFOV()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_185()
  l0 = self.box_LookAtTriggerMonitor_Monitor_186
  l1 = self.box_OnceOnly_v3_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1946372788", "1946372788", "S14M060_FromTheRooftop", "box_LookAtTriggerMonitor_Monitor_186.EnterFOV", "box_OnceOnly_v3_185.In", l0, l1)
  l1:In(2)
end
function export:f_box_MissionMessageController_v3_218_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_352()
  l0 = self.box_MissionMessageController_v3_218
  l1 = self.box_MultipleOR_352
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1987574918", "1987574918", "S14M060_FromTheRooftop", "box_MissionMessageController_v3_218.Out", "box_MultipleOR_352.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_700_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_189()
  l0 = self.box_Timer_v2_700
  l1 = self.box_MultipleOR_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1120001655", "1120001655", "S14M060_FromTheRooftop", "box_Timer_v2_700.TimeElapsed", "box_MultipleOR_189.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_29_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_125()
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1401223439", "1401223439", "S14M060_FromTheRooftop", "box_PlaySequence_v5_29.Finished", "box_MultipleOR_125.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_29_Skipped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_740
  l0.SoundId = "soundbinary/2729294870.bnk"
  l0 = self.box_PlaySequence_v5_29
  l1 = self.box_PlaySound_v2_740
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1555523380", "1555523380", "S14M060_FromTheRooftop", "box_PlaySequence_v5_29.Skipped", "box_PlaySound_v2_740.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySequence_v5_29_SPOut__OutroCar_CIN_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372054982371958"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
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
  l0._name = "box_Lanes_Restrictions_Control_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|308360392"
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_29
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2075442343", "2075442343", "S14M060_FromTheRooftop", "box_PlaySequence_v5_29.SPOut", "box_Lanes_Restrictions_Control_132.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_29_SPOut__TheEnd_()
  local l0
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_29()
  l0 = self.box_PlaySequence_v5_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|570193665", "570193665", "S14M060_FromTheRooftop", "box_PlaySequence_v5_29.SPOut", "box_PlaySequence_v5_29.Skip", l0, l0)
  l0:Skip()
end
function export:f_box_PlaySequence_v5_29_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_29
  self.WrenchPostLanding = l0.EntityOut.WrenchPostLanding
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052254616660"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|498514805"
  l0.Out = self.f_box_Lanes_Restrictions_Control_266_Out
  l0 = self.box_PlaySequence_v5_29
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|974743403", "974743403", "S14M060_FromTheRooftop", "box_PlaySequence_v5_29.Started", "box_Lanes_Restrictions_Control_266.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_210_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_63()
  l0 = self.box_MissionCheckpointReach_210
  l1 = self.box_MultipleOR_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2108953580", "2108953580", "S14M060_FromTheRooftop", "box_MissionCheckpointReach_210.Out", "box_MultipleOR_63.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_MultipleOR_99_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_4
  l0.Entity = "9223372051084305624"
  l0 = self.box_MultipleOR_99
  l1 = self.box_EntityLoadingMonitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|180441550", "180441550", "S14M060_FromTheRooftop", "box_MultipleOR_99.Out", "box_EntityLoadingMonitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_350_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_347
  l0.Entity = "9223372051084305624"
  l0.Rotation = -65
  l0.PlatformHeight = 6
  l0.SliderPosition = 47
  l0 = self.box_EntityLoadingMonitor_350
  l1 = self.box_Crane_Controller_347
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1191253141", "1191253141", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_350.AllLoaded", "box_Crane_Controller_347.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_Simple_Node_109_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_11()
  l0 = self.box_MissionZone_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1399081292", "1399081292", "S14M060_FromTheRooftop", "box_Simple_Node_109.Out", "box_MissionZone_11.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_164_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_EntityLoadingMonitor_68
  l0.AutoDisable = 1
  l0.Entity = "9223372049574754202"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|502819632", "502819632", "S14M060_FromTheRooftop", "box_Ordered_Output_164.Out", "box_EntityLoadingMonitor_68.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_164_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1181759396"
  l0.Out = self.f_box_Simple_Node_163_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|642636408", "642636408", "S14M060_FromTheRooftop", "box_Ordered_Output_164.Out", "box_Simple_Node_163.In", clone, l0)
  l0:In()
end
function export:f_box_Random_Float_579_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_576
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_576
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|552190424", "552190424", "S14M060_FromTheRooftop", "box_Random_Float_579.Out", "box_Timer_v2_576.Start", clone, l0)
  l0:Start()
end
function export:f_box_GetPosition_204_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self.Crane_XPos = l0.xPos
  self.Crane_YPos = l0.yPos
  self.Crane_ZPos = l0.zPos
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1068377280"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_229_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_229_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_229_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|226469651", "226469651", "S14M060_FromTheRooftop", "box_GetPosition_204.Out", "box_Ordered_Output_229.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsZipLineStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|100123125"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_38_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1077380921", "1077380921", "S14M060_FromTheRooftop", "box_Simple_Node_31.Out", "box_Compare_Boolean_v2_38.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_177_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_181()
  l0 = self.box_MultipleOR_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|236398068", "236398068", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_177.A_is_False", "box_MultipleOR_181.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_256_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_395
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|670689515", "670689515", "S14M060_FromTheRooftop", "box_Ordered_Output_256.Out", "box_SetBoolean_v2_395.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_256_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_133
  l0.Seconds = 42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1566375566", "1566375566", "S14M060_FromTheRooftop", "box_Ordered_Output_256.Out", "box_Timer_v2_133.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionLayer_v2_279_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2099459700"
  l0.Out = self.f_box_Get_Player_ID_282_Out
  l0 = self.box_MissionLayer_v2_279
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1520952818", "1520952818", "S14M060_FromTheRooftop", "box_MissionLayer_v2_279.Loaded", "box_Get_Player_ID_282.In", l0, l1)
  l1:In()
end
function export:f_box_Random_Float_599_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_600
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_600
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|284711112", "284711112", "S14M060_FromTheRooftop", "box_Random_Float_599.Out", "box_Timer_v2_600.Start", clone, l0)
  l0:Start()
end
function export:f_box_Random_Float_591_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_590
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_590
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2020243593", "2020243593", "S14M060_FromTheRooftop", "box_Random_Float_591.Out", "box_Timer_v2_590.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_182_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsSecondCraneRopeBroken
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2139741908"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_175_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_182
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1180732545", "1180732545", "S14M060_FromTheRooftop", "box_MultipleOR_182.Out", "box_Compare_Boolean_v2_175.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_675_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_686"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2071445469"
  l0.Out = self.f_box_Simple_Node_686_Out
  l0 = self.box_CLOMonitor_675
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1524652638", "1524652638", "S14M060_FromTheRooftop", "box_CLOMonitor_675.Enabled", "box_Simple_Node_686.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_675_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_675
  self.CarroomGuard_02 = l0.UserID
end
function export:f_box_CLOMonitor_675_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_675
  self.CarroomGuard_02 = l0.UserID
end
function export:f_box_CLOMonitor_675_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_675
  self.CarroomGuard_02 = l0.UserID
  l0 = self.box_HackableController_v2_691
  l0.HackableEntity = self.CarroomGuard_02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluFemale01",
    item = "",
    id = "4294988670"
  }
  l0 = self.box_CLOMonitor_675
  l1 = self.box_HackableController_v2_691
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|831986796", "831986796", "S14M060_FromTheRooftop", "box_CLOMonitor_675.OnUserInPlace", "box_HackableController_v2_691.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_CLOMonitor_314_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_690"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|690681827"
  l0.Out = self.f_box_Simple_Node_690_Out
  l0 = self.box_CLOMonitor_314
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1232271232", "1232271232", "S14M060_FromTheRooftop", "box_CLOMonitor_314.Enabled", "box_Simple_Node_690.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_314_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_314
  self.BedroomGuard02 = l0.UserID
end
function export:f_box_CLOMonitor_314_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_314
  self.BedroomGuard02 = l0.UserID
end
function export:f_box_CLOMonitor_314_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_314
  self.BedroomGuard02 = l0.UserID
  l0 = self.box_HackableController_v2_692
  l0.HackableEntity = self.BedroomGuard02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale07",
    item = "",
    id = "4294988668"
  }
  l0 = self.box_CLOMonitor_314
  l1 = self.box_HackableController_v2_692
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|969230506", "969230506", "S14M060_FromTheRooftop", "box_CLOMonitor_314.OnUserInPlace", "box_HackableController_v2_692.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_626"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|380416938"
  l0.Out = self.f_box_Simple_Node_626_Out
  l0 = self.box_MultipleOR_36
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|896714900", "896714900", "S14M060_FromTheRooftop", "box_MultipleOR_36.Out", "box_Simple_Node_626.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_227_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.MicrowaveGuy = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.IN_AcidBathGuy
  l0._graph = self
  l0._name = "box_Set_Entity_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1879635361"
  l0.Out = self.f_box_Set_Entity_228_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|372441391", "372441391", "S14M060_FromTheRooftop", "box_Set_Entity_227.Out", "box_Set_Entity_228.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Ordered_Output_731_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372053677910348"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_580"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|223920293"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_580_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1580541711", "1580541711", "S14M060_FromTheRooftop", "box_Ordered_Output_731.Out", "box_VisibilityController_v2_580.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_731_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_644
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1040839813", "1040839813", "S14M060_FromTheRooftop", "box_Ordered_Output_731.Out", "box_Timer_v2_644.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_272_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_309
  l0.Entity = "9223372053354771873"
  l0.SoundId = "soundbinary/2012609525.bnk"
  l0 = self.box_PlaySound_v2_272
  l1 = self.box_PlaySound_v2_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|534673541", "534673541", "S14M060_FromTheRooftop", "box_PlaySound_v2_272.Started", "box_PlaySound_v2_309.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_281_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_281
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_281_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_281
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_281_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_281
  self.IsE3 = l0.Target
end
function export:f_box_SetBoolean_v2_281_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_281
  self.IsE3 = l0.Target
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 45
  l0._graph = self
  l0._name = "box_SetTimeOfDay_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|574047610"
  l0.Out = self.f_box_SetTimeOfDay_280_Out
  l0 = self.box_SetBoolean_v2_281
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1612645074", "1612645074", "S14M060_FromTheRooftop", "box_SetBoolean_v2_281.SetTrue", "box_SetTimeOfDay_280.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_SetBoolean_v2_281_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_281
  self.IsE3 = l0.Target
end
function export:f_box_Ordered_Output_273_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_206()
  l0 = self.box_TriggerMonitor_v2_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|740077856", "740077856", "S14M060_FromTheRooftop", "box_Ordered_Output_273.Out", "box_TriggerMonitor_v2_206.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_273_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_225()
  l0 = self.box_TriggerMonitor_v2_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1265790417", "1265790417", "S14M060_FromTheRooftop", "box_Ordered_Output_273.Out", "box_TriggerMonitor_v2_225.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_EntityLoadingMonitor_68_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_196
  l0.Entity = "9223372049574754202"
  l0.Rotation = 87
  l0.PlatformHeight = 15
  l0.SliderPosition = 47.5
  l0 = self.box_EntityLoadingMonitor_68
  l1 = self.box_Crane_Controller_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1755263741", "1755263741", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_68.AllLoaded", "box_Crane_Controller_196.SetPlatformPosition", l0, l1)
  l1:SetPlatformPosition()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_209
  l0.SoundId = "soundbinary/721270724.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2064344516", "2064344516", "S14M060_FromTheRooftop", "box_Ordered_Output_46.Out", "box_PlaySound_v2_209.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_32
  l0.CLO = "9223372052121671180"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1814151246", "1814151246", "S14M060_FromTheRooftop", "box_Ordered_Output_46.Out", "box_CLOController_32.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_46_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_272
  l0.Entity = "9223372053354771871"
  l0.SoundId = "soundbinary/2012609525.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1064319097", "1064319097", "S14M060_FromTheRooftop", "box_Ordered_Output_46.Out", "box_PlaySound_v2_272.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_129_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_226
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.ShowPreviousObjectiveComplete = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|659373639", "659373639", "S14M060_FromTheRooftop", "box_Simple_Node_129.Out", "box_MissionMessageController_v3_226.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Timer_v2_576_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292681"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_538"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|930546781"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_576
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|546673816", "546673816", "S14M060_FromTheRooftop", "box_Timer_v2_576.TimeElapsed", "box_Dynamic_Media_Controller_538.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Random_Float_629_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_628
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_628
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1945722116", "1945722116", "S14M060_FromTheRooftop", "box_Random_Float_629.Out", "box_Timer_v2_628.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_133_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_323
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053338467286"
  l0 = self.box_Timer_v2_133
  l1 = self.box_PhoneCommunicationController_323
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1161545872", "1161545872", "S14M060_FromTheRooftop", "box_Timer_v2_133.TimeElapsed", "box_PhoneCommunicationController_323.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Timer_v2_561_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371231"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_512"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1841108281"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_561
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|534020186", "534020186", "S14M060_FromTheRooftop", "box_Timer_v2_561.TimeElapsed", "box_Dynamic_Media_Controller_512.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_207_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_74()
  l0 = self.box_OnceOnly_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1673490379", "1673490379", "S14M060_FromTheRooftop", "box_Ordered_Output_207.Out", "box_OnceOnly_v3_74.In", clone, l0)
  l0:In(1)
end
function export:f_box_Ordered_Output_207_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_84()
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1620020555", "1620020555", "S14M060_FromTheRooftop", "box_Ordered_Output_207.Out", "box_EnvironmentWeatherOverride_84.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Crane_Controller_3_PlatformPositionSet()
  local l0, l1
  self = self._graph
  l0 = self.box_Crane_Controller_277
  l0.Entity = "9223372049574754202"
  l0.CanMove = 1
  l0 = self.box_Crane_Controller_3
  l1 = self.box_Crane_Controller_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|546363084", "546363084", "S14M060_FromTheRooftop", "box_Crane_Controller_3.PlatformPositionSet", "box_Crane_Controller_277.SetCanMove", l0, l1)
  l1:SetCanMove()
end
function export:f_box_Ordered_Output_518_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_558"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2009005423"
  l0.Out = self.f_box_Random_Float_558_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1523308784", "1523308784", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_558.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371257"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_515"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1479859344"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|153947835", "153947835", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_515.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_563"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|917295387"
  l0.Out = self.f_box_Random_Float_563_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1921983012", "1921983012", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_563.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371229"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_513"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1103831043"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1893332127", "1893332127", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_513.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_566"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2084131708"
  l0.Out = self.f_box_Random_Float_566_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1415352010", "1415352010", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_566.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371196"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_511"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1559836537"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1906455740", "1906455740", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_511.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_569"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2117598585"
  l0.Out = self.f_box_Random_Float_569_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|735413432", "735413432", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_569.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292661"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_510"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|584212945"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2056897738", "2056897738", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_510.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_574"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1052961111"
  l0.Out = self.f_box_Random_Float_574_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1977324586", "1977324586", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_574.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371244"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_541"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|663983818"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|877212202", "877212202", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_541.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_537"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1954848994"
  l0.Out = self.f_box_Random_Float_537_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|950066007", "950066007", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_537.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371242"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_539"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1896457262"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1730714820", "1730714820", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_539.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_579"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1720385979"
  l0.Out = self.f_box_Random_Float_579_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1934112915", "1934112915", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_579.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292683"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_542"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1843187716"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1818713512", "1818713512", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_542.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_583"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|576593491"
  l0.Out = self.f_box_Random_Float_583_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1972475076", "1972475076", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_583.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371250"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_544"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|778964485"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1493588847", "1493588847", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_544.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_587"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1256750425"
  l0.Out = self.f_box_Random_Float_587_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1129128201", "1129128201", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_587.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371246"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_546"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|344852937"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1675836599", "1675836599", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_546.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_591"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1766649808"
  l0.Out = self.f_box_Random_Float_591_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1748679605", "1748679605", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_591.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371185"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_548"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|686039200"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2038265172", "2038265172", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_548.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_20()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_595"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|300544008"
  l0.Out = self.f_box_Random_Float_595_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1531985866", "1531985866", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_595.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_21()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292687"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_549"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1177512850"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|470912515", "470912515", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_549.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_22()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_599"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1761271033"
  l0.Out = self.f_box_Random_Float_599_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|739126886", "739126886", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_599.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_23()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279799"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_533"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1851118987"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1349119155", "1349119155", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_533.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_24()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_633"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|107353719"
  l0.Out = self.f_box_Random_Float_633_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1539468979", "1539468979", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_633.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_25()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279733"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_532"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|231638212"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1458608334", "1458608334", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_532.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_26()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_623"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1596481732"
  l0.Out = self.f_box_Random_Float_623_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|512281573", "512281573", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_623.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_27()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292685"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_551"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1472157277"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|768464438", "768464438", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_551.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_28()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_629"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1852530523"
  l0.Out = self.f_box_Random_Float_629_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1923633704", "1923633704", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_629.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_29()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371189"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_520"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1501254481"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1236198753", "1236198753", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_520.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_30()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_615"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|35952607"
  l0.Out = self.f_box_Random_Float_615_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1816211456", "1816211456", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_615.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_31()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371209"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_522"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|809449166"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2048214026", "2048214026", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_522.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_32()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_610"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1508036210"
  l0.Out = self.f_box_Random_Float_610_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1836426002", "1836426002", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_610.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_33()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371207"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_523"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1179501848"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|443339773", "443339773", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_523.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_34()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_624"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|871804106"
  l0.Out = self.f_box_Random_Float_624_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|847137404", "847137404", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_624.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_35()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371203"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_530"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|523385313"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|303588044", "303588044", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_530.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_36()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_622"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1487978045"
  l0.Out = self.f_box_Random_Float_622_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|691136878", "691136878", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_622.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_37()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292693"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_525"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|764607386"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|965685046", "965685046", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_525.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_38()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_620"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1517996802"
  l0.Out = self.f_box_Random_Float_620_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|411682995", "411682995", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_620.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_39()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434279731"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_527"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1144616517"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|363223004", "363223004", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_527.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_40()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l0.Min = self.Screen_Min
  l0.Max = self.Screen_Max
  l0._graph = self
  l0._name = "box_Random_Float_606"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1079810148"
  l0.Out = self.f_box_Random_Float_606_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|86558330", "86558330", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Random_Float_606.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_518_Out_41()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052992091515"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_535"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1020751778"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|615054570", "615054570", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_535.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_42()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292691"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1000810934"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1389911003", "1389911003", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_100.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_518_Out_43()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052992091517"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|466026503"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1889508985", "1889508985", "S14M060_FromTheRooftop", "box_Ordered_Output_518.Out", "box_Dynamic_Media_Controller_105.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Set_Entity_228_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.AcidBathGuy = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|470442624", "470442624", "S14M060_FromTheRooftop", "box_Set_Entity_228.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_VisibilityController_v2_224_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_49
  l0.SceneEntity = "9223372048671901460"
  l0.SequenceFile = "sequences/san_francisco/E3_2016/E3_SFView_CIN/e3_sfview_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|265401372", "265401372", "S14M060_FromTheRooftop", "box_VisibilityController_v2_224.Hidden", "box_PlaySequence_v5_49.Start", clone, l0)
  l0:Start()
end
function export:f_box_CraneMonitor_78_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_169
  l0.Trigger = "9223372057856265573"
  l0 = self.box_CraneMonitor_78
  l1 = self.box_TriggerMonitor_v2_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|546950444", "546950444", "S14M060_FromTheRooftop", "box_CraneMonitor_78.Out", "box_TriggerMonitor_v2_169.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CraneMonitor_78_RopeBroken()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1621062975"
  l0.Out = self.f_box_Simple_Node_170_Out
  l0 = self.box_CraneMonitor_78
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|23279655", "23279655", "S14M060_FromTheRooftop", "box_CraneMonitor_78.RopeBroken", "box_Simple_Node_170.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_401_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "earbuds_mode 1 "
  l0._graph = self
  l0._name = "box_DebugExecuteConsole_v2_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|525937929"
  l0.Executed = self.f_box_DebugExecuteConsole_v2_308_Executed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|830629270", "830629270", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_401.A_is_False", "box_DebugExecuteConsole_v2_308.Execute", clone, l0)
  l0:Execute()
end
function export:f_box_Timer_v2_573_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371233"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_517"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|80899742"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_573
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1674530973", "1674530973", "S14M060_FromTheRooftop", "box_Timer_v2_573.TimeElapsed", "box_Dynamic_Media_Controller_517.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_OnceOnly_v3_662_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1418988062"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0 = self.box_OnceOnly_v3_662
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2141989195", "2141989195", "S14M060_FromTheRooftop", "box_OnceOnly_v3_662.Out", "box_Ordered_Output_107.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_570_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434292663"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_509"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|318874565"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_570
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1612038092", "1612038092", "S14M060_FromTheRooftop", "box_Timer_v2_570.TimeElapsed", "box_Dynamic_Media_Controller_509.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_OnceOnly_v3_74_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_349
  l0.AutoDisable = 1
  l0.Entity = "9223372049574754202"
  l0 = self.box_OnceOnly_v3_74
  l1 = self.box_EntityLoadingMonitor_349
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|788930002", "788930002", "S14M060_FromTheRooftop", "box_OnceOnly_v3_74.Out", "box_EntityLoadingMonitor_349.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_EntityLoadingMonitor_71_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047411549960"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|565835161"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = self.f_box_InteractionScriptController_231_InteractionForced
  l0.Out = DummyFunction
  l0 = self.box_EntityLoadingMonitor_71
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1174330962", "1174330962", "S14M060_FromTheRooftop", "box_EntityLoadingMonitor_71.AllLoaded", "box_InteractionScriptController_231.ForceInteract", l0, l1)
  l1:ForceInteract()
end
function export:f_box_CraneMonitor_166_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_171
  l0.Trigger = "9223372057856265575"
  l0 = self.box_CraneMonitor_166
  l1 = self.box_TriggerMonitor_v2_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1349747479", "1349747479", "S14M060_FromTheRooftop", "box_CraneMonitor_166.Out", "box_TriggerMonitor_v2_171.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CraneMonitor_166_RopeBroken()
  local l0, l1
  self = self._graph
  l0 = self.box_CraneMonitor_166
  l1 = self.box_SetBoolean_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|600229256", "600229256", "S14M060_FromTheRooftop", "box_CraneMonitor_166.RopeBroken", "box_SetBoolean_v2_174.True", l0, l1)
  l1:True()
end
function export:f_box_Random_Float_537_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_553
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_553
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1209724574", "1209724574", "S14M060_FromTheRooftop", "box_Random_Float_537.Out", "box_Timer_v2_553.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_594_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052992091515"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_550"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1175793555"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_594
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1447418397", "1447418397", "S14M060_FromTheRooftop", "box_Timer_v2_594.TimeElapsed", "box_Dynamic_Media_Controller_550.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_PlaySound_v2_740_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_125()
  l0 = self.box_PlaySound_v2_740
  l1 = self.box_MultipleOR_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1675653320", "1675653320", "S14M060_FromTheRooftop", "box_PlaySound_v2_740.Out", "box_MultipleOR_125.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_582_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371252"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_543"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|908653933"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_582
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|202343283", "202343283", "S14M060_FromTheRooftop", "box_Timer_v2_582.TimeElapsed", "box_Dynamic_Media_Controller_543.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_LightController_345_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_57()
  l0 = self.box_MultipleOR_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|839193673", "839193673", "S14M060_FromTheRooftop", "box_LightController_345.Disabled", "box_MultipleOR_57.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Wait_Qualities_Loaded_727_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_13
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Wait_Qualities_Loaded_727
  l1 = self.box_CinematicPrep_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|256125869", "256125869", "S14M060_FromTheRooftop", "box_Wait_Qualities_Loaded_727.Loaded", "box_CinematicPrep_13.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Random_Float_558_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_561
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_561
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|754640898", "754640898", "S14M060_FromTheRooftop", "box_Random_Float_558.Out", "box_Timer_v2_561.Start", clone, l0)
  l0:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_113_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_506()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_506
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1686934744", "1686934744", "S14M060_FromTheRooftop", "box_Media_System_Custom_Broadcast_Controller_113.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_506.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_685_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1809143005", "1809143005", "S14M060_FromTheRooftop", "box_Simple_Node_685.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_CinematicPrep_126_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2051693597"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_88_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_88_Out_1
  l0 = self.box_CinematicPrep_126
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1928653107", "1928653107", "S14M060_FromTheRooftop", "box_CinematicPrep_126.PreOut", "box_Ordered_Output_88.In", l0, l1)
  l1:In()
end
function export:f_box_RemoteControlledVehicleController_135_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Crane_Controller_271
  l0.Entity = "9223372049574754202"
  l0.CanMove = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|767507523", "767507523", "S14M060_FromTheRooftop", "box_RemoteControlledVehicleController_135.UserForcedOutOfRC", "box_Crane_Controller_271.SetCanMove", clone, l0)
  l0:SetCanMove()
end
function export:f_box_Ordered_Output_88_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_320
  l0.LayerName = "S14M060_SFView_CIN"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2045486412", "2045486412", "S14M060_FromTheRooftop", "box_Ordered_Output_88.Out", "box_MissionLayer_v2_320.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_88_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1300054699"
  l0.Out = self.f_box_Simple_Node_94_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|662137992", "662137992", "S14M060_FromTheRooftop", "box_Ordered_Output_88.Out", "box_Simple_Node_94.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_225_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_230()
  l0 = self.box_TriggerMonitor_v2_225
  l1 = self.box_OnceOnly_v3_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1174474012", "1174474012", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_225.Enter", "box_OnceOnly_v3_230.In", l0, l1)
  l1:In(1)
end
function export:f_box_Ordered_Output_307_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Download_Gameplay_58
  l0.TargetEntity = "9223372051777342069"
  l0.LinkedObjective = "Objective"
  l0.Duration = 53
  l0.DownloadingText = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14E3.S14M060.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "637754"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.1
  l0.DetectionOnCustomRatio = 1
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "UZulu"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372051005793298"
  l0.AutoDetectDownload = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1186035647", "1186035647", "S14M060_FromTheRooftop", "box_Ordered_Output_307.Out", "box_Download_Gameplay_58.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_307_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_631
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|595378184", "595378184", "S14M060_FromTheRooftop", "box_Ordered_Output_307.Out", "box_Timer_v2_631.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_686_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_681()
  l0 = self.box_Multiple_AND_681
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1777654089", "1777654089", "S14M060_FromTheRooftop", "box_Simple_Node_686.Out", "box_Multiple_AND_681.Condition", clone, l0)
  l0:Condition(4)
end
function export:f_box_Compare_Floats_v2_312_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Crane_YPos
  l0.B = 258.7
  l0.Tolerance = 4
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|477635532"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Floats_v2_319_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|64512175", "64512175", "S14M060_FromTheRooftop", "box_Compare_Floats_v2_312.A_eq_B", "box_Compare_Floats_v2_319.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_270_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_588"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1191747301"
  l0.Out = self.f_box_Simple_Node_588_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1106656105", "1106656105", "S14M060_FromTheRooftop", "box_Ordered_Output_270.Out", "box_Simple_Node_588.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_270_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399862"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = 1
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2015886570"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_113_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|262305818", "262305818", "S14M060_FromTheRooftop", "box_Ordered_Output_270.Out", "box_Media_System_Custom_Broadcast_Controller_113.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_270_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_303
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1766345971", "1766345971", "S14M060_FromTheRooftop", "box_Ordered_Output_270.Out", "box_Timer_v2_303.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_270_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372051084305622"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0._name = "box_GetPosition_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1720607400"
  l0.Out = self.f_box_GetPosition_204_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1797790857", "1797790857", "S14M060_FromTheRooftop", "box_Ordered_Output_270.Out", "box_GetPosition_204.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_644_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_726"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|96157849"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_726_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_726_Out_1
  l0 = self.box_Timer_v2_644
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|603898387", "603898387", "S14M060_FromTheRooftop", "box_Timer_v2_644.TimeElapsed", "box_Ordered_Output_726.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_124_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_208()
  l0 = self.box_TriggerMonitor_v2_124
  l1 = self.box_OnceOnly_v3_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1739972108", "1739972108", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_124.Enter", "box_OnceOnly_v3_208.In", l0, l1)
  l1:In(1)
end
function export:f_box_Random_Float_566_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_565
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_565
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1047817784", "1047817784", "S14M060_FromTheRooftop", "box_Random_Float_566.Out", "box_Timer_v2_565.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_494_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371244"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_492"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1158930581"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1524423359", "1524423359", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_492.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371240"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_498"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1504768159"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|361848191", "361848191", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_498.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371242"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_493"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1381222726"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1453826821", "1453826821", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_493.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292681"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_480"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|50302050"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|614236335", "614236335", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_480.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292683"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_491"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2045366460"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1884568356", "1884568356", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_491.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371252"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_469"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2045275401"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|223012687", "223012687", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_469.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371250"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_410"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|250761205"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|48024101", "48024101", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_410.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371248"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_483"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1563116031"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|811620017", "811620017", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_483.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371246"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_475"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|747151652"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1731395117", "1731395117", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_475.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371183"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_470"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1265416731"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1079241452", "1079241452", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_470.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434371185"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_485"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|612688855"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|169454758", "169454758", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_485.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091515"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_487"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1771163957"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|844355081", "844355081", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_487.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292687"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_457"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|481105483"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1661555669", "1661555669", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_457.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292689"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_406"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1402805531"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|542563672", "542563672", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_406.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292685"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_478"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|365242747"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|616247506", "616247506", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_478.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052992091517"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|563753588"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2071817111", "2071817111", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_103.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_494_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372052434292691"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|618248352"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|215852707", "215852707", "S14M060_FromTheRooftop", "box_Ordered_Output_494.Out", "box_MaterialController_104.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Timer_v2_590_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372052434371183"
  l0.Channel = "Shop"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_547"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1723707989"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_590
  l1 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|852314551", "852314551", "S14M060_FromTheRooftop", "box_Timer_v2_590.TimeElapsed", "box_Dynamic_Media_Controller_547.ChangeBroadcastChannelOnEntity", l0, l1)
  l1:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Get_Player_ID_282_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Wait_Qualities_Loaded_728
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1976956090", "1976956090", "S14M060_FromTheRooftop", "box_Get_Player_ID_282.Out", "box_Wait_Qualities_Loaded_728.In", clone, l0)
  l0:In()
end
function export:f_box_GetNPC_148_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_148
  self.SecurityGuards = l0.NPCList
  l0 = self.box_AgentStateMonitor_V2_122
  l0.NPCList = self.SecurityGuards
  l0 = self.box_GetNPC_148
  l1 = self.box_AgentStateMonitor_V2_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1972687646", "1972687646", "S14M060_FromTheRooftop", "box_GetNPC_148.GotNPCList", "box_AgentStateMonitor_V2_122.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_678_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_683"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|612573313"
  l0.Out = self.f_box_Simple_Node_683_Out
  l0 = self.box_CLOMonitor_678
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|17202204", "17202204", "S14M060_FromTheRooftop", "box_CLOMonitor_678.Enabled", "box_Simple_Node_683.In", l0, l1)
  l1:In()
end
function export:f_box_CLOMonitor_678_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_678
  self.TerrasseGuard_02 = l0.UserID
end
function export:f_box_CLOMonitor_678_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_678
  self.TerrasseGuard_02 = l0.UserID
end
function export:f_box_CLOMonitor_678_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_678
  self.TerrasseGuard_02 = l0.UserID
  l0 = self.box_HackableController_v2_693
  l0.HackableEntity = self.TerrasseGuard_02
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.MISSION.E3_Punk_Take_Profiles.UmeniZuluMale02",
    item = "",
    id = "4294988662"
  }
  l0 = self.box_CLOMonitor_678
  l1 = self.box_HackableController_v2_693
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|26407182", "26407182", "S14M060_FromTheRooftop", "box_CLOMonitor_678.OnUserInPlace", "box_HackableController_v2_693.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_461_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Controller_461()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1064372237", "1064372237", "S14M060_FromTheRooftop", "box_Media_System_Custom_Broadcast_Controller_461.EndedAllCustomMediaBroadcasts", "box_Media_System_Custom_Broadcast_Controller_461.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_461_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_456"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1479824977"
  l0._DynamicAnchors = {Out = 16}
  l0.Out[0] = self.f_box_Ordered_Output_456_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_456_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_456_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_456_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_456_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_456_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_456_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_456_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_456_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_456_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_456_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_456_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_456_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_456_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_456_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_456_Out_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1158558177", "1158558177", "S14M060_FromTheRooftop", "box_Media_System_Custom_Broadcast_Controller_461.LoadAndPlayRequested", "box_Ordered_Output_456.In", clone, l0)
  l0:In()
end
function export:f_box_Random_Float_569_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/RandomFloat.lua")]
  l1 = self.box_Timer_v2_570
  l1.Seconds = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_570
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|520825706", "520825706", "S14M060_FromTheRooftop", "box_Random_Float_569.Out", "box_Timer_v2_570.Start", clone, l0)
  l0:Start()
end
function export:f_box_Teleport_To_SpawnPoint_66_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372051976425807"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1425269099"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_268_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Teleport_To_SpawnPoint_66
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|796658855", "796658855", "S14M060_FromTheRooftop", "box_Teleport_To_SpawnPoint_66.TeleportDone", "box_VisibilityController_v2_268.Show", l0, l1)
  l1:Show()
end
function export:f_box_Simple_Node_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_64()
  l0 = self.box_MissionZone_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|3276528", "3276528", "S14M060_FromTheRooftop", "box_Simple_Node_95.Out", "box_MissionZone_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_206_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_230()
  l0 = self.box_TriggerMonitor_v2_206
  l1 = self.box_OnceOnly_v3_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1629084714", "1629084714", "S14M060_FromTheRooftop", "box_TriggerMonitor_v2_206.Enter", "box_OnceOnly_v3_230.In", l0, l1)
  l1:In(0)
end
function export:f_box_SecurityCamController_391_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052593104112"
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372053010112298"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_392"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|666395761"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_392_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|633848592", "633848592", "S14M060_FromTheRooftop", "box_SecurityCamController_391.InitialTargetSet", "box_SecurityCamController_392.SetInitialTarget", clone, l0)
  l0:SetInitialTarget()
end
function export:f_box_Compare_Boolean_v2_175_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsEscapeBeat
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1734707363"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_177_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1843978854", "1843978854", "S14M060_FromTheRooftop", "box_Compare_Boolean_v2_175.A_is_True", "box_Compare_Boolean_v2_177.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_301_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_304
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_301
  l1 = self.box_Timer_v2_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|679758908", "679758908", "S14M060_FromTheRooftop", "box_PlaySound_v2_301.Out", "box_Timer_v2_304.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_506()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_OnceOnly_v3_707()
end
function export:OnEnter_box_SetBoolean_v2_202()
end
function export:OnEnter_box_LogicGate_v2_199()
end
function export:OnEnter_box_TriggerMonitor_v2_118()
  local l0
  l0 = self.box_TriggerMonitor_v2_118
  l0.Trigger = "9223372051020371063"
end
function export:OnEnter_box_OnceOnly_v3_40()
end
function export:OnEnter_box_Multiple_AND_344()
end
function export:OnEnter_box_Mission_End_25()
  local l0
  l0 = self.box_Mission_End_25
  l0.Checkpoint = "CheckPoint_5"
  l0.MissionLayer = "S14M060_Main"
  l0.LmaLayer = "SF_08_Skyscraper_LMA"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_181()
end
function export:OnEnter_box_LogicGate_v2_173()
end
function export:OnEnter_box_S14M060_CallCopsFelony_72()
  local l0
  l0 = self.box_S14M060_CallCopsFelony_72
  l0.IN_ScriptedChopper = self.Is_ScriptedChopper
end
function export:OnEnter_box_OnceOnly_v3_743()
end
function export:OnEnter_box_TriggerMonitor_v2_80()
  local l0
  l0 = self.box_TriggerMonitor_v2_80
  l0.Trigger = "9223372064407027958"
end
function export:OnEnter_box_MapPointController_v4_348()
  local l0
  l0 = self.box_MapPointController_v4_348
  l0.MapPoint = "9223372072523928614"
end
function export:OnEnter_box_TriggerMonitor_v2_665()
  local l0
  l0 = self.box_TriggerMonitor_v2_665
  l0.Trigger = "9223372053926951469"
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_MissionZone_64()
  local l0
  l0 = self.box_MissionZone_64
  l0.MissionArea = "9223372064407028772"
  l0.MissionLayer = "S14M060_Main"
  l0.LmaLayer = "SF_08_Skyscraper_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_156()
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_OnceOnly_v3_185()
end
function export:OnEnter_box_PlayerOnlyTriggerNoRCTip_318()
  local l0
  l0 = self.box_PlayerOnlyTriggerNoRCTip_318
  l0.Trigger = "9223372072523928612"
end
function export:OnEnter_box_MultipleOR_125()
end
function export:OnEnter_box_EntityLoadingMonitor_97()
  local l0
  l0 = self.box_EntityLoadingMonitor_97
  l0.Entity = "9223372049574754202"
end
function export:OnEnter_box_MultipleOR_333()
end
function export:OnEnter_box_MultipleOR_63()
end
function export:OnEnter_box_OnceOnly_v3_230()
end
function export:OnEnter_box_MultipleOR_57()
end
function export:OnEnter_box_MultipleOR_352()
end
function export:OnEnter_box_MultipleOR_315()
end
function export:OnEnter_box_PlaySequence_v5_195()
  local l0
  l0 = self.box_PlaySequence_v5_195
  l0.SceneEntity = "9223372058412594288"
  l0.SequenceFile = "sequences/san_francisco/E3_2016/E3_SFView_CIN/e3_sfview_cin_loop.seq"
  l0.LoopAnim = 1
  l0.EntityIn.Wrench_Var = self.Wrench_SFView_Loop
end
function export:OnEnter_box_MapPointController_v4_76()
  local l0
  l0 = self.box_MapPointController_v4_76
  l0.MapPoint = self.RegroupWrenchObjective
end
function export:OnEnter_box_MultipleOR_398()
end
function export:OnEnter_box_MultipleOR_242()
end
function export:OnEnter_box_SetBoolean_v2_396()
end
function export:OnEnter_box_Security_Camera_Monitor_562()
  local l0
  l0 = self.box_Security_Camera_Monitor_562
  l0.CameraEntity = "9223372049057674243"
end
function export:OnEnter_box_MultipleOR_189()
end
function export:OnEnter_box_MultipleOR_158()
end
function export:OnEnter_box_TriggerMonitor_v2_404()
  local l0
  l0 = self.box_TriggerMonitor_v2_404
  l0.Trigger = "9223372052736333836"
end
function export:OnEnter_box_MultipleOR_285()
end
function export:OnEnter_box_Escape_Gameplay_33()
  local l0
  l0 = self.box_Escape_Gameplay_33
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047970033060"
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
function export:OnEnter_box_TriggerMonitor_v2_331()
  local l0
  l0 = self.box_TriggerMonitor_v2_331
  l0.Trigger = "9223372052962211584"
end
function export:OnEnter_box_EnvironmentWeatherOverride_84()
  local l0
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372049778285296"
  l0.FadeIn = nil
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|1156128624"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_OnceOnly_v3_208()
end
function export:OnEnter_box_MultipleOR_246()
end
function export:OnEnter_box_MultipleOR_241()
end
function export:OnEnter_box_Multiple_AND_75()
end
function export:OnEnter_box_MultipleOR_160()
end
function export:OnEnter_box_TriggerMonitor_v2_136()
  local l0
  l0 = self.box_TriggerMonitor_v2_136
  l0.Trigger = "9223372072056097130"
  l0.CheckNow = 1
end
function export:OnEnter_box_Multiple_AND_681()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_MultipleOR_756()
end
function export:OnEnter_box_MultipleOR_98()
end
function export:OnEnter_box_MissionZone_11()
  local l0
  l0 = self.box_MissionZone_11
  l0.MissionArea = "9223372047969944372"
  l0.MissionLayer = "S14M060_Main"
  l0.LmaLayer = "SF_08_Skyscraper_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_LogicGate_v2_219()
end
function export:OnEnter_box_Hackable_Monitor_289()
  local l0
  l0 = self.box_Hackable_Monitor_289
  l0.HackableEntity = self.Location_2_Woman
end
function export:OnEnter_box_PlaySequence_v5_29()
  local l0
  l0 = self.box_PlaySequence_v5_29
  l0.SceneEntity = "9223372048671901462"
  l0.SequenceFile = "sequences/san_francisco/E3_2016/E3_OUTROv3_CIN/e3_outrov3_cin.seq"
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MultipleOR_182()
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_CraneMonitor_78()
  local l0
  l0 = self.box_CraneMonitor_78
  l0.Entity = "9223372049574754202"
end
function export:OnEnter_box_OnceOnly_v3_662()
end
function export:OnEnter_box_OnceOnly_v3_74()
end
function export:OnEnter_box_TriggerMonitor_v2_225()
  local l0
  l0 = self.box_TriggerMonitor_v2_225
  l0.Trigger = "9223372071857821156"
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_124()
  local l0
  l0 = self.box_TriggerMonitor_v2_124
  l0.Trigger = "9223372053440552470"
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Controller_461()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060432399865"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_461"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\S14M060.domino|@S14M060_FromTheRooftop|2109996696"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_461_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_461_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_206()
  local l0
  l0 = self.box_TriggerMonitor_v2_206
  l0.Trigger = "9223372061942159749"
  l0.CheckNow = 1
end
_compilerVersion = 4
