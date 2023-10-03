export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
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
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/VehicleController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "BiometricCarKeyActivity_Main"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main"
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
  self.box_MapPointController_v3_3 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_3
  l0._graph = self
  l0._name = "box_MapPointController_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|46968250"
  l0.Shown = self.f_box_MapPointController_v3_3_Shown
  l0.Hidden = self.f_box_MapPointController_v3_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Hackable_Controller_88 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_88
  l0._graph = self
  l0._name = "box_Hackable_Controller_88"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|237063540"
  l0.Enabled = self.f_box_Hackable_Controller_88_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_99
  l0._graph = self
  l0._name = "box_MultipleOR_99"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|273232984"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_99_Out
  self.box_MapPointController_v3_16 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_16
  l0._graph = self
  l0._name = "box_MapPointController_v3_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|316722365"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_80 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_80
  l0._graph = self
  l0._name = "box_MissionLayer_v2_80"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|396116414"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_80_Unloaded
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_24 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_24
  l0._graph = self
  l0._name = "box_MapPointController_v3_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|412316060"
  l0.Shown = self.f_box_MapPointController_v3_24_Shown
  l0.Hidden = self.f_box_MapPointController_v3_24_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Hackable_Controller_61 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_61
  l0._graph = self
  l0._name = "box_Hackable_Controller_61"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|442093612"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_61_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MapPointController_v3_89 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_89
  l0._graph = self
  l0._name = "box_MapPointController_v3_89"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|454462673"
  l0.Shown = self.f_box_MapPointController_v3_89_Shown
  l0.Hidden = self.f_box_MapPointController_v3_89_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Highlight_Controller_1 = cbox:CreateBox("Domino/System/EntityHighlightController.lua")
  l0 = self.box_Highlight_Controller_1
  l0._graph = self
  l0._name = "box_Highlight_Controller_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|465129639"
  l0.Enabled = self.f_box_Highlight_Controller_1_Enabled
  l0.Disabled = self.f_box_Highlight_Controller_1_Disabled
  self.box_Hackable_Controller_72 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_72
  l0._graph = self
  l0._name = "box_Hackable_Controller_72"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|476624449"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_72_Disabled
  l0.ProfileAssigned = self.f_box_Hackable_Controller_72_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Profiler_Monitor_v2_102 = cbox:CreateBox("Domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_102
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_102"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|544664779"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_102_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_102_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_102_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_Hackable_Controller_17 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_17
  l0._graph = self
  l0._name = "box_Hackable_Controller_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|707122904"
  l0.Enabled = self.f_box_Hackable_Controller_17_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_7 = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_7
  l0._graph = self
  l0._name = "box_Hackable_Monitor_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|709954660"
  l0.Enabled = self.f_box_Hackable_Monitor_7_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_7_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_box_Hackable_Monitor_7_HackContextual
  l0.AllHacked = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|713558056"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|748532446"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_SnapAndBind_107 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_107
  l0._graph = self
  l0._name = "box_SnapAndBind_107"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|752510105"
  l0.Attached = self.f_box_SnapAndBind_107_Attached
  self.box_KeyIntel_Controller_86 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_86
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_86"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|805097424"
  l0.Set = self.f_box_KeyIntel_Controller_86_Set
  l0.Reset = DummyFunction
  self.box_KeyIntel_Controller_19 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_19
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|897784308"
  l0.Set = self.f_box_KeyIntel_Controller_19_Set
  l0.Reset = DummyFunction
  self.box_MissionMessageController_26 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_26
  l0._graph = self
  l0._name = "box_MissionMessageController_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1033758184"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_26_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1103302348"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_81_Out
  self.box_MapPointController_v3_110 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_110
  l0._graph = self
  l0._name = "box_MapPointController_v3_110"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1105507182"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_110_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_RewardController_v3_113 = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_113
  l0._graph = self
  l0._name = "box_RewardController_v3_113"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1135193968"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = self.f_box_RewardController_v3_113_RewardsRegistered
  l0.RewardsExecuted = DummyFunction
  self.box_SnapAndBind_45 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_45
  l0._graph = self
  l0._name = "box_SnapAndBind_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1158126178"
  l0.Attached = self.f_box_SnapAndBind_45_Attached
  self.box_VehicleMonitor_v2_23 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_23
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1175821841"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.StateChange = DummyFunction
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v2_23_NoMoveTimer
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
  self.box_MissionMessageController_50 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_50
  l0._graph = self
  l0._name = "box_MissionMessageController_50"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1213169915"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = self.f_box_MissionMessageController_50_Out
  l0.MessageRequested = self.f_box_MissionMessageController_50_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_37 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_37
  l0._graph = self
  l0._name = "box_SnapAndBind_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1215508921"
  l0.Attached = self.f_box_SnapAndBind_37_Attached
  self.box_MissionMessageController_8 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_8
  l0._graph = self
  l0._name = "box_MissionMessageController_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1221300584"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_8_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_104 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_104
  l0._graph = self
  l0._name = "box_SnapAndBind_104"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1243815577"
  l0.Attached = self.f_box_SnapAndBind_104_Attached
  self.box_MissionMessageController_101 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_101
  l0._graph = self
  l0._name = "box_MissionMessageController_101"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1270290856"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_101_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_KeyIntel_Controller_74 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_74
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_74"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1275238188"
  l0.Set = DummyFunction
  l0.Reset = self.f_box_KeyIntel_Controller_74_Reset
  self.box_MapPointController_v3_32 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_32
  l0._graph = self
  l0._name = "box_MapPointController_v3_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1316233558"
  l0.Shown = self.f_box_MapPointController_v3_32_Shown
  l0.Hidden = self.f_box_MapPointController_v3_32_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_36 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_36
  l0._graph = self
  l0._name = "box_SnapAndBind_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1334194740"
  l0.Attached = self.f_box_SnapAndBind_36_Attached
  self.box_VehicleMonitor_v2_44 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_44
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1336661646"
  l0.Enabled = self.f_box_VehicleMonitor_v2_44_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v2_44_Enter
  l0.Entered = self.f_box_VehicleMonitor_v2_44_Entered
  l0.Leave = self.f_box_VehicleMonitor_v2_44_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v2_44_Exiting
  l0.ChangeSeat = DummyFunction
  l0.StateChange = self.f_box_VehicleMonitor_v2_44_StateChange
  l0.BailedOut = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v2_44_IsUnusable
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.IsUnderwater = self.f_box_VehicleMonitor_v2_44_IsUnderwater
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.TakenDamage = DummyFunction
  self.box_Highlight_Controller_90 = cbox:CreateBox("Domino/System/EntityHighlightController.lua")
  l0 = self.box_Highlight_Controller_90
  l0._graph = self
  l0._name = "box_Highlight_Controller_90"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1437909409"
  l0.Enabled = self.f_box_Highlight_Controller_90_Enabled
  l0.Disabled = self.f_box_Highlight_Controller_90_Disabled
  self.box_MultipleOR_48 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_48
  l0._graph = self
  l0._name = "box_MultipleOR_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1442260214"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_48_Out
  self.box_MissionLayer_v2_22 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1452612592"
  l0.Loaded = self.f_box_MissionLayer_v2_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Proximity_Monitor_12 = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_12
  l0._graph = self
  l0._name = "box_Proximity_Monitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1465436994"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_12_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_12_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_12_ExitRadius
  self.box_MultipleOR_105 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_105
  l0._graph = self
  l0._name = "box_MultipleOR_105"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1475942869"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_105_Out
  self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_95
  l0._graph = self
  l0._name = "box_MultipleOR_95"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1479286494"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_95_Out
  self.box_Hackable_Controller_47 = cbox:CreateBox("Domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_47
  l0._graph = self
  l0._name = "box_Hackable_Controller_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1496933266"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_47_Disabled
  l0.ProfileAssigned = self.f_box_Hackable_Controller_47_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MapPointController_v3_10 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_10
  l0._graph = self
  l0._name = "box_MapPointController_v3_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1525531195"
  l0.Shown = self.f_box_MapPointController_v3_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_103
  l0._graph = self
  l0._name = "box_MultipleOR_103"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1570071934"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_103_Out
  self.box_MissionMessageController_91 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_91
  l0._graph = self
  l0._name = "box_MissionMessageController_91"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1594428853"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_91_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_60 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_60
  l0._graph = self
  l0._name = "box_CinematicPrep_60"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1688631814"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_60_PostOut
  self.box_CLOController_9 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1711935874"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_KeyIntel_Controller_87 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_87
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_87"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1722305634"
  l0.Set = DummyFunction
  l0.Reset = self.f_box_KeyIntel_Controller_87_Reset
  self.box_MapPointController_v3_108 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_108
  l0._graph = self
  l0._name = "box_MapPointController_v3_108"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1724736949"
  l0.Shown = self.f_box_MapPointController_v3_108_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_11 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_11
  l0._graph = self
  l0._name = "box_MissionMessageController_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1738722889"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_11_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_VehicleSeatingController_35 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_35
  l0._graph = self
  l0._name = "box_VehicleSeatingController_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1773106843"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = self.f_box_VehicleSeatingController_35_UnassignCompleted
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_109 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_109
  l0._graph = self
  l0._name = "box_MultipleOR_109"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1807025601"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_109_Out
  self.box_MissionLayer_v2_52 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_52
  l0._graph = self
  l0._name = "box_MissionLayer_v2_52"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1813804263"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_52_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_111 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_111
  l0._graph = self
  l0._name = "box_MultipleOR_111"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1817705071"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_111_Out
  self.box_VehicleMonitor_v2_25 = cbox:CreateBox("Domino/System/VehicleMonitor_v2.lua")
  l0 = self.box_VehicleMonitor_v2_25
  l0._graph = self
  l0._name = "box_VehicleMonitor_v2_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1969707788"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_VehicleMonitor_v2_25_Disabled
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v2_25_Entered
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
  self.box_Hackable_Monitor_92 = cbox:CreateBox("Domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_92
  l0._graph = self
  l0._name = "box_Hackable_Monitor_92"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2051758639"
  l0.Enabled = self.f_box_Hackable_Monitor_92_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_92_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_92_HackSuccess
  l0.HackFailed = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Profiler_Monitor_v2_27 = cbox:CreateBox("Domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_27
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2072213814"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_27_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_27_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_27_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_MissionMessageController_21 = cbox:CreateBox("Domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_21
  l0._graph = self
  l0._name = "box_MissionMessageController_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2110326057"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 0}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_21_MessageRequested
  l0.MessageCompleted = DummyFunction
  self.box_KeyIntel_Controller_46 = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self.box_KeyIntel_Controller_46
  l0._graph = self
  l0._name = "box_KeyIntel_Controller_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2131835222"
  l0.Set = self.f_box_KeyIntel_Controller_46_Set
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
  l0._name = "box_Ordered_Output_69"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1489245192"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_69_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_69_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|526973488", "526973488", "BiometricCarKeyActivity_Main", "Start", "box_Ordered_Output_69.In", self, l0)
  l0:In()
end
function export:f_box_DeadBodyUnspawnController_42_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|518143187", "518143187", "BiometricCarKeyActivity_Main", "box_DeadBodyUnspawnController_42.UnspawnAllowed", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MapPointController_v3_3_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_KeyIntel_Controller_74
  l0.Entity = self.owner
  l0 = self.box_MapPointController_v3_3
  l1 = self.box_KeyIntel_Controller_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1388864315", "1388864315", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_3.Hidden", "box_KeyIntel_Controller_74.ResetKeyIntel", l0, l1)
  l1:ResetKeyIntel()
end
function export:f_box_MapPointController_v3_3_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_26
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_00",
    item = "Objective_00",
    id = "335942"
  }
  l0 = self.box_MapPointController_v3_3
  l1 = self.box_MissionMessageController_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1550693754", "1550693754", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_3.Shown", "box_MissionMessageController_26.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Simple_Node_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_44()
  l0 = self.box_VehicleMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|136263896", "136263896", "BiometricCarKeyActivity_Main", "box_Simple_Node_29.Out", "box_VehicleMonitor_v2_44.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Health_Bar_Controller_6()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|998003298", "998003298", "BiometricCarKeyActivity_Main", "box_Ordered_Output_31.Out", "box_Health_Bar_Controller_6.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1752462094"
  l0.Out = self.f_box_Simple_Node_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|589025355", "589025355", "BiometricCarKeyActivity_Main", "box_Ordered_Output_31.Out", "box_Simple_Node_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1513795641"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = self.f_box_Vehicle_Controller_40_EngineShutDown
  l0.EngineStarted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1265838749", "1265838749", "BiometricCarKeyActivity_Main", "box_Ordered_Output_31.Out", "box_Vehicle_Controller_40.ShutDownEngine", clone, l0)
  l0:ShutDownEngine()
end
function export:f_box_Hackable_Controller_88_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_92()
  l0 = self.box_Hackable_Controller_88
  l1 = self.box_Hackable_Monitor_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|151967224", "151967224", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_88.Enabled", "box_Hackable_Monitor_92.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_99_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_5()
  l0 = self.box_MultipleOR_99
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|207464428", "207464428", "BiometricCarKeyActivity_Main", "box_MultipleOR_99.Out", "box_MissionZoneController_v2_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Set_Vehicle_Lock_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_61
  l0.HackableEntity = self.vehicle
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1099085082", "1099085082", "BiometricCarKeyActivity_Main", "box_Set_Vehicle_Lock_65.Out", "box_Hackable_Controller_61.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MissionLayer_v2_80_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = self.Mission
  l0._graph = self
  l0._name = "box_MissionController_v2_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|868577000"
  l0.Out = self.f_box_MissionController_v2_33_Out
  l0 = self.box_MissionLayer_v2_80
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|95949234", "95949234", "BiometricCarKeyActivity_Main", "box_MissionLayer_v2_80.Unloaded", "box_MissionController_v2_33.TerminateMission", l0, l1)
  l1:TerminateMission()
end
function export:f_box_MapPointController_v3_24_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_45
  l0.Parent = self.vehicle
  l0.Child = self.VehicleIcon
  l0.CarIcon = 1
  l0 = self.box_MapPointController_v3_24
  l1 = self.box_SnapAndBind_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1058811633", "1058811633", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_24.Hidden", "box_SnapAndBind_45.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MapPointController_v3_24_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_16()
  l0 = self.box_MapPointController_v3_24
  l1 = self.box_MapPointController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1565125797", "1565125797", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_24.Shown", "box_MapPointController_v3_16.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Controller_61_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_KeyIntel_Controller_46
  l0.Entity = self.vehicle
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  l0 = self.box_Hackable_Controller_61
  l1 = self.box_KeyIntel_Controller_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1070722054", "1070722054", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_61.Disabled", "box_KeyIntel_Controller_46.SetKeyIntel", l0, l1)
  l1:SetKeyIntel()
end
function export:f_box_MapPointController_v3_89_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_KeyIntel_Controller_87
  l0.Entity = self.owner
  l0 = self.box_MapPointController_v3_89
  l1 = self.box_KeyIntel_Controller_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1467354449", "1467354449", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_89.Hidden", "box_KeyIntel_Controller_87.ResetKeyIntel", l0, l1)
  l1:ResetKeyIntel()
end
function export:f_box_MapPointController_v3_89_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_91
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_00",
    item = "Objective_00",
    id = "335942"
  }
  l0 = self.box_MapPointController_v3_89
  l1 = self.box_MissionMessageController_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|490869370", "490869370", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_89.Shown", "box_MissionMessageController_91.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Test_if_Nil_93_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0._name = "box_DeadBodyUnspawnController_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|8283452"
  l0.UnspawnAllowed = self.f_box_DeadBodyUnspawnController_42_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|537738774", "537738774", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_93.Is_nil", "box_DeadBodyUnspawnController_42.AllowUnspawn", clone, l0)
  l0:AllowUnspawn()
end
function export:f_box_Test_if_Nil_93_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|495193176", "495193176", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_93.Is_not_nil", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Highlight_Controller_1_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1690440916"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_Highlight_Controller_1
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1433711006", "1433711006", "BiometricCarKeyActivity_Main", "box_Highlight_Controller_1.Disabled", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_Highlight_Controller_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Highlight_Controller_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1061562427", "1061562427", "BiometricCarKeyActivity_Main", "box_Highlight_Controller_1.Enabled", "OwnerProfiled", l0, self)
  self:OwnerProfiled()
end
function export:f_box_Hackable_Controller_72_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  l0.CLO = self.OwnerCLO
  l0 = self.box_Hackable_Controller_72
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|513867983", "513867983", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_72.Disabled", "box_CLOController_15.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Controller_72_ProfileAssigned()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Controller_72()
  l0 = self.box_Hackable_Controller_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1151784690", "1151784690", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_72.ProfileAssigned", "box_Hackable_Controller_72.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Profiler_Monitor_v2_102_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_Profiler_Monitor_v2_102
  l1 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|861239292", "861239292", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_102.Disabled", "box_MultipleOR_99.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Profiler_Monitor_v2_102_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_103()
  l0 = self.box_Profiler_Monitor_v2_102
  l1 = self.box_MultipleOR_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2053830753", "2053830753", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_102.Enabled", "box_MultipleOR_103.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Profiler_Monitor_v2_102_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_102()
  l0 = self.box_Profiler_Monitor_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1609526725", "1609526725", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_102.InfoDisplayed", "box_Profiler_Monitor_v2_102.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Set_Entity_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.owner = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1864828747", "1864828747", "BiometricCarKeyActivity_Main", "box_Set_Entity_84.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Hackable_Controller_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Controller_17
  l1 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1135934367", "1135934367", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_17.Enabled", "box_Hackable_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_3()
  l0 = self.box_Hackable_Monitor_7
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|117223784", "117223784", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_7.Disabled", "box_MapPointController_v3_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_3()
  l0 = self.box_Hackable_Monitor_7
  l1 = self.box_MapPointController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1183454392", "1183454392", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_7.Enabled", "box_MapPointController_v3_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_Hackable_Monitor_7_HackContextual()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_7()
  l0 = self.box_Hackable_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1568214017", "1568214017", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_7.HackContextual", "box_Hackable_Monitor_7.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.owner = l0.UserID
  self:OnEnter_box_MultipleOR_81()
  l1 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1556002454", "1556002454", "BiometricCarKeyActivity_Main", "box_CLOController_15.OnUserInPlace", "box_MultipleOR_81.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_23()
  l0 = self.box_MultipleOR_18
  l1 = self.box_VehicleMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|76280327", "76280327", "BiometricCarKeyActivity_Main", "box_MultipleOR_18.Out", "box_VehicleMonitor_v2_23.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SnapAndBind_107_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_108
  l0.MapPoint = self.VehicleLockIcon
  l0.LocMapMarkerTitle = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  l0 = self.box_SnapAndBind_107
  l1 = self.box_MapPointController_v3_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1970117060", "1970117060", "BiometricCarKeyActivity_Main", "box_SnapAndBind_107.Attached", "box_MapPointController_v3_108.Show", l0, l1)
  l1:Show()
end
function export:f_box_Health_Bar_Controller_68_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_93"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|454764084"
  l0.Is_nil = self.f_box_Test_if_Nil_93_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_93_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1418596446", "1418596446", "BiometricCarKeyActivity_Main", "box_Health_Bar_Controller_68.Hidden", "box_Test_if_Nil_93.In", clone, l0)
  l0:In()
end
function export:f_box_KeyIntel_Controller_86_Set()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_112"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1503136833"
  l0.Is_nil = self.f_box_Test_if_Nil_112_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_112_Is_not_nil
  l0 = self.box_KeyIntel_Controller_86
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|910600173", "910600173", "BiometricCarKeyActivity_Main", "box_KeyIntel_Controller_86.Set", "box_Test_if_Nil_112.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_94_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|710680692", "710680692", "BiometricCarKeyActivity_Main", "box_Ordered_Output_94.Out", "OwnerHacked", clone, self)
  self:OwnerHacked()
end
function export:f_box_Ordered_Output_94_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|164814964", "164814964", "BiometricCarKeyActivity_Main", "box_Ordered_Output_94.Out", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionController_v2_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|403056778", "403056778", "BiometricCarKeyActivity_Main", "box_MissionController_v2_33.Out", "MissionSuccess", clone, self)
  self:MissionSuccess()
end
function export:f_box_KeyIntel_Controller_19_Set()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_113
  l0.entity = self.owner
  l0.ItemDB = "Items.9223372047097303032"
  l0.RewardEvent = "OnHackSuccess"
  l0 = self.box_KeyIntel_Controller_19
  l1 = self.box_RewardController_v3_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1763368710", "1763368710", "BiometricCarKeyActivity_Main", "box_KeyIntel_Controller_19.Set", "box_RewardController_v3_113.RegisterRewards", l0, l1)
  l1:RegisterRewards()
end
function export:f_box_Vehicle_Controller_20_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  l0.Vehicle = self.vehicle
  l0.Lock = 1
  l0._graph = self
  l0._name = "box_Set_Vehicle_Lock_65"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|380988116"
  l0.Out = self.f_box_Set_Vehicle_Lock_65_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|543812312", "543812312", "BiometricCarKeyActivity_Main", "box_Vehicle_Controller_20.Unusable", "box_Set_Vehicle_Lock_65.In", clone, l0)
  l0:In()
end
function export:f_box_Health_Bar_Controller_6_Displayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_12()
  l0 = self.box_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|503998702", "503998702", "BiometricCarKeyActivity_Main", "box_Health_Bar_Controller_6.Displayed", "box_Proximity_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Health_Bar_Controller_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_12()
  l0 = self.box_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|529237250", "529237250", "BiometricCarKeyActivity_Main", "box_Health_Bar_Controller_6.Hidden", "box_Proximity_Monitor_12.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Integers_v2_55_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|692017002", "692017002", "BiometricCarKeyActivity_Main", "box_Compare_Integers_v2_55.A_le_B", "box_MultipleOR_48.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Set_Entity_76_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Owner = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1050103121"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|675188768", "675188768", "BiometricCarKeyActivity_Main", "box_Set_Entity_76.Out", "box_Ordered_Output_71.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_26_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Highlight_Controller_1()
  l0 = self.box_MissionMessageController_26
  l1 = self.box_Highlight_Controller_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|328349206", "328349206", "BiometricCarKeyActivity_Main", "box_MissionMessageController_26.MessageRequested", "box_Highlight_Controller_1.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|83953994", "83953994", "BiometricCarKeyActivity_Main", "box_Ordered_Output_56.Out", "LayerLoaded", clone, self)
  self:LayerLoaded()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = self.VehicleCLO
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2018976914", "2018976914", "BiometricCarKeyActivity_Main", "box_Ordered_Output_56.Out", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|620642353", "620642353", "BiometricCarKeyActivity_Main", "box_Ordered_Output_71.Out", "OwnerSpawned", clone, self)
  self:OwnerSpawned()
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_KeyIntel_Controller_19
  l0.Entity = self.owner
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_Owner",
    item = "KeyIntel_Owner",
    id = "403736"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1599667658", "1599667658", "BiometricCarKeyActivity_Main", "box_Ordered_Output_71.Out", "box_KeyIntel_Controller_19.SetKeyIntel", clone, l0)
  l0:SetKeyIntel()
end
function export:f_box_MultipleOR_81_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0._name = "box_DeadBodyUnspawnController_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1777056179"
  l0.UnspawnAllowed = DummyFunction
  l0.UnspawnPrevented = self.f_box_DeadBodyUnspawnController_38_UnspawnPrevented
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_81
  l1 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1128697231", "1128697231", "BiometricCarKeyActivity_Main", "box_MultipleOR_81.Out", "box_DeadBodyUnspawnController_38.PreventUnspawn", l0, l1)
  l1:PreventUnspawn()
end
function export:f_box_MapPointController_v3_110_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_MapPointController_v3_110
  l1 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1029018729", "1029018729", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_110.Hidden", "box_MultipleOR_111.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_RewardController_v3_113_RewardsRegistered()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_67"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1512666909"
  l0.Is_nil = self.f_box_Test_if_Nil_67_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_67_Is_not_nil
  l0 = self.box_RewardController_v3_113
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1833219787", "1833219787", "BiometricCarKeyActivity_Main", "box_RewardController_v3_113.RewardsRegistered", "box_Test_if_Nil_67.In", l0, l1)
  l1:In()
end
function export:f_box_SnapAndBind_45_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_16()
  l0 = self.box_SnapAndBind_45
  l1 = self.box_MapPointController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1122272247", "1122272247", "BiometricCarKeyActivity_Main", "box_SnapAndBind_45.Attached", "box_MapPointController_v3_16.Show", l0, l1)
  l1:Show()
end
function export:f_box_VehicleMonitor_v2_23_NoMoveTimer()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|90076017"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_31_Out_2
  l0 = self.box_VehicleMonitor_v2_23
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|756542853", "756542853", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_23.NoMoveTimer", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_50_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.vehicle
  l0.NPC_Name = self.HealthBarText
  l0._graph = self
  l0._name = "box_Health_Bar_Controller_68"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|792934293"
  l0.Displayed = DummyFunction
  l0.Hidden = self.f_box_Health_Bar_Controller_68_Hidden
  l0 = self.box_MissionMessageController_50
  l1 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1467645785", "1467645785", "BiometricCarKeyActivity_Main", "box_MissionMessageController_50.MessageRequested", "box_Health_Bar_Controller_68.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_50_Out()
  local l0
  self = self._graph
  l0 = self.box_MissionMessageController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1148754096", "1148754096", "BiometricCarKeyActivity_Main", "box_MissionMessageController_50.Out", "MissionFailed", l0, self)
  self:MissionFailed()
end
function export:f_box_SnapAndBind_37_Attached()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_106"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1856940194"
  l0.Is_nil = self.f_box_Test_if_Nil_106_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_106_Is_not_nil
  l0 = self.box_SnapAndBind_37
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1898951266", "1898951266", "BiometricCarKeyActivity_Main", "box_SnapAndBind_37.Attached", "box_Test_if_Nil_106.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_8_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_10
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
  l0 = self.box_MissionMessageController_8
  l1 = self.box_MapPointController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|221637372", "221637372", "BiometricCarKeyActivity_Main", "box_MissionMessageController_8.MessageRequested", "box_MapPointController_v3_10.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionZoneController_v2_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_82"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2059431448"
  l0.Is_nil = self.f_box_Test_if_Nil_82_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_82_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1386060076", "1386060076", "BiometricCarKeyActivity_Main", "box_MissionZoneController_v2_5.Disabled", "box_Test_if_Nil_82.In", clone, l0)
  l0:In()
end
function export:f_box_SnapAndBind_104_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_101
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_03",
    item = "Objective_03",
    id = "335939"
  }
  l0 = self.box_SnapAndBind_104
  l1 = self.box_MissionMessageController_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1600022519", "1600022519", "BiometricCarKeyActivity_Main", "box_SnapAndBind_104.Attached", "box_MissionMessageController_101.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Set_Entity_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.Vehicle = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_77"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1688853751"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_77_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_77_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1405161525", "1405161525", "BiometricCarKeyActivity_Main", "box_Set_Entity_75.Out", "box_Ordered_Output_77.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_101_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_102()
  l0 = self.box_MissionMessageController_101
  l1 = self.box_Profiler_Monitor_v2_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|273767510", "273767510", "BiometricCarKeyActivity_Main", "box_MissionMessageController_101.MessageRequested", "box_Profiler_Monitor_v2_102.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_KeyIntel_Controller_74_Reset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Highlight_Controller_1()
  l0 = self.box_KeyIntel_Controller_74
  l1 = self.box_Highlight_Controller_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|343906506", "343906506", "BiometricCarKeyActivity_Main", "box_KeyIntel_Controller_74.Reset", "box_Highlight_Controller_1.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2047401008", "2047401008", "BiometricCarKeyActivity_Main", "box_Ordered_Output_39.Out", "VehiclePickedUp", clone, self)
  self:VehiclePickedUp()
end
function export:f_box_Ordered_Output_39_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Health_Bar_Controller_6()
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|670289775", "670289775", "BiometricCarKeyActivity_Main", "box_Ordered_Output_39.Out", "box_Health_Bar_Controller_6.Display", clone, l0)
  l0:Display()
end
function export:f_box_MapPointController_v3_32_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_23()
  l0 = self.box_MapPointController_v3_32
  l1 = self.box_VehicleMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|769014255", "769014255", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_32.Hidden", "box_VehicleMonitor_v2_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v3_32_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MapPointController_v3_32
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2144644458", "2144644458", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_32.Shown", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SnapAndBind_36_Attached()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_11
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_02",
    item = "Objective_02",
    id = "335938"
  }
  l0 = self.box_SnapAndBind_36
  l1 = self.box_MissionMessageController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|281643507", "281643507", "BiometricCarKeyActivity_Main", "box_SnapAndBind_36.Attached", "box_MissionMessageController_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_VehicleMonitor_v2_44_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1681470051"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0 = self.box_VehicleMonitor_v2_44
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|168387008", "168387008", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.Enabled", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_44_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_44
  self.VehicleState = l0.StateID
end
function export:f_box_VehicleMonitor_v2_44_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_44
  self.VehicleState = l0.StateID
  self:OnEnter_box_MapPointController_v3_24()
  l1 = self.box_MapPointController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1412300030", "1412300030", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.Entered", "box_MapPointController_v3_24.Show", l0, l1)
  l1:Show()
end
function export:f_box_VehicleMonitor_v2_44_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_44
  self.VehicleState = l0.StateID
end
function export:f_box_VehicleMonitor_v2_44_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_VehicleMonitor_v2_44
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|284547419", "284547419", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.IsUnderwater", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_VehicleMonitor_v2_44_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_48()
  l0 = self.box_VehicleMonitor_v2_44
  l1 = self.box_MultipleOR_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|890535232", "890535232", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.IsUnusable", "box_MultipleOR_48.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v2_44_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_44
  self.VehicleState = l0.StateID
  self:OnEnter_box_MapPointController_v3_24()
  l1 = self.box_MapPointController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1566184050", "1566184050", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.Leave", "box_MapPointController_v3_24.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VehicleMonitor_v2_44_StateChange()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v2_44
  self.VehicleState = l0.StateID
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.VehicleState
  l0.B = 4
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_55"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|971849523"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Integers_v2_55_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0 = self.box_VehicleMonitor_v2_44
  l1 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1635032413", "1635032413", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_44.StateChange", "box_Compare_Integers_v2_55.In", l0, l1)
  l1:In()
end
function export:f_box_Vehicle_Controller_30_Usable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  l0.Vehicle = self.vehicle
  l0.Lock = 0
  l0._graph = self
  l0._name = "box_Set_Vehicle_Lock_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1997421168"
  l0.Out = self.f_box_Set_Vehicle_Lock_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|277707817", "277707817", "BiometricCarKeyActivity_Main", "box_Vehicle_Controller_30.Usable", "box_Set_Vehicle_Lock_34.In", clone, l0)
  l0:In()
end
function export:f_box_Highlight_Controller_90_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_94"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|866105276"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_94_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_94_Out_1
  l0 = self.box_Highlight_Controller_90
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|260007839", "260007839", "BiometricCarKeyActivity_Main", "box_Highlight_Controller_90.Disabled", "box_Ordered_Output_94.In", l0, l1)
  l1:In()
end
function export:f_box_Highlight_Controller_90_Enabled()
  local l0
  self = self._graph
  l0 = self.box_Highlight_Controller_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|390470279", "390470279", "BiometricCarKeyActivity_Main", "box_Highlight_Controller_90.Enabled", "OwnerProfiled", l0, self)
  self:OwnerProfiled()
end
function export:f_box_MultipleOR_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_50
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_06",
    item = "Objective_06",
    id = "395863"
  }
  l0 = self.box_MultipleOR_48
  l1 = self.box_MissionMessageController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1665935800", "1665935800", "BiometricCarKeyActivity_Main", "box_MultipleOR_48.Out", "box_MissionMessageController_50.ShowMissionFailed", l0, l1)
  l1:ShowMissionFailed()
end
function export:f_box_MissionLayer_v2_22_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1033871753"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_MissionLayer_v2_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|677475860", "677475860", "BiometricCarKeyActivity_Main", "box_MissionLayer_v2_22.Loaded", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_12_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_Proximity_Monitor_12
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|74102821", "74102821", "BiometricCarKeyActivity_Main", "box_Proximity_Monitor_12.Disabled", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_12_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_32()
  l0 = self.box_Proximity_Monitor_12
  l1 = self.box_MapPointController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1230715890", "1230715890", "BiometricCarKeyActivity_Main", "box_Proximity_Monitor_12.EnterRadius", "box_MapPointController_v3_32.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Proximity_Monitor_12_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_32()
  l0 = self.box_Proximity_Monitor_12
  l1 = self.box_MapPointController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1487047731", "1487047731", "BiometricCarKeyActivity_Main", "box_Proximity_Monitor_12.ExitRadius", "box_MapPointController_v3_32.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_105_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_52
  l0.LayerName = self.MissionLayer
  l0 = self.box_MultipleOR_105
  l1 = self.box_MissionLayer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1506501803", "1506501803", "BiometricCarKeyActivity_Main", "box_MultipleOR_105.Out", "box_MissionLayer_v2_52.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_95_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_KeyIntel_Controller_86
  l0.Entity = self.vehicle
  l0.KeyIntelInfo = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarUnlocked",
    item = "KeyIntel_CarUnlocked",
    id = "336457"
  }
  l0 = self.box_MultipleOR_95
  l1 = self.box_KeyIntel_Controller_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1214923779", "1214923779", "BiometricCarKeyActivity_Main", "box_MultipleOR_95.Out", "box_KeyIntel_Controller_86.SetKeyIntel", l0, l1)
  l1:SetKeyIntel()
end
function export:f_box_Ordered_Output_69_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1030162468", "1030162468", "BiometricCarKeyActivity_Main", "box_Ordered_Output_69.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_69_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = self.MissionLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1617384391", "1617384391", "BiometricCarKeyActivity_Main", "box_Ordered_Output_69.Out", "box_MissionLayer_v2_22.Load", clone, l0)
  l0:Load()
end
function export:f_box_Hackable_Controller_47_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.OwnerObject
  l0._graph = self
  l0._name = "box_Set_Entity_84"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|682630488"
  l0.Out = self.f_box_Set_Entity_84_Out
  l0 = self.box_Hackable_Controller_47
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1808179061", "1808179061", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_47.Disabled", "box_Set_Entity_84.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_Hackable_Controller_47_ProfileAssigned()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Controller_47()
  l0 = self.box_Hackable_Controller_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1445750488", "1445750488", "BiometricCarKeyActivity_Main", "box_Hackable_Controller_47.ProfileAssigned", "box_Hackable_Controller_47.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Test_if_Nil_112_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_111()
  l0 = self.box_MultipleOR_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|89377461", "89377461", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_112.Is_nil", "box_MultipleOR_111.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_112_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_110
  l0.MapPoint = self.VehicleLockIcon
  l0.LocMapMarkerTitle = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_KeyIntel.KeyIntel_CarLocked",
    item = "KeyIntel_CarLocked",
    id = "336456"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1286141560", "1286141560", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_112.Is_not_nil", "box_MapPointController_v3_110.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Test_if_Nil_67_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_36
  l0.Parent = self.owner
  l0.Child = self.OwnerIcon
  l0.NpcIcon = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1925938174", "1925938174", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_67.Is_nil", "box_SnapAndBind_36.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Test_if_Nil_67_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_104
  l0.Parent = self.owner
  l0.Child = self.OwnerIcon
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1216321147", "1216321147", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_67.Is_not_nil", "box_SnapAndBind_104.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Vehicle_Controller_40_EngineShutDown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  l0.PlayerEntity = nil
  l0._graph = self
  l0._name = "box_Force_Pawns_Vehicle_Stop_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1837503727"
  l0.Out = self.f_box_Force_Pawns_Vehicle_Stop_14_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|987206557", "987206557", "BiometricCarKeyActivity_Main", "box_Vehicle_Controller_40.EngineShutDown", "box_Force_Pawns_Vehicle_Stop_14.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v3_10_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1353619030"
  l0.Out = DummyFunction
  l0.Usable = self.f_box_Vehicle_Controller_30_Usable
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0 = self.box_MapPointController_v3_10
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|695404367", "695404367", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_10.Shown", "box_Vehicle_Controller_30.SetAsUsable", l0, l1)
  l1:SetAsUsable()
end
function export:f_box_MultipleOR_103_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZoneController_v2_5()
  l0 = self.box_MultipleOR_103
  l1 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|697512752", "697512752", "BiometricCarKeyActivity_Main", "box_MultipleOR_103.Out", "box_MissionZoneController_v2_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_91_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Highlight_Controller_90()
  l0 = self.box_MissionMessageController_91
  l1 = self.box_Highlight_Controller_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1379396532", "1379396532", "BiometricCarKeyActivity_Main", "box_MissionMessageController_91.MessageRequested", "box_Highlight_Controller_90.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|459980332", "459980332", "BiometricCarKeyActivity_Main", "box_Ordered_Output_59.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_83"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1871963604"
  l0.Is_nil = self.f_box_Test_if_Nil_83_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_83_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|757628870", "757628870", "BiometricCarKeyActivity_Main", "box_Ordered_Output_59.Out", "box_Test_if_Nil_83.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_60_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_44()
  l0 = self.box_CinematicPrep_60
  l1 = self.box_VehicleMonitor_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1173235116", "1173235116", "BiometricCarKeyActivity_Main", "box_CinematicPrep_60.PostOut", "box_VehicleMonitor_v2_44.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|898061702", "898061702", "BiometricCarKeyActivity_Main", "box_Ordered_Output_77.Out", "VehicleSpawned", clone, self)
  self:VehicleSpawned()
end
function export:f_box_Ordered_Output_77_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|913309504"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_20_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1175350195", "1175350195", "BiometricCarKeyActivity_Main", "box_Ordered_Output_77.Out", "box_Vehicle_Controller_20.SetAsUnusable", clone, l0)
  l0:SetAsUnusable()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2094356834", "2094356834", "BiometricCarKeyActivity_Main", "box_Ordered_Output_51.Out", "OwnerHacked", clone, self)
  self:OwnerHacked()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0._name = "box_DeadBodyUnspawnController_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1792759651"
  l0.UnspawnAllowed = self.f_box_DeadBodyUnspawnController_2_UnspawnAllowed
  l0.UnspawnPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|855174515", "855174515", "BiometricCarKeyActivity_Main", "box_Ordered_Output_51.Out", "box_DeadBodyUnspawnController_2.AllowUnspawn", clone, l0)
  l0:AllowUnspawn()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.vehicle = l0.UserID
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.vehicle
  l0._graph = self
  l0._name = "box_Set_Entity_75"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1256584900"
  l0.Out = self.f_box_Set_Entity_75_Out
  l0 = self.box_CLOController_9
  l1 = Boxes[PathID("Domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1942545359", "1942545359", "BiometricCarKeyActivity_Main", "box_CLOController_9.OnUserInPlace", "box_Set_Entity_75.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_KeyIntel_Controller_87_Reset()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Highlight_Controller_90()
  l0 = self.box_KeyIntel_Controller_87
  l1 = self.box_Highlight_Controller_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1293156755", "1293156755", "BiometricCarKeyActivity_Main", "box_KeyIntel_Controller_87.Reset", "box_Highlight_Controller_90.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_108_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_MapPointController_v3_108
  l1 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1951702182", "1951702182", "BiometricCarKeyActivity_Main", "box_MapPointController_v3_108.Shown", "box_MultipleOR_109.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionMessageController_11_MessageRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_27()
  l0 = self.box_MissionMessageController_11
  l1 = self.box_Profiler_Monitor_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|443200823", "443200823", "BiometricCarKeyActivity_Main", "box_MissionMessageController_11.MessageRequested", "box_Profiler_Monitor_v2_27.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|69334764"
  l0.Out = self.f_box_Simple_Node_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1447284712", "1447284712", "BiometricCarKeyActivity_Main", "box_Simple_Node_28.Out", "box_Simple_Node_29.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleSeatingController_35_UnassignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  l0.Vehicle = self.vehicle
  l0._graph = self
  l0._name = "box_Vehicle_Controller_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2028836717"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_13_Unusable
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0 = self.box_VehicleSeatingController_35
  l1 = Boxes[PathID("Domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|989238618", "989238618", "BiometricCarKeyActivity_Main", "box_VehicleSeatingController_35.UnassignCompleted", "box_Vehicle_Controller_13.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_DeadBodyUnspawnController_38_UnspawnPrevented()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.owner
  l0._graph = self
  l0._name = "box_Set_Entity_76"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|995339006"
  l0.Out = self.f_box_Set_Entity_76_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1624795278", "1624795278", "BiometricCarKeyActivity_Main", "box_DeadBodyUnspawnController_38.UnspawnPrevented", "box_Set_Entity_76.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_DeadBodyUnspawnController_2_UnspawnAllowed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DeadBodyUnspawnController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|521486812", "521486812", "BiometricCarKeyActivity_Main", "box_DeadBodyUnspawnController_2.UnspawnAllowed", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_60
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_MultipleOR_109
  l1 = self.box_CinematicPrep_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|878824639", "878824639", "BiometricCarKeyActivity_Main", "box_MultipleOR_109.Out", "box_CinematicPrep_60.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionLayer_v2_52_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  l0.Mission = self.Mission
  l0._graph = self
  l0._name = "box_MissionController_v2_66"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|10764921"
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_52
  l1 = Boxes[PathID("Domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1135408889", "1135408889", "BiometricCarKeyActivity_Main", "box_MissionLayer_v2_52.Unloaded", "box_MissionController_v2_66.Abort", l0, l1)
  l1:Abort()
end
function export:f_box_MultipleOR_111_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_8
  l0.MissionName = self.Mission
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.BIOMETRIC.Biometric_Objectives.Objective_05",
    item = "Objective_05",
    id = "335941"
  }
  l0 = self.box_MultipleOR_111
  l1 = self.box_MissionMessageController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1470661755", "1470661755", "BiometricCarKeyActivity_Main", "box_MultipleOR_111.Out", "box_MissionMessageController_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Force_Pawns_Vehicle_Stop_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ForcePawnsVehicleStop.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_35
  l0.Vehicle = self.vehicle
  l0.UseAnimation = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|281420255", "281420255", "BiometricCarKeyActivity_Main", "box_Force_Pawns_Vehicle_Stop_14.Out", "box_VehicleSeatingController_35.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_Test_if_Nil_106_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_109()
  l0 = self.box_MultipleOR_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|364134979", "364134979", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_106.Is_nil", "box_MultipleOR_109.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_106_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_107
  l0.Parent = self.VehicleIcon
  l0.Child = self.VehicleLockIcon
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1310938353", "1310938353", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_106.Is_not_nil", "box_SnapAndBind_107.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_Test_if_Nil_83_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_72()
  l0 = self.box_Hackable_Controller_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|205861612", "205861612", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_83.Is_nil", "box_Hackable_Controller_72.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_Test_if_Nil_83_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_47()
  l0 = self.box_Hackable_Controller_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1645577475", "1645577475", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_83.Is_not_nil", "box_Hackable_Controller_47.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_VehicleMonitor_v2_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1276873080"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_39_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_39_Out_1
  l0 = self.box_VehicleMonitor_v2_25
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1815798968", "1815798968", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_25.Disabled", "box_Ordered_Output_39.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v2_25_Entered()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v2_25()
  l0 = self.box_VehicleMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|29710441", "29710441", "BiometricCarKeyActivity_Main", "box_VehicleMonitor_v2_25.Entered", "box_VehicleMonitor_v2_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Set_Vehicle_Lock_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetVehicleLock.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v2_25()
  l0 = self.box_VehicleMonitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2074427017", "2074427017", "BiometricCarKeyActivity_Main", "box_Set_Vehicle_Lock_34.Out", "box_VehicleMonitor_v2_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Vehicle_Controller_13_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_21
  l0.MissionName = self.Mission
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1862153301", "1862153301", "BiometricCarKeyActivity_Main", "box_Vehicle_Controller_13.Unusable", "box_MissionMessageController_21.ShowMissionComplete", clone, l0)
  l0:ShowMissionComplete()
end
function export:f_box_Hackable_Monitor_92_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_89()
  l0 = self.box_Hackable_Monitor_92
  l1 = self.box_MapPointController_v3_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|733292727", "733292727", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_92.Disabled", "box_MapPointController_v3_89.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Hackable_Monitor_92_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_89()
  l0 = self.box_Hackable_Monitor_92
  l1 = self.box_MapPointController_v3_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1055971421", "1055971421", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_92.Enabled", "box_MapPointController_v3_89.Show", l0, l1)
  l1:Show()
end
function export:f_box_Hackable_Monitor_92_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_92()
  l0 = self.box_Hackable_Monitor_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1220036358", "1220036358", "BiometricCarKeyActivity_Main", "box_Hackable_Monitor_92.HackSuccess", "box_Hackable_Monitor_92.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Test_if_Nil_82_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_17
  l0.HackableEntity = self.owner
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1470093019", "1470093019", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_82.Is_nil", "box_Hackable_Controller_17.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Test_if_Nil_82_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_88
  l0.HackableEntity = self.owner
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|596326280", "596326280", "BiometricCarKeyActivity_Main", "box_Test_if_Nil_82.Is_not_nil", "box_Hackable_Controller_88.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Profiler_Monitor_v2_27_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_99()
  l0 = self.box_Profiler_Monitor_v2_27
  l1 = self.box_MultipleOR_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|160829704", "160829704", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_27.Disabled", "box_MultipleOR_99.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Profiler_Monitor_v2_27_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_103()
  l0 = self.box_Profiler_Monitor_v2_27
  l1 = self.box_MultipleOR_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|2012610671", "2012610671", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_27.Enabled", "box_MultipleOR_103.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Profiler_Monitor_v2_27_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_27()
  l0 = self.box_Profiler_Monitor_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1317402326", "1317402326", "BiometricCarKeyActivity_Main", "box_Profiler_Monitor_v2_27.InfoDisplayed", "box_Profiler_Monitor_v2_27.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_21_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_80
  l0.LayerName = self.MissionLayer
  l0 = self.box_MissionMessageController_21
  l1 = self.box_MissionLayer_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|363288182", "363288182", "BiometricCarKeyActivity_Main", "box_MissionMessageController_21.MessageRequested", "box_MissionLayer_v2_80.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_KeyIntel_Controller_46_Set()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_37
  l0.Parent = self.vehicle
  l0.Child = self.VehicleIcon
  l0.CarIcon = 1
  l0 = self.box_KeyIntel_Controller_46
  l1 = self.box_SnapAndBind_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|213291747", "213291747", "BiometricCarKeyActivity_Main", "box_KeyIntel_Controller_46.Set", "box_SnapAndBind_37.Attach", l0, l1)
  l1:Attach()
end
function export:OnEnter_box_MapPointController_v3_3()
  local l0
  l0 = self.box_MapPointController_v3_3
  l0.MapPoint = self.OwnerIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
end
function export:OnEnter_box_MultipleOR_99()
end
function export:OnEnter_box_MapPointController_v3_16()
  local l0
  l0 = self.box_MapPointController_v3_16
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
function export:OnEnter_box_MapPointController_v3_24()
  local l0
  l0 = self.box_MapPointController_v3_24
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
function export:OnEnter_box_MapPointController_v3_89()
  local l0
  l0 = self.box_MapPointController_v3_89
  l0.MapPoint = self.OwnerIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
end
function export:OnEnter_box_Highlight_Controller_1()
  local l0
  l0 = self.box_Highlight_Controller_1
  l0.Entity = self.owner
  l0.Color = "Yellow"
end
function export:OnEnter_box_Hackable_Controller_72()
  local l0
  l0 = self.box_Hackable_Controller_72
  l0.HackableEntity = self.OwnerCLO
  l0.OasisProfilerInfo = self.OwnerProfile
end
function export:OnEnter_box_Profiler_Monitor_v2_102()
  local l0
  l0 = self.box_Profiler_Monitor_v2_102
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = self.owner
end
function export:OnEnter_box_Hackable_Monitor_7()
  local l0
  l0 = self.box_Hackable_Monitor_7
  l0.HackableEntity = self.owner
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_Health_Bar_Controller_6()
  local l0
  l0 = Boxes[PathID("Domino/System/HealthBarController.lua")]
  l0.NPC_ID = self.vehicle
  l0.NPC_Name = self.HealthBarText
  l0._graph = self
  l0._name = "box_Health_Bar_Controller_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|960016904"
  l0.Displayed = self.f_box_Health_Bar_Controller_6_Displayed
  l0.Hidden = self.f_box_Health_Bar_Controller_6_Hidden
end
function export:OnEnter_box_MultipleOR_81()
end
function export:OnEnter_box_VehicleMonitor_v2_23()
  local l0
  l0 = self.box_VehicleMonitor_v2_23
  l0.Vehicle = self.vehicle
  l0.NoMoveTime = 0.5
end
function export:OnEnter_box_MissionZoneController_v2_5()
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
  l0._name = "box_MissionZoneController_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\BiometricCarKeyActivity.domino|@BiometricCarKeyActivity_Main|1225214495"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZoneController_v2_5_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MapPointController_v3_32()
  local l0
  l0 = self.box_MapPointController_v3_32
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
function export:OnEnter_box_VehicleMonitor_v2_44()
  local l0
  l0 = self.box_VehicleMonitor_v2_44
  l0.Vehicle = self.vehicle
end
function export:OnEnter_box_Highlight_Controller_90()
  local l0
  l0 = self.box_Highlight_Controller_90
  l0.Entity = self.owner
  l0.Color = "Yellow"
end
function export:OnEnter_box_MultipleOR_48()
end
function export:OnEnter_box_Proximity_Monitor_12()
  local l0
  l0 = self.box_Proximity_Monitor_12
  l0.Entity1 = self.DropOffIcon
  l0.Entity2 = self.vehicle
  l0.Radius = 2
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_105()
end
function export:OnEnter_box_MultipleOR_95()
end
function export:OnEnter_box_Hackable_Controller_47()
  local l0
  l0 = self.box_Hackable_Controller_47
  l0.HackableEntity = self.OwnerObject
  l0.OasisProfilerInfo = self.OwnerProfile
end
function export:OnEnter_box_MultipleOR_103()
end
function export:OnEnter_box_MultipleOR_109()
end
function export:OnEnter_box_MultipleOR_111()
end
function export:OnEnter_box_VehicleMonitor_v2_25()
  local l0
  l0 = self.box_VehicleMonitor_v2_25
  l0.Vehicle = self.vehicle
end
function export:OnEnter_box_Hackable_Monitor_92()
  local l0
  l0 = self.box_Hackable_Monitor_92
  l0.HackableEntity = self.owner
end
function export:OnEnter_box_Profiler_Monitor_v2_27()
  local l0
  l0 = self.box_Profiler_Monitor_v2_27
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
