export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S03M040_ScriptedPoliceVehiclesController"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController"
  self.PoliceMan = nil
  self.PoliceCar = nil
  self.Player = nil
  self.PlayerEntity = nil
  self.Adopt = 0
  self.UsersList = {}
  self.Vehicle = nil
  self.box_Multiple_AND_8 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_8
  l0._graph = self
  l0._name = "box_Multiple_AND_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|59096731"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_8_Out
  self.box_SetBoolean_v2_17 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_17
  l0._graph = self
  l0._name = "box_SetBoolean_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|335900579"
  l0.Out = self.f_box_SetBoolean_v2_17_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_17_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_17_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_17_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_17_SetFromBool
  self.box_MultipleOR_14 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|686297955"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_VehicleBhvController_7 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_7
  l0._graph = self
  l0._name = "box_VehicleBhvController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|753082313"
  l0.StartCompleted = self.f_box_VehicleBhvController_7_StartCompleted
  l0.StopCompleted = self.f_box_VehicleBhvController_7_StopCompleted
  l0.ForcedFakeFollow = DummyFunction
  self.box_Timer_v2_12 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_12
  l0._graph = self
  l0._name = "box_Timer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1142085287"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_12_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_1 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_1
  l0._graph = self
  l0._name = "box_CLOController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1160178606"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1311824793"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1407519388"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_20 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_20
  l0._graph = self
  l0._name = "box_OnceOnly_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1433963433"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_20_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1523585593"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1609210350"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_Vehicle_Bhv_Monitor_23 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1790424679"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Vehicle_Bhv_Monitor_23_Enabled
  l0.Disabled = DummyFunction
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = DummyFunction
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = self.f_box_Vehicle_Bhv_Monitor_23_EndPathPointReached
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1794083346"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_6_OnUserInPlace
  self.box_Player_Proximity_Monitor_25 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_25
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1816940090"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Proximity_Monitor_25_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_25_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_VehicleSeatingController_9 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_9
  l0._graph = self
  l0._name = "box_VehicleSeatingController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1969437978"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_9_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_15 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_15
  l0._graph = self
  l0._name = "box_SetBoolean_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|2098339177"
  l0.Out = self.f_box_SetBoolean_v2_15_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_15_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_15_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_15_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_15_SetFromBool
  self.box_ListWriter_16 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_16
  l0._graph = self
  l0._name = "box_ListWriter_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|2107753505"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_16_Added
  l0.Removed = self.f_box_ListWriter_16_Removed
  l0.Out = self.f_box_ListWriter_16_Out
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
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.AdoptInFelony
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|440397170"
  l0.Is_nil = self.f_box_Test_if_Nil_4_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1165995731", "1165995731", "S03M040_ScriptedPoliceVehiclesController", "Start", "box_Test_if_Nil_4.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Adopt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1607678910"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_3_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_3_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|2068322292", "2068322292", "S03M040_ScriptedPoliceVehiclesController", "Stop", "box_Compare_Boolean_v2_3.In", self, l0)
  l0:In()
end
function export:f_box_FelonyTargetController_5_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_5()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|369033335", "369033335", "S03M040_ScriptedPoliceVehiclesController", "box_FelonyTargetController_5.ChaseStarted", "box_FelonyTargetController_5.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_FelonyTargetController_5_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_5()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|2109542374", "2109542374", "S03M040_ScriptedPoliceVehiclesController", "box_FelonyTargetController_5.ScriptedAgentsAdded", "box_FelonyTargetController_5.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_Multiple_AND_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  l0.Input = self.UsersList
  l0.Data[0] = self.PoliceMan
  l0.Data[1] = self.PoliceCar
  l0 = self.box_Multiple_AND_8
  l1 = self.box_ListWriter_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|631524724", "631524724", "S03M040_ScriptedPoliceVehiclesController", "box_Multiple_AND_8.Out", "box_ListWriter_16.Add", l0, l1)
  l1:Add()
end
function export:f_box_SetBoolean_v2_17_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.Adopt = l0.Target
  self:OnEnter_box_MultipleOR_18()
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|368534785", "368534785", "S03M040_ScriptedPoliceVehiclesController", "box_SetBoolean_v2_17.SetFromBool", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_17_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_17_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.Adopt = l0.Target
end
function export:f_box_Test_if_Nil_4_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1818885294", "1818885294", "S03M040_ScriptedPoliceVehiclesController", "box_Test_if_Nil_4.Is_nil", "box_SetBoolean_v2_15.False", clone, l0)
  l0:False()
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_17
  l0.Bool = self.AdoptInFelony
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|377505479", "377505479", "S03M040_ScriptedPoliceVehiclesController", "box_Test_if_Nil_4.Is_not_nil", "box_SetBoolean_v2_17.FromBool", clone, l0)
  l0:FromBool()
end
function export:f_box_MultipleOR_14_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleBhvController_7()
  l0 = self.box_MultipleOR_14
  l1 = self.box_VehicleBhvController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1669719237", "1669719237", "S03M040_ScriptedPoliceVehiclesController", "box_MultipleOR_14.Out", "box_VehicleBhvController_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleBhvController_7_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l0.Vehicle = self.PoliceCar
  l0 = self.box_VehicleBhvController_7
  l1 = self.box_Vehicle_Bhv_Monitor_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|990474766", "990474766", "S03M040_ScriptedPoliceVehiclesController", "box_VehicleBhvController_7.StartCompleted", "box_Vehicle_Bhv_Monitor_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleBhvController_7_StopCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Adopt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1002102005"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_19_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_VehicleBhvController_7
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1689760748", "1689760748", "S03M040_ScriptedPoliceVehiclesController", "box_VehicleBhvController_7.StopCompleted", "box_Compare_Boolean_v2_19.In", l0, l1)
  l1:In()
end
function export:f_box_Test_if_Nil_13_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|334926064", "334926064", "S03M040_ScriptedPoliceVehiclesController", "box_Test_if_Nil_13.Is_nil", "box_MultipleOR_14.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_12
  l0.Seconds = self.DelayBeforeSendingOnPath
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|58646940", "58646940", "S03M040_ScriptedPoliceVehiclesController", "box_Test_if_Nil_13.Is_not_nil", "box_Timer_v2_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Boolean_v2_19_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1800641718"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|399398963", "399398963", "S03M040_ScriptedPoliceVehiclesController", "box_Compare_Boolean_v2_19.A_is_True", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_12_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_Timer_v2_12
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|56621685", "56621685", "S03M040_ScriptedPoliceVehiclesController", "box_Timer_v2_12.TimeElapsed", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_20()
  l0 = self.box_Timer_v2_21
  l1 = self.box_OnceOnly_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1246948143", "1246948143", "S03M040_ScriptedPoliceVehiclesController", "box_Timer_v2_21.TimeElapsed", "box_OnceOnly_v3_20.In", l0, l1)
  l1:In(1)
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_Timer_v2_26
  l1 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|331023088", "331023088", "S03M040_ScriptedPoliceVehiclesController", "box_Timer_v2_26.TimeElapsed", "box_Player_Proximity_Monitor_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_OnceOnly_v3_20_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetController_5()
  l0 = self.box_OnceOnly_v3_20
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1707626893", "1707626893", "S03M040_ScriptedPoliceVehiclesController", "box_OnceOnly_v3_20.Out", "box_FelonyTargetController_5.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_11
  l0.CLO = self.CLO_PoliceMan
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1571073115", "1571073115", "S03M040_ScriptedPoliceVehiclesController", "box_Ordered_Output_2.Out", "box_CLOController_11.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.CLO = self.CLO_PoliceCar
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|726687825", "726687825", "S03M040_ScriptedPoliceVehiclesController", "box_Ordered_Output_2.Out", "box_CLOController_6.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1449210486"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MultipleOR_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|667939495", "667939495", "S03M040_ScriptedPoliceVehiclesController", "box_MultipleOR_18.Out", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_3_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_1
  l0.UserList = self.UsersList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|183994156", "183994156", "S03M040_ScriptedPoliceVehiclesController", "box_Compare_Boolean_v2_3.A_is_False", "box_CLOController_1.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Compare_Boolean_v2_3_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_20()
  l0 = self.box_OnceOnly_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|152097339", "152097339", "S03M040_ScriptedPoliceVehiclesController", "box_Compare_Boolean_v2_3.A_is_True", "box_OnceOnly_v3_20.In", clone, l0)
  l0:In(0)
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.PoliceMan = l0.UserID
  self:OnEnter_box_Multiple_AND_8()
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|409532945", "409532945", "S03M040_ScriptedPoliceVehiclesController", "box_CLOController_11.OnUserInPlace", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Vehicle_Bhv_Monitor_23_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1987978532"
  l0.Out = DummyFunction
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1169597334", "1169597334", "S03M040_ScriptedPoliceVehiclesController", "box_Vehicle_Bhv_Monitor_23.Enabled", "box_SetVehicleLightAndSiren_v2_10.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Vehicle_Bhv_Monitor_23_EndPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleBhvController_7()
  l0 = self.box_Vehicle_Bhv_Monitor_23
  l1 = self.box_VehicleBhvController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|707628436", "707628436", "S03M040_ScriptedPoliceVehiclesController", "box_Vehicle_Bhv_Monitor_23.EndPathPointReached", "box_VehicleBhvController_7.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_6_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_6
  self.PoliceCar = l0.UserID
  self:OnEnter_box_Multiple_AND_8()
  l1 = self.box_Multiple_AND_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1158918990", "1158918990", "S03M040_ScriptedPoliceVehiclesController", "box_CLOController_6.OnUserInPlace", "box_Multiple_AND_8.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_21
  l0.Seconds = self.DelayBeforeAdopt
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|72314108", "72314108", "S03M040_ScriptedPoliceVehiclesController", "box_Ordered_Output_24.Out", "box_Timer_v2_21.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_25()
  l0 = self.box_Player_Proximity_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|830985302", "830985302", "S03M040_ScriptedPoliceVehiclesController", "box_Ordered_Output_24.Out", "box_Player_Proximity_Monitor_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Player_Proximity_Monitor_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_20()
  l0 = self.box_Player_Proximity_Monitor_25
  l1 = self.box_OnceOnly_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|546608999", "546608999", "S03M040_ScriptedPoliceVehiclesController", "box_Player_Proximity_Monitor_25.Disabled", "box_OnceOnly_v3_20.In", l0, l1)
  l1:In(2)
end
function export:f_box_Player_Proximity_Monitor_25_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 3
  l0 = self.box_Player_Proximity_Monitor_25
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1251518862", "1251518862", "S03M040_ScriptedPoliceVehiclesController", "box_Player_Proximity_Monitor_25.EnterRadius", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleSeatingController_9_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.DelayBeforeSendingOnPath
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|848391535"
  l0.Is_nil = self.f_box_Test_if_Nil_13_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_13_Is_not_nil
  l0 = self.box_VehicleSeatingController_9
  l1 = Boxes[PathID("domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1347080240", "1347080240", "S03M040_ScriptedPoliceVehiclesController", "box_VehicleSeatingController_9.AssignCompleted", "box_Test_if_Nil_13.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.Adopt = l0.Target
  self:OnEnter_box_MultipleOR_18()
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1172213702", "1172213702", "S03M040_ScriptedPoliceVehiclesController", "box_SetBoolean_v2_15.Out", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_15_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_15_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_15_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.Adopt = l0.Target
end
function export:f_box_SetBoolean_v2_15_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.Adopt = l0.Target
end
function export:f_box_ListWriter_16_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  self.UsersList = l0.Target
  l0 = self.box_VehicleSeatingController_9
  l0.Vehicle = self.PoliceCar
  l0.Pawn = self.PoliceMan
  l0.Seat = "Driver"
  l0 = self.box_ListWriter_16
  l1 = self.box_VehicleSeatingController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|1434382133", "1434382133", "S03M040_ScriptedPoliceVehiclesController", "box_ListWriter_16.Added", "box_VehicleSeatingController_9.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_16_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.UsersList = l0.Target
end
function export:f_box_ListWriter_16_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.UsersList = l0.Target
end
function export:OnEnter_box_FelonyTargetController_5()
  local l0
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372068194800362"
  l0.AgentList = self.UsersList
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M040\\S03M040.domino|@S03M040_ScriptedPoliceVehiclesController|37479131"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_5_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_5_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_Multiple_AND_8()
end
function export:OnEnter_box_MultipleOR_14()
end
function export:OnEnter_box_VehicleBhvController_7()
  local l0
  l0 = self.box_VehicleBhvController_7
  l0.VehicleMaster = self.PoliceCar
  l0.VehicleTarget = self.PlayerForCopsThing
  l0.PathOrPos = self.Path
  l0.Config = "VehicleBhvSetup.9223372052817546866"
  l0.StopAtEndPoint = 1
end
function export:OnEnter_box_OnceOnly_v3_20()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_Player_Proximity_Monitor_25()
  local l0
  l0 = self.box_Player_Proximity_Monitor_25
  l0.TargetEntity = self.PoliceCar
  l0.Radius = 30
  l0.CheckNow = 1
end
_compilerVersion = 4
