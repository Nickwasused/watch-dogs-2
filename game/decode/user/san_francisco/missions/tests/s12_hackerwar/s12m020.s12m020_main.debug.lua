export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_AccessIDManagement.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main"
  self.PlayerEntity = nil
  self.MapIcon = "9223372046120119435"
  self.Reinforcement1_NPC = nil
  self.Reinforcement1_Car = nil
  self.PointNb = 0
  self.PlayerCar = nil
  self.EnemyCar = nil
  self.EnemyEntity = nil
  self.box_MissionCheckpointReach_121 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_121
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|85795897"
  l0.Out = self.f_box_MissionCheckpointReach_121_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|121253324"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_CinematicPrep_48 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_48
  l0._graph = self
  l0._name = "box_CinematicPrep_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|155983541"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_48_PostOut
  self.box_MultipleOR_142 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_142
  l0._graph = self
  l0._name = "box_MultipleOR_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|159549196"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_142_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S12M020_CheckPointSetup_123 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  l0 = self.box_S12M020_CheckPointSetup_123
  l0._graph = self
  l0._name = "box_S12M020_CheckPointSetup_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|273431669"
  l0.Out = self.f_box_S12M020_CheckPointSetup_123_Out
  self.box_TriggerMonitor_v2_57 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_57
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|277967356"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_57_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_57_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_25 = cbox:CreateBox("Domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_25
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|281837607"
  l0.Started = self.f_box_DistanceBasedProgressBarController_v2_25_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_25_Completed
  self.box_S12M020_AccessIDManagement_139 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_AccessIDManagement.debug.lua")
  l0 = self.box_S12M020_AccessIDManagement_139
  l0._graph = self
  l0._name = "box_S12M020_AccessIDManagement_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|310919657"
  l0.Blocked = DummyFunction
  l0.Unblocked = self.f_box_S12M020_AccessIDManagement_139_Unblocked
  self.box_Vehicle_Bhv_Monitor_23 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|313174430"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Stuck = self.f_box_Vehicle_Bhv_Monitor_23_Stuck
  l0.Broken = self.f_box_Vehicle_Bhv_Monitor_23_Broken
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_61
  l0._graph = self
  l0._name = "box_MultipleOR_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|315397233"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_61_Out
  self.box_S12M020_CheckPointSetup_58 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  l0 = self.box_S12M020_CheckPointSetup_58
  l0._graph = self
  l0._name = "box_S12M020_CheckPointSetup_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|335577961"
  l0.Out = self.f_box_S12M020_CheckPointSetup_58_Out
  self.box_MissionLayer_v2_42 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_42
  l0._graph = self
  l0._name = "box_MissionLayer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|343891273"
  l0.Loaded = self.f_box_MissionLayer_v2_42_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_124 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_124
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|365777594"
  l0.Out = self.f_box_MissionCheckpointReach_124_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_126
  l0._graph = self
  l0._name = "box_MultipleOR_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|390353595"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_126_Out
  self.box_TriggerMonitor_v2_50 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_50
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|420189213"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_50_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_50_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_54 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_54
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|482486462"
  l0.Out = self.f_box_MissionCheckpointReach_54_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S12M020_CheckPointSetup_119 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  l0 = self.box_S12M020_CheckPointSetup_119
  l0._graph = self
  l0._name = "box_S12M020_CheckPointSetup_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|511752889"
  l0.Out = self.f_box_S12M020_CheckPointSetup_119_Out
  self.box_S12M020_CheckPointSetup_120 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  l0 = self.box_S12M020_CheckPointSetup_120
  l0._graph = self
  l0._name = "box_S12M020_CheckPointSetup_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|620038613"
  l0.Out = self.f_box_S12M020_CheckPointSetup_120_Out
  self.box_MissionMessageController_10 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_10
  l0._graph = self
  l0._name = "box_MissionMessageController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|671127937"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_10_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_47
  l0._graph = self
  l0._name = "box_MultipleOR_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|779024687"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_47_Out
  self.box_S12M020_AccessIDManagement_140 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_AccessIDManagement.debug.lua")
  l0 = self.box_S12M020_AccessIDManagement_140
  l0._graph = self
  l0._name = "box_S12M020_AccessIDManagement_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|801508751"
  l0.Blocked = self.f_box_S12M020_AccessIDManagement_140_Blocked
  l0.Unblocked = DummyFunction
  self.box_MultipleOR_132 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_132
  l0._graph = self
  l0._name = "box_MultipleOR_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|805860379"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_132_Out
  self.box_MissionCheckpointReach_52 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_52
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|838274250"
  l0.Out = self.f_box_MissionCheckpointReach_52_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PawnHealthMonitor_v3_141 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_141
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|852724801"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_141_Killed
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MapPointController_v3_9 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_9
  l0._graph = self
  l0._name = "box_MapPointController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|948538056"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_9_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CinematicPrep_38 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_38
  l0._graph = self
  l0._name = "box_CinematicPrep_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|966014365"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_38_PostOut
  self.box_TriggerMonitor_v2_60 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_60
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|971028540"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_60_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionCheckpointReach_63 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_63
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|977947242"
  l0.Out = self.f_box_MissionCheckpointReach_63_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_55 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_55
  l0._graph = self
  l0._name = "box_CinematicPrep_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1067754275"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_55_PostOut
  self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1119096596"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_Proximity_Monitor_8 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_8
  l0._graph = self
  l0._name = "box_Proximity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1150447831"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_8_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_8_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_8_ExitRadius
  self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1176044728"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_MissionCheckpointReach_40 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_40
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1210754998"
  l0.Out = self.f_box_MissionCheckpointReach_40_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_OnceOnly_v2_22 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_22
  l0._graph = self
  l0._name = "box_OnceOnly_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1313813441"
  l0._DynamicAnchors = {In = 2, Out = 2}
  l0.Out[0] = self.f_box_OnceOnly_v2_22_Out_0
  l0.Out[1] = DummyFunction
  l0.ResetOut = DummyFunction
  self.box_MissionCheckpointReach_45 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_45
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1322697556"
  l0.Out = self.f_box_MissionCheckpointReach_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S12M020_CheckPointSetup_118 = cbox:CreateBox("domino/user/san_francisco/missions/tests/s12_hackerwar/s12m020.S12M020_CheckPointSetup.debug.lua")
  l0 = self.box_S12M020_CheckPointSetup_118
  l0._graph = self
  l0._name = "box_S12M020_CheckPointSetup_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1364873255"
  l0.Out = self.f_box_S12M020_CheckPointSetup_118_Out
  self.box_Proximity_Monitor_15 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_15
  l0._graph = self
  l0._name = "box_Proximity_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1375030171"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_15_ExitRadius
  self.box_MultipleOR_130 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_130
  l0._graph = self
  l0._name = "box_MultipleOR_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1433402829"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_130_Out
  self.box_VehicleSeatingController_24 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_24
  l0._graph = self
  l0._name = "box_VehicleSeatingController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1453191796"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_24_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_41 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_41
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1660526989"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_41_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_41_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_127 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_127
  l0._graph = self
  l0._name = "box_MultipleOR_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1682759999"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_127_Out
  self.box_MissionLayer_v2_59 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_59
  l0._graph = self
  l0._name = "box_MissionLayer_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1690727412"
  l0.Loaded = self.f_box_MissionLayer_v2_59_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_SnapAndBind_3 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_3
  l0._graph = self
  l0._name = "box_SnapAndBind_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1702205788"
  l0.Attached = DummyFunction
  self.box_CinematicPrep_62 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_62
  l0._graph = self
  l0._name = "box_CinematicPrep_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1753996051"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_62_PostOut
  self.box_MissionCheckpointReach_125 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_125
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1755105483"
  l0.Out = self.f_box_MissionCheckpointReach_125_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_37 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_37
  l0._graph = self
  l0._name = "box_MissionLayer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1768304167"
  l0.Loaded = self.f_box_MissionLayer_v2_37_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_122 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_122
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1776542473"
  l0.Out = self.f_box_MissionCheckpointReach_122_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_56
  l0._graph = self
  l0._name = "box_MultipleOR_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1937205455"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_56_Out
  self.box_CinematicPrep_44 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_44
  l0._graph = self
  l0._name = "box_CinematicPrep_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2062575594"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_44_PostOut
  self.box_MissionLayer_v2_49 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_49
  l0._graph = self
  l0._name = "box_MissionLayer_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2088073722"
  l0.Loaded = self.f_box_MissionLayer_v2_49_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_64 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_64
  l0._graph = self
  l0._name = "box_MissionLayer_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2104214298"
  l0.Loaded = self.f_box_MissionLayer_v2_64_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  l0 = self.box_MissionLayer_v2_37
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1978692268", "1978692268", "S12M020_Main", "CheckPoint_0", "box_MissionLayer_v2_37.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_42
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|523593940", "523593940", "S12M020_Main", "CheckPoint_1", "box_MissionLayer_v2_42.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_49
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|975749700", "975749700", "S12M020_Main", "CheckPoint_2", "box_MissionLayer_v2_49.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  l0 = self.box_MissionLayer_v2_59
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|167383338", "167383338", "S12M020_Main", "CheckPoint_3", "box_MissionLayer_v2_59.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_4()
  local l0
  l0 = self.box_MissionLayer_v2_64
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|740873488", "740873488", "S12M020_Main", "CheckPoint_4", "box_MissionLayer_v2_64.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1104553538", "1104553538", "S12M020_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionCheckpointReach_121_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_50()
  l0 = self.box_MissionCheckpointReach_121
  l1 = self.box_TriggerMonitor_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2122148011", "2122148011", "S12M020_Main", "box_MissionCheckpointReach_121.Out", "box_TriggerMonitor_v2_50.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_18
  l1 = self.box_OnceOnly_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1497094570", "1497094570", "S12M020_Main", "box_MultipleOR_18.Out", "box_OnceOnly_v2_22.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_48_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2099291321"
  l0.Out = self.f_box_Get_Player_ID_51_Out
  l0 = self.box_CinematicPrep_48
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2041415681", "2041415681", "S12M020_Main", "box_CinematicPrep_48.PostOut", "box_Get_Player_ID_51.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_142_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_142
  l1 = self.box_S12M020_AccessIDManagement_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2025366181", "2025366181", "S12M020_Main", "box_MultipleOR_142.Out", "box_S12M020_AccessIDManagement_139.Unblock", l0, l1)
  l1:Unblock()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|794668992", "794668992", "S12M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_S12M020_CheckPointSetup_123_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_123
  self.EnemyEntity = l0.EnemyEntityID
  self.EnemyCar = l0.EnemyCarID
  self:OnEnter_box_MultipleOR_127()
  l1 = self.box_MultipleOR_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|734641908", "734641908", "S12M020_Main", "box_S12M020_CheckPointSetup_123.Out", "box_MultipleOR_127.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_TriggerMonitor_v2_57_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_TriggerMonitor_v2_57
  l1 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1373309482", "1373309482", "S12M020_Main", "box_TriggerMonitor_v2_57.Disabled", "box_MultipleOR_132.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_57_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_124
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_TriggerMonitor_v2_57
  l1 = self.box_MissionCheckpointReach_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1369450860", "1369450860", "S12M020_Main", "box_TriggerMonitor_v2_57.Enter", "box_MissionCheckpointReach_124.In", l0, l1)
  l1:In()
end
function export:f_box_DistanceBasedProgressBarController_v2_25_Completed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_142()
  l0 = self.box_DistanceBasedProgressBarController_v2_25
  l1 = self.box_MultipleOR_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|578705233", "578705233", "S12M020_Main", "box_DistanceBasedProgressBarController_v2_25.Completed", "box_MultipleOR_142.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_DistanceBasedProgressBarController_v2_25_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_25
  l1 = self.box_S12M020_AccessIDManagement_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1324912277", "1324912277", "S12M020_Main", "box_DistanceBasedProgressBarController_v2_25.Started", "box_S12M020_AccessIDManagement_140.Block", l0, l1)
  l1:Block()
end
function export:f_box_S12M020_AccessIDManagement_139_Unblocked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_8()
  l0 = self.box_S12M020_AccessIDManagement_139
  l1 = self.box_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1593347501", "1593347501", "S12M020_Main", "box_S12M020_AccessIDManagement_139.Unblocked", "box_Proximity_Monitor_8.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Vehicle_Bhv_Monitor_23_Broken()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1713936352", "1713936352", "S12M020_Main", "box_Vehicle_Bhv_Monitor_23.Broken", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Vehicle_Bhv_Monitor_23_Stuck()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|22818091", "22818091", "S12M020_Main", "box_Vehicle_Bhv_Monitor_23.Stuck", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_63
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_MultipleOR_61
  l1 = self.box_MissionCheckpointReach_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1406130388", "1406130388", "S12M020_Main", "box_MultipleOR_61.Out", "box_MissionCheckpointReach_63.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l0.Vehicle = self.EnemyCar
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1915595408", "1915595408", "S12M020_Main", "box_Ordered_Output_19.Out", "box_Vehicle_Bhv_Monitor_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_DistanceBasedProgressBarController_v2_25()
  l0 = self.box_DistanceBasedProgressBarController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2113874269", "2113874269", "S12M020_Main", "box_Ordered_Output_19.Out", "box_DistanceBasedProgressBarController_v2_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_19_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_15
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.EnemyCar
  l0.Radius = 230
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|300455463", "300455463", "S12M020_Main", "box_Ordered_Output_19.Out", "box_Proximity_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_19_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PawnHealthMonitor_v3_141
  l0.Pawn = self.EnemyEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|913892166", "913892166", "S12M020_Main", "box_Ordered_Output_19.Out", "box_PawnHealthMonitor_v3_141.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_133_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|401060671", "401060671", "S12M020_Main", "box_Ordered_Output_133.Out", "box_TriggerMonitor_v2_41.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_133_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_127()
  l0 = self.box_MultipleOR_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1160092622", "1160092622", "S12M020_Main", "box_Ordered_Output_133.Out", "box_MultipleOR_127.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_S12M020_CheckPointSetup_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_58
  self.EnemyEntity = l0.EnemyEntityID
  self.EnemyCar = l0.EnemyCarID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|333276525"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_133_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_133_Out_1
  l0 = self.box_S12M020_CheckPointSetup_58
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|927313721", "927313721", "S12M020_Main", "box_S12M020_CheckPointSetup_58.Out", "box_Ordered_Output_133.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_42_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_44
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_42
  l1 = self.box_CinematicPrep_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1813341957", "1813341957", "S12M020_Main", "box_MissionLayer_v2_42.Loaded", "box_CinematicPrep_44.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_124_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_57()
  l0 = self.box_MissionCheckpointReach_124
  l1 = self.box_TriggerMonitor_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|296129319", "296129319", "S12M020_Main", "box_MissionCheckpointReach_124.Out", "box_TriggerMonitor_v2_57.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_126_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_50()
  l0 = self.box_MultipleOR_126
  l1 = self.box_TriggerMonitor_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1491417268", "1491417268", "S12M020_Main", "box_MultipleOR_126.Out", "box_TriggerMonitor_v2_50.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_50_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_TriggerMonitor_v2_50
  l1 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|820751234", "820751234", "S12M020_Main", "box_TriggerMonitor_v2_50.Disabled", "box_MultipleOR_130.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_50_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_121
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_TriggerMonitor_v2_50
  l1 = self.box_MissionCheckpointReach_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1077457465", "1077457465", "S12M020_Main", "box_TriggerMonitor_v2_50.Enter", "box_MissionCheckpointReach_121.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_54_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_120
  l0.EnemyEntityCLO = "9223372046178379769"
  l0.EnemyCarCLO = "9223372046178379768"
  l0.PlayerCarCLO = "9223372046178379767"
  l0.RacePath = "9223372046120146995"
  l0.isPlayerDriving = 1
  l0 = self.box_MissionCheckpointReach_54
  l1 = self.box_S12M020_CheckPointSetup_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1138303823", "1138303823", "S12M020_Main", "box_MissionCheckpointReach_54.Out", "box_S12M020_CheckPointSetup_120.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1694505290", "1694505290", "S12M020_Main", "box_Get_Player_ID_53.Out", "box_MultipleOR_56.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_S12M020_CheckPointSetup_119_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_119
  self.EnemyEntity = l0.EnemyEntityID
  self.EnemyCar = l0.EnemyCarID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2129922807"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_129_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_129_Out_1
  l0 = self.box_S12M020_CheckPointSetup_119
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|491760821", "491760821", "S12M020_Main", "box_S12M020_CheckPointSetup_119.Out", "box_Ordered_Output_129.In", l0, l1)
  l1:In()
end
function export:f_box_S12M020_CheckPointSetup_120_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_120
  self.EnemyEntity = l0.EnemyEntityID
  self.EnemyCar = l0.EnemyCarID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1911953127"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_131_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_131_Out_1
  l0 = self.box_S12M020_CheckPointSetup_120
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1081157704", "1081157704", "S12M020_Main", "box_S12M020_CheckPointSetup_120.Out", "box_Ordered_Output_131.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_10_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372044183905990"
  l0._graph = self
  l0._name = "box_MissionController_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|253405075"
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_10
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|700544507", "700544507", "S12M020_Main", "box_MissionMessageController_10.MessageRequested", "box_MissionController_v2_20.TerminateMission", l0, l1)
  l1:TerminateMission()
end
function export:f_box_MultipleOR_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_52
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_47
  l1 = self.box_MissionCheckpointReach_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1533711130", "1533711130", "S12M020_Main", "box_MultipleOR_47.Out", "box_MissionCheckpointReach_52.In", l0, l1)
  l1:In()
end
function export:f_box_S12M020_AccessIDManagement_140_Blocked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_8()
  l0 = self.box_S12M020_AccessIDManagement_140
  l1 = self.box_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|310385131", "310385131", "S12M020_Main", "box_S12M020_AccessIDManagement_140.Blocked", "box_Proximity_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_132_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_60()
  l0 = self.box_MultipleOR_132
  l1 = self.box_TriggerMonitor_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1524064", "1524064", "S12M020_Main", "box_MultipleOR_132.Out", "box_TriggerMonitor_v2_60.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1889624524", "1889624524", "S12M020_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_36.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionCheckpointReach_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_119
  l0.EnemyEntityCLO = "9223372046178379766"
  l0.EnemyCarCLO = "9223372046178379765"
  l0.PlayerCarCLO = "9223372046178379764"
  l0.RacePath = "9223372046120146995"
  l0.isPlayerDriving = 1
  l0 = self.box_MissionCheckpointReach_52
  l1 = self.box_S12M020_CheckPointSetup_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|896421111", "896421111", "S12M020_Main", "box_MissionCheckpointReach_52.Out", "box_S12M020_CheckPointSetup_119.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_141_Killed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2074631463"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_143_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_143_Out_1
  l0 = self.box_PawnHealthMonitor_v3_141
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1534116149", "1534116149", "S12M020_Main", "box_PawnHealthMonitor_v3_141.Killed", "box_Ordered_Output_143.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|660649801", "660649801", "S12M020_Main", "box_Get_Player_ID_65.Out", "box_MultipleOR_61.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MapPointController_v3_9_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_10
  l0.MissionName = "MissionList.9223372046120059670"
  l0 = self.box_MapPointController_v3_9
  l1 = self.box_MissionMessageController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|8016842", "8016842", "S12M020_Main", "box_MapPointController_v3_9.Hidden", "box_MissionMessageController_10.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_CinematicPrep_38_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2146490891"
  l0.Out = self.f_box_Get_Player_ID_39_Out
  l0 = self.box_CinematicPrep_38
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1438723107", "1438723107", "S12M020_Main", "box_CinematicPrep_38.PostOut", "box_Get_Player_ID_39.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_60_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_125
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_TriggerMonitor_v2_60
  l1 = self.box_MissionCheckpointReach_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1811728939", "1811728939", "S12M020_Main", "box_TriggerMonitor_v2_60.Enter", "box_MissionCheckpointReach_125.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_123
  l0.EnemyEntityCLO = "9223372046178379772"
  l0.EnemyCarCLO = "9223372046178379771"
  l0.PlayerCarCLO = "9223372046178379770"
  l0.RacePath = "9223372046120146995"
  l0.isPlayerDriving = 1
  l0 = self.box_MissionCheckpointReach_63
  l1 = self.box_S12M020_CheckPointSetup_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1925921113", "1925921113", "S12M020_Main", "box_MissionCheckpointReach_63.Out", "box_S12M020_CheckPointSetup_123.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_55_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|506099547"
  l0.Out = self.f_box_Get_Player_ID_53_Out
  l0 = self.box_CinematicPrep_55
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1957318791", "1957318791", "S12M020_Main", "box_CinematicPrep_55.PostOut", "box_Get_Player_ID_53.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_40
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_36
  l1 = self.box_MissionCheckpointReach_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1511425863", "1511425863", "S12M020_Main", "box_MultipleOR_36.Out", "box_MissionCheckpointReach_40.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_8_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DistanceBasedProgressBarController_v2_25()
  l0 = self.box_Proximity_Monitor_8
  l1 = self.box_DistanceBasedProgressBarController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1843379399", "1843379399", "S12M020_Main", "box_Proximity_Monitor_8.Disabled", "box_DistanceBasedProgressBarController_v2_25.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Proximity_Monitor_8_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DistanceBasedProgressBarController_v2_25()
  l0 = self.box_Proximity_Monitor_8
  l1 = self.box_DistanceBasedProgressBarController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|174863116", "174863116", "S12M020_Main", "box_Proximity_Monitor_8.EnterRadius", "box_DistanceBasedProgressBarController_v2_25.Resume", l0, l1)
  l1:Resume()
end
function export:f_box_Proximity_Monitor_8_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_DistanceBasedProgressBarController_v2_25()
  l0 = self.box_Proximity_Monitor_8
  l1 = self.box_DistanceBasedProgressBarController_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1789733170", "1789733170", "S12M020_Main", "box_Proximity_Monitor_8.ExitRadius", "box_DistanceBasedProgressBarController_v2_25.Pause", l0, l1)
  l1:Pause()
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_45
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_46
  l1 = self.box_MissionCheckpointReach_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1290742843", "1290742843", "S12M020_Main", "box_MultipleOR_46.Out", "box_MissionCheckpointReach_45.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|234620985", "234620985", "S12M020_Main", "box_Get_Player_ID_43.Out", "box_MultipleOR_46.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionCheckpointReach_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_58
  l0.EnemyEntityCLO = "9223372046120119430"
  l0.EnemyCarCLO = "9223372046120119433"
  l0.PlayerCarCLO = "9223372046120123013"
  l0.RacePath = "9223372046120146995"
  l0.isPlayerDriving = 0
  l0 = self.box_MissionCheckpointReach_40
  l1 = self.box_S12M020_CheckPointSetup_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|62669686", "62669686", "S12M020_Main", "box_MissionCheckpointReach_40.Out", "box_S12M020_CheckPointSetup_58.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v2_22_Out_0()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Stuck, Exiting Vehicle", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'VehicleSeatingController')-- Comment: Stuck, Exiting Vehicle")
  l0 = self.box_VehicleSeatingController_24
  l0.Pawn = self.EnemyEntity
  l0.UseAnimation = 1
  l0 = self.box_OnceOnly_v2_22
  l1 = self.box_VehicleSeatingController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|487828520", "487828520", "S12M020_Main", "box_OnceOnly_v2_22.Out", "box_VehicleSeatingController_24.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_MissionCheckpointReach_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_118
  l0.EnemyEntityCLO = "9223372046178379762"
  l0.EnemyCarCLO = "9223372046178379761"
  l0.PlayerCarCLO = "9223372046178379763"
  l0.RacePath = "9223372046120146995"
  l0.isPlayerDriving = 1
  l0 = self.box_MissionCheckpointReach_45
  l1 = self.box_S12M020_CheckPointSetup_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|527485706", "527485706", "S12M020_Main", "box_MissionCheckpointReach_45.Out", "box_S12M020_CheckPointSetup_118.In", l0, l1)
  l1:In()
end
function export:f_box_S12M020_CheckPointSetup_118_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S12M020_CheckPointSetup_118
  self.EnemyEntity = l0.EnemyEntityID
  self.EnemyCar = l0.EnemyCarID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1775643420"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_128_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_128_Out_1
  l0 = self.box_S12M020_CheckPointSetup_118
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1285307918", "1285307918", "S12M020_Main", "box_S12M020_CheckPointSetup_118.Out", "box_Ordered_Output_128.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_15_ExitRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|259003495"
  l0.Out = DummyFunction
  l0 = self.box_Proximity_Monitor_15
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|438103623", "438103623", "S12M020_Main", "box_Proximity_Monitor_15.ExitRadius", "box_TriggerGameOver_11.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_MultipleOR_130_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_57()
  l0 = self.box_MultipleOR_130
  l1 = self.box_TriggerMonitor_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|697870171", "697870171", "S12M020_Main", "box_MultipleOR_130.Out", "box_TriggerMonitor_v2_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_24_UnassignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_3
  l0.Parent = self.EnemyEntity
  l0.Child = self.MapIcon
  l0.NpcIcon = 1
  l0 = self.box_VehicleSeatingController_24
  l1 = self.box_SnapAndBind_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2122544483", "2122544483", "S12M020_Main", "box_VehicleSeatingController_24.UnassignCompleted", "box_SnapAndBind_3.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_TriggerMonitor_v2_41_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_TriggerMonitor_v2_41
  l1 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1236999775", "1236999775", "S12M020_Main", "box_TriggerMonitor_v2_41.Disabled", "box_MultipleOR_126.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_TriggerMonitor_v2_41_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_122
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_TriggerMonitor_v2_41
  l1 = self.box_MissionCheckpointReach_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|789391043", "789391043", "S12M020_Main", "box_TriggerMonitor_v2_41.Enter", "box_MissionCheckpointReach_122.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_127_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|332501088"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_19_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_19_Out_3
  l0 = self.box_MultipleOR_127
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1284053346", "1284053346", "S12M020_Main", "box_MultipleOR_127.Out", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_59_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_55
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_59
  l1 = self.box_CinematicPrep_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|647756738", "647756738", "S12M020_Main", "box_MissionLayer_v2_59.Loaded", "box_CinematicPrep_55.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CinematicPrep_62_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|930083705"
  l0.Out = self.f_box_Get_Player_ID_65_Out
  l0 = self.box_CinematicPrep_62
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|425632851", "425632851", "S12M020_Main", "box_CinematicPrep_62.PostOut", "box_Get_Player_ID_65.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_125_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_60()
  l0 = self.box_MissionCheckpointReach_125
  l1 = self.box_TriggerMonitor_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1328754505", "1328754505", "S12M020_Main", "box_MissionCheckpointReach_125.Out", "box_TriggerMonitor_v2_60.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionLayer_v2_37_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_38
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_37
  l1 = self.box_CinematicPrep_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1285897340", "1285897340", "S12M020_Main", "box_MissionLayer_v2_37.Loaded", "box_CinematicPrep_38.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_128_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_127()
  l0 = self.box_MultipleOR_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|817843738", "817843738", "S12M020_Main", "box_Ordered_Output_128.Out", "box_MultipleOR_127.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_128_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_126()
  l0 = self.box_MultipleOR_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1826220657", "1826220657", "S12M020_Main", "box_Ordered_Output_128.Out", "box_MultipleOR_126.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionCheckpointReach_122_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_41()
  l0 = self.box_MissionCheckpointReach_122
  l1 = self.box_TriggerMonitor_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|926431366", "926431366", "S12M020_Main", "box_MissionCheckpointReach_122.Out", "box_TriggerMonitor_v2_41.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_131_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_127()
  l0 = self.box_MultipleOR_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1305525336", "1305525336", "S12M020_Main", "box_Ordered_Output_131.Out", "box_MultipleOR_127.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Ordered_Output_131_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1135386509", "1135386509", "S12M020_Main", "box_Ordered_Output_131.Out", "box_MultipleOR_132.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_54
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_MultipleOR_56
  l1 = self.box_MissionCheckpointReach_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1039222322", "1039222322", "S12M020_Main", "box_MultipleOR_56.Out", "box_MissionCheckpointReach_54.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_44_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1185619022"
  l0.Out = self.f_box_Get_Player_ID_43_Out
  l0 = self.box_CinematicPrep_44
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1770585667", "1770585667", "S12M020_Main", "box_CinematicPrep_44.PostOut", "box_Get_Player_ID_43.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_143_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_142()
  l0 = self.box_MultipleOR_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|2145693966", "2145693966", "S12M020_Main", "box_Ordered_Output_143.Out", "box_MultipleOR_142.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_143_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_9
  l0.MapPoint = self.MapIcon
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|477856821", "477856821", "S12M020_Main", "box_Ordered_Output_143.Out", "box_MapPointController_v3_9.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MissionLayer_v2_49_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_48
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_49
  l1 = self.box_CinematicPrep_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1710567333", "1710567333", "S12M020_Main", "box_MissionLayer_v2_49.Loaded", "box_CinematicPrep_48.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Get_Player_ID_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1560415319", "1560415319", "S12M020_Main", "box_Get_Player_ID_51.Out", "box_MultipleOR_47.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_64_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_62
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MissionLayer_v2_64
  l1 = self.box_CinematicPrep_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1045956526", "1045956526", "S12M020_Main", "box_MissionLayer_v2_64.Loaded", "box_CinematicPrep_62.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_129_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_127()
  l0 = self.box_MultipleOR_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|401595197", "401595197", "S12M020_Main", "box_Ordered_Output_129.Out", "box_MultipleOR_127.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_129_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_130()
  l0 = self.box_MultipleOR_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|721786244", "721786244", "S12M020_Main", "box_Ordered_Output_129.Out", "box_MultipleOR_130.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\tests\\s12_hackerwar\\s12m020.domino|@S12M020_Main|1253610395", "1253610395", "S12M020_Main", "box_Get_Player_ID_39.Out", "box_MultipleOR_36.Input", clone, l0)
  l0:Input(1)
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_MultipleOR_142()
end
function export:OnEnter_box_TriggerMonitor_v2_57()
  local l0
  l0 = self.box_TriggerMonitor_v2_57
  l0.Trigger = "9223372046178357101"
end
function export:OnEnter_box_DistanceBasedProgressBarController_v2_25()
  local l0
  l0 = self.box_DistanceBasedProgressBarController_v2_25
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.PausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.TotalTime = 90
  l0.EntityTwo = self.EnemyCar
  l0.DownloadObject = "PDADownloadFeedbackApplication.784816265"
end
function export:OnEnter_box_MultipleOR_126()
end
function export:OnEnter_box_TriggerMonitor_v2_50()
  local l0
  l0 = self.box_TriggerMonitor_v2_50
  l0.Trigger = "9223372046178357030"
end
function export:OnEnter_box_MultipleOR_132()
end
function export:OnEnter_box_TriggerMonitor_v2_60()
  local l0
  l0 = self.box_TriggerMonitor_v2_60
  l0.Trigger = "9223372046178357173"
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_Proximity_Monitor_8()
  local l0
  l0 = self.box_Proximity_Monitor_8
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.EnemyCar
  l0.Radius = 50
end
function export:OnEnter_box_MultipleOR_130()
end
function export:OnEnter_box_TriggerMonitor_v2_41()
  local l0
  l0 = self.box_TriggerMonitor_v2_41
  l0.Trigger = "9223372046178339076"
end
function export:OnEnter_box_MultipleOR_127()
end
_compilerVersion = 4
