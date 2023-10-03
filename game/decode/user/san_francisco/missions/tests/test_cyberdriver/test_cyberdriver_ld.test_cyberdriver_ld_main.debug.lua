export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/FormatString.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/VehicleWheelHelper.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_CyberDriver_LD_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main"
  self.PlayerEntity = nil
  self.Boat = nil
  self.CHIP = nil
  self.WheelInContact = 0
  self.box_MissionMessageController_16 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_16
  l0._graph = self
  l0._name = "box_MissionMessageController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|94772446"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_box_MissionMessageController_16_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_Player_Vehicle_Monitor_v2_24 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|180115120"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_24_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_24_Leave
  l0.ChangeSeat = self.f_box_Player_Vehicle_Monitor_v2_24_ChangeSeat
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_5 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_5
  l0._graph = self
  l0._name = "box_MissionMessageController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|857558608"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = self.f_box_MissionMessageController_5_Out
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|984309492"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_15_Started
  l0.Stopped = self.f_box_Timer_v2_15_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_LogicGate_v2_23 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_23
  l0._graph = self
  l0._name = "box_LogicGate_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1193322190"
  l0.Out = self.f_box_LogicGate_v2_23_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_box_LogicGate_v2_23_Closed
  self.box_MultipleOR_37 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_37
  l0._graph = self
  l0._name = "box_MultipleOR_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1352109464"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_37_Out
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1691686205"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_TimerToScreen_17 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_17
  l0._graph = self
  l0._name = "box_TimerToScreen_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1765826045"
  l0.Started = self.f_box_TimerToScreen_17_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_17_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = DummyFunction
  self.box_Timer_v2_36 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_36
  l0._graph = self
  l0._name = "box_Timer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1928109696"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_36_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_36_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2074087242"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_22_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
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
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "Test_CyberDriver_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1958909302", "1958909302", "Test_CyberDriver_LD_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_15()
  l0 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|586192403", "586192403", "Test_CyberDriver_LD_Main", "box_Ordered_Output_19.Out", "box_Timer_v2_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionMessageController_16_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_23()
  l0 = self.box_MissionMessageController_16
  l1 = self.box_LogicGate_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1101881476", "1101881476", "Test_CyberDriver_LD_Main", "box_MissionMessageController_16.Out", "box_LogicGate_v2_23.Close", l0, l1)
  l1:Close()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1329550013", "1329550013", "Test_CyberDriver_LD_Main", "box_Ordered_Output_35.Out", "box_MultipleOR_18.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_24()
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1216666330", "1216666330", "Test_CyberDriver_LD_Main", "box_Ordered_Output_35.Out", "box_Player_Vehicle_Monitor_v2_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Player_Vehicle_Monitor_v2_24_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  self.CHIP = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_24_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  self.CHIP = l0.Vehicle
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|139866048"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2126243739", "2126243739", "Test_CyberDriver_LD_Main", "box_Player_Vehicle_Monitor_v2_24.Enter", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_Player_Vehicle_Monitor_v2_24_Leave()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_24
  self.CHIP = l0.Vehicle
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|794668992", "794668992", "Test_CyberDriver_LD_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Wheels_Helper_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  self.WheelInContact = l0.NbWheelInContact
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = 0
  l0.B = self.WheelInContact
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|391018066"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_box_Compare_Integers_v2_21_A_ne_B
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|853084465", "853084465", "Test_CyberDriver_LD_Main", "box_Vehicle_Wheels_Helper_20.Out", "box_Compare_Integers_v2_21.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_21_A_ne_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1374173253", "1374173253", "Test_CyberDriver_LD_Main", "box_Compare_Integers_v2_21.A_ne_B", "box_MultipleOR_37.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_16
  l0.MissionName = "MissionList.9223372045382934039"
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "312666"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2099796265", "2099796265", "Test_CyberDriver_LD_Main", "box_Ordered_Output_47.Out", "box_MissionMessageController_16.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer ELAPsed.  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._name = "box_Format_String_44"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|700276059"
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_box_Format_String_44_Formatted
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|232223646", "232223646", "Test_CyberDriver_LD_Main", "box_Ordered_Output_47.Out", "box_Format_String_44.Format", clone, l1)
  l1:Format()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_17()
  l0 = self.box_TimerToScreen_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1053442920", "1053442920", "Test_CyberDriver_LD_Main", "box_Ordered_Output_42.Out", "box_TimerToScreen_17.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer STOPPED.  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._name = "box_Format_String_41"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2017104251"
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_box_Format_String_41_Formatted
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|580480593", "580480593", "Test_CyberDriver_LD_Main", "box_Ordered_Output_42.Out", "box_Format_String_41.Format", clone, l1)
  l1:Format()
end
function export:f_box_Format_String_44_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_box_Format_String_44 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_box_Format_String_44
  l0.Duration = 10
  l0.Color = "Green"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1942904435"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|180183231", "180183231", "Test_CyberDriver_LD_Main", "box_Format_String_44.Formatted", "box_TextToScreen_v2_46.In", clone, l0)
  l0:In()
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
  l0 = self.box_MissionMessageController_5
  l0.MissionName = "MissionList.9223372045382934039"
  l0.Objective = {
    section = "",
    item = "",
    id = "289470"
  }
  l0.ObjectiveSub1 = {
    section = "",
    item = "",
    id = "289472"
  }
  l0.ObjectiveSub2 = {
    section = "",
    item = "",
    id = "312666"
  }
  l0.ObjectiveSub3 = {
    section = "",
    item = "",
    id = "312670"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|838375820", "838375820", "Test_CyberDriver_LD_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_5.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_24()
  l0 = self.box_MissionMessageController_5
  l1 = self.box_Player_Vehicle_Monitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2013578528", "2013578528", "Test_CyberDriver_LD_Main", "box_MissionMessageController_5.Out", "box_Player_Vehicle_Monitor_v2_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_15_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1748485901"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_40_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_40_Out_1
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2117217845", "2117217845", "Test_CyberDriver_LD_Main", "box_Timer_v2_15.Started", "box_Ordered_Output_40.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_15_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|634286883"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|422982961", "422982961", "Test_CyberDriver_LD_Main", "box_Timer_v2_15.Stopped", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|549135313"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|485146915", "485146915", "Test_CyberDriver_LD_Main", "box_Timer_v2_15.TimeElapsed", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_23_Closed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_37()
  l0 = self.box_LogicGate_v2_23
  l1 = self.box_MultipleOR_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1897576779", "1897576779", "Test_CyberDriver_LD_Main", "box_LogicGate_v2_23.Closed", "box_MultipleOR_37.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LogicGate_v2_23_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_15()
  l0 = self.box_LogicGate_v2_23
  l1 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1081399667", "1081399667", "Test_CyberDriver_LD_Main", "box_LogicGate_v2_23.Out", "box_Timer_v2_15.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Compare_Integers_v2_14_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_36()
  l0 = self.box_Timer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1078719342", "1078719342", "Test_CyberDriver_LD_Main", "box_Compare_Integers_v2_14.A_eq_B", "box_Timer_v2_36.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_37_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_22()
  l0 = self.box_MultipleOR_37
  l1 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|225976633", "225976633", "Test_CyberDriver_LD_Main", "box_MultipleOR_37.Out", "box_Timer_v2_22.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Format_String_39_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_box_Format_String_39 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_box_Format_String_39
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2004026752"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1743194636", "1743194636", "Test_CyberDriver_LD_Main", "box_Format_String_39.Formatted", "box_TextToScreen_v2_38.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_36()
  l0 = self.box_MultipleOR_18
  l1 = self.box_Timer_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1843542227", "1843542227", "Test_CyberDriver_LD_Main", "box_MultipleOR_18.Out", "box_Timer_v2_36.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_40_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_17()
  l0 = self.box_TimerToScreen_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1142058110", "1142058110", "Test_CyberDriver_LD_Main", "box_Ordered_Output_40.Out", "box_TimerToScreen_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_40_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  l0.FormatString = "Timer started...  Remaining time = %f"
  l0.String[0] = nil
  l0.String[1] = nil
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/FormatString.lua")]
  l1.Float[0] = l0.RemainingTime
  l1.Float[1] = nil
  l1.Integer[0] = nil
  l1.Integer[1] = nil
  l1.Boolean[0] = nil
  l1.Boolean[1] = nil
  l1._graph = self
  l1._name = "box_Format_String_39"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1370026219"
  l1._DynamicAnchors = {
    String = 2,
    Float = 2,
    Integer = 2,
    Boolean = 2
  }
  l1.Formatted = self.f_box_Format_String_39_Formatted
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|477354749", "477354749", "Test_CyberDriver_LD_Main", "box_Ordered_Output_40.Out", "box_Format_String_39.Format", clone, l1)
  l1:Format()
end
function export:f_box_TimerToScreen_17_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_22()
  l0 = self.box_TimerToScreen_17
  l1 = self.box_Timer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1857290033", "1857290033", "Test_CyberDriver_LD_Main", "box_TimerToScreen_17.Started", "box_Timer_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimerToScreen_17_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_TimerToScreen_17
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1056217810", "1056217810", "Test_CyberDriver_LD_Main", "box_TimerToScreen_17.Stopped", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Vehicle_Wheels_Helper_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  self.WheelInContact = l0.NbWheelInContact
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = 0
  l0.B = self.WheelInContact
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1290545127"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_14_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1375572889", "1375572889", "Test_CyberDriver_LD_Main", "box_Vehicle_Wheels_Helper_4.Out", "box_Compare_Integers_v2_14.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_36_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|79087249"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  l0 = self.box_Timer_v2_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|2034057452", "2034057452", "Test_CyberDriver_LD_Main", "box_Timer_v2_36.Stopped", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_36_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0._name = "box_Vehicle_Wheels_Helper_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1767127527"
  l0.Out = self.f_box_Vehicle_Wheels_Helper_4_Out
  l0 = self.box_Timer_v2_36
  l1 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1686216185", "1686216185", "Test_CyberDriver_LD_Main", "box_Timer_v2_36.TimeElapsed", "box_Vehicle_Wheels_Helper_4.In", l0, l1)
  l1:In()
end
function export:f_box_Format_String_41_Formatted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FormatString.lua")]
  self._sld_Target_box_Format_String_41 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = self._sld_Target_box_Format_String_41
  l0.Duration = 10
  l0.Color = "Red"
  l0._graph = self
  l0._name = "box_TextToScreen_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|509132119"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1394741263", "1394741263", "Test_CyberDriver_LD_Main", "box_Format_String_41.Formatted", "box_TextToScreen_v2_43.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_22_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_23()
  l0 = self.box_Timer_v2_22
  l1 = self.box_LogicGate_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|1578555967", "1578555967", "Test_CyberDriver_LD_Main", "box_Timer_v2_22.Stopped", "box_LogicGate_v2_23.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  l0.Vehicle = self.CHIP
  l0._graph = self
  l0._name = "box_Vehicle_Wheels_Helper_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|240307971"
  l0.Out = self.f_box_Vehicle_Wheels_Helper_20_Out
  l0 = self.box_Timer_v2_22
  l1 = Boxes[PathID("domino/System/VehicleWheelHelper.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_CyberDriver\\Test_CyberDriver_LD.domino|@Test_CyberDriver_LD_Main|89228024", "89228024", "Test_CyberDriver_LD_Main", "box_Timer_v2_22.TimeElapsed", "box_Vehicle_Wheels_Helper_20.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_24()
end
function export:OnEnter_box_Timer_v2_15()
  local l0
  l0 = self.box_Timer_v2_15
  l0.Seconds = 2
end
function export:OnEnter_box_LogicGate_v2_23()
end
function export:OnEnter_box_MultipleOR_37()
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_TimerToScreen_17()
  local l0
  l0 = self.box_TimerToScreen_17
  l0.Seconds = 2
end
function export:OnEnter_box_Timer_v2_36()
  local l0
  l0 = self.box_Timer_v2_36
  l0.Seconds = 0.1
  l0.Loop = 1
end
function export:OnEnter_box_Timer_v2_22()
  local l0
  l0 = self.box_Timer_v2_22
  l0.Seconds = 0.1
  l0.Loop = 1
end
_compilerVersion = 4
