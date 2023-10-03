export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04_m020_cin_delivery.S04_M020_CIN_Delivery_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1497291215.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main"
  self.PlayerEntity = "200"
  self.HAUMTruck = nil
  self.IsCheckPoint_0 = 0
  self.Wrench = nil
  self.VehiclesInZone = {}
  self.AllVehicleEnticers_S04M020 = nil
  self.AIs = nil
  self.IsCheckPoint_1 = 0
  self.PlayerEscaped = 0
  self.PlayerLeftArea = 0
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|56381514"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|69903582"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_S04M020_SCR_Main_77 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_77
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|75088714"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = self.f_box_S04M020_SCR_Main_77_OutHideInsideTruck
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = DummyFunction
  self.box_PGTController_v2_8 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_8
  l0._graph = self
  l0._name = "box_PGTController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|83090429"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_8_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_44 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_44
  l0._graph = self
  l0._name = "box_MissionLayer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|159984755"
  l0.Loaded = self.f_box_MissionLayer_v2_44_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_AISquadStateMonitor_33 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_33
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|198476229"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_33_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_33_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_33_VanishState
  l0.None = DummyFunction
  self.box_PlaySound_v2_48 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_48
  l0._graph = self
  l0._name = "box_PlaySound_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|218168101"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|230886573"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_MissionMessageController_v3_26 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_26
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|300884273"
  l0.Out = self.f_box_MissionMessageController_v3_26_Out
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_9 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_9
  l0._graph = self
  l0._name = "box_Multiple_AND_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|424214044"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_9_Out
  self.box_MissionCheckpointReach_18 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_18
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|439408753"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_53 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_53
  l0._graph = self
  l0._name = "box_PlaySound_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|440442264"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S04M020_SCR_Main_75 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_75
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|499830781"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = DummyFunction
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = self.f_box_S04M020_SCR_Main_75_OutDisableCollision
  self.box_CinematicPrep_15 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|502541265"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_15_PostOut
  self.box_S04M020_SCR_Main_74 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_74
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|565539005"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = self.f_box_S04M020_SCR_Main_74_OutHideInsideTruck
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = DummyFunction
  self.box_SetBoolean_v2_38 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_38
  l0._graph = self
  l0._name = "box_SetBoolean_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|603990447"
  l0.Out = self.f_box_SetBoolean_v2_38_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_38_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_38_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_38_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_38_SetFromBool
  self.box_MissionCheckpointReach_72 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_72
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|640268598"
  l0.Out = self.f_box_MissionCheckpointReach_72_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_SetBoolean_v2_59 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|695085996"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MissionZone_17 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_17
  l0._graph = self
  l0._name = "box_MissionZone_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|739471285"
  l0.Enabled = self.f_box_MissionZone_17_Enabled
  l0.Disabled = self.f_box_MissionZone_17_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MultipleOR_51 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_51
  l0._graph = self
  l0._name = "box_MultipleOR_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|764787505"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_51_Out
  self.box_TriggerMonitor_v2_49 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_49
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|870028704"
  l0.Enabled = self.f_box_TriggerMonitor_v2_49_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_49_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_49_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_49_Leave
  l0.Use = DummyFunction
  self.box_Reach_Gameplay_80 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_80
  l0._graph = self
  l0._name = "box_Reach_Gameplay_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|898338935"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_80_Reached
  self.box_Vehicle_Failure_55 = cbox:CreateBox("domino/Library/common/Vehicle.Vehicle_Failure.debug.lua")
  l0 = self.box_Vehicle_Failure_55
  l0._graph = self
  l0._name = "box_Vehicle_Failure_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|919341698"
  l0.Started = self.f_box_Vehicle_Failure_55_Started
  l0.Stopped = self.f_box_Vehicle_Failure_55_Stopped
  l0.Fail = self.f_box_Vehicle_Failure_55_Fail
  self.box_PGTController_v2_47 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_47
  l0._graph = self
  l0._name = "box_PGTController_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|920709308"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_47_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_58 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_58
  l0._graph = self
  l0._name = "box_MultipleOR_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|948641888"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_58_Out
  self.box_MissionCheckpointReach_62 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_62
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|958710580"
  l0.Out = self.f_box_MissionCheckpointReach_62_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Player_Proximity_Monitor_25 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_25
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|971967105"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_25_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_PhoneCommunicationController_29 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_29
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1027058268"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_29_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_82 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_82
  l0._graph = self
  l0._name = "box_MultipleOR_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1034331804"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_82_Out
  self.box_Proximity_Monitor_23 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_23
  l0._graph = self
  l0._name = "box_Proximity_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1034342962"
  l0.Enabled = self.f_box_Proximity_Monitor_23_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_23_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_23_ExitRadius
  self.box_S04M020_SCR_Main_76 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_76
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1103124397"
  l0.Out = DummyFunction
  l0.OutHideInsideTruck = DummyFunction
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = self.f_box_S04M020_SCR_Main_76_OutDisableCollision
  self.box_CinematicPrep_68 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_68
  l0._graph = self
  l0._name = "box_CinematicPrep_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1149059555"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_68_PostOut
  self.box_CinematicPrep_19 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_19
  l0._graph = self
  l0._name = "box_CinematicPrep_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1231435615"
  l0.PreOut = self.f_box_CinematicPrep_19_PreOut
  l0.PostOut = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1264242817"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_28 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_28
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1302570433"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Mission_End_78 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_78
  l0._graph = self
  l0._name = "box_Mission_End_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1313202819"
  self.box_S04_M020_CIN_Delivery_Main_60 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04_m020_cin_delivery.S04_M020_CIN_Delivery_Main.debug.lua")
  l0 = self.box_S04_M020_CIN_Delivery_Main_60
  l0._graph = self
  l0._name = "box_S04_M020_CIN_Delivery_Main_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1331879695"
  l0.Out = self.f_box_S04_M020_CIN_Delivery_Main_60_Out
  self.box_CLOController_34 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_34
  l0._graph = self
  l0._name = "box_CLOController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1377424906"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_34_OnUserInPlace
  self.box_S04M020_SCR_Main_65 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M020/s04m020_scr.S04M020_SCR_Main.debug.lua")
  l0 = self.box_S04M020_SCR_Main_65
  l0._graph = self
  l0._name = "box_S04M020_SCR_Main_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1397463594"
  l0.Out = self.f_box_S04M020_SCR_Main_65_Out
  l0.OutHideInsideTruck = DummyFunction
  l0.OutShowInsideTruck = DummyFunction
  l0.OutDisableCollision = DummyFunction
  self.box_OnceOnly_v3_67 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_67
  l0._graph = self
  l0._name = "box_OnceOnly_v3_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1423460506"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_67_Out
  l0.ResetOut = DummyFunction
  self.box_Player_Proximity_Monitor_81 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_81
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1494511833"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_81_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_81_EnterRadius
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_81_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MissionMessageController_v3_79 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_79
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1528095954"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_79_MessageCompleted
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1532871277"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MultipleOR_52 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_52
  l0._graph = self
  l0._name = "box_MultipleOR_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1597659338"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_52_Out
  self.box_SetBoolean_v2_64 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_64
  l0._graph = self
  l0._name = "box_SetBoolean_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1620741488"
  l0.Out = self.f_box_SetBoolean_v2_64_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_64_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_64_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_64_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_64_SetFromBool
  self.box_Delivery_Gameplay_21 = cbox:CreateBox("domino/Library/common/MissionIngredients.Delivery_Gameplay.debug.lua")
  l0 = self.box_Delivery_Gameplay_21
  l0._graph = self
  l0._name = "box_Delivery_Gameplay_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1622886147"
  l0.Started = self.f_box_Delivery_Gameplay_21_Started
  l0.Stopped = DummyFunction
  l0.NewDeliveryCompleted = DummyFunction
  l0.AllDeliveryCompleted = self.f_box_Delivery_Gameplay_21_AllDeliveryCompleted
  l0.SpecificVehicleReliabilityFailure = DummyFunction
  l0.VehicleForceStopped = DummyFunction
  l0.Evaded = self.f_box_Delivery_Gameplay_21_Evaded
  l0.InConflict = self.f_box_Delivery_Gameplay_21_InConflict
  l0.TeamSpeakFinished = DummyFunction
  self.box_SetBoolean_v2_69 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_69
  l0._graph = self
  l0._name = "box_SetBoolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1724585625"
  l0.Out = self.f_box_SetBoolean_v2_69_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_69_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_69_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_69_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_69_SetFromBool
  self.box_Player_Proximity_Monitor_39 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_39
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1748581152"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_39_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1756327396"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_22_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Proximity_Monitor_6 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_6
  l0._graph = self
  l0._name = "box_Proximity_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1765146484"
  l0.Enabled = self.f_box_Proximity_Monitor_6_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_6_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_6_ExitRadius
  self.box_VehicleSeatingController_57 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_57
  l0._graph = self
  l0._name = "box_VehicleSeatingController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1781721798"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_57_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_45 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_45
  l0._graph = self
  l0._name = "box_PlaySound_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1877550696"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_56 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_56
  l0._graph = self
  l0._name = "box_CLOController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1888033899"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_56_OnUserInPlace
  self.box_PhoneCommunicationController_31 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_31
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1890283967"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_31_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_63 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_63
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1899861568"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_71 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_71
  l0._graph = self
  l0._name = "box_MultipleOR_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1966858429"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_71_Out
  self.box_PlaySound_v2_54 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_54
  l0._graph = self
  l0._name = "box_PlaySound_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1985691054"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_1 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_1
  l0._graph = self
  l0._name = "box_MissionLayer_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1990053732"
  l0.Loaded = self.f_box_MissionLayer_v2_1_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Proximity_Monitor_7 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_7
  l0._graph = self
  l0._name = "box_Proximity_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2027930257"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_7_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_7_ExitRadius
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
  l0 = self.box_SetBoolean_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|963362548", "963362548", "S04M020_Main", "CheckPoint_0", "box_SetBoolean_v2_38.True", self, l0)
  l0:True()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_SetBoolean_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1854472553", "1854472553", "S04M020_Main", "CheckPoint_1", "box_SetBoolean_v2_69.True", self, l0)
  l0:True()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_78()
  l0 = self.box_Mission_End_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1445546777", "1445546777", "S04M020_Main", "CheckPoint_2", "box_Mission_End_78.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|155915558", "155915558", "S04M020_Main", "In", "box_MultipleOR_36.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Phys_Zone_Cleanup_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_13
  l0.CLO = "9223372046428557567"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1419124691", "1419124691", "S04M020_Main", "box_Phys_Zone_Cleanup_20.Out", "box_CLOController_13.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.HAUMTruck = l0.UserID
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372047482688378"
  l0.SetOpen = nil
  l0.Instant = 1
  l0._graph = self
  l0._name = "box_GateController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1021263038"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_GateController_3_Closed
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_CLOController_13
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1878795948", "1878795948", "S04M020_Main", "box_CLOController_13.OnUserInPlace", "box_GateController_3.Close", l0, l1)
  l1:Close()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M020_SCR_Main_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|827101737", "827101737", "S04M020_Main", "box_Ordered_Output_42.Out", "box_S04M020_SCR_Main_74.InHideInsideTruck", clone, l0)
  l0:InHideInsideTruck()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateMonitor_33
  l0.Affiliation = "UZulu"
  l0.CheckStateNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1193530244", "1193530244", "S04M020_Main", "box_Ordered_Output_42.Out", "box_AISquadStateMonitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S04M020_SCR_Main_77_OutHideInsideTruck()
  local l0, l1
  self = self._graph
  l0 = self.box_S04M020_SCR_Main_77
  l1 = self.box_S04M020_SCR_Main_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1809605561", "1809605561", "S04M020_Main", "box_S04M020_SCR_Main_77.OutHideInsideTruck", "box_S04M020_SCR_Main_75.InDisableCollision", l0, l1)
  l1:InDisableCollision()
end
function export:f_box_PGTController_v2_8_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|74099668"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_PGTController_v2_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1298079320", "1298079320", "S04M020_Main", "box_PGTController_v2_8.AllSpawned", "box_Ordered_Output_42.In", l0, l1)
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
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1302513735"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1958528482", "1958528482", "S04M020_Main", "box_Ordered_Output_46.Out", "box_MissionMusicController_73.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_22
  l0.User = self.HAUMTruck
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1170164898", "1170164898", "S04M020_Main", "box_Ordered_Output_46.Out", "box_CLOController_22.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Phys_Zone_Cleanup_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_56
  l0.CLO = "9223372066826070686"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2145548333", "2145548333", "S04M020_Main", "box_Phys_Zone_Cleanup_30.Out", "box_CLOController_56.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_44_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|938321470"
  l0.Out = self.f_box_Get_Player_ID_41_Out
  l0 = self.box_MissionLayer_v2_44
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1233212544", "1233212544", "S04M020_Main", "box_MissionLayer_v2_44.Loaded", "box_Get_Player_ID_41.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_33_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_48
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AISquadStateMonitor_33
  l1 = self.box_PlaySound_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|447389500", "447389500", "S04M020_Main", "box_AISquadStateMonitor_33.CombatState", "box_PlaySound_v2_48.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_33_SearchState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_53
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_AISquadStateMonitor_33
  l1 = self.box_PlaySound_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1291734254", "1291734254", "S04M020_Main", "box_AISquadStateMonitor_33.SearchState", "box_PlaySound_v2_53.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_33_VanishState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_54
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_AISquadStateMonitor_33
  l1 = self.box_PlaySound_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|494909525", "494909525", "S04M020_Main", "box_AISquadStateMonitor_33.VanishState", "box_PlaySound_v2_54.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_62
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_27
  l1 = self.box_MissionCheckpointReach_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1271187402", "1271187402", "S04M020_Main", "box_MultipleOR_27.Out", "box_MissionCheckpointReach_62.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_MissionMessageController_v3_26
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1131251586", "1131251586", "S04M020_Main", "box_MissionMessageController_v3_26.Out", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2105255979"
  l0.Out = self.f_box_Simple_Node_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1376215396", "1376215396", "S04M020_Main", "box_Simple_Node_35.Out", "box_Simple_Node_32.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_9
  l1 = self.box_SetBoolean_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|530936284", "530936284", "S04M020_Main", "box_Multiple_AND_9.Out", "box_SetBoolean_v2_59.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_31
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347579"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1255574347", "1255574347", "S04M020_Main", "box_Ordered_Output_16.Out", "box_PhoneCommunicationController_31.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_11
  l0.Seconds = 27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|750643662", "750643662", "S04M020_Main", "box_Ordered_Output_16.Out", "box_Timer_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_S04M020_SCR_Main_75_OutDisableCollision()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_58()
  l0 = self.box_S04M020_SCR_Main_75
  l1 = self.box_MultipleOR_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1828188432", "1828188432", "S04M020_Main", "box_S04M020_SCR_Main_75.OutDisableCollision", "box_MultipleOR_58.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_15_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_CinematicPrep_15
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1001414501", "1001414501", "S04M020_Main", "box_CinematicPrep_15.PostOut", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_70_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_17()
  l0 = self.box_MissionZone_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1753339449", "1753339449", "S04M020_Main", "box_Compare_Boolean_v2_70.A_is_False", "box_MissionZone_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_70_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_72
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1984350770", "1984350770", "S04M020_Main", "box_Compare_Boolean_v2_70.A_is_True", "box_MissionCheckpointReach_72.In", clone, l0)
  l0:In()
end
function export:f_box_Lanes_Restrictions_Control_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372060061640320"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|5181902"
  l0.Out = self.f_box_Phys_Zone_Cleanup_20_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1482943088", "1482943088", "S04M020_Main", "box_Lanes_Restrictions_Control_24.Out", "box_Phys_Zone_Cleanup_20.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_S04M020_SCR_Main_74_OutHideInsideTruck()
  local l0, l1
  self = self._graph
  l0 = self.box_S04M020_SCR_Main_74
  l1 = self.box_S04M020_SCR_Main_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1423007372", "1423007372", "S04M020_Main", "box_S04M020_SCR_Main_74.OutHideInsideTruck", "box_S04M020_SCR_Main_76.InDisableCollision", l0, l1)
  l1:InDisableCollision()
end
function export:f_box_SetBoolean_v2_38_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_38
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_38_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_38
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_38_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_38
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_38_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_38
  self.IsCheckPoint_0 = l0.Target
  self:OnEnter_box_MultipleOR_36()
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1633559161", "1633559161", "S04M020_Main", "box_SetBoolean_v2_38.SetTrue", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_38_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_38
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_MissionCheckpointReach_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_68
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_72
  l1 = self.box_CinematicPrep_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1406019448", "1406019448", "S04M020_Main", "box_MissionCheckpointReach_72.Out", "box_CinematicPrep_68.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_59_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerLeftArea = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerLeftArea = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerLeftArea = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerLeftArea = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerEscaped
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1037239649"
  l0.Out = self.f_box_Compare_Boolean_v2_61_Out
  l0.A_is_True = self.f_box_Compare_Boolean_v2_61_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_59
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|9321627", "9321627", "S04M020_Main", "box_SetBoolean_v2_59.SetTrue", "box_Compare_Boolean_v2_61.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.PlayerLeftArea = l0.Target
end
function export:f_box_MissionZone_17_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_MissionZone_17
  l1 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1717017860", "1717017860", "S04M020_Main", "box_MissionZone_17.Disabled", "box_Proximity_Monitor_23.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionZone_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_23()
  l0 = self.box_MissionZone_17
  l1 = self.box_Proximity_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1115938543", "1115938543", "S04M020_Main", "box_MissionZone_17.Enabled", "box_Proximity_Monitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_51_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_MultipleOR_51
  l1 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1802920983", "1802920983", "S04M020_Main", "box_MultipleOR_51.Out", "box_Player_Proximity_Monitor_25.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_6()
  l0 = self.box_Proximity_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2127117073", "2127117073", "S04M020_Main", "box_Simple_Node_12.Out", "box_Proximity_Monitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_49_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1478791953", "1478791953", "S04M020_Main", "box_TriggerMonitor_v2_49.Disabled", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_49_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1535315433", "1535315433", "S04M020_Main", "box_TriggerMonitor_v2_49.Enabled", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_49_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_52()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_MultipleOR_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|220703619", "220703619", "S04M020_Main", "box_TriggerMonitor_v2_49.Enter", "box_MultipleOR_52.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_49_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_TriggerMonitor_v2_49
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|792317831", "792317831", "S04M020_Main", "box_TriggerMonitor_v2_49.Leave", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Reach_Gameplay_80_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_Reach_Gameplay_80
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1581381099", "1581381099", "S04M020_Main", "box_Reach_Gameplay_80.Reached", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Vehicle_Failure_55_Fail()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_43
  l0.SoundId = "soundbinary/1497291215.bnk"
  l0 = self.box_Vehicle_Failure_55
  l1 = self.box_PlaySound_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1518158998", "1518158998", "S04M020_Main", "box_Vehicle_Failure_55.Fail", "box_PlaySound_v2_43.Play", l0, l1)
  l1:Play()
end
function export:f_box_Vehicle_Failure_55_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_1
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|555773561"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_70_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Vehicle_Failure_55
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|68615690", "68615690", "S04M020_Main", "box_Vehicle_Failure_55.Started", "box_Compare_Boolean_v2_70.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Failure_55_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_81()
  l0 = self.box_Vehicle_Failure_55
  l1 = self.box_Player_Proximity_Monitor_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|863929263", "863929263", "S04M020_Main", "box_Vehicle_Failure_55.Stopped", "box_Player_Proximity_Monitor_81.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_47_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_47
  l1 = self.box_S04M020_SCR_Main_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1825063248", "1825063248", "S04M020_Main", "box_PGTController_v2_47.AllSpawned", "box_S04M020_SCR_Main_77.InHideInsideTruck", l0, l1)
  l1:InHideInsideTruck()
end
function export:f_box_Get_Player_ID_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372046428604788"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0._name = "box_Lanes_Restrictions_Control_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1138709148"
  l0.Out = self.f_box_Lanes_Restrictions_Control_40_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|4322393", "4322393", "S04M020_Main", "box_Get_Player_ID_41.Out", "box_Lanes_Restrictions_Control_40.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Delivery_Gameplay_21
  l0.VehicleEntity = self.HAUMTruck
  l0.DestinationTrigger = "9223372049146111936"
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
  l0.GetOutToComplete = 0
  l0.ForceStopAtDestination = 0
  l0.PostEscape_InVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Objective040",
    item = "Objective",
    id = "341433"
  }
  l0.PostEscape_OutOfVehicle = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Objective030",
    item = "Objective",
    id = "341432"
  }
  l0 = self.box_MultipleOR_58
  l1 = self.box_Delivery_Gameplay_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1258741318", "1258741318", "S04M020_Main", "box_MultipleOR_58.Out", "box_Delivery_Gameplay_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_62_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|485046419"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_MissionCheckpointReach_62
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|247777484", "247777484", "S04M020_Main", "box_MissionCheckpointReach_62.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Proximity_Monitor_25_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|994139043"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_Player_Proximity_Monitor_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1696556988", "1696556988", "S04M020_Main", "box_Player_Proximity_Monitor_25.EnterRadius", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|642767152", "642767152", "S04M020_Main", "box_Ordered_Output_50.Out", "box_TriggerMonitor_v2_49.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_28
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347580"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1097463556", "1097463556", "S04M020_Main", "box_Ordered_Output_50.Out", "box_PhoneCommunicationController_28.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_GateController_3_Closed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372047534008984"
  l0.SetOpen = nil
  l0.Instant = 1
  l0._graph = self
  l0._name = "box_GateController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1962462399"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_GateController_4_Closed
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1141000480", "1141000480", "S04M020_Main", "box_GateController_3.Closed", "box_GateController_4.Close", clone, l0)
  l0:Close()
end
function export:f_box_PhoneCommunicationController_29_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Proximity_Monitor_39
  l0.TargetEntity = "9223372069822313048"
  l0.Radius = 80
  l0 = self.box_PhoneCommunicationController_29
  l1 = self.box_Player_Proximity_Monitor_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|712892122", "712892122", "S04M020_Main", "box_PhoneCommunicationController_29.StartCommunicationOut", "box_Player_Proximity_Monitor_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_19
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_82
  l1 = self.box_CinematicPrep_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|659350459", "659350459", "S04M020_Main", "box_MultipleOR_82.Out", "box_CinematicPrep_19.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Proximity_Monitor_23_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|589902710", "589902710", "S04M020_Main", "box_Proximity_Monitor_23.Disabled", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_49()
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_TriggerMonitor_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|597510441", "597510441", "S04M020_Main", "box_Proximity_Monitor_23.Enabled", "box_TriggerMonitor_v2_49.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_23_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_17()
  l0 = self.box_Proximity_Monitor_23
  l1 = self.box_MissionZone_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1135646778", "1135646778", "S04M020_Main", "box_Proximity_Monitor_23.ExitRadius", "box_MissionZone_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_61_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_18
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1898356927", "1898356927", "S04M020_Main", "box_Compare_Boolean_v2_61.A_is_True", "box_MissionCheckpointReach_18.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_29
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347581"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1397017190", "1397017190", "S04M020_Main", "box_Compare_Boolean_v2_61.Out", "box_PhoneCommunicationController_29.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_S04M020_SCR_Main_76_OutDisableCollision()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_0
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1456136156"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_37_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_37_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_S04M020_SCR_Main_76
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|342200257", "342200257", "S04M020_Main", "box_S04M020_SCR_Main_76.OutDisableCollision", "box_Compare_Boolean_v2_37.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_34
  l0.CLO = "9223372056708309657"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1884016090", "1884016090", "S04M020_Main", "box_Ordered_Output_14.Out", "box_CLOController_34.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_45
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|229576807", "229576807", "S04M020_Main", "box_Ordered_Output_14.Out", "box_PlaySound_v2_45.Play", clone, l0)
  l0:Play()
end
function export:f_box_Lanes_Restrictions_Control_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372060061640320"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|137091057"
  l0.Out = self.f_box_Phys_Zone_Cleanup_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2109500489", "2109500489", "S04M020_Main", "box_Lanes_Restrictions_Control_40.Out", "box_Phys_Zone_Cleanup_30.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CinematicPrep_68_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_71()
  l0 = self.box_CinematicPrep_68
  l1 = self.box_MultipleOR_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|380217932", "380217932", "S04M020_Main", "box_CinematicPrep_68.PostOut", "box_MultipleOR_71.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_19_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|123145480"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_CinematicPrep_19
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|531453966", "531453966", "S04M020_Main", "box_CinematicPrep_19.PreOut", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1875507824"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_Timer_v2_11
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|743697212", "743697212", "S04M020_Main", "box_Timer_v2_11.TimeElapsed", "box_MissionMusicController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_S04_M020_CIN_Delivery_Main_60_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_78()
  l0 = self.box_S04_M020_CIN_Delivery_Main_60
  l1 = self.box_Mission_End_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|302591847", "302591847", "S04M020_Main", "box_S04_M020_CIN_Delivery_Main_60.Out", "box_Mission_End_78.End", l0, l1)
  l1:End()
end
function export:f_box_CLOController_34_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_34
  self.Wrench = l0.UserID
end
function export:f_box_S04M020_SCR_Main_65_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_S04M020_SCR_Main_65
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1906146871", "1906146871", "S04M020_Main", "box_S04M020_SCR_Main_65.Out", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_67_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_63
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_OnceOnly_v3_67
  l1 = self.box_MissionCheckpointReach_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1063939429", "1063939429", "S04M020_Main", "box_OnceOnly_v3_67.Out", "box_MissionCheckpointReach_63.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_37_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M020_SCR_Main_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|831165547", "831165547", "S04M020_Main", "box_Compare_Boolean_v2_37.A_is_False", "box_S04M020_SCR_Main_65.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_37_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|21651184", "21651184", "S04M020_Main", "box_Compare_Boolean_v2_37.A_is_True", "box_CinematicPrep_15.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Player_Proximity_Monitor_81_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_79
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M010.ActivationObjective",
    item = "ActivationObjective",
    id = "341403"
  }
  l0 = self.box_Player_Proximity_Monitor_81
  l1 = self.box_MissionMessageController_v3_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|360693169", "360693169", "S04M020_Main", "box_Player_Proximity_Monitor_81.Disabled", "box_MissionMessageController_v3_79.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Player_Proximity_Monitor_81_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_82()
  l0 = self.box_Player_Proximity_Monitor_81
  l1 = self.box_MultipleOR_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1449778556", "1449778556", "S04M020_Main", "box_Player_Proximity_Monitor_81.EnterRadius", "box_MultipleOR_82.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Player_Proximity_Monitor_81_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_81()
  l0 = self.box_Player_Proximity_Monitor_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|914637307", "914637307", "S04M020_Main", "box_Player_Proximity_Monitor_81.ExitRadius", "box_Player_Proximity_Monitor_81.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_79_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reach_Gameplay_80
  l0.Entity = self.HAUMTruck
  l0.Entity_AreaRadius = 10
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_MissionMessageController_v3_79
  l1 = self.box_Reach_Gameplay_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2039384248", "2039384248", "S04M020_Main", "box_MissionMessageController_v3_79.MessageCompleted", "box_Reach_Gameplay_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_1
  l0.LayerName = "S04M020_Main"
  l0 = self.box_MultipleOR_36
  l1 = self.box_MissionLayer_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|470486034", "470486034", "S04M020_Main", "box_MultipleOR_36.Out", "box_MissionLayer_v2_1.Load", l0, l1)
  l1:Load()
end
function export:f_box_MultipleOR_52_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_MultipleOR_52
  l1 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|667847976", "667847976", "S04M020_Main", "box_MultipleOR_52.Out", "box_Player_Proximity_Monitor_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Compare_Boolean_v2_66_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|29197737", "29197737", "S04M020_Main", "box_Compare_Boolean_v2_66.A_is_True", "box_OnceOnly_v3_67.In", clone, l0)
  l0:In(0)
end
function export:f_box_SetBoolean_v2_64_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.PlayerEscaped = l0.Target
end
function export:f_box_SetBoolean_v2_64_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.PlayerEscaped = l0.Target
end
function export:f_box_SetBoolean_v2_64_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.PlayerEscaped = l0.Target
end
function export:f_box_SetBoolean_v2_64_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.PlayerEscaped = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerLeftArea
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1602059347"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_66_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_64
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|864869578", "864869578", "S04M020_Main", "box_SetBoolean_v2_64.SetTrue", "box_Compare_Boolean_v2_66.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_64_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_64
  self.PlayerEscaped = l0.Target
end
function export:f_box_Delivery_Gameplay_21_AllDeliveryCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Failure_55()
  l0 = self.box_Delivery_Gameplay_21
  l1 = self.box_Vehicle_Failure_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2058063616", "2058063616", "S04M020_Main", "box_Delivery_Gameplay_21.AllDeliveryCompleted", "box_Vehicle_Failure_55.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Delivery_Gameplay_21_Evaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_64()
  l0 = self.box_Delivery_Gameplay_21
  l1 = self.box_SetBoolean_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|141337948", "141337948", "S04M020_Main", "box_Delivery_Gameplay_21.Evaded", "box_SetBoolean_v2_64.True", l0, l1)
  l1:True()
end
function export:f_box_Delivery_Gameplay_21_InConflict()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_64()
  l0 = self.box_Delivery_Gameplay_21
  l1 = self.box_SetBoolean_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1183170573", "1183170573", "S04M020_Main", "box_Delivery_Gameplay_21.InConflict", "box_SetBoolean_v2_64.False", l0, l1)
  l1:False()
end
function export:f_box_Delivery_Gameplay_21_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Failure_55()
  l0 = self.box_Delivery_Gameplay_21
  l1 = self.box_Vehicle_Failure_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1016230991", "1016230991", "S04M020_Main", "box_Delivery_Gameplay_21.Started", "box_Vehicle_Failure_55.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_69_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.IsCheckPoint_1 = l0.Target
  l0 = self.box_MissionLayer_v2_44
  l0.LayerName = "S04M020_Main"
  l0 = self.box_SetBoolean_v2_69
  l1 = self.box_MissionLayer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1985016843", "1985016843", "S04M020_Main", "box_SetBoolean_v2_69.SetTrue", "box_MissionLayer_v2_44.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_69_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_Player_Proximity_Monitor_39_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1113488162"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_Player_Proximity_Monitor_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|124231764", "124231764", "S04M020_Main", "box_Player_Proximity_Monitor_39.EnterRadius", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_22_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_S04_M020_CIN_Delivery_Main_60
  l0.Player = self.PlayerEntity
  l0.WrenchIn = self.Wrench
  l0 = self.box_CLOController_22
  l1 = self.box_S04_M020_CIN_Delivery_Main_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1051285587", "1051285587", "S04M020_Main", "box_CLOController_22.UnspawnedUser", "box_S04_M020_CIN_Delivery_Main_60.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|413441287"
  l0.Out = self.f_box_Simple_Node_35_Out
  l0 = self.box_Proximity_Monitor_6
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1243265116", "1243265116", "S04M020_Main", "box_Proximity_Monitor_6.Disabled", "box_Simple_Node_35.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_6_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_7()
  l0 = self.box_Proximity_Monitor_6
  l1 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|2019673969", "2019673969", "S04M020_Main", "box_Proximity_Monitor_6.Enabled", "box_Proximity_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_6_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_6()
  l0 = self.box_Proximity_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|741134389", "741134389", "S04M020_Main", "box_Proximity_Monitor_6.ExitRadius", "box_Proximity_Monitor_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleSeatingController_57_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_47
  l0.PGTMissionArea = "9223372046428604788"
  l0 = self.box_VehicleSeatingController_57
  l1 = self.box_PGTController_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1753626602", "1753626602", "S04M020_Main", "box_VehicleSeatingController_57.AssignCompleted", "box_PGTController_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_GateController_5_Closed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_8
  l0.PGTMissionArea = "9223372046428604788"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1755456709", "1755456709", "S04M020_Main", "box_GateController_5.Closed", "box_PGTController_v2_8.Start", clone, l0)
  l0:Start()
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
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372046428604788"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0._name = "box_Lanes_Restrictions_Control_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|556851112"
  l0.Out = self.f_box_Lanes_Restrictions_Control_24_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1990331575", "1990331575", "S04M020_Main", "box_Get_Player_ID_2.Out", "box_Lanes_Restrictions_Control_24.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_56_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_56
  self.HAUMTruck = l0.UserID
  l0 = self.box_VehicleSeatingController_57
  l0.Vehicle = self.HAUMTruck
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0.WalkType = "Jog"
  l0 = self.box_CLOController_56
  l1 = self.box_VehicleSeatingController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1173495612", "1173495612", "S04M020_Main", "box_CLOController_56.OnUserInPlace", "box_VehicleSeatingController_57.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_PhoneCommunicationController_31_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_26
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Objective030",
    item = "Objective",
    id = "341432"
  }
  l0 = self.box_PhoneCommunicationController_31
  l1 = self.box_MissionMessageController_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|884891598", "884891598", "S04M020_Main", "box_PhoneCommunicationController_31.OnCommunicationStarted", "box_MissionMessageController_v3_26.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_GateController_4_Closed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372047482688399"
  l0.SetOpen = nil
  l0.Instant = 1
  l0._graph = self
  l0._name = "box_GateController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1819771185"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_GateController_5_Closed
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|748091669", "748091669", "S04M020_Main", "box_GateController_4.Closed", "box_GateController_5.Close", clone, l0)
  l0:Close()
end
function export:f_box_MultipleOR_71_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|810063577"
  l0.Out = self.f_box_Simple_Node_12_Out
  l0 = self.box_MultipleOR_71
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1525719043", "1525719043", "S04M020_Main", "box_MultipleOR_71.Out", "box_Simple_Node_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_1_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1838338359"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_MissionLayer_v2_1
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1434958190", "1434958190", "S04M020_Main", "box_MissionLayer_v2_1.Loaded", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_Proximity_Monitor_7
  l1 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1191512079", "1191512079", "S04M020_Main", "box_Proximity_Monitor_7.Disabled", "box_Multiple_AND_9.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Proximity_Monitor_7_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_7()
  l0 = self.box_Proximity_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|1381909017", "1381909017", "S04M020_Main", "box_Proximity_Monitor_7.ExitRadius", "box_Proximity_Monitor_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_9()
  l0 = self.box_Multiple_AND_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M020\\S04M020.domino|@S04M020_Main|31589158", "31589158", "S04M020_Main", "box_Simple_Node_32.Out", "box_Multiple_AND_9.Condition", clone, l0)
  l0:Condition(1)
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_Multiple_AND_9()
end
function export:OnEnter_box_MissionZone_17()
  local l0
  l0 = self.box_MissionZone_17
  l0.MissionArea = "9223372051157569016"
  l0.MissionLayer = "S04M020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_51()
end
function export:OnEnter_box_TriggerMonitor_v2_49()
  local l0
  l0 = self.box_TriggerMonitor_v2_49
  l0.Trigger = "9223372064379799246"
end
function export:OnEnter_box_Vehicle_Failure_55()
  local l0
  l0 = self.box_Vehicle_Failure_55
  l0.VehicleEntity = self.HAUMTruck
  l0.Fail_IfUnusable = 1
  l0.Fail_IfStuck = 1
  l0.Unusable_FailReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.EXTRA",
    item = "Specific_VehicleDestroyed",
    id = "693347"
  }
  l0.FaiIfUnloaded = 1
end
function export:OnEnter_box_MultipleOR_58()
end
function export:OnEnter_box_Player_Proximity_Monitor_25()
  local l0
  l0 = self.box_Player_Proximity_Monitor_25
  l0.TargetEntity = self.HAUMTruck
  l0.Radius = 15
end
function export:OnEnter_box_MultipleOR_82()
end
function export:OnEnter_box_Proximity_Monitor_23()
  local l0
  l0 = self.box_Proximity_Monitor_23
  l0.Entity1 = self.HAUMTruck
  l0.Entity2 = "9223372047105914874"
  l0.Radius = 60
end
function export:OnEnter_box_Mission_End_78()
  local l0
  l0 = self.box_Mission_End_78
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S04M020_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Player_Proximity_Monitor_81()
  local l0
  l0 = self.box_Player_Proximity_Monitor_81
  l0.TargetEntity = self.HAUMTruck
  l0.Radius = 25
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_MultipleOR_52()
end
function export:OnEnter_box_SetBoolean_v2_64()
end
function export:OnEnter_box_Proximity_Monitor_6()
  local l0
  l0 = self.box_Proximity_Monitor_6
  l0.Entity1 = self.HAUMTruck
  l0.Entity2 = "9223372047105914874"
  l0.Radius = 200
end
function export:OnEnter_box_MultipleOR_71()
end
function export:OnEnter_box_Proximity_Monitor_7()
  local l0
  l0 = self.box_Proximity_Monitor_7
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372047105914874"
  l0.Radius = 200
end
_compilerVersion = 4
