export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_VehicleHandlingRoutes_Escape"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape"
  self.Out = DummyFunction
  self.IsEvaded = 0
  self.PlayerEntity = nil
  self.box_SetBoolean_v2_7 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_7
  l0._graph = self
  l0._name = "box_SetBoolean_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|605403287"
  l0.Out = self.f_box_SetBoolean_v2_7_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_7_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_7_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_7_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_7_SetFromBool
  self.box_FelonyTargetMonitor_3 = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self.box_FelonyTargetMonitor_3
  l0._graph = self
  l0._name = "box_FelonyTargetMonitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|630676363"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_box_FelonyTargetMonitor_3_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|970063074"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
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
  l0 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|218448300", "218448300", "Test_VehicleHandlingRoutes_Escape", "In", "box_OnceOnly_v3_5.In", self, l0)
  l0:In(0)
end
function export:f_box_SetBoolean_v2_7_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.IsEvaded = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.IsEvaded = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.IsEvaded = l0.Target
end
function export:f_box_SetBoolean_v2_7_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.IsEvaded = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Felony escaped"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|1081538685"
  l0.Out = self.f_box_TextToScreen_v2_1_Out
  l0 = self.box_SetBoolean_v2_7
  l1 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|1324701905", "1324701905", "Test_VehicleHandlingRoutes_Escape", "box_SetBoolean_v2_7.SetTrue", "box_TextToScreen_v2_1.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_7_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_7
  self.IsEvaded = l0.Target
end
function export:f_box_FelonyTargetMonitor_3_Evaded()
  local l0, l1
  self = self._graph
  l0 = self.box_FelonyTargetMonitor_3
  l1 = self.box_SetBoolean_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|423629687", "423629687", "Test_VehicleHandlingRoutes_Escape", "box_FelonyTargetMonitor_3.Evaded", "box_SetBoolean_v2_7.True", l0, l1)
  l1:True()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = 4
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|2138639674"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_2_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_OnceOnly_v3_5
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|1492565426", "1492565426", "Test_VehicleHandlingRoutes_Escape", "box_OnceOnly_v3_5.Out", "box_FelonyTargetController_2.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_TextToScreen_v2_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|986181797", "986181797", "Test_VehicleHandlingRoutes_Escape", "box_TextToScreen_v2_1.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_FelonyTargetController_2_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_FelonyTargetMonitor_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_VehicleHandlingRoutes\\Test_VehicleHandlingRoute.domino|@Test_VehicleHandlingRoutes_Escape|788316490", "788316490", "Test_VehicleHandlingRoutes_Escape", "box_FelonyTargetController_2.ChaseStarted", "box_FelonyTargetMonitor_3.Start", clone, l0)
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
