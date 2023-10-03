export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "TimedTextToScreen"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen"
  self.TimeElapsed = DummyFunction
  self.Started = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|66662741"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|140865304"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|943331085"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1166196264"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1516936307"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_2_PostOut
  self.box_CinematicPrep_4 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1548044797"
  l0.PreOut = self.f_box_CinematicPrep_4_PreOut
  l0.PostOut = DummyFunction
  self.box_InputListener_Monitor_12 = cbox:CreateBox("Domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_12
  l0._graph = self
  l0._name = "box_InputListener_Monitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1576199715"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_box_InputListener_Monitor_12_InputReceived
  self.box_Timer_v2_8 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1858987596"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_8_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
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
  l0.A = self.FadeToBlack
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|832918817"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_3_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_3_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|350597196", "350597196", "TimedTextToScreen", "Start", "box_Compare_Boolean_v2_3.In", self, l0)
  l0:In()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InputListener_Monitor_12()
  l0 = self.box_MultipleOR_19
  l1 = self.box_InputListener_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1261995507", "1261995507", "TimedTextToScreen", "box_MultipleOR_19.Out", "box_InputListener_Monitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TextToScreen_v2_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_8()
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1255429982", "1255429982", "TimedTextToScreen", "box_TextToScreen_v2_7.Out", "box_Timer_v2_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = self.Text
  l0.Duration = self.Seconds
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|136692666"
  l0.Out = self.f_box_TextToScreen_v2_7_Out
  l0 = self.box_MultipleOR_6
  l1 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|213597357", "213597357", "TimedTextToScreen", "box_MultipleOR_6.Out", "box_TextToScreen_v2_7.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|752985414", "752985414", "TimedTextToScreen", "box_Ordered_Output_14.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1752880445"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_16_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1429555448", "1429555448", "TimedTextToScreen", "box_Ordered_Output_14.Out", "box_SetActionMap_v2_16.Push", clone, l0)
  l0:Push()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|626288430", "626288430", "TimedTextToScreen", "box_Ordered_Output_17.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_8()
  l0 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1973822164", "1973822164", "TimedTextToScreen", "box_Ordered_Output_17.Out", "box_Timer_v2_8.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_17_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|468636571", "468636571", "TimedTextToScreen", "box_Ordered_Output_17.Out", "box_OnceOnly_v3_13.In", clone, l0)
  l0:In(0)
end
function export:f_box_Show_Or_Hide_All_UI_10_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|603694440", "603694440", "TimedTextToScreen", "box_Show_Or_Hide_All_UI_10.Hidden", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_3_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|71805217", "71805217", "TimedTextToScreen", "box_Compare_Boolean_v2_3.A_is_False", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_3_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|556105167", "556105167", "TimedTextToScreen", "box_Compare_Boolean_v2_3.A_is_True", "box_CinematicPrep_4.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_MultipleOR_1_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|318595732", "318595732", "TimedTextToScreen", "box_MultipleOR_1.Out", "TimeElapsed", l0, self)
  self:TimeElapsed()
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1873628320"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_9_Popped
  l0 = self.box_OnceOnly_v3_13
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1419758094", "1419758094", "TimedTextToScreen", "box_OnceOnly_v3_13.Out", "box_SetActionMap_v2_9.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_CinematicPrep_2_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1581708668"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_11_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_2
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|816874984", "816874984", "TimedTextToScreen", "box_CinematicPrep_2.PostOut", "box_Show_Or_Hide_All_UI_11.Show", l0, l1)
  l1:Show()
end
function export:f_box_CinematicPrep_4_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|758429824"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_10_Hidden
  l0 = self.box_CinematicPrep_4
  l1 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|418856030", "418856030", "TimedTextToScreen", "box_CinematicPrep_4.PreOut", "box_Show_Or_Hide_All_UI_10.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_InputListener_Monitor_12_InputReceived()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|415284766"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_17_Out_2
  l0 = self.box_InputListener_Monitor_12
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|777439704", "777439704", "TimedTextToScreen", "box_InputListener_Monitor_12.InputReceived", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_11_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|820120916", "820120916", "TimedTextToScreen", "box_Show_Or_Hide_All_UI_11.Shown", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1637433928", "1637433928", "TimedTextToScreen", "box_Ordered_Output_18.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_13()
  l0 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1655195352", "1655195352", "TimedTextToScreen", "box_Ordered_Output_18.Out", "box_OnceOnly_v3_13.In", clone, l0)
  l0:In(1)
end
function export:f_box_SetActionMap_v2_16_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InputListener_Monitor_12()
  l0 = self.box_InputListener_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1007274227", "1007274227", "TimedTextToScreen", "box_SetActionMap_v2_16.Pushed", "box_InputListener_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_8_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|333829377"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_Timer_v2_8
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|748161874", "748161874", "TimedTextToScreen", "box_Timer_v2_8.Started", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1636970575"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_Timer_v2_8
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1487302934", "1487302934", "TimedTextToScreen", "box_Timer_v2_8.TimeElapsed", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_9_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FadeFromBlack
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|2042269873"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_5_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1565530888", "1565530888", "TimedTextToScreen", "box_SetActionMap_v2_9.Popped", "box_Compare_Boolean_v2_5.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_5_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|1267183426", "1267183426", "TimedTextToScreen", "box_Compare_Boolean_v2_5.A_is_False", "box_MultipleOR_1.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_5_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\TimedTextToScreen.domino|@TimedTextToScreen|715416168", "715416168", "TimedTextToScreen", "box_Compare_Boolean_v2_5.A_is_True", "box_CinematicPrep_2.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_OnceOnly_v3_13()
end
function export:OnEnter_box_InputListener_Monitor_12()
  local l0
  l0 = self.box_InputListener_Monitor_12
  l0.Input = "Domino_B_Press"
end
function export:OnEnter_box_Timer_v2_8()
  local l0
  l0 = self.box_Timer_v2_8
  l0.Seconds = self.Seconds
end
function export:TimeElapsed()
end
function export:Started()
end
_compilerVersion = 4
