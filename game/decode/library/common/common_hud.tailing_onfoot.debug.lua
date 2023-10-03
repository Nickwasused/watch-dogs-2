export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionVariableFloat.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerGameOver.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Tailing_OnFoot"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot"
  self.Failed = DummyFunction
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.PlayerID = nil
  self.InSight = 0
  self.InRange = 0
  self.MaximumRange = 50
  self.SafeRange = 14
  self.WarningTimer = 18
  self.WarningBuffer = 4
  self.InMaximumRange = 0
  self.InSafeRange = 0
  self.TaillingFailed = 0
  self.box_Proximity_Monitor_40 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_40
  l0._graph = self
  l0._name = "box_Proximity_Monitor_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|192660182"
  l0.Enabled = self.f_box_Proximity_Monitor_40_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_40_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_40_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_40_ExitRadius
  self.box_SetBoolean_v2_21 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_21
  l0._graph = self
  l0._name = "box_SetBoolean_v2_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|208753629"
  l0.Out = self.f_box_SetBoolean_v2_21_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_21_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_21_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_21_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_21_SetFromBool
  self.box_OnceOnly_v2_20 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_20
  l0._graph = self
  l0._name = "box_OnceOnly_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|222279651"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_20_Out_0
  l0.ResetOut = self.f_box_OnceOnly_v2_20_ResetOut
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|349017004"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_4_AllCheckpointsDisabled
  self.box_MissionModuleBox_v3_53 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_53
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_53"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|374830282"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_53_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_TimerToScreen_46 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_46
  l0._graph = self
  l0._name = "box_TimerToScreen_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|538906619"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_46_TimeElapsed
  self.box_OnceOnly_v2_52 = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_52
  l0._graph = self
  l0._name = "box_OnceOnly_v2_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|572356744"
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_box_OnceOnly_v2_52_Out_0
  l0.ResetOut = self.f_box_OnceOnly_v2_52_ResetOut
  self.box_MapPointController_v3_50 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_50
  l0._graph = self
  l0._name = "box_MapPointController_v3_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|643445485"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_50_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = self.f_box_MapPointController_v3_50_TextHidden
  self.box_MissionCheckpointReach_3 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_3
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|713038356"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_3_AllCheckpointsDisabled
  self.box_SnapAndBind_18 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_18
  l0._graph = self
  l0._name = "box_SnapAndBind_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|717407430"
  l0.Attached = self.f_box_SnapAndBind_18_Attached
  self.box_SetBoolean_v2_43 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_43
  l0._graph = self
  l0._name = "box_SetBoolean_v2_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|738974157"
  l0.Out = self.f_box_SetBoolean_v2_43_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_43_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_43_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_43_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_43_SetFromBool
  self.box_MapPointController_v3_42 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_42
  l0._graph = self
  l0._name = "box_MapPointController_v3_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|938364298"
  l0.Shown = self.f_box_MapPointController_v3_42_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = self.f_box_MapPointController_v3_42_TextSet
  l0.TextHidden = DummyFunction
  self.box_LineOfSightMonitor_51 = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_51
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|942932792"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_LineOfSightMonitor_51_Enabled
  l0.Disabled = self.f_box_LineOfSightMonitor_51_Disabled
  l0.LOSAcquired = self.f_box_LineOfSightMonitor_51_LOSAcquired
  l0.LOSLost = self.f_box_LineOfSightMonitor_51_LOSLost
  self.box_SetBoolean_v2_59 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_59
  l0._graph = self
  l0._name = "box_SetBoolean_v2_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|980113500"
  l0.Out = self.f_box_SetBoolean_v2_59_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_59_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_59_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_59_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_59_SetFromBool
  self.box_MissionModuleBox_v3_47 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_47
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1028078943"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_47_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_AgentStateMonitor_V2_57 = cbox:CreateBox("Domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_57
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_57"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1110248298"
  l0.Enabled = self.f_box_AgentStateMonitor_V2_57_Enabled
  l0.Disabled = self.f_box_AgentStateMonitor_V2_57_Disabled
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.CombatState = self.f_box_AgentStateMonitor_V2_57_CombatState
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
  self.box_Proximity_Monitor_36 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_36
  l0._graph = self
  l0._name = "box_Proximity_Monitor_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1271813844"
  l0.Enabled = self.f_box_Proximity_Monitor_36_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_36_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_36_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_36_ExitRadius
  self.box_MissionModuleBox_v3_24 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_24
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1301107503"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_24_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_58 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_58
  l0._graph = self
  l0._name = "box_SetBoolean_v2_58"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1416651853"
  l0.Out = self.f_box_SetBoolean_v2_58_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_58_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_58_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_58_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_58_SetFromBool
  self.box_MissionCheckpointReach_2 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_2
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1573364644"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_box_MissionCheckpointReach_2_AllCheckpointsDisabled
  self.box_PawnHealthMonitor_v3_45 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_45
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1604158611"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_45_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_45_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_45_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_SetBoolean_v2_62 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_62
  l0._graph = self
  l0._name = "box_SetBoolean_v2_62"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1872139624"
  l0.Out = self.f_box_SetBoolean_v2_62_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_62_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_62_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_62_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_62_SetFromBool
  self.box_MissionModuleBox_v3_56 = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self.box_MissionModuleBox_v3_56
  l0._graph = self
  l0._name = "box_MissionModuleBox_v3_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1933972955"
  l0.DisplayRequested = self.f_box_MissionModuleBox_v3_56_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_box_MissionModuleBox_v3_56_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_34 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_34
  l0._graph = self
  l0._name = "box_SetBoolean_v2_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1963588671"
  l0.Out = self.f_box_SetBoolean_v2_34_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_34_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_34_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_34_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_34_SetFromBool
  self.box_Timer_v2_54 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_54
  l0._graph = self
  l0._name = "box_Timer_v2_54"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|2049929669"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_54_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0._name = "box_Compare_Boolean_v2_63"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|539764099"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_63_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1653830816", "1653830816", "Tailing_OnFoot", "Start", "box_Compare_Boolean_v2_63.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_64"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1398290719"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_64_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|725530922", "725530922", "Tailing_OnFoot", "Stop", "box_Compare_Boolean_v2_64.In", self, l0)
  l0:In()
end
function export:f_box_TriggerGameOver_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|733252902", "733252902", "Tailing_OnFoot", "box_TriggerGameOver_48.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_Compare_Boolean_v2_60_A_is_False()
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
  l0._name = "box_Compare_Boolean_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1556761537"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = self.f_box_Compare_Boolean_v2_19_notA_and_notB
  l0.A_or_B = self.f_box_Compare_Boolean_v2_19_A_or_B
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|917052525", "917052525", "Tailing_OnFoot", "box_Compare_Boolean_v2_60.A_is_False", "box_Compare_Boolean_v2_19.In", clone, l0)
  l0:In()
end
function export:f_box_FloatMissionVariable_6_Out()
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
  l0._name = "box_Test_if_Nil_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|588443874"
  l0.Is_nil = self.f_box_Test_if_Nil_35_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_35_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1650531495", "1650531495", "Tailing_OnFoot", "box_FloatMissionVariable_6.Out", "box_Test_if_Nil_35.In", clone, l0)
  l0:In()
end
function export:f_box_FloatMissionVariable_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningTimer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323427"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|119173043"
  l0.Out = self.f_box_FloatMissionVariable_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1292262588", "1292262588", "Tailing_OnFoot", "box_FloatMissionVariable_7.Out", "box_FloatMissionVariable_6.In", clone, l0)
  l0:In()
end
function export:f_box_Proximity_Monitor_40_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_Proximity_Monitor_40
  l1 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1410801853", "1410801853", "Tailing_OnFoot", "box_Proximity_Monitor_40.Disabled", "box_Proximity_Monitor_36.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_40_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_Proximity_Monitor_40
  l1 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1746908292", "1746908292", "Tailing_OnFoot", "box_Proximity_Monitor_40.Enabled", "box_Proximity_Monitor_36.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_40_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_21()
  l0 = self.box_Proximity_Monitor_40
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|942040813", "942040813", "Tailing_OnFoot", "box_Proximity_Monitor_40.EnterRadius", "box_SetBoolean_v2_21.True", l0, l1)
  l1:True()
end
function export:f_box_Proximity_Monitor_40_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_21()
  l0 = self.box_Proximity_Monitor_40
  l1 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1070585755", "1070585755", "Tailing_OnFoot", "box_Proximity_Monitor_40.ExitRadius", "box_SetBoolean_v2_21.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.InMaximumRange = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_60()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|582452043", "582452043", "Tailing_OnFoot", "box_SetBoolean_v2_21.Out", "box_Compare_Boolean_v2_60.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_21_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.InMaximumRange = l0.Target
end
function export:f_box_SetBoolean_v2_21_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.InMaximumRange = l0.Target
end
function export:f_box_OnceOnly_v2_20_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_54()
  l0 = self.box_OnceOnly_v2_20
  l1 = self.box_Timer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|954913837", "954913837", "Tailing_OnFoot", "box_OnceOnly_v2_20.Out", "box_Timer_v2_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v2_20_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_54()
  l0 = self.box_OnceOnly_v2_20
  l1 = self.box_Timer_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1522023487", "1522023487", "Tailing_OnFoot", "box_OnceOnly_v2_20.ResetOut", "box_Timer_v2_54.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionCheckpointReach_4_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|2063427905"
  l0.Out = self.f_box_TriggerGameOver_41_Out
  l0 = self.box_MissionCheckpointReach_4
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|234503823", "234503823", "Tailing_OnFoot", "box_MissionCheckpointReach_4.AllCheckpointsDisabled", "box_TriggerGameOver_41.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_MissionModuleBox_v3_53_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_53
  l1 = self.box_SetBoolean_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1247680262", "1247680262", "Tailing_OnFoot", "box_MissionModuleBox_v3_53.DisplayRequested", "box_SetBoolean_v2_62.True", l0, l1)
  l1:True()
end
function export:f_box_TimerToScreen_46_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_47
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetLost",
    id = "186002"
  }
  l0 = self.box_TimerToScreen_46
  l1 = self.box_MissionModuleBox_v3_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1640518578", "1640518578", "Tailing_OnFoot", "box_TimerToScreen_46.TimeElapsed", "box_MissionModuleBox_v3_47.Display", l0, l1)
  l1:Display()
end
function export:f_box_Compare_Boolean_v2_63_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1894755091"
  l0.Out = self.f_box_Get_Player_ID_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|758257506", "758257506", "Tailing_OnFoot", "box_Compare_Boolean_v2_63.A_is_False", "box_Get_Player_ID_44.In", clone, l0)
  l0:In()
end
function export:f_box_FloatMissionVariable_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.MaximumRange = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323428"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1652780539"
  l0.Out = self.f_box_FloatMissionVariable_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|143966050", "143966050", "Tailing_OnFoot", "box_FloatMissionVariable_8.Out", "box_FloatMissionVariable_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_20()
  l0 = self.box_OnceOnly_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|824319918", "824319918", "Tailing_OnFoot", "box_Ordered_Output_1.Out", "box_OnceOnly_v2_20.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|692450112", "692450112", "Tailing_OnFoot", "box_Ordered_Output_1.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_OnceOnly_v2_52_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_56()
  l0 = self.box_OnceOnly_v2_52
  l1 = self.box_MissionModuleBox_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|673561032", "673561032", "Tailing_OnFoot", "box_OnceOnly_v2_52.Out", "box_MissionModuleBox_v3_56.Display", l0, l1)
  l1:Display()
end
function export:f_box_OnceOnly_v2_52_ResetOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionModuleBox_v3_56()
  l0 = self.box_OnceOnly_v2_52
  l1 = self.box_MissionModuleBox_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1306288599", "1306288599", "Tailing_OnFoot", "box_OnceOnly_v2_52.ResetOut", "box_MissionModuleBox_v3_56.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerGameOver_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1361694907", "1361694907", "Tailing_OnFoot", "box_TriggerGameOver_22.Out", "Failed", clone, self)
  self:Failed()
end
function export:f_box_Test_if_Nil_35_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_45()
  l0 = self.box_PawnHealthMonitor_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1135728431", "1135728431", "Tailing_OnFoot", "box_Test_if_Nil_35.Is_nil", "box_PawnHealthMonitor_v3_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_35_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_18
  l0.Parent = self.NPC
  l0.Child = self.ObjectiveMarker
  l0.NpcIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1667343579", "1667343579", "Tailing_OnFoot", "box_Test_if_Nil_35.Is_not_nil", "box_SnapAndBind_18.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_MapPointController_v3_50_Hidden()
  local l0
  self = self._graph
  self:OnEnter_box_MapPointController_v3_50()
  l0 = self.box_MapPointController_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|412554941", "412554941", "Tailing_OnFoot", "box_MapPointController_v3_50.Hidden", "box_MapPointController_v3_50.HideText", l0, l0)
  l0:HideText()
end
function export:f_box_MapPointController_v3_50_TextHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Simple_Node_55()
  l0 = self.box_MapPointController_v3_50
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|663565057", "663565057", "Tailing_OnFoot", "box_MapPointController_v3_50.TextHidden", "box_Simple_Node_55.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_3_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|86942935"
  l0.Out = self.f_box_TriggerGameOver_48_Out
  l0 = self.box_MissionCheckpointReach_3
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|768707567", "768707567", "Tailing_OnFoot", "box_MissionCheckpointReach_3.AllCheckpointsDisabled", "box_TriggerGameOver_48.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_SnapAndBind_18_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_42()
  l0 = self.box_SnapAndBind_18
  l1 = self.box_MapPointController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1518162085", "1518162085", "Tailing_OnFoot", "box_SnapAndBind_18.Attached", "box_MapPointController_v3_42.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.InSafeRange = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_60()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|995575400", "995575400", "Tailing_OnFoot", "box_SetBoolean_v2_43.Out", "box_Compare_Boolean_v2_60.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_43_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_43_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.InSafeRange = l0.Target
end
function export:f_box_SetBoolean_v2_43_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_43
  self.InSafeRange = l0.Target
end
function export:f_box_Simple_Node_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_45()
  l0 = self.box_PawnHealthMonitor_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|458873688", "458873688", "Tailing_OnFoot", "box_Simple_Node_55.Out", "box_PawnHealthMonitor_v3_45.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MapPointController_v3_42_Shown()
  local l0
  self = self._graph
  self:OnEnter_box_MapPointController_v3_42()
  l0 = self.box_MapPointController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1686261997", "1686261997", "Tailing_OnFoot", "box_MapPointController_v3_42.Shown", "box_MapPointController_v3_42.SetText", l0, l0)
  l0:SetText()
end
function export:f_box_MapPointController_v3_42_TextSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_45()
  l0 = self.box_MapPointController_v3_42
  l1 = self.box_PawnHealthMonitor_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|903066045", "903066045", "Tailing_OnFoot", "box_MapPointController_v3_42.TextSet", "box_PawnHealthMonitor_v3_45.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LineOfSightMonitor_51_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|567464350"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0 = self.box_LineOfSightMonitor_51
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1353488861", "1353488861", "Tailing_OnFoot", "box_LineOfSightMonitor_51.Disabled", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_LineOfSightMonitor_51_Enabled()
  local l0
  self = self._graph
  l0 = self.box_LineOfSightMonitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1127379056", "1127379056", "Tailing_OnFoot", "box_LineOfSightMonitor_51.Enabled", "Started", l0, self)
  self:Started()
end
function export:f_box_LineOfSightMonitor_51_LOSAcquired()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_34()
  l0 = self.box_LineOfSightMonitor_51
  l1 = self.box_SetBoolean_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1599798225", "1599798225", "Tailing_OnFoot", "box_LineOfSightMonitor_51.LOSAcquired", "box_SetBoolean_v2_34.True", l0, l1)
  l1:True()
end
function export:f_box_LineOfSightMonitor_51_LOSLost()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_34()
  l0 = self.box_LineOfSightMonitor_51
  l1 = self.box_SetBoolean_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|896614435", "896614435", "Tailing_OnFoot", "box_LineOfSightMonitor_51.LOSLost", "box_SetBoolean_v2_34.False", l0, l1)
  l1:False()
end
function export:f_box_Test_if_Nil_10_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_24()
  l0 = self.box_MissionModuleBox_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|136568551", "136568551", "Tailing_OnFoot", "box_Test_if_Nil_10.Is_nil", "box_MissionModuleBox_v3_24.Display", clone, l0)
  l0:Display()
end
function export:f_box_Test_if_Nil_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipGameOverOnDetection
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1394951325"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_9_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|788976088", "788976088", "Tailing_OnFoot", "box_Test_if_Nil_10.Is_not_nil", "box_Compare_Boolean_v2_9.In", clone, l0)
  l0:In()
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
  self:OnEnter_box_Test_if_Nil_37()
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1482675252", "1482675252", "Tailing_OnFoot", "box_SetBoolean_v2_59.SetTrue", "box_Test_if_Nil_37.In", l0, l1)
  l1:In()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.SkipGameOverOnDetection
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|956371732"
  l0.Is_nil = self.f_box_Test_if_Nil_10_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_10_Is_not_nil
  l0 = self.box_SetBoolean_v2_59
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1995482152", "1995482152", "Tailing_OnFoot", "box_SetBoolean_v2_59.SetTrue", "box_Test_if_Nil_10.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_59_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_59
  self.TaillingFailed = l0.Target
end
function export:f_box_MissionModuleBox_v3_47_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_47
  l1 = self.box_SetBoolean_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|884815147", "884815147", "Tailing_OnFoot", "box_MissionModuleBox_v3_47.DisplayRequested", "box_SetBoolean_v2_58.True", l0, l1)
  l1:True()
end
function export:f_box_AgentStateMonitor_V2_57_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_AgentStateMonitor_V2_57
  l1 = self.box_SetBoolean_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|940525914", "940525914", "Tailing_OnFoot", "box_AgentStateMonitor_V2_57.CombatState", "box_SetBoolean_v2_59.True", l0, l1)
  l1:True()
end
function export:f_box_AgentStateMonitor_V2_57_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_40()
  l0 = self.box_AgentStateMonitor_V2_57
  l1 = self.box_Proximity_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|394053324", "394053324", "Tailing_OnFoot", "box_AgentStateMonitor_V2_57.Disabled", "box_Proximity_Monitor_40.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AgentStateMonitor_V2_57_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_40()
  l0 = self.box_AgentStateMonitor_V2_57
  l1 = self.box_Proximity_Monitor_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|630961609", "630961609", "Tailing_OnFoot", "box_AgentStateMonitor_V2_57.Enabled", "box_Proximity_Monitor_40.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_36_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_51()
  l0 = self.box_Proximity_Monitor_36
  l1 = self.box_LineOfSightMonitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|527941679", "527941679", "Tailing_OnFoot", "box_Proximity_Monitor_36.Disabled", "box_LineOfSightMonitor_51.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_36_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_51()
  l0 = self.box_Proximity_Monitor_36
  l1 = self.box_LineOfSightMonitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|921916079", "921916079", "Tailing_OnFoot", "box_Proximity_Monitor_36.Enabled", "box_LineOfSightMonitor_51.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_36_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_43()
  l0 = self.box_Proximity_Monitor_36
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|873431538", "873431538", "Tailing_OnFoot", "box_Proximity_Monitor_36.EnterRadius", "box_SetBoolean_v2_43.True", l0, l1)
  l1:True()
end
function export:f_box_Proximity_Monitor_36_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SetBoolean_v2_43()
  l0 = self.box_Proximity_Monitor_36
  l1 = self.box_SetBoolean_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1694578435", "1694578435", "Tailing_OnFoot", "box_Proximity_Monitor_36.ExitRadius", "box_SetBoolean_v2_43.False", l0, l1)
  l1:False()
end
function export:f_box_MissionModuleBox_v3_24_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_24
  l1 = self.box_MissionCheckpointReach_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|18653278", "18653278", "Tailing_OnFoot", "box_MissionModuleBox_v3_24.DisplayRequested", "box_MissionCheckpointReach_2.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_Compare_Boolean_v2_9_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionModuleBox_v3_24()
  l0 = self.box_MissionModuleBox_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|444801933", "444801933", "Tailing_OnFoot", "box_Compare_Boolean_v2_9.A_is_False", "box_MissionModuleBox_v3_24.Display", clone, l0)
  l0:Display()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|552787620", "552787620", "Tailing_OnFoot", "box_Compare_Boolean_v2_9.A_is_True", "Failed", clone, self)
  self:Failed()
end
function export:f_box_Compare_Boolean_v2_64_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_if_Nil_37()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1033478377", "1033478377", "Tailing_OnFoot", "box_Compare_Boolean_v2_64.A_is_False", "box_Test_if_Nil_37.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_58_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_58
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_58_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_58
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_58_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_58
  self.TaillingFailed = l0.Target
end
function export:f_box_SetBoolean_v2_58_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_58
  self.TaillingFailed = l0.Target
  l1 = self.box_MissionCheckpointReach_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1175214143", "1175214143", "Tailing_OnFoot", "box_SetBoolean_v2_58.SetTrue", "box_MissionCheckpointReach_4.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
end
function export:f_box_SetBoolean_v2_58_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_58
  self.TaillingFailed = l0.Target
end
function export:f_box_Test_if_Nil_37_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Simple_Node_55()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1517608284", "1517608284", "Tailing_OnFoot", "box_Test_if_Nil_37.Is_nil", "box_Simple_Node_55.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_37_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_50()
  l0 = self.box_MapPointController_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1134504591", "1134504591", "Tailing_OnFoot", "box_Test_if_Nil_37.Is_not_nil", "box_MapPointController_v3_50.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_19_A_or_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_20()
  l0 = self.box_OnceOnly_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|124276617", "124276617", "Tailing_OnFoot", "box_Compare_Boolean_v2_19.A_or_B", "box_OnceOnly_v2_20.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_Compare_Boolean_v2_19_notA_and_notB()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v2_20()
  l0 = self.box_OnceOnly_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|152117154", "152117154", "Tailing_OnFoot", "box_Compare_Boolean_v2_19.notA_and_notB", "box_OnceOnly_v2_20.In", clone, l0)
  l0:In(0)
end
function export:f_box_MissionCheckpointReach_2_AllCheckpointsDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  l0.PlayerId = nil
  l0._graph = self
  l0._name = "box_TriggerGameOver_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|579273779"
  l0.Out = self.f_box_TriggerGameOver_22_Out
  l0 = self.box_MissionCheckpointReach_2
  l1 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1284752897", "1284752897", "Tailing_OnFoot", "box_MissionCheckpointReach_2.AllCheckpointsDisabled", "box_TriggerGameOver_22.GameOver", l0, l1)
  l1:GameOver()
end
function export:f_box_PawnHealthMonitor_v3_45_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_57()
  l0 = self.box_PawnHealthMonitor_v3_45
  l1 = self.box_AgentStateMonitor_V2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|464406246", "464406246", "Tailing_OnFoot", "box_PawnHealthMonitor_v3_45.Disabled", "box_AgentStateMonitor_V2_57.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_45_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_57()
  l0 = self.box_PawnHealthMonitor_v3_45
  l1 = self.box_AgentStateMonitor_V2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1557755801", "1557755801", "Tailing_OnFoot", "box_PawnHealthMonitor_v3_45.Enabled", "box_AgentStateMonitor_V2_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_45_Killed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionModuleBox_v3_53
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetKilled",
    id = "165452"
  }
  l0 = self.box_PawnHealthMonitor_v3_45
  l1 = self.box_MissionModuleBox_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1726668027", "1726668027", "Tailing_OnFoot", "box_PawnHealthMonitor_v3_45.Killed", "box_MissionModuleBox_v3_53.Display", l0, l1)
  l1:Display()
end
function export:f_box_FloatMissionVariable_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  self.WarningBuffer = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323429"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|181622288"
  l0.Out = self.f_box_FloatMissionVariable_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1434252091", "1434252091", "Tailing_OnFoot", "box_FloatMissionVariable_5.Out", "box_FloatMissionVariable_7.In", clone, l0)
  l0:In()
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
  l1 = self.box_MissionCheckpointReach_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|26543371", "26543371", "Tailing_OnFoot", "box_SetBoolean_v2_62.SetTrue", "box_MissionCheckpointReach_3.DisableAllCheckpoints", l0, l1)
  l1:DisableAllCheckpoints()
  self:OnEnter_box_Test_if_Nil_37()
  l0 = self.box_SetBoolean_v2_62
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|177419853", "177419853", "Tailing_OnFoot", "box_SetBoolean_v2_62.SetTrue", "box_Test_if_Nil_37.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_62_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_62
  self.TaillingFailed = l0.Target
end
function export:f_box_Get_Player_ID_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MissionVariableFloat.lua")]
  l0.Source = "MissionVariables.9223372048779323426"
  l0._graph = self
  l0._name = "box_FloatMissionVariable_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|553400198"
  l0.Out = self.f_box_FloatMissionVariable_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|643095282", "643095282", "Tailing_OnFoot", "box_Get_Player_ID_44.Out", "box_FloatMissionVariable_8.In", clone, l0)
  l0:In()
end
function export:f_box_MissionModuleBox_v3_56_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_46()
  l0 = self.box_MissionModuleBox_v3_56
  l1 = self.box_TimerToScreen_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|586496134", "586496134", "Tailing_OnFoot", "box_MissionModuleBox_v3_56.DisplayRequested", "box_TimerToScreen_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionModuleBox_v3_56_HideRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_46()
  l0 = self.box_MissionModuleBox_v3_56
  l1 = self.box_TimerToScreen_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1636692030", "1636692030", "Tailing_OnFoot", "box_MissionModuleBox_v3_56.HideRequested", "box_TimerToScreen_46.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_34_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.InSight = l0.Target
  self:OnEnter_box_Compare_Boolean_v2_60()
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1918978670", "1918978670", "Tailing_OnFoot", "box_SetBoolean_v2_34.Out", "box_Compare_Boolean_v2_60.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_34_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_34_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_34_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.InSight = l0.Target
end
function export:f_box_SetBoolean_v2_34_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_34
  self.InSight = l0.Target
end
function export:f_box_Timer_v2_54_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_52()
  l0 = self.box_Timer_v2_54
  l1 = self.box_OnceOnly_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|159005227", "159005227", "Tailing_OnFoot", "box_Timer_v2_54.Stopped", "box_OnceOnly_v2_52.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_Timer_v2_54_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_52()
  l0 = self.box_Timer_v2_54
  l1 = self.box_OnceOnly_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|2109276341", "2109276341", "Tailing_OnFoot", "box_Timer_v2_54.TimeElapsed", "box_OnceOnly_v2_52.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerGameOver_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TriggerGameOver.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1121394175", "1121394175", "Tailing_OnFoot", "box_TriggerGameOver_41.Out", "Failed", clone, self)
  self:Failed()
end
function export:OnEnter_box_Compare_Boolean_v2_60()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TaillingFailed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|96947325"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_60_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:OnEnter_box_Proximity_Monitor_40()
  local l0
  l0 = self.box_Proximity_Monitor_40
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.NPC
  l0.Radius = self.MaximumRange
  l0.CheckNow = 1
end
function export:OnEnter_box_SetBoolean_v2_21()
end
function export:OnEnter_box_OnceOnly_v2_20()
end
function export:OnEnter_box_TimerToScreen_46()
  local l0
  l0 = self.box_TimerToScreen_46
  l0.Seconds = self.WarningTimer
end
function export:OnEnter_box_OnceOnly_v2_52()
end
function export:OnEnter_box_MapPointController_v3_50()
  local l0
  l0 = self.box_MapPointController_v3_50
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:OnEnter_box_SetBoolean_v2_43()
end
function export:OnEnter_box_Simple_Node_55()
  local l0
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|799903928"
  l0.Out = self.f_box_Simple_Node_55_Out
end
function export:OnEnter_box_MapPointController_v3_42()
  local l0
  l0 = self.box_MapPointController_v3_42
  l0.MapPoint = self.ObjectiveMarker
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Tail",
    id = "165449"
  }
end
function export:OnEnter_box_LineOfSightMonitor_51()
  local l0
  l0 = self.box_LineOfSightMonitor_51
  l0.Target = self.NPC
end
function export:OnEnter_box_AgentStateMonitor_V2_57()
  local l0
  l0 = self.box_AgentStateMonitor_V2_57
  l0.NPC = self.NPC
end
function export:OnEnter_box_Proximity_Monitor_36()
  local l0
  l0 = self.box_Proximity_Monitor_36
  l0.Entity1 = self.PlayerID
  l0.Entity2 = self.NPC
  l0.Radius = self.SafeRange
  l0.CheckNow = 1
end
function export:OnEnter_box_MissionModuleBox_v3_24()
  local l0
  l0 = self.box_MissionModuleBox_v3_24
  l0.MessageType = "MissionFailed"
  l0.MessageIcon = "DefaultIcon"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "PlayerDetected",
    id = "165453"
  }
end
function export:OnEnter_box_Test_if_Nil_37()
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
  l0._name = "box_Test_if_Nil_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Common_HUD.domino|@Tailing_OnFoot|1432484920"
  l0.Is_nil = self.f_box_Test_if_Nil_37_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_37_Is_not_nil
end
function export:OnEnter_box_PawnHealthMonitor_v3_45()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_45
  l0.Pawn = self.NPC
end
function export:OnEnter_box_MissionModuleBox_v3_56()
  local l0
  l0 = self.box_MissionModuleBox_v3_56
  l0.MessageType = "MissionWarning"
  l0.MessageIcon = "iconWarning"
  l0.OasisID_1 = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONWARNING",
    item = "LosingTarget",
    id = "186001"
  }
  l0.Duration = self.WarningTimer
end
function export:OnEnter_box_SetBoolean_v2_34()
end
function export:OnEnter_box_Timer_v2_54()
  local l0
  l0 = self.box_Timer_v2_54
  l0.Seconds = self.WarningBuffer
end
function export:Failed()
end
function export:Started()
end
function export:Stopped()
end
_compilerVersion = 4
