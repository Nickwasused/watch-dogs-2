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
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Test_Race/Test_Race_CoastMountain_main.Test_Race_CoastMountain_main_Checkpoints.lua")
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
  self[32] = cbox:CreateBox("domino/System/OnceOnly_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0._DynamicAnchors = {In = 3, Out = 3}
  l0.Out[0] = self.f_32_Out_0
  l0.Out[1] = self.f_32_Out_1
  l0.Out[2] = self.f_32_Out_2
  l0.ResetOut = DummyFunction
  self[49] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = self.f_49_Out
  l0.SetTrue = self.f_49_SetTrue
  l0.SetFalse = self.f_49_SetFalse
  l0.Toggled = self.f_49_Toggled
  l0.SetFromBool = self.f_49_SetFromBool
  self[42] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[42]
  l0._graph = self
  l0.StartCompleted = self.f_42_StartCompleted
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[1] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Test_Race/Test_Race_CoastMountain_main.Test_Race_CoastMountain_main_Checkpoints.lua")
  l0 = self[1]
  l0._graph = self
  l0.RaceCompleted = self.f_1_RaceCompleted
  l0.Stopped = self.f_1_Stopped
  l0.NPCKilledOut = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  self[4] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[4]
  l0._graph = self
  l0.Attached = DummyFunction
  self[16] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Assigned = self.f_16_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[29] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_29_OnUserInPlace
  self[51] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[51]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_51_Out
  self[40] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[40]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_40_OnUserInPlace
  self[52] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[52]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = DummyFunction
  l0.ForcedFakeFollow = DummyFunction
  self[17] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_17_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[26] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[26]
  l0._graph = self
  l0.Assigned = self.f_26_Assigned
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Shown = self.f_25_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[33] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.SetTrue = self.f_33_SetTrue
  l0.SetFalse = self.f_33_SetFalse
  l0.Toggled = self.f_33_Toggled
  l0.SetFromBool = self.f_33_SetFromBool
  self[50] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_50_Out
  self[35] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Data = 10}
  l0.Added = self.f_35_Added
  l0.Removed = self.f_35_Removed
  l0.Out = self.f_35_Out
  self[21] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.SetTrue = self.f_21_SetTrue
  l0.SetFalse = self.f_21_SetFalse
  l0.Toggled = self.f_21_Toggled
  l0.SetFromBool = self.f_21_SetFromBool
  self[53] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_53_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Loaded = self.f_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_13_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[28] = cbox:CreateBox("domino/System/VehicleBhvMonitor.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_28_Disabled
  l0.Stuck = DummyFunction
  l0.Broken = DummyFunction
  l0.TargetDetected = DummyFunction
  l0.InLOS = DummyFunction
  l0.ReacquireLOSTimerExpired = DummyFunction
  l0.LostLOSTimerExpired = DummyFunction
  l0.SuspiciousTargetAction = DummyFunction
  l0.SpecificPathPointReached = self.f_28_SpecificPathPointReached
  l0.PathPointReached = DummyFunction
  l0.EndPathPointReached = DummyFunction
  l0.InRange = DummyFunction
  l0.WarningRange = DummyFunction
  l0.OutsideRange = DummyFunction
  l0.OutsideTimerExpired = DummyFunction
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_39_OnUserInPlace
  self[45] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[45]
  l0._graph = self
  l0.Attached = self.f_45_Attached
  self[10] = cbox:CreateBox("domino/System/VehicleMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = self.f_10_BailedOut
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
  self[11] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_11_TimeElapsed
  self[12] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Shown = self.f_12_Shown
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
  l0 = self[18]
  l0.LayerName = "Test_Race_CoastMountain_Main"
  l0:Load()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Player_Bike
  l0._graph = self
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
  l0.EngineShutDown = self.f_14_EngineShutDown
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:ShutDownEngine()
end
function export:f_32_Out_0()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Input(0)
end
function export:f_32_Out_1()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Input(1)
end
function export:f_32_Out_2()
  local l0
  self = self._graph
  l0 = self[51]
  l0:Input(2)
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[49]
  self.TimeElapsed = l0.Target
  l0 = self[32]
  l0:In(2)
end
function export:f_49_SetFalse()
  local l0
  self = self._graph
  l0 = self[49]
  self.TimeElapsed = l0.Target
end
function export:f_49_SetFromBool()
  local l0
  self = self._graph
  l0 = self[49]
  self.TimeElapsed = l0.Target
end
function export:f_49_SetTrue()
  local l0
  self = self._graph
  l0 = self[49]
  self.TimeElapsed = l0.Target
end
function export:f_49_Toggled()
  local l0
  self = self._graph
  l0 = self[49]
  self.TimeElapsed = l0.Target
end
function export:f_27_Bound()
  local l0
  self = self._graph
  l0 = self[40]
  l0.CLO = self.CLO_6604009124547460267
  l0:Activate()
end
function export:f_42_StartCompleted()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Seconds = 2
  l0:Start()
end
function export:f_1_RaceCompleted()
  local l0
  self = self._graph
  l0 = self[32]
  l0:In(0)
end
function export:f_1_Stopped()
  local l0
  self = self._graph
  l0 = self[32]
  l0:In(1)
end
function export:f_1_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[49]
  l0:True()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[42]
  l0.VehicleMaster = self.NPC_Bike
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.Race_CoastMountain
  l0.Config = "VehicleBhvSetup.9223372044416927248"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  self:en_24()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Pop()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Seconds = 3
  l0:Start()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  self:en_24()
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0:Push()
end
function export:f_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_9_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_30_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "YOU WIN"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_30_A_is_True()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(0)
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  l0 = self[39]
  l0.CLO = self.CLO_5384219886821329587
  l0:Activate()
end
function export:f_7_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0.Out[2] = self.f_3_Out_2
  l0.Out[3] = self.f_3_Out_3
  l0:In()
end
function export:f_43_Out_0()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Show()
end
function export:f_16_Assigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_48_Out_0
  l0.Out[1] = self.f_48_Out_1
  l0.Out[2] = self.f_48_Out_2
  l0:In()
end
function export:f_29_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[29]
  self.NPC = l0.UserID
  l0 = self[16]
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  l0:Assign()
end
function export:f_9_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Win the Race"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_7_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_40_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[40]
  self.Player_Bike = l0.UserID
  l0 = self[29]
  l0.CLO = self.CLO_370811885582781374
  l0:Activate()
end
function export:f_37_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372045730542630"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_6_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_14_EngineShutDown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0.Out[2] = self.f_15_Out_2
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TimeElapsed
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_22_A_is_True
  l0.A_is_False = self.f_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Hide()
end
function export:f_3_Out_2()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Hide()
end
function export:f_3_Out_3()
  local l0
  self = self._graph
  l0 = self[38]
  l0.MapPoint = self.MissionTarget_0
  l0:Hide()
end
function export:f_17_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_26_Assigned()
  local l0
  self = self._graph
  l0 = self[52]
  l0.VehicleMaster = self.NPC_Bike
  l0.VehicleTarget = self.PlayerEntity
  l0.PathOrPos = self.Race_CoastMountain
  l0.Config = "VehicleBhvSetup.9223372048779328400"
  l0.StopAtEndPoint = 1
  l0:Start()
end
function export:f_25_Shown()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Parent = self.NPC_Bike
  l0.Child = self.VehicleIcon_0
  l0.zPosOffset = 1.75
  l0:Attach()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  l0:Enable()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[33]
  self.NPCHasFinished = l0.Target
end
function export:f_33_SetFalse()
  local l0
  self = self._graph
  l0 = self[33]
  self.NPCHasFinished = l0.Target
end
function export:f_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self[33]
  self.NPCHasFinished = l0.Target
end
function export:f_33_SetTrue()
  local l0
  self = self._graph
  l0 = self[33]
  self.NPCHasFinished = l0.Target
end
function export:f_33_Toggled()
  local l0
  self = self._graph
  l0 = self[33]
  self.NPCHasFinished = l0.Target
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "YOU LOST"
  l0.Duration = 10
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_35_Added()
  local l0
  self = self._graph
  l0 = self[35]
  self.Checkpoints = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[35]
  self.Checkpoints = l0.Target
end
function export:f_35_Removed()
  local l0
  self = self._graph
  l0 = self[35]
  self.Checkpoints = l0.Target
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[21]
  self.PlayerHasFinished = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.NPCHasFinished
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_30_A_is_True
  l0.A_is_False = self.f_30_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_21_SetFalse()
  local l0
  self = self._graph
  l0 = self[21]
  self.PlayerHasFinished = l0.Target
end
function export:f_21_SetFromBool()
  local l0
  self = self._graph
  l0 = self[21]
  self.PlayerHasFinished = l0.Target
end
function export:f_21_SetTrue()
  local l0
  self = self._graph
  l0 = self[21]
  self.PlayerHasFinished = l0.Target
end
function export:f_21_Toggled()
  local l0
  self = self._graph
  l0 = self[21]
  self.PlayerHasFinished = l0.Target
end
function export:f_53_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Player_Bike
  l0._graph = self
  l0.Out = self.f_19_Out
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
  l0:StartEngine()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:In()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_18_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_13_Enter()
  local l0, l1
  self = self._graph
  l0 = self[13]
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.NPC
  l1._graph = self
  l1.Out = DummyFunction
  l1.Equal = self.f_36_Equal
  l1.NotEqual = DummyFunction
  l1:In()
end
function export:f_36_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0.Out[2] = self.f_31_Out_2
  l0:In()
end
function export:f_28_Disabled()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Disable()
end
function export:f_28_SpecificPathPointReached()
  local l0
  self = self._graph
  self:en_13()
  l0 = self[13]
  l0:Enable()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Vehicle = self.Player_Bike
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  l0:Assign()
end
function export:f_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:f_48_Out_2()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Show()
end
function export:f_22_A_is_False()
  local l0
  self = self._graph
  l0 = self[21]
  l0:True()
end
function export:f_22_A_is_True()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(1)
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceRing
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_37_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_39_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[39]
  self.NPC_Bike = l0.UserID
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.NPC_Bike
  l0.Child = self.LM01M01_GenericObjectInteractive_ScanBike
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0.Bound = self.f_27_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  l0:Bind()
end
function export:f_45_Attached()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Parent = self.LM01M01_GenericObjectInteractive_ScanBike
  l0.Child = self.HackBike_BoundToEntity_0
  l0.zPosOffset = 1.5
  l0:Attach()
end
function export:f_10_BailedOut()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Vehicle = self.NPC_Bike
  l0.Pawn = self.NPC
  l0.Seat = "Driver"
  l0.WalkType = "Sprint"
  l0:Assign()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[33]
  l0:True()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_31_Out_2()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_11_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_2_Out_2
  l0.Out[3] = DummyFunction
  l0:In()
end
function export:f_12_Shown()
  local l0
  self = self._graph
  l0 = self[35]
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
  l0:Add()
end
function export:en_1()
  local l0
  l0 = self[1]
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
function export:en_24()
  local l0
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "vehicle_exitblocked"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = DummyFunction
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.MapPoint = self.VehicleIcon_0
  l0.LocText = {
    section = "",
    item = "",
    id = "259091"
  }
end
function export:en_13()
  local l0
  l0 = self[13]
  l0.Trigger = "9223372045730519291"
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Vehicle = self.NPC_Bike
  l0.SpecificPathPoint = 9
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.MapPoint = self.MissionTarget_0
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
_compilerVersion = 4
