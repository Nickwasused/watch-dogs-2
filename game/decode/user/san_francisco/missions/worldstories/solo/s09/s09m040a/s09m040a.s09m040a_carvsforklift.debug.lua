export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S09M040a_CarVSForklift"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift"
  self.IsUnderwater = 0
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|44791111"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|420197691"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|420333407"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_VehicleMonitor_v3_2 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_2
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|519738016"
  l0.Enabled = self.f_box_VehicleMonitor_v3_2_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_2_Disabled
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
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_2_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = self.f_box_VehicleMonitor_v3_2_VehicleJump
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
  self.box_SetBoolean_v2_8 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1434265653"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_SnapAndBind_1 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_1
  l0._graph = self
  l0._name = "box_SnapAndBind_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1664285725"
  l0.Attached = self.f_box_SnapAndBind_1_Attached
  self.box_Timer_v2_3 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_3
  l0._graph = self
  l0._name = "box_Timer_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1957337373"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_3_TimeElapsed
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
  l0 = self.box_SnapAndBind_1
  l0.Parent = self.Car
  l0.Child = self.StimEmitor
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|448304959", "448304959", "S09M040a_CarVSForklift", "In", "box_SnapAndBind_1.Attach", self, l0)
  l0:Attach()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Timer_v2_6
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1334862505", "1334862505", "S09M040a_CarVSForklift", "box_Timer_v2_6.TimeElapsed", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Stim_Emitter_Controller_5()
  l0 = self.box_OnceOnly_v3_4
  l1 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1069645232", "1069645232", "S09M040a_CarVSForklift", "box_OnceOnly_v3_4.Out", "box_Stim_Emitter_Controller_5.SetEnabled", l0, l1)
  l1:SetEnabled()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_2()
  l0 = self.box_MultipleOR_7
  l1 = self.box_VehicleMonitor_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|999611326", "999611326", "S09M040a_CarVSForklift", "box_MultipleOR_7.Out", "box_VehicleMonitor_v3_2.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_3
  l0.Seconds = 3
  l0 = self.box_VehicleMonitor_v3_2
  l1 = self.box_Timer_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1467272006", "1467272006", "S09M040a_CarVSForklift", "box_VehicleMonitor_v3_2.Disabled", "box_Timer_v2_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_2_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1390394539"
  l0.Out = self.f_box_Simple_Node_10_Out
  l0 = self.box_VehicleMonitor_v3_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|784807313", "784807313", "S09M040a_CarVSForklift", "box_VehicleMonitor_v3_2.Enabled", "box_Simple_Node_10.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_2_IsUnderwater()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_2
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1194232184", "1194232184", "S09M040a_CarVSForklift", "box_VehicleMonitor_v3_2.IsUnderwater", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_VehicleMonitor_v3_2_VehicleJump()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1744941189"
  l0.Out = self.f_box_Simple_Node_9_Out
  l0 = self.box_VehicleMonitor_v3_2
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|118794137", "118794137", "S09M040a_CarVSForklift", "box_VehicleMonitor_v3_2.VehicleJump", "box_Simple_Node_9.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|491171564", "491171564", "S09M040a_CarVSForklift", "box_Simple_Node_10.Out", "box_OnceOnly_v3_4.Reset", clone, l0)
  l0:Reset()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsUnderwater = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsUnderwater = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsUnderwater = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsUnderwater = l0.Target
  self:OnEnter_box_OnceOnly_v3_4()
  l1 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|240398251", "240398251", "S09M040a_CarVSForklift", "box_SetBoolean_v2_8.SetTrue", "box_OnceOnly_v3_4.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.IsUnderwater = l0.Target
end
function export:f_box_SnapAndBind_1_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_SnapAndBind_1
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|68961516", "68961516", "S09M040a_CarVSForklift", "box_SnapAndBind_1.Attached", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_4()
  l0 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|110644951", "110644951", "S09M040a_CarVSForklift", "box_Simple_Node_9.Out", "box_OnceOnly_v3_4.In", clone, l0)
  l0:In(1)
end
function export:f_box_Stim_Emitter_Controller_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsUnderwater
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1992589318"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1094424596", "1094424596", "S09M040a_CarVSForklift", "box_Stim_Emitter_Controller_5.Disabled", "box_Compare_Boolean_v2_11.In", clone, l0)
  l0:In()
end
function export:f_box_Stim_Emitter_Controller_5_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_2()
  l0 = self.box_VehicleMonitor_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1773970994", "1773970994", "S09M040a_CarVSForklift", "box_Stim_Emitter_Controller_5.Enabled", "box_VehicleMonitor_v3_2.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_3_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Stim_Emitter_Controller_5()
  l0 = self.box_Timer_v2_3
  l1 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|988202947", "988202947", "S09M040a_CarVSForklift", "box_Timer_v2_3.TimeElapsed", "box_Stim_Emitter_Controller_5.SetDisabled", l0, l1)
  l1:SetDisabled()
end
function export:f_box_Compare_Boolean_v2_11_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_6
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|2022802293", "2022802293", "S09M040a_CarVSForklift", "box_Compare_Boolean_v2_11.A_is_False", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_4()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_VehicleMonitor_v3_2()
  local l0
  l0 = self.box_VehicleMonitor_v3_2
  l0.Vehicle = self.Car
end
function export:OnEnter_box_Stim_Emitter_Controller_5()
  local l0
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = self.StimEmitor
  l0._graph = self
  l0._name = "box_Stim_Emitter_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M040a\\S09M040a.domino|@S09M040a_CarVSForklift|1947595408"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_Stim_Emitter_Controller_5_Enabled
  l0.Disabled = self.f_box_Stim_Emitter_Controller_5_Disabled
end
_compilerVersion = 4
