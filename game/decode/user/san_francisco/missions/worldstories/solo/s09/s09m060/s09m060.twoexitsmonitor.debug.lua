export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "TwoExitsMonitor"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor"
  self.FirstDoorExit = DummyFunction
  self.SecondDoorExit = DummyFunction
  self.NoExit = DummyFunction
  self.ExitChanged = DummyFunction
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self.FirstMovableState = 0
  self.SecondMovableState = 0
  self.TempInteger = 0
  self.box_Moveable_Entity_Monitor_5 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_5
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|82501136"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_5_Enabled
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_5_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_5_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_5_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_Moveable_Entity_Monitor_10 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_10
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|181109667"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_10_Enabled
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_10_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_box_Moveable_Entity_Monitor_10_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_box_Moveable_Entity_Monitor_10_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1131976625"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_SetBoolean_v2_4 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_4
  l0._graph = self
  l0._name = "box_SetBoolean_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1460055271"
  l0.Out = self.f_box_SetBoolean_v2_4_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_4_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_4_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_4_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_4_SetFromBool
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1604160599"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_SetBoolean_v2_8 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1732659556"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_SetBoolean_v2_7 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_7
  l0._graph = self
  l0._name = "box_SetBoolean_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1772286859"
  l0.Out = self.f_box_SetBoolean_v2_7_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_7_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_7_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_7_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_7_SetFromBool
  self.box_SetBoolean_v2_6 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_6
  l0._graph = self
  l0._name = "box_SetBoolean_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|2126833509"
  l0.Out = self.f_box_SetBoolean_v2_6_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_6_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_6_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_6_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_6_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = self.CurrentExitNo
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1373098616"
  l0.Out = self.f_box_SetInteger_v2_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|2139784754", "2139784754", "TwoExitsMonitor", "Disable", "box_SetInteger_v2_14.FromInteger", self, l0)
  l0:FromInteger()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = self.CurrentExitNo
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|2066426967"
  l0.Out = self.f_box_SetInteger_v2_15_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1678617645", "1678617645", "TwoExitsMonitor", "Enable", "box_SetInteger_v2_15.FromInteger", self, l0)
  l0:FromInteger()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|850420879", "850420879", "TwoExitsMonitor", "box_Ordered_Output_3.Out", "FirstDoorExit", clone, self)
  self:FirstDoorExit()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|484599859", "484599859", "TwoExitsMonitor", "box_Ordered_Output_3.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Moveable_Entity_Monitor_5_Disabled()
  local l0
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1988002572", "1988002572", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_5.Disabled", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_Moveable_Entity_Monitor_5_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1323254538", "1323254538", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_5.Enabled", "Enabled", l0, self)
  self:Enabled()
end
function export:f_box_Moveable_Entity_Monitor_5_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_5
  l1 = self.box_SetBoolean_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1663806358", "1663806358", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_5.OnBkwMovementFinished", "box_SetBoolean_v2_7.False", l0, l1)
  l1:False()
end
function export:f_box_Moveable_Entity_Monitor_5_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_5
  l1 = self.box_SetBoolean_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|97511954", "97511954", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_5.OnFwdMovementFinished", "box_SetBoolean_v2_4.True", l0, l1)
  l1:True()
end
function export:f_box_Moveable_Entity_Monitor_10_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_5()
  l0 = self.box_Moveable_Entity_Monitor_10
  l1 = self.box_Moveable_Entity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1574088225", "1574088225", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_10.Disabled", "box_Moveable_Entity_Monitor_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Moveable_Entity_Monitor_10_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_5()
  l0 = self.box_Moveable_Entity_Monitor_10
  l1 = self.box_Moveable_Entity_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1550391210", "1550391210", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_10.Enabled", "box_Moveable_Entity_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Moveable_Entity_Monitor_10_OnBkwMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_10
  l1 = self.box_SetBoolean_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|570537534", "570537534", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_10.OnBkwMovementFinished", "box_SetBoolean_v2_6.False", l0, l1)
  l1:False()
end
function export:f_box_Moveable_Entity_Monitor_10_OnFwdMovementFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_10
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1092359080", "1092359080", "TwoExitsMonitor", "box_Moveable_Entity_Monitor_10.OnFwdMovementFinished", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_SetInteger_v2_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|967841556"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|589703082", "589703082", "TwoExitsMonitor", "box_SetInteger_v2_16.Out", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_1_A_xor_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|746480433"
  l0.Out = self.f_box_SetInteger_v2_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|623550803", "623550803", "TwoExitsMonitor", "box_Compare_Boolean_v2_1.A_xor_B", "box_SetInteger_v2_16.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1738369484", "1738369484", "TwoExitsMonitor", "box_Ordered_Output_2.Out", "SecondDoorExit", clone, self)
  self:SecondDoorExit()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1579512967", "1579512967", "TwoExitsMonitor", "box_Ordered_Output_2.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_12_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1055778179", "1055778179", "TwoExitsMonitor", "box_MultipleOR_12.Out", "ExitChanged", l0, self)
  self:ExitChanged()
end
function export:f_box_SetInteger_v2_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1498336015"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|31473719", "31473719", "TwoExitsMonitor", "box_SetInteger_v2_18.Out", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_SetInteger_v2_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_10()
  l0 = self.box_Moveable_Entity_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|963224402", "963224402", "TwoExitsMonitor", "box_SetInteger_v2_14.Out", "box_Moveable_Entity_Monitor_10.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetBoolean_v2_4_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_4_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.SecondMovableState = l0.Target
  self:OnEnter_box_MultipleOR_11()
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1982620281", "1982620281", "TwoExitsMonitor", "box_SetBoolean_v2_4.SetTrue", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_4_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_4
  self.SecondMovableState = l0.Target
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|121380296", "121380296", "TwoExitsMonitor", "box_Ordered_Output_13.Out", "NoExit", clone, self)
  self:NoExit()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|966516040", "966516040", "TwoExitsMonitor", "box_Ordered_Output_13.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_SetInteger_v2_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|79892951"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1458759275", "1458759275", "TwoExitsMonitor", "box_SetInteger_v2_17.Out", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMovableState
  l0.B = self.SecondMovableState
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1717882790"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_9_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_9_A_is_False
  l0.A_and_B = self.f_box_Compare_Boolean_v2_9_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_11
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|104583780", "104583780", "TwoExitsMonitor", "box_MultipleOR_11.Out", "box_Compare_Boolean_v2_9.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_9_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1145361550"
  l0.Out = self.f_box_SetInteger_v2_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1477309885", "1477309885", "TwoExitsMonitor", "box_Compare_Boolean_v2_9.A_and_B", "box_SetInteger_v2_18.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Compare_Boolean_v2_9_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1559614333"
  l0.Out = self.f_box_SetInteger_v2_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1445297242", "1445297242", "TwoExitsMonitor", "box_Compare_Boolean_v2_9.A_is_False", "box_SetInteger_v2_17.FromInteger", clone, l0)
  l0:FromInteger()
end
function export:f_box_Compare_Boolean_v2_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMovableState
  l0.B = self.SecondMovableState
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|907138652"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = self.f_box_Compare_Boolean_v2_1_A_xor_B
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1295065286", "1295065286", "TwoExitsMonitor", "box_Compare_Boolean_v2_9.A_is_True", "box_Compare_Boolean_v2_1.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.FirstMovableState = l0.Target
  self:OnEnter_box_MultipleOR_11()
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1901712522", "1901712522", "TwoExitsMonitor", "box_SetBoolean_v2_8.SetTrue", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_7_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.SecondMovableState = l0.Target
  self:OnEnter_box_MultipleOR_11()
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1319465026", "1319465026", "TwoExitsMonitor", "box_SetBoolean_v2_7.SetFalse", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_SetBoolean_v2_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.SecondMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_7_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.SecondMovableState = l0.Target
end
function export:f_box_SetInteger_v2_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Moveable_Entity_Monitor_10()
  l0 = self.box_Moveable_Entity_Monitor_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|2055228084", "2055228084", "TwoExitsMonitor", "box_SetInteger_v2_15.Out", "box_Moveable_Entity_Monitor_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_6_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.FirstMovableState = l0.Target
  self:OnEnter_box_MultipleOR_11()
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@TwoExitsMonitor|1493613167", "1493613167", "TwoExitsMonitor", "box_SetBoolean_v2_6.SetFalse", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_6_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.FirstMovableState = l0.Target
end
function export:f_box_SetBoolean_v2_6_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_6
  self.FirstMovableState = l0.Target
end
function export:OnEnter_box_Moveable_Entity_Monitor_5()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_5
  l0.MoveableEntity = self.SecondDoor
  l0.CheckNow = 1
end
function export:OnEnter_box_Moveable_Entity_Monitor_10()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_10
  l0.MoveableEntity = self.FirstDoor
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:FirstDoorExit()
end
function export:SecondDoorExit()
end
function export:NoExit()
end
function export:ExitChanged()
end
function export:Disabled()
end
function export:Enabled()
end
_compilerVersion = 4
