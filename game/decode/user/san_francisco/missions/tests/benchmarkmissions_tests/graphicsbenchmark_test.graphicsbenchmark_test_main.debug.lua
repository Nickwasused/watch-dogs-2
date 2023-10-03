export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BenchmarkController.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "GraphicsBenchmark_Test_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main"
  self.PlayerEntity = nil
  self.savedHour = 0
  self.savedMin = 0
  self.vehicle_police_a = nil
  self.vehicle_police_b = nil
  self.vehicle_police_c = nil
  self.vehicle_police_d = nil
  self.RainEnabled = 0
  self.SequenceFinished = 1
  self.box_Timer_v2_47 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_47
  l0._graph = self
  l0._name = "box_Timer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|6739836"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_20 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_20
  l0._graph = self
  l0._name = "box_SetBoolean_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|147052562"
  l0.Out = self.f_box_SetBoolean_v2_20_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_20_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_20_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_20_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_20_SetFromBool
  self.box_CLOController_33 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_33
  l0._graph = self
  l0._name = "box_CLOController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|158252998"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_33_OnUserInPlace
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_53 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|262833596"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_CLOController_37 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_37
  l0._graph = self
  l0._name = "box_CLOController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|284649303"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_37_OnUserInPlace
  self.box_InputListener_Monitor_15 = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_15
  l0._graph = self
  l0._name = "box_InputListener_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|468600227"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InputListener_Monitor_15_Disabled
  l0.InputReceived = DummyFunction
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|870022373"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_44_OnUserInPlace
  self.box_Timer_v2_29 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_29
  l0._graph = self
  l0._name = "box_Timer_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|894744534"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_29_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySequence_v5_6 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_6
  l0._graph = self
  l0._name = "box_PlaySequence_v5_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|943128542"
  l0._DynamicAnchors = {
    EntityIn = {
      "Police1_",
      "Police2_",
      "Police3_",
      "Police4_"
    }
  }
  l0.Started = self.f_box_PlaySequence_v5_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_6_Finished
  self.box_BenchmarkController_21 = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self.box_BenchmarkController_21
  l0._graph = self
  l0._name = "box_BenchmarkController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1232270479"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.VarsSet = self.f_box_BenchmarkController_21_VarsSet
  self.box_Timer_v2_30 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_30
  l0._graph = self
  l0._name = "box_Timer_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1451069925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionController_v4_10 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_10
  l0._graph = self
  l0._name = "box_MissionController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1607496603"
  self.box_BenchmarkController_17 = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self.box_BenchmarkController_17
  l0._graph = self
  l0._name = "box_BenchmarkController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1614154756"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_BenchmarkController_17_Stopped
  l0.VarsSet = DummyFunction
  self.box_SetBoolean_v2_51 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_51
  l0._graph = self
  l0._name = "box_SetBoolean_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1676419566"
  l0.Out = self.f_box_SetBoolean_v2_51_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_51_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_51_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_51_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_51_SetFromBool
  self.box_SetBoolean_v2_5 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_5
  l0._graph = self
  l0._name = "box_SetBoolean_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1703124923"
  l0.Out = self.f_box_SetBoolean_v2_5_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_5_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_5_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_5_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_5_SetFromBool
  self.box_BenchmarkController_8 = cbox:CreateBox("domino/System/BenchmarkController.lua")
  l0 = self.box_BenchmarkController_8
  l0._graph = self
  l0._name = "box_BenchmarkController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1725018438"
  l0.Out = DummyFunction
  l0.Started = self.f_box_BenchmarkController_8_Started
  l0.Stopped = DummyFunction
  l0.VarsSet = DummyFunction
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1729172975"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_41 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_41
  l0._graph = self
  l0._name = "box_CLOController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2094341150"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_41_OnUserInPlace
  self.box_Teleport_Entity_28 = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self.box_Teleport_Entity_28
  l0._graph = self
  l0._name = "box_Teleport_Entity_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2124852432"
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_Entity_28_TeleportDone
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2129092423"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_9_Unloaded
  l0.Reseted = DummyFunction
  self.box_InputListener_Monitor_14 = cbox:CreateBox("domino/System/InputListenerMonitor.lua")
  l0 = self.box_InputListener_Monitor_14
  l0._graph = self
  l0._name = "box_InputListener_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2141751630"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_box_InputListener_Monitor_14_InputReceived
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
  l0.LayerName = "BechmarkMission_Tests_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|275907788", "275907788", "GraphicsBenchmark_Test_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1540510077"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1664751963", "1664751963", "GraphicsBenchmark_Test_Main", "Stop", "box_Ordered_Output_7.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_47_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048779330284"
  l0.FadeIn = 13
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1506564811"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = self.f_box_EnvironmentWeatherOverride_49_Out
  l0 = self.box_Timer_v2_47
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|811920640", "811920640", "GraphicsBenchmark_Test_Main", "box_Timer_v2_47.TimeElapsed", "box_EnvironmentWeatherOverride_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  l0._graph = self
  l0._name = "box_GetTimeOfDay_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|112136641"
  l0.Out = self.f_box_GetTimeOfDay_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|804691181", "804691181", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_12.Out", "box_GetTimeOfDay_19.GetTimeOfDay", clone, l0)
  l0:GetTimeOfDay()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1614274212"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_42_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_42_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|243921122", "243921122", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_12.Out", "box_Ordered_Output_42.In", clone, l0)
  l0:In()
end
function export:f_box_GetTimeOfDay_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  self.savedHour = l0.Hour
  self.savedMin = l0.Minute
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1864350763"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_3_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1537428842", "1537428842", "GraphicsBenchmark_Test_Main", "box_GetTimeOfDay_19.Out", "box_Show_Or_Hide_All_UI_3.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetBoolean_v2_20_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_20
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_20_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_20
  self.SequenceFinished = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|360751960"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0 = self.box_SetBoolean_v2_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|862151018", "862151018", "GraphicsBenchmark_Test_Main", "box_SetBoolean_v2_20.SetFalse", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_20_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_20
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_20_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_20
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_20_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_20
  self.SequenceFinished = l0.Target
end
function export:f_box_CLOController_33_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_33
  self.vehicle_police_a = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_a
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1141175429"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_33
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2067329809", "2067329809", "GraphicsBenchmark_Test_Main", "box_CLOController_33.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_22.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|369729106", "369729106", "GraphicsBenchmark_Test_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048687437075"
  l0.FadeIn = nil
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1747238593"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_53
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1159715488", "1159715488", "GraphicsBenchmark_Test_Main", "box_MultipleOR_53.Out", "box_EnvironmentWeatherOverride_52.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_37_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_37
  self.vehicle_police_c = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_c
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|130719257"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_37
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|296723864", "296723864", "GraphicsBenchmark_Test_Main", "box_CLOController_37.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_24.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_29
  l0.Seconds = 45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2037105331", "2037105331", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_29.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_47
  l0.Seconds = 35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1320548104", "1320548104", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_48.Out", "box_Timer_v2_47.Start", clone, l0)
  l0:Start()
end
function export:f_box_InputListener_Monitor_15_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "BechmarkMission_Tests_Main"
  l0 = self.box_InputListener_Monitor_15
  l1 = self.box_MissionLayer_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|566105684", "566105684", "GraphicsBenchmark_Test_Main", "box_InputListener_Monitor_15.Disabled", "box_MissionLayer_v2_9.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_EnvironmentWeatherOverride_35_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|451731979", "451731979", "GraphicsBenchmark_Test_Main", "box_EnvironmentWeatherOverride_35.Stopped", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Show_Or_Hide_All_UI_13_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = self.savedHour
  l0.Minute = self.savedMin
  l0._graph = self
  l0._name = "box_SetTimeOfDay_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1753540509"
  l0.Out = self.f_box_SetTimeOfDay_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1294287618", "1294287618", "GraphicsBenchmark_Test_Main", "box_Show_Or_Hide_All_UI_13.Shown", "box_SetTimeOfDay_26.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_EnvironmentWeatherOverride_36_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 13
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2135746523"
  l0.Out = self.f_box_SetTimeOfDay_18_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1770156102", "1770156102", "GraphicsBenchmark_Test_Main", "box_EnvironmentWeatherOverride_36.Started", "box_SetTimeOfDay_18.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
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
  l0 = self.box_Teleport_Entity_28
  l0.Entity = self.PlayerEntity
  l0.Destination = "9223372049314208291"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2066995542", "2066995542", "GraphicsBenchmark_Test_Main", "box_Get_Player_ID_1.Out", "box_Teleport_Entity_28.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  self.vehicle_police_d = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_d
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1443131615"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_44
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1423123958", "1423123958", "GraphicsBenchmark_Test_Main", "box_CLOController_44.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_25.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Compare_Boolean_v2_56_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|437016906", "437016906", "GraphicsBenchmark_Test_Main", "box_Compare_Boolean_v2_56.A_is_False", "box_MultipleOR_53.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_56_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048779330284"
  l0.FadeIn = nil
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|555815677"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_EnvironmentWeatherOverride_35_Stopped
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1658567846", "1658567846", "GraphicsBenchmark_Test_Main", "box_Compare_Boolean_v2_56.A_is_True", "box_EnvironmentWeatherOverride_35.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_29_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = 1000
  l0._graph = self
  l0._name = "box_TimeScale_Controller_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1148335047"
  l0.WasSet = self.f_box_TimeScale_Controller_40_WasSet
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_29
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1668442411", "1668442411", "GraphicsBenchmark_Test_Main", "box_Timer_v2_29.TimeElapsed", "box_TimeScale_Controller_40.Set", l0, l1)
  l1:Set()
end
function export:f_box_PlaySequence_v5_6_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_SetBoolean_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|124497896", "124497896", "GraphicsBenchmark_Test_Main", "box_PlaySequence_v5_6.Finished", "box_SetBoolean_v2_5.True", l0, l1)
  l1:True()
end
function export:f_box_PlaySequence_v5_6_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_6
  l1 = self.box_SetBoolean_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1739042941", "1739042941", "GraphicsBenchmark_Test_Main", "box_PlaySequence_v5_6.Started", "box_SetBoolean_v2_20.False", l0, l1)
  l1:False()
end
function export:f_box_TimeScale_Controller_46_WasSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RainEnabled
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|880293120"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_56_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_56_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1616539345", "1616539345", "GraphicsBenchmark_Test_Main", "box_TimeScale_Controller_46.WasSet", "box_Compare_Boolean_v2_56.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_40_WasSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_30
  l0.Seconds = 35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1269430451", "1269430451", "GraphicsBenchmark_Test_Main", "box_TimeScale_Controller_40.WasSet", "box_Timer_v2_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_BenchmarkController_21_VarsSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|666380139"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_13_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_BenchmarkController_21
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1355094196", "1355094196", "GraphicsBenchmark_Test_Main", "box_BenchmarkController_21.VarsSet", "box_Show_Or_Hide_All_UI_13.Show", l0, l1)
  l1:Show()
end
function export:f_box_Compare_Boolean_v2_16_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_6()
  l0 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1292374536", "1292374536", "GraphicsBenchmark_Test_Main", "box_Compare_Boolean_v2_16.A_is_False", "box_PlaySequence_v5_6.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_30_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1141807577"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_30
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|988736893", "988736893", "GraphicsBenchmark_Test_Main", "box_Timer_v2_30.TimeElapsed", "box_TimeScale_Controller_39.Set", l0, l1)
  l1:Set()
end
function export:f_box_EnvironmentWeatherOverride_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1726905000", "1726905000", "GraphicsBenchmark_Test_Main", "box_EnvironmentWeatherOverride_49.Out", "box_SetBoolean_v2_51.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SequenceFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1284492613"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_16_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1678142839", "1678142839", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_7.Out", "box_Compare_Boolean_v2_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_BenchmarkController_21
  l0.DisplayResults = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1276029050", "1276029050", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_7.Out", "box_BenchmarkController_21.SetVars", clone, l0)
  l0:SetVars()
end
function export:f_box_BenchmarkController_17_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_InputListener_Monitor_14
  l0.Player = self.PlayerEntity
  l0.Input = "cover_press"
  l0 = self.box_BenchmarkController_17
  l1 = self.box_InputListener_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1565125797", "1565125797", "GraphicsBenchmark_Test_Main", "box_BenchmarkController_17.Stopped", "box_InputListener_Monitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_33
  l0.CLO = "9223372049643425445"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1323395930", "1323395930", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_42.Out", "box_CLOController_33.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_41
  l0.CLO = "9223372049643271836"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|621660826", "621660826", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_42.Out", "box_CLOController_41.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_42_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_37
  l0.CLO = "9223372049757213035"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|335116010", "335116010", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_42.Out", "box_CLOController_37.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_42_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_44
  l0.CLO = "9223372049757213036"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|893974201", "893974201", "GraphicsBenchmark_Test_Main", "box_Ordered_Output_42.Out", "box_CLOController_44.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetBoolean_v2_51_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.RainEnabled = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.RainEnabled = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.RainEnabled = l0.Target
end
function export:f_box_SetBoolean_v2_51_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.RainEnabled = l0.Target
end
function export:f_box_SetBoolean_v2_51_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_51
  self.RainEnabled = l0.Target
end
function export:f_box_SetBoolean_v2_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.SequenceFinished = l0.Target
  l0 = self.box_BenchmarkController_17
  l0.DisplayResults = 1
  l0 = self.box_SetBoolean_v2_5
  l1 = self.box_BenchmarkController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1004297315", "1004297315", "GraphicsBenchmark_Test_Main", "box_SetBoolean_v2_5.Out", "box_BenchmarkController_17.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_5_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_5_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.SequenceFinished = l0.Target
end
function export:f_box_SetBoolean_v2_5_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_5
  self.SequenceFinished = l0.Target
end
function export:f_box_BenchmarkController_8_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_6()
  l0 = self.box_BenchmarkController_8
  l1 = self.box_PlaySequence_v5_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|668509201", "668509201", "GraphicsBenchmark_Test_Main", "box_BenchmarkController_8.Started", "box_PlaySequence_v5_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l1 = self.box_BenchmarkController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1844924746", "1844924746", "GraphicsBenchmark_Test_Main", "box_Timer_v2_27.TimeElapsed", "box_BenchmarkController_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetTimeOfDay_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1134181079"
  l0.WasSet = self.f_box_TimeScale_Controller_46_WasSet
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|403821578", "403821578", "GraphicsBenchmark_Test_Main", "box_SetTimeOfDay_26.Out", "box_TimeScale_Controller_46.Set", clone, l0)
  l0:Set()
end
function export:f_box_Show_Or_Hide_All_UI_3_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372048687437075"
  l0.FadeIn = 0
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|716963025"
  l0.Started = self.f_box_EnvironmentWeatherOverride_36_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2140733861", "2140733861", "GraphicsBenchmark_Test_Main", "box_Show_Or_Hide_All_UI_3.Hidden", "box_EnvironmentWeatherOverride_36.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_41_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_41
  self.vehicle_police_b = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.vehicle_police_b
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = nil
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|600741999"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_41
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1678654010", "1678654010", "GraphicsBenchmark_Test_Main", "box_CLOController_41.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_23.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Teleport_Entity_28_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|34163253"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_Teleport_Entity_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1498919113", "1498919113", "GraphicsBenchmark_Test_Main", "box_Teleport_Entity_28.TeleportDone", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_9_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_9
  l1 = self.box_MissionController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|2104717446", "2104717446", "GraphicsBenchmark_Test_Main", "box_MissionLayer_v2_9.Unloaded", "box_MissionController_v4_10.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_SetTimeOfDay_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_27
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1463223001", "1463223001", "GraphicsBenchmark_Test_Main", "box_SetTimeOfDay_18.Out", "box_Timer_v2_27.Start", clone, l0)
  l0:Start()
end
function export:f_box_InputListener_Monitor_14_InputReceived()
  local l0, l1
  self = self._graph
  l0 = self.box_InputListener_Monitor_15
  l0.Player = self.PlayerEntity
  l0 = self.box_InputListener_Monitor_14
  l1 = self.box_InputListener_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\BenchmarkMissions_Tests\\GraphicsBenchmark_Test.domino|@GraphicsBenchmark_Test_Main|1569475339", "1569475339", "GraphicsBenchmark_Test_Main", "box_InputListener_Monitor_14.InputReceived", "box_InputListener_Monitor_15.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_PlaySequence_v5_6()
  local l0
  l0 = self.box_PlaySequence_v5_6
  l0.SceneEntity = "9223372049314208293"
  l0.SequenceFile = "sequences/test_benchmark_gfx_03.seq"
  l0.EntityIn.Police1_ = self.vehicle_police_a
  l0.EntityIn.Police2_ = self.vehicle_police_b
  l0.EntityIn.Police3_ = self.vehicle_police_c
  l0.EntityIn.Police4_ = self.vehicle_police_d
end
_compilerVersion = 4
