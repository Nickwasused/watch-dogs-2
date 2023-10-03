export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_Race/Test_Race_CoastMountain_main.Test_Race_CoastMountain_main_Checkpoints.debug.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleBhvMonitor.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_Race_CoastMountain_main_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main"
  self.PlayerEntity = nil
  self.Checkpoints = {}
  self.NPC = nil
  self.TimerAdd_Gate09 = 0
  self.TimerAdd_Gate10 = 0
  self.TimerAdd_Gate06 = 2
  self.CheckpointsTimers = {}
  self.NPC_Bike = "9223372045687342571"
  self.TimerAdd_Gate02 = 2
  self.VehicleIcon_0 = "9223372045730565407"
  self.TimerAdd_Gate03 = 4
  self.RaceRing = "9223372045730542629"
  self.HackBike_BoundToEntity_0 = "9223372045730519717"
  self.ProximityTrigger_Checkpoint = "9223372045730519235"
  self.TimerAdd_Gate04 = 0
  self.LM01M01_GenericObjectInteractive_ScanBike = "9223372045730519713"
  self.CLO_370811885582781374 = "9223372045730519703"
  self.TimerAdd_Gate07 = 0
  self.PlayerHasFinished = 0
  self.MissionTarget_0 = "9223372045730519719"
  self.NPCHasFinished = 0
  self.TimerAdd_Gate05 = 2
  self.CLO_5384219886821329587 = "9223372045730519702"
  self.TimerAdd_Gate01 = 2
  self.CLO_6604009124547460267 = "9223372045730519700"
  self.BoundToEntity_0 = "9223372045730519715"
  self.Player_Bike = nil
  self.TimerAdd_Gate08 = 1
  self.Race_CoastMountain = "9223372045730519293"
  self.Race_CoastMountain_End = "9223372045730542630"
  self.TimeElapsed = 0
  self.box_OnceOnly_v2_32 = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self.box_OnceOnly_v2_32
  l0._graph = self
  l0._name = "box_OnceOnly_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|33057810"
  l0._DynamicAnchors = {In = 3, Out = 3}
  l0.Out[0] = self.f_box_OnceOnly_v2_32_Out_0
  l0.Out[1] = self.f_box_OnceOnly_v2_32_Out_1
  l0.Out[2] = self.f_box_OnceOnly_v2_32_Out_2
  l0.ResetOut = DummyFunction
  self.box_SetBoolean_v2_49 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_49
  l0._graph = self
  l0._name = "box_SetBoolean_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|54052854"
  l0.Out = self.f_box_SetBoolean_v2_49_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_49_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_49_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_49_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_49_SetFromBool
  self.box_VehicleBhvController_42 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_42
  l0._graph = self
  l0._name = "box_VehicleBhvController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|90000661"
  l0.StartCompleted = self.f_box_VehicleBhvController_42_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_Test_Race_CoastMountain_main_Checkpoints_1 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_Race/Test_Race_CoastMountain_main.Test_Race_CoastMountain_main_Checkpoints.debug.lua")
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  l0._graph = self
  l0._name = "box_Test_Race_CoastMountain_main_Checkpoints_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|127237162"
  l0.RaceCompleted = self.f_box_Test_Race_CoastMountain_main_Checkpoints_1_RaceCompleted
  l0.Stopped = self.f_box_Test_Race_CoastMountain_main_Checkpoints_1_Stopped
  l0.NPCKilledOut = DummyFunction
  l0.TimeElapsed = self.f_box_Test_Race_CoastMountain_main_Checkpoints_1_TimeElapsed
  self.box_SnapAndBind_4 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_4
  l0._graph = self
  l0._name = "box_SnapAndBind_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|296893995"
  l0.Attached = DummyFunction
  self.box_VehicleSeatingController_16 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_16
  l0._graph = self
  l0._name = "box_VehicleSeatingController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|452436338"
  l0.Assigned = self.f_box_VehicleSeatingController_16_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|473770049"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_29_OnUserInPlace
  self.box_MultipleOR_51 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_51
  l0._graph = self
  l0._name = "box_MultipleOR_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|565202264"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_51_Out
  self.box_CLOController_40 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_40
  l0._graph = self
  l0._name = "box_CLOController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|628333588"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_40_OnUserInPlace
  self.box_VehicleBhvController_52 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_52
  l0._graph = self
  l0._name = "box_VehicleBhvController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|717793318"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self.box_VehicleSeatingController_17 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_17
  l0._graph = self
  l0._name = "box_VehicleSeatingController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1121163344"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_17_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v3_38 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_38
  l0._graph = self
  l0._name = "box_MapPointController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1122443776"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_VehicleSeatingController_26 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_26
  l0._graph = self
  l0._name = "box_VehicleSeatingController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1167351765"
  l0.Assigned = self.f_box_VehicleSeatingController_26_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MapPointController_v3_25 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_25
  l0._graph = self
  l0._name = "box_MapPointController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1238723877"
  l0.Shown = self.f_box_MapPointController_v3_25_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_33 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_33
  l0._graph = self
  l0._name = "box_SetBoolean_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1250737952"
  l0.Out = self.f_box_SetBoolean_v2_33_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_33_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_33_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_33_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_33_SetFromBool
  self.box_MultipleOR_50 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_50
  l0._graph = self
  l0._name = "box_MultipleOR_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1360854622"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_50_Out
  self.box_ListWriter_35 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_35
  l0._graph = self
  l0._name = "box_ListWriter_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1385168589"
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_box_ListWriter_35_Added
  l0.Removed = self.f_box_ListWriter_35_Removed
  l0.Out = self.f_box_ListWriter_35_Out
  self.box_SetBoolean_v2_21 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_21
  l0._graph = self
  l0._name = "box_SetBoolean_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1443289754"
  l0.Out = self.f_box_SetBoolean_v2_21_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_21_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_21_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_21_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_21_SetFromBool
  self.box_Timer_v2_53 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_53
  l0._graph = self
  l0._name = "box_Timer_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1458435112"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_18 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_18
  l0._graph = self
  l0._name = "box_MissionLayer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1515987785"
  l0.Loaded = self.f_box_MissionLayer_v2_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_TriggerMonitor_v2_13 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_13
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1542351493"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Vehicle_Bhv_Monitor_28 = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self.box_Vehicle_Bhv_Monitor_28
  l0._graph = self
  l0._name = "box_Vehicle_Bhv_Monitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1742159260"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Vehicle_Bhv_Monitor_28_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_box_Vehicle_Bhv_Monitor_28_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1872116796"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_SnapAndBind_45 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_45
  l0._graph = self
  l0._name = "box_SnapAndBind_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1886277707"
  l0.Attached = self.f_box_SnapAndBind_45_Attached
  self.box_VehicleMonitor_v2_10 = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_10
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1903814042"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_box_VehicleMonitor_v2_10_BailedOut
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  self.box_TimerToScreen_11 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_11
  l0._graph = self
  l0._name = "box_TimerToScreen_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2057472573"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_box_TimerToScreen_11_TimeElapsed
  self.box_MapPointController_v3_12 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_12
  l0._graph = self
  l0._name = "box_MapPointController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2145556476"
  l0.Shown = self.f_box_MapPointController_v3_12_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = self.box_MissionLayer_v2_18
  l0.LayerName = "Test_Race_CoastMountain_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|915826940", "915826940", "Test_Race_CoastMountain_main_Main", "In", "box_MissionLayer_v2_18.Load", self, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Player_Bike
  l0._graph = self
  l0._name = "box_Vehicle_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|703504246"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = self.f_box_Vehicle_Controller_14_EngineShutDown
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|651562130", "651562130", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_20.Out", "box_Vehicle_Controller_14.ShutDownEngine", clone, l0)
  l0:ShutDownEngine()
end
function export:f_box_OnceOnly_v2_32_Out_0()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_OnceOnly_v2_32
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1335730192", "1335730192", "Test_Race_CoastMountain_main_Main", "box_OnceOnly_v2_32.Out", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v2_32_Out_1()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_OnceOnly_v2_32
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|369883348", "369883348", "Test_Race_CoastMountain_main_Main", "box_OnceOnly_v2_32.Out", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v2_32_Out_2()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_OnceOnly_v2_32
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|336175902", "336175902", "Test_Race_CoastMountain_main_Main", "box_OnceOnly_v2_32.Out", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_49
  self.TimeElapsed = l0.Target
  self:OnEnter_box_OnceOnly_v2_32()
  l1 = self.box_OnceOnly_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1013530452", "1013530452", "Test_Race_CoastMountain_main_Main", "box_SetBoolean_v2_49.Out", "box_OnceOnly_v2_32.In", l0, l1)
  l1:In(2)
end
function export:f_box_SetBoolean_v2_49_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_49
  self.TimeElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_49_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_49
  self.TimeElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_49_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_49
  self.TimeElapsed = l0.Target
end
function export:f_box_SetBoolean_v2_49_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_49
  self.TimeElapsed = l0.Target
end
function export:f_box_Bind_v2_27_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_40
  l0.CLO = self.CLO_6604009124547460267
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|148960681", "148960681", "Test_Race_CoastMountain_main_Main", "box_Bind_v2_27.Bound", "box_CLOController_40.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_VehicleBhvController_42_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_53
  l0.Seconds = 2
  l0 = self.box_VehicleBhvController_42
  l1 = self.box_Timer_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|793811995", "793811995", "Test_Race_CoastMountain_main_Main", "box_VehicleBhvController_42.StartCompleted", "box_Timer_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_Test_Race_CoastMountain_main_Checkpoints_1_RaceCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_32()
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  l1 = self.box_OnceOnly_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1832966457", "1832966457", "Test_Race_CoastMountain_main_Main", "box_Test_Race_CoastMountain_main_Checkpoints_1.RaceCompleted", "box_OnceOnly_v2_32.In", l0, l1)
  l1:In(0)
end
function export:f_box_Test_Race_CoastMountain_main_Checkpoints_1_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v2_32()
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  l1 = self.box_OnceOnly_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|334126400", "334126400", "Test_Race_CoastMountain_main_Main", "box_Test_Race_CoastMountain_main_Checkpoints_1.Stopped", "box_OnceOnly_v2_32.In", l0, l1)
  l1:In(1)
end
function export:f_box_Test_Race_CoastMountain_main_Checkpoints_1_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  l1 = self.box_SetBoolean_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|505488797", "505488797", "Test_Race_CoastMountain_main_Main", "box_Test_Race_CoastMountain_main_Checkpoints_1.TimeElapsed", "box_SetBoolean_v2_49.True", l0, l1)
  l1:True()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleBhvController_42
  l0.VehicleMaster = self.NPC_Bike
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.Race_CoastMountain
  l0.Config = "VehicleBhvSetup.9223372044416927248"
  l0.StopAtEndPoint = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|940680946", "940680946", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_2.Out", "box_VehicleBhvController_42.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetActionMap_v2_24()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1811067140", "1811067140", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_2.Out", "box_SetActionMap_v2_24.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TimerToScreen_11
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1825357237", "1825357237", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_15.Out", "box_TimerToScreen_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetActionMap_v2_24()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1342579663", "1342579663", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_15.Out", "box_SetActionMap_v2_24.Push", clone, l0)
  l0:Push()
end
function export:f_box_Ordered_Output_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|553005426"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_9_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|635681311", "635681311", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_15.Out", "box_VisibilityController_v2_9.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_30_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "YOU WIN"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2098169017"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1707596026", "1707596026", "Test_Race_CoastMountain_main_Main", "box_Compare_Boolean_v2_30.A_is_False", "box_TextToScreen_v2_46.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_30_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1009482731", "1009482731", "Test_Race_CoastMountain_main_Main", "box_Compare_Boolean_v2_30.A_is_True", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VisibilityController_v2_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_39
  l0.CLO = self.CLO_5384219886821329587
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1497763084", "1497763084", "Test_Race_CoastMountain_main_Main", "box_VisibilityController_v2_6.Hidden", "box_CLOController_39.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_VisibilityController_v2_7_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|806924342"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_3_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_3_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1691480240", "1691480240", "Test_Race_CoastMountain_main_Main", "box_VisibilityController_v2_7.Hidden", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_12()
  l0 = self.box_MapPointController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|904254250", "904254250", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_43.Out", "box_MapPointController_v3_12.Show", clone, l0)
  l0:Show()
end
function export:f_box_VehicleSeatingController_16_Assigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1834217125"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_48_Out_2
  l0 = self.box_VehicleSeatingController_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|710673745", "710673745", "Test_Race_CoastMountain_main_Main", "box_VehicleSeatingController_16.Assigned", "box_Ordered_Output_48.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_29_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  self.NPC = l0.UserID
  l0 = self.box_VehicleSeatingController_16
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  l0 = self.box_CLOController_29
  l1 = self.box_VehicleSeatingController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|403490838", "403490838", "Test_Race_CoastMountain_main_Main", "box_CLOController_29.OnUserInPlace", "box_VehicleSeatingController_16.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_VisibilityController_v2_9_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Win the Race"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|378686553"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|958517630", "958517630", "Test_Race_CoastMountain_main_Main", "box_VisibilityController_v2_9.Shown", "box_TextToScreen_v2_8.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_51_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|398142775"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_7_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_51
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2021957914", "2021957914", "Test_Race_CoastMountain_main_Main", "box_MultipleOR_51.Out", "box_VisibilityController_v2_7.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_CLOController_40_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_40
  self.Player_Bike = l0.UserID
  l0 = self.box_CLOController_29
  l0.CLO = self.CLO_370811885582781374
  l0 = self.box_CLOController_40
  l1 = self.box_CLOController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|961430097", "961430097", "Test_Race_CoastMountain_main_Main", "box_CLOController_40.OnUserInPlace", "box_CLOController_29.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VisibilityController_v2_37_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372045730542630"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|338398035"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_6_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|78891900", "78891900", "Test_Race_CoastMountain_main_Main", "box_VisibilityController_v2_37.Hidden", "box_VisibilityController_v2_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Vehicle_Controller_14_EngineShutDown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|303438030"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_15_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1242617962", "1242617962", "Test_Race_CoastMountain_main_Main", "box_Vehicle_Controller_14.EngineShutDown", "box_Ordered_Output_15.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TimeElapsed
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1834681991"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_22_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1810490897", "1810490897", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_3.Out", "box_Compare_Boolean_v2_22.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_25()
  l0 = self.box_MapPointController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1921876433", "1921876433", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_3.Out", "box_MapPointController_v3_25.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_3_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_12()
  l0 = self.box_MapPointController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1227766788", "1227766788", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_3.Out", "box_MapPointController_v3_12.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_3_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_38
  l0.MapPoint = self.MissionTarget_0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1777941267", "1777941267", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_3.Out", "box_MapPointController_v3_38.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VehicleSeatingController_17_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|18268491"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_VehicleSeatingController_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1082161842", "1082161842", "Test_Race_CoastMountain_main_Main", "box_VehicleSeatingController_17.AssignCompleted", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_26_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_52
  l0.VehicleMaster = self.NPC_Bike
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.Race_CoastMountain
  l0.Config = "VehicleBhvSetup.9223372048779328400"
  l0.StopAtEndPoint = 1
  l0 = self.box_VehicleSeatingController_26
  l1 = self.box_VehicleBhvController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|11505860", "11505860", "Test_Race_CoastMountain_main_Main", "box_VehicleSeatingController_26.Assigned", "box_VehicleBhvController_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_MapPointController_v3_25_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_45
  l0.Parent = self.NPC_Bike
  l0.Child = self.VehicleIcon_0
  l0.zPosOffset = 1.75
  l0 = self.box_MapPointController_v3_25
  l1 = self.box_SnapAndBind_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2052212713", "2052212713", "Test_Race_CoastMountain_main_Main", "box_MapPointController_v3_25.Shown", "box_SnapAndBind_45.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Simple_Node_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleMonitor_v2_10
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|655740798", "655740798", "Test_Race_CoastMountain_main_Main", "box_Simple_Node_23.Out", "box_VehicleMonitor_v2_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_33_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.NPCHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.NPCHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.NPCHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_33_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.NPCHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_33_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_33
  self.NPCHasFinished = l0.Target
end
function export:f_box_Vehicle_Controller_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|433542796"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1895364013", "1895364013", "Test_Race_CoastMountain_main_Main", "box_Vehicle_Controller_19.Out", "box_Ordered_Output_43.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "YOU LOST"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1685250043"
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_50
  l1 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1311509641", "1311509641", "Test_Race_CoastMountain_main_Main", "box_MultipleOR_50.Out", "box_TextToScreen_v2_34.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_35_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_35
  self.Checkpoints = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1498889472"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0 = self.box_ListWriter_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1732322409", "1732322409", "Test_Race_CoastMountain_main_Main", "box_ListWriter_35.Added", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_35_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_35
  self.Checkpoints = l0.Target
end
function export:f_box_ListWriter_35_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_35
  self.Checkpoints = l0.Target
end
function export:f_box_SetBoolean_v2_21_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.PlayerHasFinished = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NPCHasFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|333113452"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_30_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_30_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_21
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1116277361", "1116277361", "Test_Race_CoastMountain_main_Main", "box_SetBoolean_v2_21.Out", "box_Compare_Boolean_v2_30.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_21_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.PlayerHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.PlayerHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_21_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.PlayerHasFinished = l0.Target
end
function export:f_box_SetBoolean_v2_21_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_21
  self.PlayerHasFinished = l0.Target
end
function export:f_box_Timer_v2_53_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Player_Bike
  l0._graph = self
  l0._name = "box_Vehicle_Controller_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1275056259"
  l0.Out = self.f_box_Vehicle_Controller_19_Out
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_Timer_v2_53
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|271199459", "271199459", "Test_Race_CoastMountain_main_Main", "box_Timer_v2_53.TimeElapsed", "box_Vehicle_Controller_19.StartEngine", l0, l1)
  l1:StartEngine()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_Race_CoastMountain_main_Checkpoints_1()
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|519829135", "519829135", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_41.Out", "box_Test_Race_CoastMountain_main_Checkpoints_1.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Bhv_Monitor_28()
  l0 = self.box_Vehicle_Bhv_Monitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|206326211", "206326211", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_41.Out", "box_Vehicle_Bhv_Monitor_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_18_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1849021879"
  l0.Out = self.f_box_Get_Player_ID_44_Out
  l0 = self.box_MissionLayer_v2_18
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1458987197", "1458987197", "Test_Race_CoastMountain_main_Main", "box_MissionLayer_v2_18.Loaded", "box_Get_Player_ID_44.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_13_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_13
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.NPC
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_36"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1648951970"
  l1.Out = DummyFunction
  l1.Equal = self.f_box_Compare_Entity_v2_36_Equal
  l1.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_13
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|74713976", "74713976", "Test_Race_CoastMountain_main_Main", "box_TriggerMonitor_v2_13.Enter", "box_Compare_Entity_v2_36.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Entity_v2_36_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2056562014"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_31_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1967415394", "1967415394", "Test_Race_CoastMountain_main_Main", "box_Compare_Entity_v2_36.Equal", "box_Ordered_Output_31.In", clone, l0)
  l0:In()
end
function export:f_box_Vehicle_Bhv_Monitor_28_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_Vehicle_Bhv_Monitor_28
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2092721243", "2092721243", "Test_Race_CoastMountain_main_Main", "box_Vehicle_Bhv_Monitor_28.Disabled", "box_TriggerMonitor_v2_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Vehicle_Bhv_Monitor_28_SpecificPathPointReached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_13()
  l0 = self.box_Vehicle_Bhv_Monitor_28
  l1 = self.box_TriggerMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1730837468", "1730837468", "Test_Race_CoastMountain_main_Main", "box_Vehicle_Bhv_Monitor_28.SpecificPathPointReached", "box_TriggerMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_17
  l0.Vehicle = self.Player_Bike
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1299527179", "1299527179", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_48.Out", "box_VehicleSeatingController_17.Assign", clone, l0)
  l0:Assign()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1249027657"
  l0.Out = self.f_box_Simple_Node_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1993721251", "1993721251", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_48.Out", "box_Simple_Node_23.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_48_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_25()
  l0 = self.box_MapPointController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|750799294", "750799294", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_48.Out", "box_MapPointController_v3_25.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_22_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|521533870", "521533870", "Test_Race_CoastMountain_main_Main", "box_Compare_Boolean_v2_22.A_is_False", "box_SetBoolean_v2_21.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_22_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_50()
  l0 = self.box_MultipleOR_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1097024866", "1097024866", "Test_Race_CoastMountain_main_Main", "box_Compare_Boolean_v2_22.A_is_True", "box_MultipleOR_50.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Get_Player_ID_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|641114844"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_37_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1025178873", "1025178873", "Test_Race_CoastMountain_main_Main", "box_Get_Player_ID_44.Out", "box_VisibilityController_v2_37.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  self.NPC_Bike = l0.UserID
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.NPC_Bike
  l0.Child = self.LM01M01_GenericObjectInteractive_ScanBike
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|75072000"
  l0.Bound = self.f_box_Bind_v2_27_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_39
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|225482745", "225482745", "Test_Race_CoastMountain_main_Main", "box_CLOController_39.OnUserInPlace", "box_Bind_v2_27.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_SnapAndBind_45_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_4
  l0.Parent = self.LM01M01_GenericObjectInteractive_ScanBike
  l0.Child = self.HackBike_BoundToEntity_0
  l0.zPosOffset = 1.5
  l0 = self.box_SnapAndBind_45
  l1 = self.box_SnapAndBind_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1714973113", "1714973113", "Test_Race_CoastMountain_main_Main", "box_SnapAndBind_45.Attached", "box_SnapAndBind_4.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_VehicleMonitor_v2_10_BailedOut()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_26
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  l0 = self.box_VehicleMonitor_v2_10
  l1 = self.box_VehicleSeatingController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|35903843", "35903843", "Test_Race_CoastMountain_main_Main", "box_VehicleMonitor_v2_10.BailedOut", "box_VehicleSeatingController_26.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1876024069", "1876024069", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_31.Out", "box_SetBoolean_v2_33.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Vehicle_Bhv_Monitor_28()
  l0 = self.box_Vehicle_Bhv_Monitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|2012148836", "2012148836", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_31.Out", "box_Vehicle_Bhv_Monitor_28.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Test_Race_CoastMountain_main_Checkpoints_1()
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1773514626", "1773514626", "Test_Race_CoastMountain_main_Main", "box_Ordered_Output_31.Out", "box_Test_Race_CoastMountain_main_Checkpoints_1.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_TimerToScreen_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|173796627"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_TimerToScreen_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1982705942", "1982705942", "Test_Race_CoastMountain_main_Main", "box_TimerToScreen_11.TimeElapsed", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v3_12_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_35
  l0.Input = self.Checkpoints
  l0.Data[0] = "9223372045730519331"
  l0.Data[1] = "9223372045730519333"
  l0.Data[2] = "9223372045730519335"
  l0.Data[3] = "9223372045730519337"
  l0.Data[4] = "9223372045730519339"
  l0.Data[5] = "9223372045730519341"
  l0.Data[6] = "9223372045730519343"
  l0.Data[7] = "9223372045730519345"
  l0.Data[8] = "9223372045730519347"
  l0.Data[9] = "9223372045730519349"
  l0 = self.box_MapPointController_v3_12
  l1 = self.box_ListWriter_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|1216279202", "1216279202", "Test_Race_CoastMountain_main_Main", "box_MapPointController_v3_12.Shown", "box_ListWriter_35.Add", l0, l1)
  l1:Add()
end
function export:OnEnter_box_OnceOnly_v2_32()
end
function export:OnEnter_box_Test_Race_CoastMountain_main_Checkpoints_1()
  local l0
  l0 = self.box_Test_Race_CoastMountain_main_Checkpoints_1
  l0.Checkpoints = self.Checkpoints
  l0.MapMarker = self.MissionTarget_0
  l0.CheckpointRange = 5
  l0.MapIconHeight = 2
  l0.NextMapMarker = self.BoundToEntity_0
  l0.ProximityTrigger = self.ProximityTrigger_Checkpoint
  l0.RaceRingCheckpoint = self.RaceRing
  l0.RaceFinishLine = self.Race_CoastMountain_End
  l0.CheckPoint_Timer = self.CheckpointsTimers
  l0.Timer_Gate01 = self.TimerAdd_Gate01
  l0.Timer_Gate02 = self.TimerAdd_Gate02
  l0.Timer_Gate03 = self.TimerAdd_Gate03
  l0.Timer_Gate04 = self.TimerAdd_Gate04
  l0.Timer_Gate05 = self.TimerAdd_Gate05
  l0.Timer_Gate06 = self.TimerAdd_Gate06
  l0.Timer_Gate07 = self.TimerAdd_Gate07
  l0.Timer_Gate08 = self.TimerAdd_Gate08
  l0.Timer_Gate09 = self.TimerAdd_Gate09
  l0.Timer_Gate10 = self.TimerAdd_Gate10
end
function export:OnEnter_box_MultipleOR_51()
end
function export:OnEnter_box_SetActionMap_v2_24()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "vehicle_exitblocked"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Test_Race\\Test_Race_CoastMountain_main.domino|@Test_Race_CoastMountain_main_Main|897496248"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = DummyFunction
end
function export:OnEnter_box_MapPointController_v3_25()
  local l0
  l0 = self.box_MapPointController_v3_25
  l0.MapPoint = self.VehicleIcon_0
  l0.LocText = {
    section = "",
    item = "",
    id = "259091"
  }
end
function export:OnEnter_box_MultipleOR_50()
end
function export:OnEnter_box_TriggerMonitor_v2_13()
  local l0
  l0 = self.box_TriggerMonitor_v2_13
  l0.Trigger = "9223372045730519291"
end
function export:OnEnter_box_Vehicle_Bhv_Monitor_28()
  local l0
  l0 = self.box_Vehicle_Bhv_Monitor_28
  l0.Vehicle = self.NPC_Bike
  l0.SpecificPathPoint = 9
end
function export:OnEnter_box_MapPointController_v3_12()
  local l0
  l0 = self.box_MapPointController_v3_12
  l0.MapPoint = self.MissionTarget_0
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
_compilerVersion = 4
