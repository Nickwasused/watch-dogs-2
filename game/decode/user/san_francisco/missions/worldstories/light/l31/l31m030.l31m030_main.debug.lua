export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/ConvoyController.lua")
  cbox:RegisterBox("domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L31M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main"
  self.PlayerEntity = nil
  self.FirstConvoy = 0
  self.SecondConvoy = 0
  self.CFO = "25"
  self.CFOcar = nil
  self.CEO = nil
  self.CEOcar = nil
  self.Instigator = nil
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|19089695"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_MissionMessageController_v3_55 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_55
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|62130282"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_55_MessageCompleted
  self.box_MissionMessageController_v3_49 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_49
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|126103848"
  l0.Out = self.f_box_MissionMessageController_v3_49_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|142989081"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_MultipleOR_67 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_67
  l0._graph = self
  l0._name = "box_MultipleOR_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|144750091"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_67_Out
  self.box_MissionCheckpointReach_33 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_33
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|256810517"
  l0.Out = self.f_box_MissionCheckpointReach_33_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_OnceOnly_v3_82 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_82
  l0._graph = self
  l0._name = "box_OnceOnly_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|271032709"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_82_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleSeatingController_34 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_34
  l0._graph = self
  l0._name = "box_VehicleSeatingController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|319952072"
  l0.Assigned = self.f_box_VehicleSeatingController_34_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|363276592"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_CinematicPrep_76 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_76
  l0._graph = self
  l0._name = "box_CinematicPrep_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|367902922"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_76_PostOut
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|418057357"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_45 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_45
  l0._graph = self
  l0._name = "box_CinematicPrep_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|568078445"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_45_PostOut
  self.box_PawnHealthMonitor_v3_62 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_62
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|630186097"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_box_PawnHealthMonitor_v3_62_HealthChecked
  self.box_ConvoyMonitor_80 = cbox:CreateBox("domino/System/ConvoyMonitor.lua")
  l0 = self.box_ConvoyMonitor_80
  l0._graph = self
  l0._name = "box_ConvoyMonitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|650491738"
  l0.Enabled = self.f_box_ConvoyMonitor_80_Enabled
  l0.Disabled = self.f_box_ConvoyMonitor_80_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_box_ConvoyMonitor_80_VIPDied
  l0.VIPVehicleDestroyed = self.f_box_ConvoyMonitor_80_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_box_ConvoyMonitor_80_VIPHijacked
  l0.EscortDied = self.f_box_ConvoyMonitor_80_EscortDied
  l0.EscortVehicleDestroyed = self.f_box_ConvoyMonitor_80_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_box_ConvoyMonitor_80_EscortHijacked
  l0.ConvoyStuck = self.f_box_ConvoyMonitor_80_ConvoyStuck
  l0.ConvoyStopped = self.f_box_ConvoyMonitor_80_ConvoyStopped
  l0.HardDisturbance = self.f_box_ConvoyMonitor_80_HardDisturbance
  l0.SoftDisturbance = self.f_box_ConvoyMonitor_80_SoftDisturbance
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|742895273"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_44_OnUserInPlace
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|760985602"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_FreeRoam_Reach_Gameplay_9 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Reach_Gameplay_9
  l0._graph = self
  l0._name = "box_FreeRoam_Reach_Gameplay_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|823822518"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_Reach_Gameplay_9_Stopped
  l0.Reached = self.f_box_FreeRoam_Reach_Gameplay_9_Reached
  self.box_Escape_Gameplay_53 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_53
  l0._graph = self
  l0._name = "box_Escape_Gameplay_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|894252593"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_53_Escaped
  l0.LeftArea = DummyFunction
  self.box_CLOController_36 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_36
  l0._graph = self
  l0._name = "box_CLOController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1061572582"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_36_OnUserInPlace
  self.box_MultipleOR_94 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_94
  l0._graph = self
  l0._name = "box_MultipleOR_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1066135252"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_94_Out
  self.box_Download_Gameplay_48 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_48
  l0._graph = self
  l0._name = "box_Download_Gameplay_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1066364990"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Download_Gameplay_48_Stopped
  l0.DownloadCompleted = self.f_box_Download_Gameplay_48_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = self.f_box_Download_Gameplay_48_CustomRatioReached
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_MultipleOR_47 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_47
  l0._graph = self
  l0._name = "box_MultipleOR_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1145774831"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_47_Out
  self.box_PhoneCommunicationController_35 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_35
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1162617747"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_35_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1211099275"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1216853736"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_60 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_60
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1221059971"
  l0.Out = self.f_box_MissionCheckpointReach_60_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Proximity_Monitor_51 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_51
  l0._graph = self
  l0._name = "box_Proximity_Monitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1224861406"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_51_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_51_ExitRadius
  self.box_PawnHealthMonitor_v3_85 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_85
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1276640867"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = self.f_box_PawnHealthMonitor_v3_85_HealthChecked
  self.box_Download_Gameplay_79 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_79
  l0._graph = self
  l0._name = "box_Download_Gameplay_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1328907444"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Download_Gameplay_79_Stopped
  l0.DownloadCompleted = self.f_box_Download_Gameplay_79_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = self.f_box_Download_Gameplay_79_CustomRatioReached
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_PhoneCommunicationController_42 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_42
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1392094008"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_42_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1486089919"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_UnspawnController_71 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_71
  l0._graph = self
  l0._name = "box_UnspawnController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1487110847"
  l0.EntityUnspawned = self.f_box_UnspawnController_71_EntityUnspawned
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_MissionController_v4_56 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_56
  l0._graph = self
  l0._name = "box_MissionController_v4_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1600646703"
  self.box_MissionLayer_v2_54 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_54
  l0._graph = self
  l0._name = "box_MissionLayer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1606972449"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_54_Unloaded
  l0.Reseted = DummyFunction
  self.box_FreeRoam_Reach_Gameplay_10 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Reach_Gameplay_10
  l0._graph = self
  l0._name = "box_FreeRoam_Reach_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1646458007"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_FreeRoam_Reach_Gameplay_10_Stopped
  l0.Reached = self.f_box_FreeRoam_Reach_Gameplay_10_Reached
  self.box_OnceOnly_v3_69 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_69
  l0._graph = self
  l0._name = "box_OnceOnly_v3_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1659815185"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_69_Out
  l0.ResetOut = DummyFunction
  self.box_ConvoyMonitor_64 = cbox:CreateBox("domino/System/ConvoyMonitor.lua")
  l0 = self.box_ConvoyMonitor_64
  l0._graph = self
  l0._name = "box_ConvoyMonitor_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1678318665"
  l0.Enabled = self.f_box_ConvoyMonitor_64_Enabled
  l0.Disabled = self.f_box_ConvoyMonitor_64_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_box_ConvoyMonitor_64_VIPDied
  l0.VIPVehicleDestroyed = self.f_box_ConvoyMonitor_64_VIPVehicleDestroyed
  l0.VIPHijacked = self.f_box_ConvoyMonitor_64_VIPHijacked
  l0.EscortDied = self.f_box_ConvoyMonitor_64_EscortDied
  l0.EscortVehicleDestroyed = self.f_box_ConvoyMonitor_64_EscortVehicleDestroyed
  l0.EscortHijacked = self.f_box_ConvoyMonitor_64_EscortHijacked
  l0.ConvoyStuck = self.f_box_ConvoyMonitor_64_ConvoyStuck
  l0.ConvoyStopped = self.f_box_ConvoyMonitor_64_ConvoyStopped
  l0.HardDisturbance = self.f_box_ConvoyMonitor_64_HardDisturbance
  l0.SoftDisturbance = self.f_box_ConvoyMonitor_64_SoftDisturbance
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1777067922"
  l0.Out = self.f_box_MissionMessageController_v3_38_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleSeatingController_58 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_58
  l0._graph = self
  l0._name = "box_VehicleSeatingController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1793593855"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_58_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_75 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_75
  l0._graph = self
  l0._name = "box_CLOController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1815526211"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_75_OnUserInPlace
  self.box_CLOController_32 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_32
  l0._graph = self
  l0._name = "box_CLOController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1823200693"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_32_OnUserInPlace
  self.box_MissionLayer_v2_46 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_46
  l0._graph = self
  l0._name = "box_MissionLayer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1857392460"
  l0.Loaded = self.f_box_MissionLayer_v2_46_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_52 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_52
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1860725188"
  l0.Out = self.f_box_MissionMessageController_v3_52_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_37 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_37
  l0._graph = self
  l0._name = "box_CLOController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1868641027"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_37_OnUserInPlace
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1978284815"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_77 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_77
  l0._graph = self
  l0._name = "box_MultipleOR_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1986180933"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_77_Out
  self.box_MissionMessageController_v3_78 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_78
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1989829844"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_78_MessageCompleted
  self.box_VehicleSeatingController_41 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_41
  l0._graph = self
  l0._name = "box_VehicleSeatingController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1993544972"
  l0.Assigned = self.f_box_VehicleSeatingController_41_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_59 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_59
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2048845646"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_59_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_74 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_74
  l0._graph = self
  l0._name = "box_VehicleSeatingController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2135839792"
  l0.Assigned = self.f_box_VehicleSeatingController_74_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_UnspawnController_95 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_95
  l0._graph = self
  l0._name = "box_UnspawnController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2145958694"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
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
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1505364435", "1505364435", "L31M030_Main", "CheckPoint_0", "box_MultipleOR_47.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = "L31M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1408108144", "1408108144", "L31M030_Main", "CheckPoint_1", "box_MissionLayer_v2_6.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|659341284", "659341284", "L31M030_Main", "In", "box_MultipleOR_47.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ConvoyController_81()
  l0 = self.box_MultipleOR_87
  l1 = Boxes[PathID("domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|716586817", "716586817", "L31M030_Main", "box_MultipleOR_87.Out", "box_ConvoyController_81.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_55_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_59
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611639475"
  l0 = self.box_MissionMessageController_v3_55
  l1 = self.box_PhoneCommunicationController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|809072941", "809072941", "L31M030_Main", "box_MissionMessageController_v3_55.MessageCompleted", "box_PhoneCommunicationController_59.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionMessageController_v3_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_42
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052611639476"
  l0 = self.box_MissionMessageController_v3_49
  l1 = self.box_PhoneCommunicationController_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1097280859", "1097280859", "L31M030_Main", "box_MissionMessageController_v3_49.Out", "box_PhoneCommunicationController_42.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_82()
  l0 = self.box_MultipleOR_5
  l1 = self.box_OnceOnly_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2050259614", "2050259614", "L31M030_Main", "box_MultipleOR_5.Out", "box_OnceOnly_v3_82.In", l0, l1)
  l1:In(1)
end
function export:f_box_MultipleOR_67_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_69()
  l0 = self.box_MultipleOR_67
  l1 = self.box_OnceOnly_v3_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1537399842", "1537399842", "L31M030_Main", "box_MultipleOR_67.Out", "box_OnceOnly_v3_69.In", l0, l1)
  l1:In(1)
end
function export:f_box_Get_Player_ID_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_32
  l0.CLO = "9223372049784711209"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|161696715", "161696715", "L31M030_Main", "box_Get_Player_ID_7.Out", "box_CLOController_32.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionCheckpointReach_33_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_35
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373739"
  l0 = self.box_MissionCheckpointReach_33
  l1 = self.box_PhoneCommunicationController_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1592738891", "1592738891", "L31M030_Main", "box_MissionCheckpointReach_33.Out", "box_PhoneCommunicationController_35.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_OnceOnly_v3_82_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2014528880"
  l0.Out = self.f_box_Simple_Node_91_Out
  l0 = self.box_OnceOnly_v3_82
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1733332583", "1733332583", "L31M030_Main", "box_OnceOnly_v3_82.Out", "box_Simple_Node_91.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|987421453", "987421453", "L31M030_Main", "box_Simple_Node_3.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Entity_v2_84_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_82()
  l0 = self.box_OnceOnly_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2008772269", "2008772269", "L31M030_Main", "box_Compare_Entity_v2_84.Equal", "box_OnceOnly_v3_82.In", clone, l0)
  l0:In(2)
end
function export:f_box_VehicleSeatingController_34_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_VehicleSeatingController_34
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2066954684", "2066954684", "L31M030_Main", "box_VehicleSeatingController_34.Assigned", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  self.CEOcar = l0.UserID
  l0 = self.box_VehicleSeatingController_34
  l0.Vehicle = self.CEOcar
  l0.Pawn = self.CEO
  l0.Seat = "Driver"
  l0 = self.box_CLOController_39
  l1 = self.box_VehicleSeatingController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1361487033", "1361487033", "L31M030_Main", "box_CLOController_39.OnUserInPlace", "box_VehicleSeatingController_34.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_CinematicPrep_76_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_77()
  l0 = self.box_CinematicPrep_76
  l1 = self.box_MultipleOR_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|955270982", "955270982", "L31M030_Main", "box_CinematicPrep_76.PostOut", "box_MultipleOR_77.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_48()
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_Download_Gameplay_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|384926087", "384926087", "L31M030_Main", "box_MissionMessageController_v3_8.Out", "box_Download_Gameplay_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_45_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_33
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_CinematicPrep_45
  l1 = self.box_MissionCheckpointReach_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1006383608", "1006383608", "L31M030_Main", "box_CinematicPrep_45.PostOut", "box_MissionCheckpointReach_33.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyController_81_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  self.SecondConvoy = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_80()
  l0 = self.box_ConvoyMonitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1700447183", "1700447183", "L31M030_Main", "box_ConvoyController_81.Started", "box_ConvoyMonitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ConvoyController_81_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_80()
  l0 = self.box_ConvoyMonitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|421966798", "421966798", "L31M030_Main", "box_ConvoyController_81.Stopped", "box_ConvoyMonitor_80.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v3_62_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_62
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = 0
  l1.Tolerance = 0
  l1._graph = self
  l1._name = "box_Compare_Floats_v2_73"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1841592954"
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_box_Compare_Floats_v2_73_A_gt_B
  l1.A_ne_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_62
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1904353098", "1904353098", "L31M030_Main", "box_PawnHealthMonitor_v3_62.HealthChecked", "box_Compare_Floats_v2_73.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_80_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_80_ConvoyStuck()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_ConvoyMonitor_80
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|454810488", "454810488", "L31M030_Main", "box_ConvoyMonitor_80.ConvoyStuck", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ConvoyMonitor_80_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.CEO
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602256"
  l0.Vehicle = self.CEOcar
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1321924119"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_ConvoyMonitor_80
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|183069288", "183069288", "L31M030_Main", "box_ConvoyMonitor_80.Disabled", "box_Start_Update_Stop_flee_behavior_on_an_AI_90.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConvoyMonitor_80_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Reach_Gameplay_10()
  l0 = self.box_ConvoyMonitor_80
  l1 = self.box_FreeRoam_Reach_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|994201000", "994201000", "L31M030_Main", "box_ConvoyMonitor_80.Enabled", "box_FreeRoam_Reach_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConvoyMonitor_80_EscortDied()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_80_EscortHijacked()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_80_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_80_HardDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_4()
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|180380607", "180380607", "L31M030_Main", "box_ConvoyMonitor_80.HardDisturbance", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyMonitor_80_SoftDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_4()
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|496297833", "496297833", "L31M030_Main", "box_ConvoyMonitor_80.SoftDisturbance", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ConvoyMonitor_80_VIPDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|293044545"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_ConvoyMonitor_80
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2030312331", "2030312331", "L31M030_Main", "box_ConvoyMonitor_80.VIPDied", "box_Simple_Node_3.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_80_VIPHijacked()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_80_VIPVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_80
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_5()
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1747733264", "1747733264", "L31M030_Main", "box_ConvoyMonitor_80.VIPVehicleDestroyed", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyController_50_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  self.FirstConvoy = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_64()
  l0 = self.box_ConvoyMonitor_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1869838399", "1869838399", "L31M030_Main", "box_ConvoyController_50.Started", "box_ConvoyMonitor_64.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ConvoyController_50_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_64()
  l0 = self.box_ConvoyMonitor_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1496538435", "1496538435", "L31M030_Main", "box_ConvoyController_50.Stopped", "box_ConvoyMonitor_64.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Simple_Node_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1832715534", "1832715534", "L31M030_Main", "box_Simple_Node_93.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  self.CFO = l0.UserID
  l0 = self.box_CLOController_37
  l0.CLO = "9223372049784711207"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_44
  l1 = self.box_CLOController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1601791476", "1601791476", "L31M030_Main", "box_CLOController_44.OnUserInPlace", "box_CLOController_37.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ConvoyController_50()
  l0 = self.box_MultipleOR_70
  l1 = Boxes[PathID("domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|738588305", "738588305", "L31M030_Main", "box_MultipleOR_70.Out", "box_ConvoyController_50.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_94()
  l0 = self.box_MultipleOR_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|678854865", "678854865", "L31M030_Main", "box_Simple_Node_92.Out", "box_MultipleOR_94.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Floats_v2_89_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_82()
  l0 = self.box_OnceOnly_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1742653727", "1742653727", "L31M030_Main", "box_Compare_Floats_v2_89.A_gt_B", "box_OnceOnly_v3_82.In", clone, l0)
  l0:In(0)
end
function export:f_box_FreeRoam_Reach_Gameplay_9_Reached()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Reach_Gameplay_9()
  l0 = self.box_FreeRoam_Reach_Gameplay_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1577003548", "1577003548", "L31M030_Main", "box_FreeRoam_Reach_Gameplay_9.Reached", "box_FreeRoam_Reach_Gameplay_9.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Reach_Gameplay_9_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective011",
    item = "Objective",
    id = "646618"
  }
  l0 = self.box_FreeRoam_Reach_Gameplay_9
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1414970342", "1414970342", "L31M030_Main", "box_FreeRoam_Reach_Gameplay_9.Stopped", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Compare_Entity_v2_61_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_69()
  l0 = self.box_OnceOnly_v3_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|522872696", "522872696", "L31M030_Main", "box_Compare_Entity_v2_61.Equal", "box_OnceOnly_v3_69.In", clone, l0)
  l0:In(2)
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1071258306", "1071258306", "L31M030_Main", "box_Simple_Node_1.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Escape_Gameplay_53_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_53
  l1 = self.box_MissionMessageController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|65671685", "65671685", "L31M030_Main", "box_Escape_Gameplay_53.Escaped", "box_MissionMessageController_v3_55.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_CLOController_36_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_36
  self.CEO = l0.UserID
  l0 = self.box_CLOController_39
  l0.CLO = "9223372049784711210"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_36
  l1 = self.box_CLOController_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|878505201", "878505201", "L31M030_Main", "box_CLOController_36.OnUserInPlace", "box_CLOController_39.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_94_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_71
  l0.Entity = self.CFO
  l0 = self.box_MultipleOR_94
  l1 = self.box_UnspawnController_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|169686739", "169686739", "L31M030_Main", "box_MultipleOR_94.Out", "box_UnspawnController_71.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Download_Gameplay_48_CustomRatioReached()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_62
  l0.Pawn = self.CFO
  l0 = self.box_Download_Gameplay_48
  l1 = self.box_PawnHealthMonitor_v3_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|580208669", "580208669", "L31M030_Main", "box_Download_Gameplay_48.CustomRatioReached", "box_PawnHealthMonitor_v3_62.CheckHealth", l0, l1)
  l1:CheckHealth()
end
function export:f_box_Download_Gameplay_48_DownloadCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_Download_Gameplay_48()
  l0 = self.box_Download_Gameplay_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|234845380", "234845380", "L31M030_Main", "box_Download_Gameplay_48.DownloadCompleted", "box_Download_Gameplay_48.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Download_Gameplay_48_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1821574498"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_72_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_72_Out_1
  l0 = self.box_Download_Gameplay_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1490214324", "1490214324", "L31M030_Main", "box_Download_Gameplay_48.Stopped", "box_Ordered_Output_72.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_46
  l0.LayerName = "L31M030_Main"
  l0 = self.box_MultipleOR_47
  l1 = self.box_MissionLayer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|379723499", "379723499", "L31M030_Main", "box_MultipleOR_47.Out", "box_MissionLayer_v2_46.Load", l0, l1)
  l1:Load()
end
function export:f_box_PhoneCommunicationController_35_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective013",
    item = "Objective",
    id = "697688"
  }
  l0 = self.box_PhoneCommunicationController_35
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|155850722", "155850722", "L31M030_Main", "box_PhoneCommunicationController_35.OnCommunicationFinished", "box_MissionMessageController_v3_38.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|319899504"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_84_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_MultipleOR_4
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1097701622", "1097701622", "L31M030_Main", "box_MultipleOR_4.Out", "box_Compare_Entity_v2_84.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|173010970"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_6
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|126750530", "126750530", "L31M030_Main", "box_MissionLayer_v2_6.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_60_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ConvoyController_81()
  l0 = self.box_MissionCheckpointReach_60
  l1 = Boxes[PathID("domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|526981140", "526981140", "L31M030_Main", "box_MissionCheckpointReach_60.Out", "box_ConvoyController_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_51_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.CFO
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2046544048"
  l0.EntityIsInVehicle = self.f_box_VehicleSeatingMonitor_57_EntityIsInVehicle
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_57_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Proximity_Monitor_51
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1075353490", "1075353490", "L31M030_Main", "box_Proximity_Monitor_51.Disabled", "box_VehicleSeatingMonitor_57.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_Proximity_Monitor_51_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_51()
  l0 = self.box_Proximity_Monitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1504578425", "1504578425", "L31M030_Main", "box_Proximity_Monitor_51.ExitRadius", "box_Proximity_Monitor_51.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v3_85_HealthChecked()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_85
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l1.A = l0.Health
  l1.B = 0
  l1.Tolerance = 0
  l1._graph = self
  l1._name = "box_Compare_Floats_v2_89"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|780330333"
  l1.Out = DummyFunction
  l1.A_lt_B = DummyFunction
  l1.A_le_B = DummyFunction
  l1.A_eq_B = DummyFunction
  l1.A_ge_B = DummyFunction
  l1.A_gt_B = self.f_box_Compare_Floats_v2_89_A_gt_B
  l1.A_ne_B = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_85
  l1 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|258474773", "258474773", "L31M030_Main", "box_PawnHealthMonitor_v3_85.HealthChecked", "box_Compare_Floats_v2_89.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_79_CustomRatioReached()
  local l0, l1
  self = self._graph
  l0 = self.box_PawnHealthMonitor_v3_85
  l0.Pawn = self.CEO
  l0 = self.box_Download_Gameplay_79
  l1 = self.box_PawnHealthMonitor_v3_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1583622182", "1583622182", "L31M030_Main", "box_Download_Gameplay_79.CustomRatioReached", "box_PawnHealthMonitor_v3_85.CheckHealth", l0, l1)
  l1:CheckHealth()
end
function export:f_box_Download_Gameplay_79_DownloadCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_Download_Gameplay_79()
  l0 = self.box_Download_Gameplay_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1947923897", "1947923897", "L31M030_Main", "box_Download_Gameplay_79.DownloadCompleted", "box_Download_Gameplay_79.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Download_Gameplay_79_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_52
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0 = self.box_Download_Gameplay_79
  l1 = self.box_MissionMessageController_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1884277452", "1884277452", "L31M030_Main", "box_Download_Gameplay_79.Stopped", "box_MissionMessageController_v3_52.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_PhoneCommunicationController_42_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_36
  l0.CLO = "9223372049784711209"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_PhoneCommunicationController_42
  l1 = self.box_CLOController_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1674322227", "1674322227", "L31M030_Main", "box_PhoneCommunicationController_42.StartCommunicationOut", "box_CLOController_36.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|836422223"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_61_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1365368207", "1365368207", "L31M030_Main", "box_MultipleOR_2.Out", "box_Compare_Entity_v2_61.In", l0, l1)
  l1:In()
end
function export:f_box_UnspawnController_71_EntityUnspawned()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_95
  l0.Entity = self.CFOcar
  l0 = self.box_UnspawnController_71
  l1 = self.box_UnspawnController_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|744926761", "744926761", "L31M030_Main", "box_UnspawnController_71.EntityUnspawned", "box_UnspawnController_95.UnspawnEntity", l0, l1)
  l1:UnspawnEntity()
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1677619942"
  l0.Out = self.f_box_Simple_Node_63_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1623235263", "1623235263", "L31M030_Main", "box_Simple_Node_40.Out", "box_Simple_Node_63.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_54_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_54
  l1 = self.box_MissionController_v4_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1536402312", "1536402312", "L31M030_Main", "box_MissionLayer_v2_54.Unloaded", "box_MissionController_v4_56.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_FreeRoam_Reach_Gameplay_10_Reached()
  local l0
  self = self._graph
  self:OnEnter_box_FreeRoam_Reach_Gameplay_10()
  l0 = self.box_FreeRoam_Reach_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1749498536", "1749498536", "L31M030_Main", "box_FreeRoam_Reach_Gameplay_10.Reached", "box_FreeRoam_Reach_Gameplay_10.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FreeRoam_Reach_Gameplay_10_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective012",
    item = "Objective",
    id = "646619"
  }
  l0 = self.box_FreeRoam_Reach_Gameplay_10
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1147036494", "1147036494", "L31M030_Main", "box_FreeRoam_Reach_Gameplay_10.Stopped", "box_MissionMessageController_v3_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1575715238"
  l0.Out = self.f_box_Simple_Node_40_Out
  l0 = self.box_OnceOnly_v3_69
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1861497273", "1861497273", "L31M030_Main", "box_OnceOnly_v3_69.Out", "box_Simple_Node_40.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|916258469", "916258469", "L31M030_Main", "box_Simple_Node_63.Out", "box_MultipleOR_70.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_ConvoyMonitor_64_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_64_ConvoyStuck()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_67()
  l0 = self.box_ConvoyMonitor_64
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|277341073", "277341073", "L31M030_Main", "box_ConvoyMonitor_64.ConvoyStuck", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ConvoyMonitor_64_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.CFO
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602256"
  l0.Vehicle = self.CFOcar
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|65631007"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_ConvoyMonitor_64
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1283215526", "1283215526", "L31M030_Main", "box_ConvoyMonitor_64.Disabled", "box_Start_Update_Stop_flee_behavior_on_an_AI_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConvoyMonitor_64_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Reach_Gameplay_9()
  l0 = self.box_ConvoyMonitor_64
  l1 = self.box_FreeRoam_Reach_Gameplay_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1198316451", "1198316451", "L31M030_Main", "box_ConvoyMonitor_64.Enabled", "box_FreeRoam_Reach_Gameplay_9.Start", l0, l1)
  l1:Start()
end
function export:f_box_ConvoyMonitor_64_EscortDied()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_64_EscortHijacked()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_64_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_64_HardDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_2()
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|444872433", "444872433", "L31M030_Main", "box_ConvoyMonitor_64.HardDisturbance", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyMonitor_64_SoftDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_2()
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|828573805", "828573805", "L31M030_Main", "box_ConvoyMonitor_64.SoftDisturbance", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ConvoyMonitor_64_VIPDied()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|840432276"
  l0.Out = self.f_box_Simple_Node_1_Out
  l0 = self.box_ConvoyMonitor_64
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|903192420", "903192420", "L31M030_Main", "box_ConvoyMonitor_64.VIPDied", "box_Simple_Node_1.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_64_VIPHijacked()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_64_VIPVehicleDestroyed()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_64
  self.Instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_67()
  l1 = self.box_MultipleOR_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1390083028", "1390083028", "L31M030_Main", "box_ConvoyMonitor_64.VIPVehicleDestroyed", "box_MultipleOR_67.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ConvoyController_50()
  l0 = self.box_MissionMessageController_v3_38
  l1 = Boxes[PathID("domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2051172705", "2051172705", "L31M030_Main", "box_MissionMessageController_v3_38.Out", "box_ConvoyController_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingController_58_UnassignCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_94()
  l0 = self.box_VehicleSeatingController_58
  l1 = self.box_MultipleOR_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1836663180", "1836663180", "L31M030_Main", "box_VehicleSeatingController_58.UnassignCompleted", "box_MultipleOR_94.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_75_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_75
  self.CEOcar = l0.UserID
  l0 = self.box_VehicleSeatingController_74
  l0.Vehicle = self.CEOcar
  l0.Pawn = self.CEO
  l0.Seat = "Driver"
  l0 = self.box_CLOController_75
  l1 = self.box_VehicleSeatingController_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|2083195258", "2083195258", "L31M030_Main", "box_CLOController_75.OnUserInPlace", "box_VehicleSeatingController_74.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Ordered_Output_72_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_49
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective014",
    item = "Objective",
    id = "697689"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1740987746", "1740987746", "L31M030_Main", "box_Ordered_Output_72.Out", "box_MissionMessageController_v3_49.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_72_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_51()
  l0 = self.box_Proximity_Monitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1622099764", "1622099764", "L31M030_Main", "box_Ordered_Output_72.Out", "box_Proximity_Monitor_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_32_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_32
  self.CEO = l0.UserID
  l0 = self.box_CLOController_75
  l0.CLO = "9223372049784711210"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_32
  l1 = self.box_CLOController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1750491936", "1750491936", "L31M030_Main", "box_CLOController_32.OnUserInPlace", "box_CLOController_75.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Floats_v2_73_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_69()
  l0 = self.box_OnceOnly_v3_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|529246622", "529246622", "L31M030_Main", "box_Compare_Floats_v2_73.A_gt_B", "box_OnceOnly_v3_69.In", clone, l0)
  l0:In(0)
end
function export:f_box_MissionLayer_v2_46_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1942186324"
  l0.Out = self.f_box_Get_Player_ID_43_Out
  l0 = self.box_MissionLayer_v2_46
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1152687177", "1152687177", "L31M030_Main", "box_MissionLayer_v2_46.Loaded", "box_Get_Player_ID_43.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_53
  l0.Entity = self.CEO
  l0.Entity_AreaRadius = 150
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
  l0 = self.box_MissionMessageController_v3_52
  l1 = self.box_Escape_Gameplay_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|260508524", "260508524", "L31M030_Main", "box_MissionMessageController_v3_52.Out", "box_Escape_Gameplay_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_37_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_37
  self.CFOcar = l0.UserID
  l0 = self.box_VehicleSeatingController_41
  l0.Vehicle = self.CFOcar
  l0.Pawn = self.CFO
  l0.Seat = "Driver"
  l0 = self.box_CLOController_37
  l1 = self.box_VehicleSeatingController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|668912828", "668912828", "L31M030_Main", "box_CLOController_37.OnUserInPlace", "box_VehicleSeatingController_41.Assign", l0, l1)
  l1:Assign()
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
  l0 = self.box_CLOController_44
  l0.CLO = "9223372049784711208"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1987806862", "1987806862", "L31M030_Main", "box_Get_Player_ID_43.Out", "box_CLOController_44.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_79()
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_Download_Gameplay_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1442985911", "1442985911", "L31M030_Main", "box_MissionMessageController_v3_11.Out", "box_Download_Gameplay_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_60
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_77
  l1 = self.box_MissionCheckpointReach_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1322781741", "1322781741", "L31M030_Main", "box_MultipleOR_77.Out", "box_MissionCheckpointReach_60.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_78_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_76
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionMessageController_v3_78
  l1 = self.box_CinematicPrep_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|818243919", "818243919", "L31M030_Main", "box_MissionMessageController_v3_78.MessageCompleted", "box_CinematicPrep_76.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_VehicleSeatingController_41_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_45
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_VehicleSeatingController_41
  l1 = self.box_CinematicPrep_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1143462108", "1143462108", "L31M030_Main", "box_VehicleSeatingController_41.Assigned", "box_CinematicPrep_45.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|735448605"
  l0.Out = self.f_box_Simple_Node_93_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|29765639", "29765639", "L31M030_Main", "box_Simple_Node_91.Out", "box_Simple_Node_93.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingMonitor_57_EntityIsInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_58
  l0.Pawn = self.CFO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|641213798", "641213798", "L31M030_Main", "box_VehicleSeatingMonitor_57.EntityIsInVehicle", "box_VehicleSeatingController_58.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_VehicleSeatingMonitor_57_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|764617580"
  l0.Out = self.f_box_Simple_Node_92_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|1084500555", "1084500555", "L31M030_Main", "box_VehicleSeatingMonitor_57.EntityIsNotInVehicle", "box_Simple_Node_92.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_59_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_54
  l0.LayerName = "L31M030_Main"
  l0 = self.box_PhoneCommunicationController_59
  l1 = self.box_MissionLayer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|656602893", "656602893", "L31M030_Main", "box_PhoneCommunicationController_59.OnCommunicationFinished", "box_MissionLayer_v2_54.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_VehicleSeatingController_74_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_78
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M030.Objectives.Objective012",
    item = "Objective",
    id = "646619"
  }
  l0 = self.box_VehicleSeatingController_74
  l1 = self.box_MissionMessageController_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|874971383", "874971383", "L31M030_Main", "box_VehicleSeatingController_74.Assigned", "box_MissionMessageController_v3_78.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_MultipleOR_67()
end
function export:OnEnter_box_OnceOnly_v3_82()
end
function export:OnEnter_box_ConvoyController_81()
  local l0
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0.Destination = "9223372049921027694"
  l0.VIPCharacter = self.CEO
  l0.VIPVehicle = self.CEOcar
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = "ConvoyConfig.9223372067786720155"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.SecondConvoy
  l0._graph = self
  l0._name = "box_ConvoyController_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|606773748"
  l0.Started = self.f_box_ConvoyController_81_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_81_Stopped
end
function export:OnEnter_box_ConvoyMonitor_80()
  local l0
  l0 = self.box_ConvoyMonitor_80
  l0.ConvoyId = self.SecondConvoy
end
function export:OnEnter_box_ConvoyController_50()
  local l0
  l0 = Boxes[PathID("domino/System/ConvoyController.lua")]
  l0.Destination = "9223372049921027510"
  l0.VIPCharacter = self.CFO
  l0.VIPVehicle = self.CFOcar
  l0.EscortCharacters = nil
  l0.EscortVehicles = nil
  l0.ConvoyConfig = "ConvoyConfig.9223372067786720155"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.FirstConvoy
  l0._graph = self
  l0._name = "box_ConvoyController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L31\\L31M030.domino|@L31M030_Main|734913703"
  l0.Started = self.f_box_ConvoyController_50_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_50_Stopped
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_FreeRoam_Reach_Gameplay_9()
  local l0
  l0 = self.box_FreeRoam_Reach_Gameplay_9
  l0.Entity = self.CFO
  l0.Entity_AreaRadius = 25
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_MultipleOR_94()
end
function export:OnEnter_box_Download_Gameplay_48()
  local l0
  l0 = self.box_Download_Gameplay_48
  l0.TargetEntity = self.CFO
  l0.LinkedObjective = "Objective"
  l0.Duration = 60
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.2
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "SFPD"
  l0.AutoDetectDownload = 0
end
function export:OnEnter_box_MultipleOR_47()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_Proximity_Monitor_51()
  local l0
  l0 = self.box_Proximity_Monitor_51
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.CFO
  l0.Radius = 200
end
function export:OnEnter_box_Download_Gameplay_79()
  local l0
  l0 = self.box_Download_Gameplay_79
  l0.TargetEntity = self.CEO
  l0.LinkedObjective = "Objective"
  l0.Duration = 60
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.2
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "SFPD"
  l0.AutoDetectDownload = 0
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_FreeRoam_Reach_Gameplay_10()
  local l0
  l0 = self.box_FreeRoam_Reach_Gameplay_10
  l0.Entity = self.CEO
  l0.Entity_AreaRadius = 25
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_OnceOnly_v3_69()
end
function export:OnEnter_box_ConvoyMonitor_64()
  local l0
  l0 = self.box_ConvoyMonitor_64
  l0.ConvoyId = self.FirstConvoy
end
function export:OnEnter_box_MultipleOR_77()
end
_compilerVersion = 4
