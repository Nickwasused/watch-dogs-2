export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/BiometricCarKeyActivity.BiometricCarKeyActivity_Main.debug.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerVehicleAlarm.lua")
end
function export:Init(cbox)
  local l0
  self._name = "BUC_Biometric_01_RichHouse_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main"
  self.PlayerEntity = nil
  self.OwnerLocationIcon = "9223372047218374500"
  self.MissionArea_5 = "9223372047218374504"
  self.CLO_9223372047218374498 = "9223372047218374498"
  self.CarLocationIcon = "9223372047218374497"
  self.CLO_9223372047218374495 = "9223372047218374495"
  self.LockedIngredient_Lock_2 = "9223372047097331457"
  self.vehicle = nil
  self.Car_Locked = {
    section = "",
    item = "",
    id = "4294983740"
  }
  self.Invisible_VRACtivator = "9223372047517208020"
  self.VR_InteriorCamera_ = "9223372047517203543"
  self.VR_ExitNode_EndNode = "9223372047360824169"
  self.VR_SourceNode = "9223372047360824165"
  self.VR_Switch = "9223372047360824167"
  self.VR_ExitNode = "9223372047360824169"
  self.VrProfilingPath_388 = "9223372047360824173"
  self.VrProfilingPath_389 = "9223372047360824264"
  self.box_BiometricCarKeyActivity_Main_1 = cbox:CreateBox("domino/Library/singleplayer/BiometricCarKeyActivity.BiometricCarKeyActivity_Main.debug.lua")
  l0 = self.box_BiometricCarKeyActivity_Main_1
  l0._graph = self
  l0._name = "box_BiometricCarKeyActivity_Main_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1127483372"
  l0.LayerLoaded = DummyFunction
  l0.Started = self.f_box_BiometricCarKeyActivity_Main_1_Started
  l0.OwnerSpawned = DummyFunction
  l0.OwnerProfiled = DummyFunction
  l0.OwnerHacked = DummyFunction
  l0.VehicleSpawned = self.f_box_BiometricCarKeyActivity_Main_1_VehicleSpawned
  l0.VehiclePickedUp = self.f_box_BiometricCarKeyActivity_Main_1_VehiclePickedUp
  l0.MissionSuccess = DummyFunction
  l0.MissionFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1535858315"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_15_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Network_Surfing_Controller_4 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_4
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1913013474"
  l0.Activated = self.f_box_Network_Surfing_Controller_4_Activated
  l0.Deactivated = DummyFunction
  self.box_Network_Surfing_Controller_23 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_23
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1969696205"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  self.box_TimerToScreen_2 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_2
  l0._graph = self
  l0._name = "box_TimerToScreen_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|2015092071"
  l0.Started = self.f_box_TimerToScreen_2_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_2_TimeElapsed
  self.box_Hackable_Controller_6 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_6
  l0._graph = self
  l0._name = "box_Hackable_Controller_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|2032549607"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_Hackable_Controller_6_HackForced
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
  l0 = self.box_BiometricCarKeyActivity_Main_1
  l0.Mission = "MissionList.9223372047218374505"
  l0.MissionLayer = "BiometricCar_01_Main"
  l0.MissionArea = self.MissionArea_5
  l0.VehicleCLO = self.CLO_9223372047218374495
  l0.VehicleIcon = self.CarLocationIcon
  l0.VehicleLockIcon = "9223372047218376175"
  l0.VehicleProfileLocked = {
    section = "",
    item = "",
    id = "4294984286"
  }
  l0.VehicleProfileUnLocked = {
    section = "",
    item = "",
    id = "4294984287"
  }
  l0.OwnerCLO = self.CLO_9223372047218374498
  l0.OwnerIcon = self.OwnerLocationIcon
  l0.OwnerProfile = {
    section = "",
    item = "",
    id = "4294983736"
  }
  l0.DropOffIcon = "9223372047218374502"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|323567710", "323567710", "BUC_Biometric_01_RichHouse_Main", "In", "box_BiometricCarKeyActivity_Main_1.Start", self, l0)
  l0:Start()
end
function export:f_box_Bind_v2_5_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_Switch
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1365684590"
  l0.Bound = self.f_box_Bind_v2_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1704136766", "1704136766", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_5.Bound", "box_Bind_v2_9.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Bind_v2_13_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_InteriorCamera_
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|339510127"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1889468214", "1889468214", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_13.Bound", "box_Bind_v2_21.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|965658750", "965658750", "BUC_Biometric_01_RichHouse_Main", "box_Ordered_Output_18.Out", "box_Hackable_Monitor_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_2()
  l0 = self.box_TimerToScreen_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|2010261216", "2010261216", "BUC_Biometric_01_RichHouse_Main", "box_Ordered_Output_18.Out", "box_TimerToScreen_2.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_SourceNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1913183772"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_19_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|484476400", "484476400", "BUC_Biometric_01_RichHouse_Main", "box_Ordered_Output_18.Out", "box_Bind_v2_19.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Bind_v2_16_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_InteriorCamera_
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1707482244"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1001252346", "1001252346", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_16.UnBound", "box_Bind_v2_22.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Bind_v2_8_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_389
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|971427382"
  l0.Bound = self.f_box_Bind_v2_12_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1845935536", "1845935536", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_8.Bound", "box_Bind_v2_12.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_TriggerVehicleAlarm_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerVehicleAlarm.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = self.PlayerEntity
  l0.FelonyType = nil
  l0.HeatValue = 1
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372048779320402"
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|541694790"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|141325217", "141325217", "BUC_Biometric_01_RichHouse_Main", "box_TriggerVehicleAlarm_11.Out", "box_FelonyTargetController_10.StartChase", clone, l0)
  l0:StartChase()
end
function export:f_box_Bind_v2_14_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_388
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|633686109"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_16_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|598722318", "598722318", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_14.UnBound", "box_Bind_v2_16.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Bind_v2_12_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_388
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|104751576"
  l0.Bound = self.f_box_Bind_v2_13_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1683902330", "1683902330", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_12.Bound", "box_Bind_v2_13.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_BiometricCarKeyActivity_Main_1_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_SourceNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|100064302"
  l0.Bound = self.f_box_Bind_v2_5_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_BiometricCarKeyActivity_Main_1
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|791533714", "791533714", "BUC_Biometric_01_RichHouse_Main", "box_BiometricCarKeyActivity_Main_1.Started", "box_Bind_v2_5.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_BiometricCarKeyActivity_Main_1_VehiclePickedUp()
  local l0, l1
  self = self._graph
  l0 = self.box_BiometricCarKeyActivity_Main_1
  l1 = self.box_Network_Surfing_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1401600633", "1401600633", "BUC_Biometric_01_RichHouse_Main", "box_BiometricCarKeyActivity_Main_1.VehiclePickedUp", "box_Network_Surfing_Controller_4.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_BiometricCarKeyActivity_Main_1_VehicleSpawned()
  local l0
  self = self._graph
  l0 = self.box_BiometricCarKeyActivity_Main_1
  self.vehicle = l0.Vehicle
end
function export:f_box_Bind_v2_17_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_ExitNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1378717215"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_20_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1691249727", "1691249727", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_17.UnBound", "box_Bind_v2_20.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Bind_v2_9_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_ExitNode
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|711673663"
  l0.Bound = self.f_box_Bind_v2_8_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|2066565339", "2066565339", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_9.Bound", "box_Bind_v2_8.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Bind_v2_20_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VrProfilingPath_389
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|959458897"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_14_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|669631648", "669631648", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_20.UnBound", "box_Bind_v2_14.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_Hackable_Monitor_15_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_15
  l1 = self.box_Network_Surfing_Controller_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1339047378", "1339047378", "BUC_Biometric_01_RichHouse_Main", "box_Hackable_Monitor_15.Disabled", "box_Network_Surfing_Controller_23.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|195130822"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  l0 = self.box_Hackable_Monitor_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|112750024", "112750024", "BUC_Biometric_01_RichHouse_Main", "box_Hackable_Monitor_15.HackSuccess", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_7_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_15()
  l0 = self.box_Hackable_Monitor_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1147317278", "1147317278", "BUC_Biometric_01_RichHouse_Main", "box_SecurityCamController_7.EnterForced", "box_Hackable_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Network_Surfing_Controller_4_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_2()
  l0 = self.box_Network_Surfing_Controller_4
  l1 = self.box_TimerToScreen_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1331482293", "1331482293", "BUC_Biometric_01_RichHouse_Main", "box_Network_Surfing_Controller_4.Activated", "box_TimerToScreen_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_Bind_v2_19_UnBound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.vehicle
  l0.Child = self.VR_Switch
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1341597122"
  l0.Bound = DummyFunction
  l0.UnBound = self.f_box_Bind_v2_17_UnBound
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|645451353", "645451353", "BUC_Biometric_01_RichHouse_Main", "box_Bind_v2_19.UnBound", "box_Bind_v2_17.UnBind", clone, l0)
  l0:UnBind()
end
function export:f_box_TimerToScreen_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_6
  l0.HackableEntity = self.Invisible_VRACtivator
  l0 = self.box_TimerToScreen_2
  l1 = self.box_Hackable_Controller_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1631165023", "1631165023", "BUC_Biometric_01_RichHouse_Main", "box_TimerToScreen_2.Started", "box_Hackable_Controller_6.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_TimerToScreen_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerVehicleAlarm.lua")]
  l0.VehicleEntity = self.vehicle
  l0.Length = 10
  l0._graph = self
  l0._name = "box_TriggerVehicleAlarm_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|853569118"
  l0.Out = self.f_box_TriggerVehicleAlarm_11_Out
  l0 = self.box_TimerToScreen_2
  l1 = Boxes[PathID("domino/System/TriggerVehicleAlarm.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|542333639", "542333639", "BUC_Biometric_01_RichHouse_Main", "box_TimerToScreen_2.TimeElapsed", "box_TriggerVehicleAlarm_11.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Controller_6_HackForced()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.VR_InteriorCamera_
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|1550107534"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_7_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_Hackable_Controller_6
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_lgujan\\biometric_01_richhouse\\BUC_Biometric_01_RichHouse.domino|@BUC_Biometric_01_RichHouse_Main|763615906", "763615906", "BUC_Biometric_01_RichHouse_Main", "box_Hackable_Controller_6.HackForced", "box_SecurityCamController_7.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:OnEnter_box_Hackable_Monitor_15()
  local l0
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = self.VR_ExitNode_EndNode
end
function export:OnEnter_box_TimerToScreen_2()
  local l0
  l0 = self.box_TimerToScreen_2
  l0.Seconds = 10
end
_compilerVersion = 4
