export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionVariableFloat.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
  cbox:RegisterBox("Domino/System/VehicleBhvMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Tailing_InVehicle"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle"
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Failed = DummyFunction
  self.PlayerID = nil
  self.InSight = 0
  self.MaximumRange = 125
  self.SafeRange = 30
  self.WarningTimer = 20
  self.WarningBuffer = 4
  self.InSafeRange = 0
  self.InMaximumRange = 0
  self.TaillingFailed = 0
  self.box_MissionModuleBox_v3_72 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_72
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2056127"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_72_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SnapAndBind_65 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_65
  l0._graph = self
  l0._name = "box_SnapAndBind_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|58509870"
  l0.Attached = self.f_box_SnapAndBind_65_Attached
  self.box_MapPointController_v3_78 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_78
  l0._graph = self
  l0._name = "box_MapPointController_v3_78"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|260399885"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_78_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = self.f_box_MapPointController_v3_78_TextHidden
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|270286125"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_3_AllCheckpointsDisabled
  self.box_MissionModuleBox_v3_70 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_70
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_70"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|375763257"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_70_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_PawnHealthMonitor_v3_81 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_81
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|405116501"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_81_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_81_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_81_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Proximity_Monitor_80 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_80
  l0._graph = self
  l0._name = "box_Proximity_Monitor_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|755771018"
  l0.Enabled = self.f_box_Proximity_Monitor_80_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_80_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_80_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_80_ExitRadius
  self.box_MapPointController_v3_75 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_75
  l0._graph = self
  l0._name = "box_MapPointController_v3_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|782599952"
  l0.Shown = self.f_box_MapPointController_v3_75_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = self.f_box_MapPointController_v3_75_TextSet
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_86 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_86
  l0._graph = self
  l0._name = "box_Timer_v2_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|783146510"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_86_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_86_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionModuleBox_v3_68 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_68
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|833940195"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_68_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_62 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_62
  l0._graph = self
  l0._name = "box_SetBoolean_v2_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1036109364"
  l0.Out = self.f_box_SetBoolean_v2_62_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_62_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_62_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_62_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_62_SetFromBool
  self.box_SetBoolean_v2_71 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_71
  l0._graph = self
  l0._name = "box_SetBoolean_v2_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1077812958"
  l0.Out = self.f_box_SetBoolean_v2_71_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_71_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_71_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_71_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_71_SetFromBool
  self.box_SetBoolean_v2_66 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_66
  l0._graph = self
  l0._name = "box_SetBoolean_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1087945735"
  l0.Out = self.f_box_SetBoolean_v2_66_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_66_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_66_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_66_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_66_SetFromBool
  self.box_SetBoolean_v2_61 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_61
  l0._graph = self
  l0._name = "box_SetBoolean_v2_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1151130510"
  l0.Out = self.f_box_SetBoolean_v2_61_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_61_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_61_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_61_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_61_SetFromBool
  self.box_TimerToScreen_79 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_79
  l0._graph = self
  l0._name = "box_TimerToScreen_79"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1184582178"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_79_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_79_TimeElapsed
  self.box_SetBoolean_v2_59 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1320543673"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MissionCheckpointReach_2 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_2
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1391536079"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_2_AllCheckpointsDisabled
  self.box_SetBoolean_v2_82 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_82
  l0._graph = self
  l0._name = "box_SetBoolean_v2_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1407324286"
  l0.Out = self.f_box_SetBoolean_v2_82_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_82_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_82_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_82_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_82_SetFromBool
  self.box_OnceOnly_v2_64 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_64
  l0._graph = self
  l0._name = "box_OnceOnly_v2_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1481108915"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_64_Out_0
  l0.ResetOut = self.f_box_OnceOnly_v2_64_ResetOut
  self.box_Proximity_Monitor_76 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_76
  l0._graph = self
  l0._name = "box_Proximity_Monitor_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1587354687"
  l0.Enabled = self.f_box_Proximity_Monitor_76_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_76_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_76_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_76_ExitRadius
  self.box_OnceOnly_v2_85 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_85
  l0._graph = self
  l0._name = "box_OnceOnly_v2_85"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1627446261"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_85_Out_0
  l0.ResetOut = self.f_box_OnceOnly_v2_85_ResetOut
  self.box_MissionModuleBox_v3_77 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_77
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1723835635"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_77_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_77_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_Vehicle_Bhv_Monitor_91 = cbox:CreateBox("Domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_91
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1880657459"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Vehicle_Bhv_Monitor_91_Enabled
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_91_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = self.f_box_Vehicle_Bhv_Monitor_91_TargetDetected
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
  self.box_LineOfSightMonitor_87 = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_87
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1893419010"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_LineOfSightMonitor_87_Enabled
  l0.Disabled = self.f_box_LineOfSightMonitor_87_Disabled
  l0.LOSAcquired = self.f_box_LineOfSightMonitor_87_LOSAcquired
  l0.LOSLost = self.f_box_LineOfSightMonitor_87_LOSLost
  self.box_MissionCheckpointReach_1 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_1
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1941155655"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_1_AllCheckpointsDisabled
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|434955428"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_88_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|638431641", "638431641", "Tailing_InVehicle", "Start", "box_Compare_Boolean_v2_88.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|376598178"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_84_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1819524985", "1819524985", "Tailing_InVehicle", "Stop", "box_Compare_Boolean_v2_84.In", self, l0)
  l0:In()
end
function export:f_box_MissionModuleBox_v3_72_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_72
  l1 = self.box_SetBoolean_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|10891915", "10891915", "Tailing_InVehicle", "box_MissionModuleBox_v3_72.DisplayRequested", "box_SetBoolean_v2_62.True", l0, l1)
  l1:True()
end
function export:f_box_SnapAndBind_65_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_75()
  l0 = self.box_SnapAndBind_65
  l1 = self.box_MapPointController_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|733924625", "733924625", "Tailing_InVehicle", "box_SnapAndBind_65.Attached", "box_MapPointController_v3_75.Show", l0, l1)
  l1:Show()
end
function export:f_box_Compare_Boolean_v2_83_A_or_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_64()
  l0 = self.box_OnceOnly_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2047389924", "2047389924", "Tailing_InVehicle", "box_Compare_Boolean_v2_83.A_or_B", "box_OnceOnly_v2_64.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Compare_Boolean_v2_83_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_64()
  l0 = self.box_OnceOnly_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1771278476", "1771278476", "Tailing_InVehicle", "box_Compare_Boolean_v2_83.notA_and_notB", "box_OnceOnly_v2_64.In", clone, l0)
  l0:In(0)
end
function export:f_box_TriggerGameOver_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|142649331", "142649331", "Tailing_InVehicle", "box_TriggerGameOver_58.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_MapPointController_v3_78_Hidden()
  local l0
  self = self._graph
  self:OnEnter_box_MapPointController_v3_78()
  l0 = self.box_MapPointController_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1031439568", "1031439568", "Tailing_InVehicle", "box_MapPointController_v3_78.Hidden", "box_MapPointController_v3_78.HideText", l0, l0)
  l0:HideText()
end
function export:f_box_MapPointController_v3_78_TextHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_73()
  l0 = self.box_MapPointController_v3_78
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1986428280", "1986428280", "Tailing_InVehicle", "box_MapPointController_v3_78.TextHidden", "box_Simple_Node_73.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_3_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|150415843"
  l0.Out = self.f_box_TriggerGameOver_58_Out
  l0 = self.box_MissionCheckpointReach_3
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1262482219", "1262482219", "Tailing_InVehicle", "box_MissionCheckpointReach_3.AllCheckpointsDisabled", "box_TriggerGameOver_58.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_Get_Player_ID_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323418"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1796646150"
  l0.Out = self.f_box_FloatMissionVariable_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1506859423", "1506859423", "Tailing_InVehicle", "box_Get_Player_ID_63.Out", "box_FloatMissionVariable_5.In", clone, l0)
  l0:In()
end
function export:f_box_MissionModuleBox_v3_70_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_70
  l1 = self.box_SetBoolean_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1344762154", "1344762154", "Tailing_InVehicle", "box_MissionModuleBox_v3_70.DisplayRequested", "box_SetBoolean_v2_61.True", l0, l1)
  l1:True()
end
function export:f_box_Compare_Boolean_v2_84_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_60()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2616236", "2616236", "Tailing_InVehicle", "box_Compare_Boolean_v2_84.A_is_False", "box_Test_if_Nil_60.In", clone, l0)
  l0:In()
end
function export:f_box_PawnHealthMonitor_v3_81_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_91()
  l0 = self.box_PawnHealthMonitor_v3_81
  l1 = self.box_Vehicle_Bhv_Monitor_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|761795532", "761795532", "Tailing_InVehicle", "box_PawnHealthMonitor_v3_81.Disabled", "box_Vehicle_Bhv_Monitor_91.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_81_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Vehicle_Bhv_Monitor_91()
  l0 = self.box_PawnHealthMonitor_v3_81
  l1 = self.box_Vehicle_Bhv_Monitor_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2082748289", "2082748289", "Tailing_InVehicle", "box_PawnHealthMonitor_v3_81.Enabled", "box_Vehicle_Bhv_Monitor_91.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_81_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_72
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetKilled",
    id = "165452"
  }
  l0 = self.box_PawnHealthMonitor_v3_81
  l1 = self.box_MissionModuleBox_v3_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|583441665", "583441665", "Tailing_InVehicle", "box_PawnHealthMonitor_v3_81.Killed", "box_MissionModuleBox_v3_72.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerGameOver_89_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1960311948", "1960311948", "Tailing_InVehicle", "box_TriggerGameOver_89.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_Compare_Boolean_v2_88_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|355901801"
  l0.Out = self.f_box_Get_Player_ID_63_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|687905806", "687905806", "Tailing_InVehicle", "box_Compare_Boolean_v2_88.A_is_False", "box_Get_Player_ID_63.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_73_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_81()
  l0 = self.box_PawnHealthMonitor_v3_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|502461410", "502461410", "Tailing_InVehicle", "box_Simple_Node_73.Out", "box_PawnHealthMonitor_v3_81.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_FloatMissionVariable_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.SafeRange = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ObjectiveMarker
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|526359956"
  l0.Is_nil = self.f_box_Test_if_Nil_90_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_90_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1922049711", "1922049711", "Tailing_InVehicle", "box_FloatMissionVariable_4.Out", "box_Test_if_Nil_90.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_90_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_81()
  l0 = self.box_PawnHealthMonitor_v3_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|862636953", "862636953", "Tailing_InVehicle", "box_Test_if_Nil_90.Is_nil", "box_PawnHealthMonitor_v3_81.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_90_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_65
  l0.Parent = self.Vehicle
  l0.Child = self.ObjectiveMarker
  l0.CarIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|69430186", "69430186", "Tailing_InVehicle", "box_Test_if_Nil_90.Is_not_nil", "box_SnapAndBind_65.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Proximity_Monitor_80_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_76()
  l0 = self.box_Proximity_Monitor_80
  l1 = self.box_Proximity_Monitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|514690695", "514690695", "Tailing_InVehicle", "box_Proximity_Monitor_80.Disabled", "box_Proximity_Monitor_76.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_80_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_76()
  l0 = self.box_Proximity_Monitor_80
  l1 = self.box_Proximity_Monitor_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1213692430", "1213692430", "Tailing_InVehicle", "box_Proximity_Monitor_80.Enabled", "box_Proximity_Monitor_76.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_80_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_66()
  l0 = self.box_Proximity_Monitor_80
  l1 = self.box_SetBoolean_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|690425338", "690425338", "Tailing_InVehicle", "box_Proximity_Monitor_80.EnterRadius", "box_SetBoolean_v2_66.True", l0, l1)
  l1:True()
end
function export:f_box_Proximity_Monitor_80_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_66()
  l0 = self.box_Proximity_Monitor_80
  l1 = self.box_SetBoolean_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|57978008", "57978008", "Tailing_InVehicle", "box_Proximity_Monitor_80.ExitRadius", "box_SetBoolean_v2_66.False", l0, l1)
  l1:False()
end
function export:f_box_MapPointController_v3_75_Shown()
  local l0
  self = self._graph
  self:OnEnter_box_MapPointController_v3_75()
  l0 = self.box_MapPointController_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1937923772", "1937923772", "Tailing_InVehicle", "box_MapPointController_v3_75.Shown", "box_MapPointController_v3_75.SetText", l0, l0)
  l0:SetText()
end
function export:f_box_MapPointController_v3_75_TextSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_81()
  l0 = self.box_MapPointController_v3_75
  l1 = self.box_PawnHealthMonitor_v3_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|406046490", "406046490", "Tailing_InVehicle", "box_MapPointController_v3_75.TextSet", "box_PawnHealthMonitor_v3_81.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_86_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_85()
  l0 = self.box_Timer_v2_86
  l1 = self.box_OnceOnly_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|91596751", "91596751", "Tailing_InVehicle", "box_Timer_v2_86.Stopped", "box_OnceOnly_v2_85.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Timer_v2_86_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_85()
  l0 = self.box_Timer_v2_86
  l1 = self.box_OnceOnly_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2048635511", "2048635511", "Tailing_InVehicle", "box_Timer_v2_86.TimeElapsed", "box_OnceOnly_v2_85.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionModuleBox_v3_68_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_68
  l1 = self.box_SetBoolean_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1374928931", "1374928931", "Tailing_InVehicle", "box_MissionModuleBox_v3_68.DisplayRequested", "box_SetBoolean_v2_59.True", l0, l1)
  l1:True()
end
function export:f_box_TriggerGameOver_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1842880472", "1842880472", "Tailing_InVehicle", "box_TriggerGameOver_74.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_SetBoolean_v2_62_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_62_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_62_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_62_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
  l1 = self.box_MissionCheckpointReach_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|500381539", "500381539", "Tailing_InVehicle", "box_SetBoolean_v2_62.SetTrue", "box_MissionCheckpointReach_1.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
  self:OnEnter_box_Test_if_Nil_60()
  l0 = self.box_SetBoolean_v2_62
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1789374240", "1789374240", "Tailing_InVehicle", "box_SetBoolean_v2_62.SetTrue", "box_Test_if_Nil_60.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_62_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self.InSight = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_67()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1134080229", "1134080229", "Tailing_InVehicle", "box_SetBoolean_v2_71.Out", "box_Compare_Boolean_v2_67.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_71_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_71_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_71_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_71_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.InMaximumRange = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_67()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|686407529", "686407529", "Tailing_InVehicle", "box_SetBoolean_v2_66.Out", "box_Compare_Boolean_v2_67.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_66_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_66_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_66_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_66
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_61_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_61_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.TaillingFailed = l0.Target
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1836580529", "1836580529", "Tailing_InVehicle", "box_SetBoolean_v2_61.SetTrue", "box_MissionCheckpointReach_3.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_SetBoolean_v2_61_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_61
  self.TaillingFailed = l0.Target
end
function export:f_box_TimerToScreen_79_Stopped()
  local l0
  self = self._graph
  l0 = self.box_TimerToScreen_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2136240839", "2136240839", "Tailing_InVehicle", "box_TimerToScreen_79.Stopped", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_TimerToScreen_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_70
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetLost",
    id = "186002"
  }
  l0 = self.box_TimerToScreen_79
  l1 = self.box_MissionModuleBox_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|574234226", "574234226", "Tailing_InVehicle", "box_TimerToScreen_79.TimeElapsed", "box_MissionModuleBox_v3_70.Display", l0, l1)
  l1:Display()
end
function export:f_box_SetBoolean_v2_59_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_59_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
  self:OnEnter_box_Test_if_Nil_60()
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1335821791", "1335821791", "Tailing_InVehicle", "box_SetBoolean_v2_59.SetTrue", "box_Test_if_Nil_60.In", l0, l1)
  l1:In()
  l0 = self.box_SetBoolean_v2_59
  l1 = self.box_MissionCheckpointReach_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1770121899", "1770121899", "Tailing_InVehicle", "box_SetBoolean_v2_59.SetTrue", "box_MissionCheckpointReach_2.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_64()
  l0 = self.box_OnceOnly_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|419426242", "419426242", "Tailing_InVehicle", "box_Simple_Node_8.Out", "box_OnceOnly_v2_64.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_MissionCheckpointReach_2_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|840217816"
  l0.Out = self.f_box_TriggerGameOver_74_Out
  l0 = self.box_MissionCheckpointReach_2
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1816633246", "1816633246", "Tailing_InVehicle", "box_MissionCheckpointReach_2.AllCheckpointsDisabled", "box_TriggerGameOver_74.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_SetBoolean_v2_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.InSafeRange = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_67()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1601928754", "1601928754", "Tailing_InVehicle", "box_SetBoolean_v2_82.Out", "box_Compare_Boolean_v2_67.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_82_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_82_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_82_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_82
  self.InSafeRange = l0.Target
end
function export:f_box_Test_if_Nil_60_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_73()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2120108155", "2120108155", "Tailing_InVehicle", "box_Test_if_Nil_60.Is_nil", "box_Simple_Node_73.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_60_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_78()
  l0 = self.box_MapPointController_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|430035779", "430035779", "Tailing_InVehicle", "box_Test_if_Nil_60.Is_not_nil", "box_MapPointController_v3_78.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v2_64_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_86()
  l0 = self.box_OnceOnly_v2_64
  l1 = self.box_Timer_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1483887753", "1483887753", "Tailing_InVehicle", "box_OnceOnly_v2_64.Out", "box_Timer_v2_86.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v2_64_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_86()
  l0 = self.box_OnceOnly_v2_64
  l1 = self.box_Timer_v2_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1427797185", "1427797185", "Tailing_InVehicle", "box_OnceOnly_v2_64.ResetOut", "box_Timer_v2_86.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Proximity_Monitor_76_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_87()
  l0 = self.box_Proximity_Monitor_76
  l1 = self.box_LineOfSightMonitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|677115563", "677115563", "Tailing_InVehicle", "box_Proximity_Monitor_76.Disabled", "box_LineOfSightMonitor_87.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_76_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_87()
  l0 = self.box_Proximity_Monitor_76
  l1 = self.box_LineOfSightMonitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2132856777", "2132856777", "Tailing_InVehicle", "box_Proximity_Monitor_76.Enabled", "box_LineOfSightMonitor_87.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_76_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_82()
  l0 = self.box_Proximity_Monitor_76
  l1 = self.box_SetBoolean_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1797684549", "1797684549", "Tailing_InVehicle", "box_Proximity_Monitor_76.EnterRadius", "box_SetBoolean_v2_82.True", l0, l1)
  l1:True()
end
function export:f_box_Proximity_Monitor_76_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_82()
  l0 = self.box_Proximity_Monitor_76
  l1 = self.box_SetBoolean_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1375532801", "1375532801", "Tailing_InVehicle", "box_Proximity_Monitor_76.ExitRadius", "box_SetBoolean_v2_82.False", l0, l1)
  l1:False()
end
function export:f_box_FloatMissionVariable_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningBuffer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323422"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1648278191"
  l0.Out = self.f_box_FloatMissionVariable_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1330676192", "1330676192", "Tailing_InVehicle", "box_FloatMissionVariable_7.Out", "box_FloatMissionVariable_6.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v2_85_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_77()
  l0 = self.box_OnceOnly_v2_85
  l1 = self.box_MissionModuleBox_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1792281923", "1792281923", "Tailing_InVehicle", "box_OnceOnly_v2_85.Out", "box_MissionModuleBox_v3_77.Display", l0, l1)
  l1:Display()
end
function export:f_box_OnceOnly_v2_85_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_77()
  l0 = self.box_OnceOnly_v2_85
  l1 = self.box_MissionModuleBox_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1604036771", "1604036771", "Tailing_InVehicle", "box_OnceOnly_v2_85.ResetOut", "box_MissionModuleBox_v3_77.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_FloatMissionVariable_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323419"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|491895839"
  l0.Out = self.f_box_FloatMissionVariable_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|136113749", "136113749", "Tailing_InVehicle", "box_FloatMissionVariable_6.Out", "box_FloatMissionVariable_4.In", clone, l0)
  l0:In()
end
function export:f_box_MissionModuleBox_v3_77_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_79()
  l0 = self.box_MissionModuleBox_v3_77
  l1 = self.box_TimerToScreen_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|841304780", "841304780", "Tailing_InVehicle", "box_MissionModuleBox_v3_77.DisplayRequested", "box_TimerToScreen_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionModuleBox_v3_77_HideRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_79()
  l0 = self.box_MissionModuleBox_v3_77
  l1 = self.box_TimerToScreen_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|499584065", "499584065", "Tailing_InVehicle", "box_MissionModuleBox_v3_77.HideRequested", "box_TimerToScreen_79.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_FloatMissionVariable_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.MaximumRange = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323421"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1592121072"
  l0.Out = self.f_box_FloatMissionVariable_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|108826995", "108826995", "Tailing_InVehicle", "box_FloatMissionVariable_5.Out", "box_FloatMissionVariable_7.In", clone, l0)
  l0:In()
end
function export:f_box_Vehicle_Bhv_Monitor_91_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_80()
  l0 = self.box_Vehicle_Bhv_Monitor_91
  l1 = self.box_Proximity_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1311736321", "1311736321", "Tailing_InVehicle", "box_Vehicle_Bhv_Monitor_91.Disabled", "box_Proximity_Monitor_80.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Vehicle_Bhv_Monitor_91_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_80()
  l0 = self.box_Vehicle_Bhv_Monitor_91
  l1 = self.box_Proximity_Monitor_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|441996332", "441996332", "Tailing_InVehicle", "box_Vehicle_Bhv_Monitor_91.Enabled", "box_Proximity_Monitor_80.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Vehicle_Bhv_Monitor_91_TargetDetected()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_68
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerDetected",
    id = "165453"
  }
  l0 = self.box_Vehicle_Bhv_Monitor_91
  l1 = self.box_MissionModuleBox_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|800085829", "800085829", "Tailing_InVehicle", "box_Vehicle_Bhv_Monitor_91.TargetDetected", "box_MissionModuleBox_v3_68.Display", l0, l1)
  l1:Display()
end
function export:f_box_LineOfSightMonitor_87_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1339743747"
  l0.Out = self.f_box_Simple_Node_8_Out
  l0 = self.box_LineOfSightMonitor_87
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1996816747", "1996816747", "Tailing_InVehicle", "box_LineOfSightMonitor_87.Disabled", "box_Simple_Node_8.In", l0, l1)
  l1:In()
end
function export:f_box_LineOfSightMonitor_87_Enabled()
  local l0
  self = self._graph
  l0 = self.box_LineOfSightMonitor_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|204205182", "204205182", "Tailing_InVehicle", "box_LineOfSightMonitor_87.Enabled", "Started", l0, self)
  self:Started()
end
function export:f_box_LineOfSightMonitor_87_LOSAcquired()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_71()
  l0 = self.box_LineOfSightMonitor_87
  l1 = self.box_SetBoolean_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|781714679", "781714679", "Tailing_InVehicle", "box_LineOfSightMonitor_87.LOSAcquired", "box_SetBoolean_v2_71.True", l0, l1)
  l1:True()
end
function export:f_box_LineOfSightMonitor_87_LOSLost()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_71()
  l0 = self.box_LineOfSightMonitor_87
  l1 = self.box_SetBoolean_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2110071161", "2110071161", "Tailing_InVehicle", "box_LineOfSightMonitor_87.LOSLost", "box_SetBoolean_v2_71.False", l0, l1)
  l1:False()
end
function export:f_box_MissionCheckpointReach_1_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|423534965"
  l0.Out = self.f_box_TriggerGameOver_89_Out
  l0 = self.box_MissionCheckpointReach_1
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1052148797", "1052148797", "Tailing_InVehicle", "box_MissionCheckpointReach_1.AllCheckpointsDisabled", "box_TriggerGameOver_89.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_Compare_Boolean_v2_67_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.InSight
  l0.B = self.InSafeRange
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|100559919"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_83_notA_and_notB
  l0.A_or_B = self.f_box_Compare_Boolean_v2_83_A_or_B
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1172593376", "1172593376", "Tailing_InVehicle", "box_Compare_Boolean_v2_67.A_is_False", "box_Compare_Boolean_v2_83.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MapPointController_v3_78()
  local l0
  l0 = self.box_MapPointController_v3_78
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:OnEnter_box_PawnHealthMonitor_v3_81()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_81
  l0.Pawn = self.NPC
end
function export:OnEnter_box_Simple_Node_73()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_73"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|437470321"
  l0.Out = self.f_box_Simple_Node_73_Out
end
function export:OnEnter_box_Proximity_Monitor_80()
  local l0
  l0 = self.box_Proximity_Monitor_80
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.Vehicle
  l0.Radius = self.MaximumRange
  l0.CheckNow = 1
end
function export:OnEnter_box_MapPointController_v3_75()
  local l0
  l0 = self.box_MapPointController_v3_75
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:OnEnter_box_Timer_v2_86()
  local l0
  l0 = self.box_Timer_v2_86
  l0.Seconds = self.WarningBuffer
end
function export:OnEnter_box_SetBoolean_v2_71()
end
function export:OnEnter_box_SetBoolean_v2_66()
end
function export:OnEnter_box_TimerToScreen_79()
  local l0
  l0 = self.box_TimerToScreen_79
  l0.Seconds = self.WarningTimer
end
function export:OnEnter_box_SetBoolean_v2_82()
end
function export:OnEnter_box_Test_if_Nil_60()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.ObjectiveMarker
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|1424851568"
  l0.Is_nil = self.f_box_Test_if_Nil_60_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_60_Is_not_nil
end
function export:OnEnter_box_OnceOnly_v2_64()
end
function export:OnEnter_box_Proximity_Monitor_76()
  local l0
  l0 = self.box_Proximity_Monitor_76
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.Vehicle
  l0.Radius = self.SafeRange
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v2_85()
end
function export:OnEnter_box_MissionModuleBox_v3_77()
  local l0
  l0 = self.box_MissionModuleBox_v3_77
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "LosingTarget",
    id = "186001"
  }
  l0.Duration = self.WarningTimer
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_91()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_91
  l0.Vehicle = self.Vehicle
end
function export:OnEnter_box_LineOfSightMonitor_87()
  local l0
  l0 = self.box_LineOfSightMonitor_87
  l0.Target = self.Vehicle
end
function export:OnEnter_box_Compare_Boolean_v2_67()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_InVehicle|2109934802"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_67_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:Stopped()
end
function export:Started()
end
function export:Failed()
end
_compilerVersion = 4
