export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/DeadBodyUnspawnController.lua")
  cbox:RegisterBox("Domino/System/ForcePawnsVehicleStop.lua")
  cbox:RegisterBox("Domino/System/HackableController.lua")
  cbox:RegisterBox("Domino/System/HackableMonitor.lua")
  cbox:RegisterBox("Domino/System/HealthBarController.lua")
  cbox:RegisterBox("Domino/System/EntityHighlightController.lua")
  cbox:RegisterBox("Domino/System/KeyIntelController.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionController_v2.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProfilerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetVehicleLock.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/VehicleController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.VehiclePickedUp = DummyFunction
  self.OwnerHacked = DummyFunction
  self.OwnerProfiled = DummyFunction
  self.LayerLoaded = DummyFunction
  self.Started = DummyFunction
  self.OwnerSpawned = DummyFunction
  self.VehicleSpawned = DummyFunction
  self.MissionFailed = DummyFunction
  self.MissionSuccess = DummyFunction
  self.VehicleState = 4
  self.vehicle = nil
  self.owner = nil
  self.HealthBarText = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.OBJECTIVESLABLES",
    item = "VehicleHealth",
    id = "403741"
  }
  self[3] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = self.f_3_Shown
  l0.Hidden = self.f_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[88] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[88]
  l0._graph = self
  l0.Enabled = self.f_88_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[99] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[99]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_99_Out
  self[16] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[80] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_80_Unloaded
  l0.Reseted = DummyFunction
  self[24] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0.Shown = self.f_24_Shown
  l0.Hidden = self.f_24_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[61] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[61]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_61_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[89] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[89]
  l0._graph = self
  l0.Shown = self.f_89_Shown
  l0.Hidden = self.f_89_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/EntityHighlightController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = self.f_1_Disabled
  self[72] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[72]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_72_Disabled
  l0.ProfileAssigned = self.f_72_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[102] = cbox:CreateBox("Domino/System/ProfilerMonitor_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Enabled = self.f_102_Enabled
  l0.Disabled = self.f_102_Disabled
  l0.InfoDisplayed = self.f_102_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = self.f_7_Enabled
  l0.Disabled = self.f_7_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_7_HackContextual
  l0.AllHacked = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[18] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[107] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[107]
  l0._graph = self
  l0.Attached = self.f_107_Attached
  self[86] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[86]
  l0._graph = self
  l0.Set = self.f_86_Set
  l0.Reset = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Set = self.f_19_Set
  l0.Reset = DummyFunction
  self[26] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_26_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[81] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_81_Out
  self[110] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[110]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_110_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[113] = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self[113]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = self.f_113_RewardsRegistered
  l0.RewardsExecuted = DummyFunction
  self[45] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[45]
  l0._graph = self
  l0.Attached = self.f_45_Attached
  self[23] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = self.f_23_NoMoveTimer
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self[50] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = self.f_50_Out
  l0.MessageRequested = self.f_50_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[37] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[37]
  l0._graph = self
  l0.Attached = self.f_37_Attached
  self[8] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_8_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[104] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[104]
  l0._graph = self
  l0.Attached = self.f_104_Attached
  self[101] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[101]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_101_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[74] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Set = DummyFunction
  l0.Reset = self.f_74_Reset
  self[32] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Shown = self.f_32_Shown
  l0.Hidden = self.f_32_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[36] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[36]
  l0._graph = self
  l0.Attached = self.f_36_Attached
  self[44] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = self.f_44_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_44_Enter
  l0.Entered = self.f_44_Entered
  l0.Leave = self.f_44_Leave
  l0.Exiting = self.f_44_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = self.f_44_StateChange
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = self.f_44_IsUnusable
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = self.f_44_IsUnderwater
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self[90] = cbox:CreateBox("Domino/System/EntityHighlightController.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = self.f_90_Enabled
  l0.Disabled = self.f_90_Disabled
  self[48] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_48_Out
  self[22] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = self.f_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.EnterRadius = self.f_12_EnterRadius
  l0.ExitRadius = self.f_12_ExitRadius
  self[105] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[105]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_105_Out
  self[95] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[95]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_95_Out
  self[47] = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_47_Disabled
  l0.ProfileAssigned = self.f_47_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Shown = self.f_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[103] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[103]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_103_Out
  self[91] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[91]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_91_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[60] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[60]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_60_PostOut
  self[9] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[87] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Set = DummyFunction
  l0.Reset = self.f_87_Reset
  self[108] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[108]
  l0._graph = self
  l0.Shown = self.f_108_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_11_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[35] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[35]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_35_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[109] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[109]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_109_Out
  self[52] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_52_Unloaded
  l0.Reseted = DummyFunction
  self[111] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[111]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_111_Out
  self[25] = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_25_Entered
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self[92] = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = self.f_92_Enabled
  l0.Disabled = self.f_92_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_92_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[27] = cbox:CreateBox("Domino/System/ProfilerMonitor_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = self.f_27_Enabled
  l0.Disabled = self.f_27_Disabled
  l0.InfoDisplayed = self.f_27_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_21_MessageRequested
  l0.MessageCompleted = DummyFunction
  self[46] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[46]
  l0._graph = self
  l0.Set = self.f_46_Set
  l0.Reset = DummyFunction
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_69_Out_0
  l0.Out[1] = self.f_69_Out_1
  l0:In()
end
function export:f_42_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(0)
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Entity = self.owner
  l0:ResetKeyIntel()
end
function export:f_3_Shown()
  local l0
  self = self._graph
  l0 = self[26]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_00",
    item = "Objective_00",
    id = "335942"
  }
  l0:ShowNewObjective()
end
function export:f_29_Out()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Disable()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0:Hide()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = self.f_40_EngineShutDown
  l0.EngineStarted = DummyFunction
  l0:ShutDownEngine()
end
function export:f_88_Enabled()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Enable()
end
function export:f_99_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[61]
  l0.HackableEntity = self.vehicle
  l0:DisableHack()
end
function export:f_80_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = self.Mission
  l0._graph = self
  l0.Out = self.f_33_Out
  l0:TerminateMission()
end
function export:f_24_Hidden()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Parent = self.vehicle
  l0.Child = self.VehicleIcon
  l0.CarIcon = 1
  l0:Attach()
end
function export:f_24_Shown()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Hide()
end
function export:f_61_Disabled()
  local l0
  self = self._graph
  l0 = self[46]
  l0.Entity = self.vehicle
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  l0:SetKeyIntel()
end
function export:f_89_Hidden()
  local l0
  self = self._graph
  l0 = self[87]
  l0.Entity = self.owner
  l0:ResetKeyIntel()
end
function export:f_89_Shown()
  local l0
  self = self._graph
  l0 = self[91]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_00",
    item = "Objective_00",
    id = "335942"
  }
  l0:ShowNewObjective()
end
function export:f_93_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0.UnspawnAllowed = self.f_42_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:AllowUnspawn()
end
function export:f_93_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[105]
  l0:Input(1)
end
function export:f_1_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_1_Enabled()
  self = self._graph
  self:OwnerProfiled()
end
function export:f_72_Disabled()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = self.OwnerCLO
  l0:Activate()
end
function export:f_72_ProfileAssigned()
  local l0
  self = self._graph
  self:en_72()
  l0 = self[72]
  l0:DisableHack()
end
function export:f_102_Disabled()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(1)
end
function export:f_102_Enabled()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Input(1)
end
function export:f_102_InfoDisplayed()
  local l0
  self = self._graph
  self:en_102()
  l0 = self[102]
  l0:Disable()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.owner = l0.Target
  l0 = self[81]
  l0:Input(1)
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Hide()
end
function export:f_7_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Show()
end
function export:f_7_HackContextual()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.owner = l0.UserID
  l0 = self[81]
  l0:Input(0)
end
function export:f_18_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_107_Attached()
  local l0
  self = self._graph
  l0 = self[108]
  l0.MapPoint = self.VehicleLockIcon
  l0.LocMapMarkerTitle = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  l0:Show()
end
function export:f_68_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.OwnerObject
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_93_Is_nil
  l0.Is_not_nil = self.f_93_Is_not_nil
  l0:In()
end
function export:f_86_Set()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VehicleLockIcon
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_112_Is_nil
  l0.Is_not_nil = self.f_112_Is_not_nil
  l0:In()
end
function export:f_94_Out_0()
  self = self._graph
  self:OwnerHacked()
end
function export:f_94_Out_1()
  local l0
  self = self._graph
  l0 = self[95]
  l0:Input(1)
end
function export:f_33_Out()
  self = self._graph
  self:MissionSuccess()
end
function export:f_19_Set()
  local l0
  self = self._graph
  l0 = self[113]
  l0.entity = self.owner
  l0.ItemDB = "Items.9223372047097303032"
  l0.RewardEvent = "OnHackSuccess"
  l0:RegisterRewards()
end
function export:f_20_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  l0.Vehicle = self.vehicle
  l0.Lock = 1
  l0._graph = self
  l0.Out = self.f_65_Out
  l0:In()
end
function export:f_6_Displayed()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_6_Hidden()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_55_A_le_B()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(0)
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Owner = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_71_Out_0
  l0.Out[1] = self.f_71_Out_1
  l0:In()
end
function export:f_26_MessageRequested()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_56_Out_0()
  self = self._graph
  self:LayerLoaded()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = self.VehicleCLO
  l0:Activate()
end
function export:f_71_Out_0()
  self = self._graph
  self:OwnerSpawned()
end
function export:f_71_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = self.owner
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_Owner",
    item = "KeyIntel_Owner",
    id = "403736"
  }
  l0:SetKeyIntel()
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0.UnspawnAllowed = DummyFunction
  l0.UnspawnPrevented = self.f_38_UnspawnPrevented
  l0.Out = DummyFunction
  l0:PreventUnspawn()
end
function export:f_110_Hidden()
  local l0
  self = self._graph
  l0 = self[111]
  l0:Input(1)
end
function export:f_113_RewardsRegistered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.OwnerObject
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_67_Is_nil
  l0.Is_not_nil = self.f_67_Is_not_nil
  l0:In()
end
function export:f_45_Attached()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Show()
end
function export:f_23_NoMoveTimer()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0.Out[2] = self.f_31_Out_2
  l0:In()
end
function export:f_50_MessageRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.vehicle
  l0.NPC_Name = self.HealthBarText
  l0._graph = self
  l0.Displayed = DummyFunction
  l0.Hidden = self.f_68_Hidden
  l0:Hide()
end
function export:f_50_Out()
  self = self._graph
  self:MissionFailed()
end
function export:f_37_Attached()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.VehicleLockIcon
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_106_Is_nil
  l0.Is_not_nil = self.f_106_Is_not_nil
  l0:In()
end
function export:f_8_MessageRequested()
  local l0
  self = self._graph
  l0 = self[10]
  l0.MapPoint = self.VehicleIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0:Show()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.OwnerObject
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_82_Is_nil
  l0.Is_not_nil = self.f_82_Is_not_nil
  l0:In()
end
function export:f_104_Attached()
  local l0
  self = self._graph
  l0 = self[101]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_03",
    item = "Objective_03",
    id = "335939"
  }
  l0:ShowNewObjective()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_77_Out_0
  l0.Out[1] = self.f_77_Out_1
  l0:In()
end
function export:f_101_MessageRequested()
  local l0
  self = self._graph
  self:en_102()
  l0 = self[102]
  l0:Enable()
end
function export:f_74_Reset()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:f_39_Out_0()
  self = self._graph
  self:VehiclePickedUp()
end
function export:f_39_Out_1()
  local l0
  self = self._graph
  self:en_6()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0:Display()
end
function export:f_32_Hidden()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_32_Shown()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_36_Attached()
  local l0
  self = self._graph
  l0 = self[11]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_02",
    item = "Objective_02",
    id = "335938"
  }
  l0:ShowNewObjective()
end
function export:f_44_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0:In()
end
function export:f_44_Enter()
  local l0
  self = self._graph
  l0 = self[44]
  self.VehicleState = l0.StateID
end
function export:f_44_Entered()
  local l0
  self = self._graph
  l0 = self[44]
  self.VehicleState = l0.StateID
  self:en_24()
  l0 = self[24]
  l0:Show()
end
function export:f_44_Exiting()
  local l0
  self = self._graph
  l0 = self[44]
  self.VehicleState = l0.StateID
end
function export:f_44_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(2)
end
function export:f_44_IsUnusable()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Input(1)
end
function export:f_44_Leave()
  local l0
  self = self._graph
  l0 = self[44]
  self.VehicleState = l0.StateID
  self:en_24()
  l0 = self[24]
  l0:Hide()
end
function export:f_44_StateChange()
  local l0
  self = self._graph
  l0 = self[44]
  self.VehicleState = l0.StateID
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.VehicleState
  l0.B = 4
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_55_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_30_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  l0.Vehicle = self.vehicle
  l0.Lock = 0
  l0._graph = self
  l0.Out = self.f_34_Out
  l0:In()
end
function export:f_90_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_94_Out_0
  l0.Out[1] = self.f_94_Out_1
  l0:In()
end
function export:f_90_Enabled()
  self = self._graph
  self:OwnerProfiled()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_06",
    item = "Objective_06",
    id = "395863"
  }
  l0:ShowMissionFailed()
end
function export:f_22_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0:In()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_12_EnterRadius()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Hide()
end
function export:f_12_ExitRadius()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Show()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = self[86]
  l0.Entity = self.vehicle
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarUnlocked",
    item = "KeyIntel_CarUnlocked",
    id = "336457"
  }
  l0:SetKeyIntel()
end
function export:f_69_Out_0()
  self = self._graph
  self:Out()
end
function export:f_69_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_47_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.OwnerObject
  l0._graph = self
  l0.Out = self.f_84_Out
  l0:FromEntity()
end
function export:f_47_ProfileAssigned()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:DisableHack()
end
function export:f_112_Is_nil()
  local l0
  self = self._graph
  l0 = self[111]
  l0:Input(0)
end
function export:f_112_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[110]
  l0.MapPoint = self.VehicleLockIcon
  l0.LocMapMarkerTitle = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  l0:Hide()
end
function export:f_67_Is_nil()
  local l0
  self = self._graph
  l0 = self[36]
  l0.Parent = self.owner
  l0.Child = self.OwnerIcon
  l0.NpcIcon = 1
  l0:Attach()
end
function export:f_67_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Parent = self.owner
  l0.Child = self.OwnerIcon
  l0:Attach()
end
function export:f_40_EngineShutDown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_10_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = self.f_30_Usable
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0:SetAsUsable()
end
function export:f_103_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_91_MessageRequested()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Enable()
end
function export:f_59_Out_0()
  self = self._graph
  self:Started()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.OwnerObject
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_83_Is_nil
  l0.Is_not_nil = self.f_83_Is_not_nil
  l0:In()
end
function export:f_60_PostOut()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Enable()
end
function export:f_77_Out_0()
  self = self._graph
  self:VehicleSpawned()
end
function export:f_77_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_20_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0:SetAsUnusable()
end
function export:f_51_Out_0()
  self = self._graph
  self:OwnerHacked()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0.UnspawnAllowed = self.f_2_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:AllowUnspawn()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.vehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vehicle
  l0._graph = self
  l0.Out = self.f_75_Out
  l0:FromEntity()
end
function export:f_87_Reset()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Disable()
end
function export:f_108_Shown()
  local l0
  self = self._graph
  l0 = self[109]
  l0:Input(1)
end
function export:f_11_MessageRequested()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Enable()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:In()
end
function export:f_35_UnassignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_13_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0:SetAsUnusable()
end
function export:f_38_UnspawnPrevented()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0.Out = self.f_76_Out
  l0:FromEntity()
end
function export:f_2_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = self[95]
  l0:Input(0)
end
function export:f_109_Out()
  local l0
  self = self._graph
  l0 = self[60]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:f_52_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = self.Mission
  l0._graph = self
  l0.Out = DummyFunction
  l0:Abort()
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_05",
    item = "Objective_05",
    id = "335941"
  }
  l0:ShowNewObjective()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0.Vehicle = self.vehicle
  l0.UseAnimation = 1
  l0:Unassign()
end
function export:f_106_Is_nil()
  local l0
  self = self._graph
  l0 = self[109]
  l0:Input(0)
end
function export:f_106_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[107]
  l0.Parent = self.VehicleIcon
  l0.Child = self.VehicleLockIcon
  l0:Attach()
end
function export:f_83_Is_nil()
  local l0
  self = self._graph
  self:en_72()
  l0 = self[72]
  l0:AssignProfile()
end
function export:f_83_Is_not_nil()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:AssignProfile()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_39_Out_0
  l0.Out[1] = self.f_39_Out_1
  l0:In()
end
function export:f_25_Entered()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_34_Out()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_13_Unusable()
  local l0
  self = self._graph
  l0 = self[21]
  l0.MissionName = self.Mission
  l0:ShowMissionComplete()
end
function export:f_92_Disabled()
  local l0
  self = self._graph
  self:en_89()
  l0 = self[89]
  l0:Hide()
end
function export:f_92_Enabled()
  local l0
  self = self._graph
  self:en_89()
  l0 = self[89]
  l0:Show()
end
function export:f_92_HackSuccess()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Disable()
end
function export:f_82_Is_nil()
  local l0
  self = self._graph
  l0 = self[17]
  l0.HackableEntity = self.owner
  l0:EnableHack()
end
function export:f_82_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[88]
  l0.HackableEntity = self.owner
  l0:EnableHack()
end
function export:f_27_Disabled()
  local l0
  self = self._graph
  l0 = self[99]
  l0:Input(0)
end
function export:f_27_Enabled()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Input(0)
end
function export:f_27_InfoDisplayed()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Disable()
end
function export:f_21_MessageRequested()
  local l0
  self = self._graph
  l0 = self[80]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_46_Set()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Parent = self.vehicle
  l0.Child = self.VehicleIcon
  l0.CarIcon = 1
  l0:Attach()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.MapPoint = self.OwnerIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.MapPoint = self.VehicleIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Acquire",
    id = "185984"
  }
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.MapPoint = self.DropOffIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_89()
  local l0
  l0 = self[89]
  l0.MapPoint = self.OwnerIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Entity = self.owner
  l0.Color = "Yellow"
end
function export:en_72()
  local l0
  l0 = self[72]
  l0.HackableEntity = self.OwnerCLO
  l0.OasisProfilerInfo = self.OwnerProfile
end
function export:en_102()
  local l0
  l0 = self[102]
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = self.owner
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.HackableEntity = self.owner
end
function export:en_6()
  local l0
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.vehicle
  l0.NPC_Name = self.HealthBarText
  l0._graph = self
  l0.Displayed = self.f_6_Displayed
  l0.Hidden = self.f_6_Hidden
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Vehicle = self.vehicle
  l0.NoMoveTime = 0.5
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = 0
  l0.Green = 0
  l0.Blue = 0
  l0.Alpha = 100
  l0.Radius = 50
  l0.DrawType = "Inside"
  l0.ShapeType = "CMissionCircleDescriptor"
  l0.MinimapContext = "Domino_Default"
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.MapPoint = self.DropOffIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.LocMapMarkerTitle = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.Vehicle = self.vehicle
end
function export:en_90()
  local l0
  l0 = self[90]
  l0.Entity = self.owner
  l0.Color = "Yellow"
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Entity1 = self.DropOffIcon
  l0.Entity2 = self.vehicle
  l0.Radius = 2
  l0.CheckNow = 1
end
function export:en_47()
  local l0
  l0 = self[47]
  l0.HackableEntity = self.OwnerObject
  l0.OasisProfilerInfo = self.OwnerProfile
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.Vehicle = self.vehicle
end
function export:en_92()
  local l0
  l0 = self[92]
  l0.HackableEntity = self.owner
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.ProfilerInfoType = "KeyIntel"
  l0.ProfilableEntity = self.owner
end
function export:Out()
end
function export:VehiclePickedUp()
end
function export:OwnerHacked()
end
function export:OwnerProfiled()
end
function export:LayerLoaded()
end
function export:Started()
end
function export:OwnerSpawned()
end
function export:VehicleSpawned()
end
function export:MissionFailed()
end
function export:MissionSuccess()
end
_compilerVersion = 4
