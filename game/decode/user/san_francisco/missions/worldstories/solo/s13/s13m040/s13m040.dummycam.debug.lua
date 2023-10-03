export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/TestIfNil.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DummyCam"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam"
  self.Out = DummyFunction
  self.box_HackableController_v2_11 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_11
  l0._graph = self
  l0._name = "box_HackableController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|102880547"
  l0.Enabled = self.f_box_HackableController_v2_11_Enabled
  l0.Disabled = self.f_box_HackableController_v2_11_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_6 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_6
  l0._graph = self
  l0._name = "box_Hackable_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|382056472"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_6_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_2 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_2
  l0._graph = self
  l0._name = "box_Hackable_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|564699536"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_2_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Security_Camera_Monitor_8 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_8
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|705246424"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_8_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_8_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1143356701"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1300093806"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1574480507"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_1 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_1
  l0._graph = self
  l0._name = "box_HackableController_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1654319449"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_1_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_9 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_9
  l0._graph = self
  l0._name = "box_HackableController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|2013092481"
  l0.Enabled = self.f_box_HackableController_v2_9_Enabled
  l0.Disabled = self.f_box_HackableController_v2_9_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  l0 = self.box_HackableController_v2_1
  l0.HackableEntity = self.CameraEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1428467846", "1428467846", "DummyCam", "In", "box_HackableController_v2_1.DisableHack", self, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_12()
  l0 = self.box_HackableController_v2_11
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1071442862", "1071442862", "DummyCam", "box_HackableController_v2_11.Disabled", "box_VisibilityController_v2_12.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_HackableController_v2_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_12()
  l0 = self.box_HackableController_v2_11
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|624981346", "624981346", "DummyCam", "box_HackableController_v2_11.Enabled", "box_VisibilityController_v2_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_2
  l0.HackableEntity = self.DummyHackable
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1646758533", "1646758533", "DummyCam", "box_Ordered_Output_5.Out", "box_Hackable_Monitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.DummyHackable2
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1108306809"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_4_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|673553780", "673553780", "DummyCam", "box_Ordered_Output_5.Out", "box_Test_if_Nil_4.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_5_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_8
  l0.CameraEntity = self.CameraEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|119033179", "119033179", "DummyCam", "box_Ordered_Output_5.Out", "box_Security_Camera_Monitor_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1603083509", "1603083509", "DummyCam", "box_Ordered_Output_5.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Hackable_Monitor_6_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Hackable_Monitor_6
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|296484302", "296484302", "DummyCam", "box_Hackable_Monitor_6.HackSuccess", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_10_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_11()
  l0 = self.box_HackableController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1994410340", "1994410340", "DummyCam", "box_Test_if_Nil_10.Is_not_nil", "box_HackableController_v2_11.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_VisibilityController_v2_14_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.DummyHackable2
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1669341428"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_13_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|698274445", "698274445", "DummyCam", "box_VisibilityController_v2_14.Hidden", "box_Test_if_Nil_13.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_14_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.DummyHackable2
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|391728073"
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_box_Test_if_Nil_10_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1553893569", "1553893569", "DummyCam", "box_VisibilityController_v2_14.Shown", "box_Test_if_Nil_10.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_2_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_Hackable_Monitor_2
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1309420199", "1309420199", "DummyCam", "box_Hackable_Monitor_2.HackSuccess", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Security_Camera_Monitor_8_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_26
  l0.Seconds = 0.2
  l0 = self.box_Security_Camera_Monitor_8
  l1 = self.box_Timer_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1065356438", "1065356438", "DummyCam", "box_Security_Camera_Monitor_8.OnStartAccessCamera", "box_Timer_v2_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_8_OnStartExitCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l0.Seconds = 0.2
  l0 = self.box_Security_Camera_Monitor_8
  l1 = self.box_Timer_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1557271048", "1557271048", "DummyCam", "box_Security_Camera_Monitor_8.OnStartExitCamera", "box_Timer_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_15_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|105702677"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_5_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_5_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1623855350", "1623855350", "DummyCam", "box_VisibilityController_v2_15.Hidden", "box_Ordered_Output_5.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_4_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_6
  l0.HackableEntity = self.DummyHackable2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1143302290", "1143302290", "DummyCam", "box_Test_if_Nil_4.Is_not_nil", "box_Hackable_Monitor_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_9()
  l0 = self.box_Timer_v2_26
  l1 = self.box_HackableController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1554363552", "1554363552", "DummyCam", "box_Timer_v2_26.TimeElapsed", "box_HackableController_v2_9.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_3()
  l0 = self.box_MultipleOR_7
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1908639232", "1908639232", "DummyCam", "box_MultipleOR_7.Out", "box_SecurityCamController_3.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_9()
  l0 = self.box_Timer_v2_27
  l1 = self.box_HackableController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|123587865", "123587865", "DummyCam", "box_Timer_v2_27.TimeElapsed", "box_HackableController_v2_9.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_HackableController_v2_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.CameraEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|920271003"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_15_Hidden
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_1
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1966069377", "1966069377", "DummyCam", "box_HackableController_v2_1.Disabled", "box_VisibilityController_v2_15.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Test_if_Nil_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_11()
  l0 = self.box_HackableController_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1664964728", "1664964728", "DummyCam", "box_Test_if_Nil_13.Is_not_nil", "box_HackableController_v2_11.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SecurityCamController_3_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_3()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|760391908", "760391908", "DummyCam", "box_SecurityCamController_3.InitialTargetSet", "box_SecurityCamController_3.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_HackableController_v2_9_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_14()
  l0 = self.box_HackableController_v2_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|14904644", "14904644", "DummyCam", "box_HackableController_v2_9.Disabled", "box_VisibilityController_v2_14.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_HackableController_v2_9_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VisibilityController_v2_14()
  l0 = self.box_HackableController_v2_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1589348234", "1589348234", "DummyCam", "box_HackableController_v2_9.Enabled", "box_VisibilityController_v2_14.Show", l0, l1)
  l1:Show()
end
function export:OnEnter_box_HackableController_v2_11()
  local l0
  l0 = self.box_HackableController_v2_11
  l0.HackableEntity = self.DummyHackable2
end
function export:OnEnter_box_VisibilityController_v2_14()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.DummyHackable
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|491846398"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_14_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_14_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_VisibilityController_v2_12()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.DummyHackable2
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1661653728"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_SecurityCamController_3()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.CameraEntity
  l0.CameraEntityList = nil
  l0.TargetEntity = self.LookatTarget
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\S13M040.domino|@DummyCam|1705537960"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_3_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_9()
  local l0
  l0 = self.box_HackableController_v2_9
  l0.HackableEntity = self.DummyHackable
end
function export:Out()
end
_compilerVersion = 4
