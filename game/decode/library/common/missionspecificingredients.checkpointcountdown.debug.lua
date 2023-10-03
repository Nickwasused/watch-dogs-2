export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("Domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("Domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimerToScreen.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/2070410650.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "CheckpointCountDown"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown"
  self.Reached = DummyFunction
  self.WarningTime = 0
  self.AnteWarningTime = 0
  self.TimeLeft = 0
  self.IsNitroUsed = 0
  self.VehicleIn = nil
  self.TimerBeforeNitro = 0
  self.NitroWarningDuration = 8
  self.box_TriggerMonitor_v2_3 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_3
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|71392013"
  l0.Enabled = self.f_box_TriggerMonitor_v2_3_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_3_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_14 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_14
  l0._graph = self
  l0._name = "box_Timer_v2_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|99857937"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_14_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_14_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_12 = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|443803350"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Vehicle_Monitor_v2_12_Disabled
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_12_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_12_Leave
  l0.ChangeSeat = self.f_box_Player_Vehicle_Monitor_v2_12_ChangeSeat
  self.box_TutorialController_16 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_16
  l0._graph = self
  l0._name = "box_TutorialController_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|491857004"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|986826204"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_LogicGate_v2_17 = cbox:CreateBox("Domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_17
  l0._graph = self
  l0._name = "box_LogicGate_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1048998464"
  l0.Out = self.f_box_LogicGate_v2_17_Out
  l0.Opened = self.f_box_LogicGate_v2_17_Opened
  l0.Closed = DummyFunction
  self.box_PlaySound_v2_8 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_8
  l0._graph = self
  l0._name = "box_PlaySound_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1138059192"
  l0.Out = self.f_box_PlaySound_v2_8_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TimerToScreen_1 = cbox:CreateBox("Domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_1
  l0._graph = self
  l0._name = "box_TimerToScreen_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1342518263"
  l0.Started = self.f_box_TimerToScreen_1_Started
  l0.Paused = self.f_box_TimerToScreen_1_Paused
  l0.Resumed = self.f_box_TimerToScreen_1_Resumed
  l0.Stopped = self.f_box_TimerToScreen_1_Stopped
  l0.Restarted = self.f_box_TimerToScreen_1_Restarted
  l0.GotTime = self.f_box_TimerToScreen_1_GotTime
  l0.TimeElapsed = self.f_box_TimerToScreen_1_TimeElapsed
  self.box_MissionController_v4_4 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1603960247"
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
  self:OnEnter_box_Player_Vehicle_Monitor_v2_12()
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|175406149", "175406149", "CheckpointCountDown", "Start", "box_Player_Vehicle_Monitor_v2_12.Enable", self, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_1()
  l0 = self.box_TriggerMonitor_v2_3
  l1 = self.box_TimerToScreen_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1370540830", "1370540830", "CheckpointCountDown", "box_TriggerMonitor_v2_3.Enabled", "box_TimerToScreen_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_3_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|2114590466"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_TriggerMonitor_v2_3
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|548385571", "548385571", "CheckpointCountDown", "box_TriggerMonitor_v2_3.Enter", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_14_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_17()
  l0 = self.box_Timer_v2_14
  l1 = self.box_LogicGate_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|761395395", "761395395", "CheckpointCountDown", "box_Timer_v2_14.Stopped", "box_LogicGate_v2_17.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_14_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_17()
  l0 = self.box_Timer_v2_14
  l1 = self.box_LogicGate_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1877044846", "1877044846", "CheckpointCountDown", "box_Timer_v2_14.TimeElapsed", "box_LogicGate_v2_17.Open", l0, l1)
  l1:Open()
end
function export:f_box_SetFloat_v2_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.RemainingTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1267003961", "1267003961", "CheckpointCountDown", "box_SetFloat_v2_10.Out", "Reached", clone, self)
  self:Reached()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|932541267", "932541267", "CheckpointCountDown", "box_Ordered_Output_11.Out", "box_Timer_v2_14.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TimeLeft
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|159098368"
  l0.Out = self.f_box_SetFloat_v2_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1784070527", "1784070527", "CheckpointCountDown", "box_Ordered_Output_11.Out", "box_SetFloat_v2_10.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Player_Vehicle_Monitor_v2_12_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  self.VehicleIn = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_12_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.BaseTime
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1645879994"
  l0.Is_nil = self.f_box_Test_if_Nil_6_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_6_Is_not_nil
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1640310985", "1640310985", "CheckpointCountDown", "box_Player_Vehicle_Monitor_v2_12.Disabled", "box_Test_if_Nil_6.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Vehicle_Monitor_v2_12_Enter()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  self.VehicleIn = l0.Vehicle
  self:OnEnter_box_Player_Vehicle_Monitor_v2_12()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|725056901", "725056901", "CheckpointCountDown", "box_Player_Vehicle_Monitor_v2_12.Enter", "box_Player_Vehicle_Monitor_v2_12.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Player_Vehicle_Monitor_v2_12_Leave()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  self.VehicleIn = l0.Vehicle
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_MultipleOR_9
  l1 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1891766398", "1891766398", "CheckpointCountDown", "box_MultipleOR_9.Out", "box_TriggerMonitor_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LogicGate_v2_17_Opened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_16()
  l0 = self.box_LogicGate_v2_17
  l1 = self.box_TutorialController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|562849271", "562849271", "CheckpointCountDown", "box_LogicGate_v2_17.Opened", "box_TutorialController_16.Display", l0, l1)
  l1:Display()
end
function export:f_box_LogicGate_v2_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_16()
  l0 = self.box_LogicGate_v2_17
  l1 = self.box_TutorialController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1648285747", "1648285747", "CheckpointCountDown", "box_LogicGate_v2_17.Out", "box_TutorialController_16.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Compare_Floats_v2_15_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  l0.A = self.WarningTime
  l0.B = self.BonusTime
  l0._graph = self
  l0._name = "box_Float_Arithmetics_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|2145559836"
  l0.Out = self.f_box_Float_Arithmetics_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1665361351", "1665361351", "CheckpointCountDown", "box_Compare_Floats_v2_15.A_gt_B", "box_Float_Arithmetics_13.Sub", clone, l0)
  l0:Sub()
end
function export:f_box_PlaySound_v2_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_PlaySound_v2_8
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|151557342", "151557342", "CheckpointCountDown", "box_PlaySound_v2_8.Out", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetFloat_v2_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  self.WarningTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1426196787", "1426196787", "CheckpointCountDown", "box_SetFloat_v2_5.Out", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_TimerToScreen_1_GotTime()
  local l0
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
end
function export:f_box_TimerToScreen_1_Paused()
  local l0
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
end
function export:f_box_TimerToScreen_1_Restarted()
  local l0
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
end
function export:f_box_TimerToScreen_1_Resumed()
  local l0
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
end
function export:f_box_TimerToScreen_1_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  l0.A = self.WarningTime
  l0.B = self.BonusTime
  l0.Tolerance = nil
  l0._graph = self
  l0._name = "box_Compare_Floats_v2_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1092185578"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Floats_v2_15_A_gt_B
  l0.A_ne_B = DummyFunction
  l0 = self.box_TimerToScreen_1
  l1 = Boxes[PathID("Domino/System/CompareFloats_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|145054567", "145054567", "CheckpointCountDown", "box_TimerToScreen_1.Started", "box_Compare_Floats_v2_15.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_1_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TimerToScreen_1
  self.TimeLeft = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|269969156"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0 = self.box_TimerToScreen_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|72481285", "72481285", "CheckpointCountDown", "box_TimerToScreen_1.Stopped", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_TimerToScreen_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_4
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.EXTRA",
    item = "Specific_OutOfTime",
    id = "693607"
  }
  l0 = self.box_TimerToScreen_1
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1048310283", "1048310283", "CheckpointCountDown", "box_TimerToScreen_1.TimeElapsed", "box_MissionController_v4_4.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Test_if_Nil_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetFloat_v2.lua")]
  l0.Float = self.TimeToCheckpoint
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0._name = "box_SetFloat_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1298036266"
  l0.Out = self.f_box_SetFloat_v2_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|30352038", "30352038", "CheckpointCountDown", "box_Test_if_Nil_6.Is_nil", "box_SetFloat_v2_5.FromFloat", clone, l0)
  l0:FromFloat()
end
function export:f_box_Test_if_Nil_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  l0.A = self.BaseTime
  l0.B = self.BonusTime
  l0._graph = self
  l0._name = "box_Float_Arithmetics_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1743232640"
  l0.Out = self.f_box_Float_Arithmetics_7_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1770538119", "1770538119", "CheckpointCountDown", "box_Test_if_Nil_6.Is_not_nil", "box_Float_Arithmetics_7.Add", clone, l0)
  l0:Add()
end
function export:f_box_Float_Arithmetics_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  self.WarningTime = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_8
  l0.SoundId = "soundbinary/2070410650.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|613258977", "613258977", "CheckpointCountDown", "box_Float_Arithmetics_7.Out", "box_PlaySound_v2_8.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_3()
  l0 = self.box_TriggerMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|164661353", "164661353", "CheckpointCountDown", "box_Ordered_Output_2.Out", "box_TriggerMonitor_v2_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_1()
  l0 = self.box_TimerToScreen_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1741264983", "1741264983", "CheckpointCountDown", "box_Ordered_Output_2.Out", "box_TimerToScreen_1.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Float_Arithmetics_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FloatArithmetics.lua")]
  self.TimerBeforeNitro = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_14()
  l0 = self.box_Timer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionSpecificIngredients.domino|@CheckpointCountDown|1352302046", "1352302046", "CheckpointCountDown", "box_Float_Arithmetics_13.Out", "box_Timer_v2_14.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_TriggerMonitor_v2_3()
  local l0
  l0 = self.box_TriggerMonitor_v2_3
  l0.Trigger = self.Checkpoint
end
function export:OnEnter_box_Timer_v2_14()
  local l0
  l0 = self.box_Timer_v2_14
  l0.Seconds = self.TimerBeforeNitro
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_12()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_12
  l0.CheckNow = 1
end
function export:OnEnter_box_TutorialController_16()
  local l0
  l0 = self.box_TutorialController_16
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = self.BonusTime
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_LogicGate_v2_17()
  local l0
  l0 = self.box_LogicGate_v2_17
  l0.initStateOpen = 0
end
function export:OnEnter_box_TimerToScreen_1()
  local l0
  l0 = self.box_TimerToScreen_1
  l0.Seconds = self.WarningTime
  l0.LinkedObjective = "ObjectiveSub1"
  l0.LinkedObjectiveAutoComplete = 0
end
function export:Reached()
end
_compilerVersion = 4
