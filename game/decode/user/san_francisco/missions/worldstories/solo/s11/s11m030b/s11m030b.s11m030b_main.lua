export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PGTMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleBhvController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:LoadResource("soundbinary/867520091.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1923986992.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1018141789.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Travino_CLO_Lieutenant = nil
  self.Guttierez_MAN_3_Sniper = nil
  self.Guttierez_CLO_Lieutenant = nil
  self.Guttierez_MAN_1_GunmanArmored = nil
  self.Guttierez_Lieutenant_Vehicle_A = nil
  self.Huerta_Lieutenant_Vehicle_A = nil
  self.Huerta_CLO_Lieutenant = nil
  self.Huerta_MAN_2_Female_Gunman = nil
  self.HUERTA_NEUTRALIZED = 0
  self.GUTTIEREZ_NEUTRALIZED = 0
  self.TRAVINO_NEUTRALIZED = 0
  self.LIEUTENANTS_LIST = {}
  self.TargetCounter = 3
  self.Flee_Started = 0
  self.FleeVehicle = nil
  self.Fleeing = 0
  self.Remaining_Enemies = {}
  self.PlayerDetected = 0
  self.Huerta_Convoy = {}
  self.Guttierez_Convoy = {}
  self[118] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[118]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_118_Out
  self[20] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[20]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[51] = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = self.f_51_Enabled
  l0.Disabled = self.f_51_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_51_FleeStarted
  l0.FleeSuccess = self.f_51_FleeSuccess
  l0.FleeFailed = self.f_51_FleeFailed
  self[24] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[22] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.SetTrue = self.f_22_SetTrue
  l0.SetFalse = self.f_22_SetFalse
  l0.Toggled = self.f_22_Toggled
  l0.SetFromBool = self.f_22_SetFromBool
  self[114] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_114_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_114_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_14_ScriptedAgentsAdded
  self[70] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = self.f_70_Out
  l0.MessageCompleted = DummyFunction
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_35_Out
  self[163] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[163]
  l0._graph = self
  l0.Enabled = self.f_163_Enabled
  l0.Disabled = self.f_163_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_163_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[116] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_116_Out
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[120] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[120]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_120_Out
  self[69] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0.SetTrue = self.f_69_SetTrue
  l0.SetFalse = self.f_69_SetFalse
  l0.Toggled = self.f_69_Toggled
  l0.SetFromBool = self.f_69_SetFromBool
  self[174] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[174]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_174_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_62_Out
  self[139] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[139]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_139_Out
  self[147] = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self[147]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_147_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_147_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self[27] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_27_Out
  l0.ResetOut = DummyFunction
  self[80] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[80]
  l0._graph = self
  l0.Started = self.f_80_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_80_Neutralized
  self[29] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_29_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_29_Killed
  l0.DBNO = self.f_29_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[36] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_36_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[39] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Loaded = self.f_39_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[161] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[161]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_161_Out
  self[11] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = self.f_11_Enabled
  l0.Disabled = self.f_11_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_11_Killed
  l0.DBNO = self.f_11_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_5_Killed
  l0.DBNO = self.f_5_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_7_Killed
  l0.DBNO = self.f_7_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[87] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = self.f_87_Out
  l0.MessageCompleted = DummyFunction
  self[144] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[144]
  l0._graph = self
  l0.Enabled = self.f_144_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_144_Enter
  l0.Entered = self.f_144_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_144_Leave
  l0.Exiting = self.f_144_Exiting
  l0.ChangeSeat = self.f_144_ChangeSeat
  l0.BailedOut = self.f_144_BailedOut
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[84] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_84_Out
  self[110] = cbox:CreateBox("domino/System/PGTMonitor_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0._DynamicAnchors = {
    PGTCLO = 1,
    EntityID = 1,
    CLO = 2
  }
  l0.Enabled = self.f_110_Enabled
  l0.Disabled = DummyFunction
  l0.PatrolsAssigned = DummyFunction
  l0.AllDead = self.f_110_AllDead
  l0.GotEntityIDs = self.f_110_GotEntityIDs
  self[32] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[32]
  l0._graph = self
  l0.Activated = self.f_32_Activated
  l0.Deactivated = self.f_32_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[105] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = self.f_105_Out
  l0.SetTrue = self.f_105_SetTrue
  l0.SetFalse = self.f_105_SetFalse
  l0.Toggled = self.f_105_Toggled
  l0.SetFromBool = self.f_105_SetFromBool
  self[64] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[64]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_64_Out
  l0.ResetOut = DummyFunction
  self[74] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[74]
  l0._graph = self
  l0.Started = self.f_74_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_74_Neutralized
  self[170] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[170]
  l0._graph = self
  self[76] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.MessageCompleted = DummyFunction
  self[140] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[140]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_140_Out
  self[157] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[157]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_157_Disabled
  l0.None = DummyFunction
  l0.Reinforcing = self.f_157_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[176] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[176]
  l0._graph = self
  l0.Out = self.f_176_Out
  l0.Prepped = self.f_176_Prepped
  l0.Started = self.f_176_Started
  l0.ConvoyStarted = self.f_176_ConvoyStarted
  l0.ConvoyStopped = self.f_176_ConvoyStopped
  l0.ConvoyAggro = self.f_176_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_176_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_176_ConvoyStuck
  l0.VIPDied = self.f_176_VIPDied
  l0.VipVehicleDestroyed = self.f_176_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_176_NPCsUnassigned
  l0.DestinationReached = self.f_176_DestinationReached
  self[71] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[71]
  l0._graph = self
  l0.Started = self.f_71_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_71_Escaped
  l0.LeftArea = DummyFunction
  self[130] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[130]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[30] = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.lua")
  l0 = self[30]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_30_Neutralized
  self[88] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_88_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[65] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[65]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[158] = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self[158]
  l0._graph = self
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = self.f_158_StopCompleted
  l0.ForcedFakeFollow = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_19_Out
  self[47] = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self[47]
  l0._graph = self
  l0.Enabled = self.f_47_Enabled
  l0.Disabled = self.f_47_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_47_FleeStarted
  l0.FleeSuccess = self.f_47_FleeSuccess
  l0.FleeFailed = self.f_47_FleeFailed
  self[52] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_52_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_12_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[132] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[132]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_132_Out
  self[135] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[135]
  l0._graph = self
  l0.Activated = self.f_135_Activated
  l0.Deactivated = self.f_135_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[154] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[154]
  l0._graph = self
  l0.Enabled = self.f_154_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_154_Enter
  l0.Entered = self.f_154_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_154_Leave
  l0.Exiting = self.f_154_Exiting
  l0.ChangeSeat = self.f_154_ChangeSeat
  l0.BailedOut = self.f_154_BailedOut
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[152] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[152]
  l0._graph = self
  l0.Enabled = self.f_152_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_152_Enter
  l0.Entered = self.f_152_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_152_Leave
  l0.Exiting = self.f_152_Exiting
  l0.ChangeSeat = self.f_152_ChangeSeat
  l0.BailedOut = self.f_152_BailedOut
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[146] = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self[146]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_146_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[93] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_93_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Loaded = self.f_13_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[117] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[117]
  l0._graph = self
  l0.Enabled = self.f_117_Enabled
  l0.Disabled = self.f_117_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_117_Killed
  l0.DBNO = self.f_117_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[134] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[134]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[173] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[173]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_173_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[167] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[167]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_167_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_167_ExitRadius
  self[45] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_45_Out
  l0.ResetOut = DummyFunction
  self[169] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[169]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_169_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = self.f_23_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_23_Killed
  l0.DBNO = self.f_23_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[48] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_48_Out
  l0.ResetOut = DummyFunction
  self[150] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[150]
  l0._graph = self
  l0.GotNPCList = self.f_150_GotNPCList
  self[68] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0.MessageCompleted = DummyFunction
  self[168] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[168]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_168_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[26] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.SetTrue = self.f_26_SetTrue
  l0.SetFalse = self.f_26_SetFalse
  l0.Toggled = self.f_26_Toggled
  l0.SetFromBool = self.f_26_SetFromBool
  self[38] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[38]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_38_PostOut
  self[175] = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.lua")
  l0 = self[175]
  l0._graph = self
  l0.Out = self.f_175_Out
  l0.Prepped = self.f_175_Prepped
  l0.Started = self.f_175_Started
  l0.ConvoyStarted = self.f_175_ConvoyStarted
  l0.ConvoyStopped = self.f_175_ConvoyStopped
  l0.ConvoyAggro = self.f_175_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_175_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_175_ConvoyStuck
  l0.VIPDied = self.f_175_VIPDied
  l0.VipVehicleDestroyed = self.f_175_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_175_NPCsUnassigned
  l0.DestinationReached = self.f_175_DestinationReached
  self[21] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[55] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[79] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_79_Out
  self[164] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[164]
  l0._graph = self
  l0.Out = self.f_164_Out
  l0.SetTrue = self.f_164_SetTrue
  l0.SetFalse = self.f_164_SetFalse
  l0.Toggled = self.f_164_Toggled
  l0.SetFromBool = self.f_164_SetFromBool
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[123] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[123]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_123_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_123_ExitRadius
  self[15] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_15_Killed
  l0.DBNO = self.f_15_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[92] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[92]
  l0._graph = self
  l0.StartCommunicationOut = self.f_92_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[94] = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self[94]
  l0._graph = self
  l0.Enabled = self.f_94_Enabled
  l0.Disabled = self.f_94_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_94_FleeStarted
  l0.FleeSuccess = self.f_94_FleeSuccess
  l0.FleeFailed = self.f_94_FleeFailed
  self[160] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[160]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_160_Out
  self[171] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[171]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_171_Out
  self[153] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[153]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_153_Out
  self[40] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_40_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[34]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[33] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[33]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_33_Out
  self[28] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[28]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_8_Out
  self[4] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_4_ScriptedAgentsAdded
  self[159] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[159]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_159_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[133] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[133]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_133_Out
  self[109] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[115] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = self.f_115_Enabled
  l0.Disabled = self.f_115_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_115_Killed
  l0.DBNO = self.f_115_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[50] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[50]
  l0._graph = self
  l0.StartCommunicationOut = self.f_50_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[172] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[172]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_172_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_172_ExitRadius
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[13]
  l0.LayerName = "S11M030B_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:en_28()
  l0 = self[28]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[39]
  l0.LayerName = "S11M030B_Main"
  l0:Load()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_118_Out()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:Disable()
end
function export:f_51_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_72_Out
  l0:In()
end
function export:f_51_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Travino_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = self.f_57_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_51_FleeFailed()
  local l0
  self = self._graph
  l0 = self[160]
  l0:Input(1)
end
function export:f_51_FleeStarted()
  local l0
  self = self._graph
  l0 = self[153]
  l0:Input(1)
end
function export:f_51_FleeSuccess()
  local l0
  self = self._graph
  l0 = self[160]
  l0:Input(0)
end
function export:f_24_Out()
  local l0
  self = self._graph
  self:en_65()
  l0 = self[65]
  l0:Disable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[22]
  self.Fleeing = l0.Target
end
function export:f_22_SetFalse()
  local l0
  self = self._graph
  l0 = self[22]
  self.Fleeing = l0.Target
end
function export:f_22_SetFromBool()
  local l0
  self = self._graph
  l0 = self[22]
  self.Fleeing = l0.Target
end
function export:f_22_SetTrue()
  local l0
  self = self._graph
  l0 = self[22]
  self.Fleeing = l0.Target
  l0 = self[92]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346358"
  l0:StartCommunication()
end
function export:f_22_Toggled()
  local l0
  self = self._graph
  l0 = self[22]
  self.Fleeing = l0.Target
end
function export:f_114_Stopped()
  local l0
  self = self._graph
  l0 = self[71]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047584128838"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0:Start()
end
function export:f_114_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerDetected
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_166_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_14_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GUTTIEREZ_NEUTRALIZED
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_131_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_70_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.TargetCounter
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_82_Out
  l0:Sub()
end
function export:f_163_CombatState()
  local l0
  self = self._graph
  self:en_163()
  l0 = self[163]
  l0:Disable()
end
function export:f_163_Disabled()
  local l0
  self = self._graph
  l0 = self[164]
  l0:True()
end
function export:f_163_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0.Out[2] = self.f_1_Out_2
  l0.Out[3] = self.f_1_Out_3
  l0:In()
end
function export:f_136_Out_0()
  local l0
  self = self._graph
  l0 = self[133]
  l0:Input(1)
end
function export:f_136_Out_1()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(0)
end
function export:f_116_Out()
  local l0
  self = self._graph
  self:en_117()
  l0 = self[117]
  l0:Disable()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(1)
end
function export:f_165_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PGTMissionArea = "9223372056193134680"
  l0:Start()
end
function export:f_120_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[69]
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_69_SetFalse()
  local l0
  self = self._graph
  l0 = self[69]
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_69_SetFromBool()
  local l0
  self = self._graph
  l0 = self[69]
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_69_SetTrue()
  local l0
  self = self._graph
  l0 = self[69]
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
  l0 = self[35]
  l0:Input(1)
end
function export:f_69_Toggled()
  local l0
  self = self._graph
  l0 = self[69]
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_174_Assigned()
  local l0
  self = self._graph
  l0 = self[27]
  l0:In(1)
end
function export:f_141_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_141_Out_1()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_141_Out_2()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_62_Out()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:Disable()
end
function export:f_139_Out()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_147_CombatState()
  local l0
  self = self._graph
  self:en_147()
  l0 = self[147]
  l0:Disable()
end
function export:f_147_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372050355234346"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartReinforcing()
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GUTTIEREZ_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_107_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TRAVINO_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_108_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HUERTA_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_106_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_60_Out_3()
  local l0
  self = self._graph
  self:en_65()
  l0 = self[65]
  l0:Enable()
end
function export:f_166_A_is_True()
  local l0
  self = self._graph
  l0 = self[22]
  l0:True()
end
function export:f_27_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_80_Neutralized()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(0)
end
function export:f_80_Started()
  local l0
  self = self._graph
  l0 = self[14]
  l0.PGTMissionArea = "9223372056193134680"
  l0.AgentList = self.Huerta_Convoy
  l0:AddScriptedAgents()
end
function export:f_29_DBNO()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(1)
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Entity = self.Huerta_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_29_Killed()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(0)
end
function export:f_36_Assigned()
  local l0
  self = self._graph
  l0 = self[45]
  l0:In(1)
end
function export:f_39_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0:In()
end
function export:f_161_Out()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:Disable()
end
function export:f_11_DBNO()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  self:en_169()
  l0 = self[169]
  l0:HideNotification()
end
function export:f_11_Enabled()
  local l0
  self = self._graph
  self:en_169()
  l0 = self[169]
  l0:Display()
end
function export:f_11_Killed()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_5_DBNO()
  local l0
  self = self._graph
  l0 = self[120]
  l0:Input(1)
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = self[133]
  l0:Input(0)
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Activate()
end
function export:f_5_Killed()
  local l0
  self = self._graph
  l0 = self[120]
  l0:Input(0)
end
function export:f_7_DBNO()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[80]
  l0.Entity = self.Guttierez_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_7_Killed()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[84]
  l0.SoundId = "soundbinary/867520091.bnk"
  l0:Start()
end
function export:f_144_BailedOut()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
end
function export:f_144_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
end
function export:f_144_Enabled()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_144_Enter()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
end
function export:f_144_Entered()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
  self:en_144()
  l0:Disable()
end
function export:f_144_Exiting()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
end
function export:f_144_Leave()
  local l0
  self = self._graph
  l0 = self[144]
  self.FleeVehicle = l0.VehicleID
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective2",
    id = "642907"
  }
  l0:IncrementObjective()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Huerta_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:SetInfiniteDBNO()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0:In()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Bool = self.TRAVINO_NEUTRALIZED
  l0:True()
end
function export:f_110_AllDead()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Disable()
end
function export:f_110_Enabled()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:GetEntityIDs()
end
function export:f_110_GotEntityIDs()
  local l0
  self = self._graph
  l0 = self[110]
  self.Travino_CLO_Lieutenant = l0.EntityID[0]
  l0 = self[38]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_Activated()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Activate()
end
function export:f_32_Deactivated()
  local l0
  self = self._graph
  self:en_130()
  l0 = self[130]
  l0:Deactivate()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[105]
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_105_SetFalse()
  local l0
  self = self._graph
  l0 = self[105]
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_105_SetFromBool()
  local l0
  self = self._graph
  l0 = self[105]
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_105_SetTrue()
  local l0
  self = self._graph
  l0 = self[105]
  self.HUERTA_NEUTRALIZED = l0.Target
  l0 = self[35]
  l0:Input(2)
end
function export:f_105_Toggled()
  local l0
  self = self._graph
  l0 = self[105]
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346357"
  l0:StartCommunication()
end
function export:f_74_Neutralized()
  local l0
  self = self._graph
  l0 = self[52]
  l0:In(0)
end
function export:f_74_Started()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PGTMissionArea = "9223372056193134680"
  l0.AgentList = self.Guttierez_Convoy
  l0:AddScriptedAgents()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.SoundId = "soundbinary/1018141789.bnk"
  l0:Start()
end
function export:f_140_Out()
  local l0
  self = self._graph
  self:en_135()
  l0 = self[135]
  l0:Deactivate()
end
function export:f_157_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = nil
  l0.AgentList = self.Remaining_Enemies
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:AdoptScriptedAgents()
end
function export:f_157_Reinforcing()
  local l0
  self = self._graph
  self:en_157()
  l0 = self[157]
  l0:Disable()
end
function export:f_176_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_DestinationReached()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  l0 = self[40]
  l0.NPC = self.Huerta_CLO_Lieutenant
  l0.Patrol = "9223372069235680084"
  l0:Assign()
end
function export:f_176_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  l0 = self[45]
  l0:In(0)
end
function export:f_176_Out()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_Prepped()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_176_Started()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_176_VIPDied()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_176_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[176]
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_71_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_71_Started()
  local l0
  self = self._graph
  l0 = self[64]
  l0:In(0)
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.TargetCounter = l0.Target
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.TargetCounter
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_78_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_78_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_30_Neutralized()
  local l0
  self = self._graph
  l0 = self[87]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective",
    id = "413334"
  }
  l0:IncrementObjective()
end
function export:f_108_A_is_False()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Enable()
end
function export:f_88_Assigned()
  local l0
  self = self._graph
  l0 = self[173]
  l0.NPC = self.Guttierez_MAN_1_GunmanArmored
  l0.Patrol = "9223372069235680408"
  l0:Assign()
end
function export:f_131_A_is_False()
  local l0
  self = self._graph
  l0 = self[34]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346355"
  l0:StartCommunication()
end
function export:f_158_StopCompleted()
  local l0
  self = self._graph
  l0 = self[146]
  l0.Vehicle = self.FleeVehicle
  l0.UseAnimation = 1
  l0:Unassign()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.Bool = self.HUERTA_NEUTRALIZED
  l0:True()
end
function export:f_47_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:In()
end
function export:f_47_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Guttierez_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = self.f_98_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_47_FleeFailed()
  local l0
  self = self._graph
  l0 = self[161]
  l0:Input(1)
end
function export:f_47_FleeStarted()
  local l0
  self = self._graph
  l0 = self[153]
  l0:Input(0)
end
function export:f_47_FleeSuccess()
  local l0
  self = self._graph
  l0 = self[161]
  l0:Input(0)
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0:In()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(2)
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0:In()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_44_Out
  l0:In()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  self:en_163()
  l0 = self[163]
  l0:Enable()
end
function export:f_12_AllSpawned()
  local l0
  self = self._graph
  self:en_110()
  l0 = self[110]
  l0:Enable()
end
function export:f_132_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_135_Activated()
  local l0
  self = self._graph
  self:en_134()
  l0 = self[134]
  l0:Activate()
end
function export:f_135_Deactivated()
  local l0
  self = self._graph
  self:en_134()
  l0 = self[134]
  l0:Deactivate()
end
function export:f_154_BailedOut()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
end
function export:f_154_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
end
function export:f_154_Enabled()
  local l0
  self = self._graph
  self:en_117()
  l0 = self[117]
  l0:Enable()
end
function export:f_154_Enter()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
end
function export:f_154_Entered()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
  self:en_154()
  l0:Disable()
end
function export:f_154_Exiting()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
end
function export:f_154_Leave()
  local l0
  self = self._graph
  l0 = self[154]
  self.FleeVehicle = l0.VehicleID
end
function export:f_152_BailedOut()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
end
function export:f_152_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
end
function export:f_152_Enabled()
  local l0
  self = self._graph
  self:en_115()
  l0 = self[115]
  l0:Enable()
end
function export:f_152_Enter()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
end
function export:f_152_Entered()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
  self:en_152()
  l0:Disable()
end
function export:f_152_Exiting()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
end
function export:f_152_Leave()
  local l0
  self = self._graph
  l0 = self[152]
  self.FleeVehicle = l0.VehicleID
end
function export:f_146_Unassigned()
  local l0
  self = self._graph
  l0 = self[159]
  l0.Position = "9223372055362789289"
  l0.Affiliation = "T_13"
  l0.IsThreat = 1
  l0:SetInUntargetedSearch()
end
function export:f_93_DisplayRequested()
  local l0
  self = self._graph
  self:en_167()
  l0 = self[167]
  l0:Enable()
end
function export:f_13_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:In()
end
function export:f_78_A_eq_B()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_78_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_117_DBNO()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(1)
end
function export:f_117_Disabled()
  local l0
  self = self._graph
  self:en_168()
  l0 = self[168]
  l0:HideNotification()
end
function export:f_117_Enabled()
  local l0
  self = self._graph
  self:en_168()
  l0 = self[168]
  l0:Display()
end
function export:f_117_Killed()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(0)
end
function export:f_107_A_is_False()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:Enable()
end
function export:f_173_Assigned()
  local l0
  self = self._graph
  l0 = self[174]
  l0.NPC = self.Guttierez_MAN_3_Sniper
  l0.Patrol = "9223372053264750772"
  l0:Assign()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Start()
end
function export:f_167_Disabled()
  local l0
  self = self._graph
  l0 = self[171]
  l0:Input(1)
end
function export:f_167_ExitRadius()
  local l0
  self = self._graph
  self:en_167()
  l0 = self[167]
  l0:Disable()
end
function export:f_45_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Stop()
end
function export:f_169_DisplayRequested()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Enable()
end
function export:f_23_DBNO()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(1)
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = self[140]
  l0:Input(1)
end
function export:f_23_Enabled()
  local l0
  self = self._graph
  self:en_135()
  l0 = self[135]
  l0:Activate()
end
function export:f_23_Killed()
  local l0
  self = self._graph
  l0 = self[139]
  l0:Input(0)
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:In()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0:In()
end
function export:f_129_A_is_False()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346352"
  l0:StartCommunication()
end
function export:f_150_GotNPCList()
  local l0
  self = self._graph
  l0 = self[150]
  self.Remaining_Enemies = l0.NPCList
  self:en_157()
  l0 = self[157]
  l0:Enable()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[79]
  l0.SoundId = "soundbinary/1923986992.bnk"
  l0:Start()
end
function export:f_106_A_is_False()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(0)
end
function export:f_168_DisplayRequested()
  local l0
  self = self._graph
  self:en_172()
  l0 = self[172]
  l0:Enable()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_26_SetFalse()
  local l0
  self = self._graph
  l0 = self[26]
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self[26]
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_26_SetTrue()
  local l0
  self = self._graph
  l0 = self[26]
  self.TRAVINO_NEUTRALIZED = l0.Target
  l0 = self[35]
  l0:Input(0)
end
function export:f_26_Toggled()
  local l0
  self = self._graph
  l0 = self[26]
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Entity = self.Travino_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0:Start()
end
function export:f_38_PostOut()
  local l0
  self = self._graph
  l0 = self[70]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "Objective",
    id = "355874"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective",
    id = "413334"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective2",
    id = "642907"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective3",
    id = "642908"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_175_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_DestinationReached()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  l0 = self[88]
  l0.NPC = self.Guttierez_CLO_Lieutenant
  l0.Patrol = "9223372059900078419"
  l0:Assign()
end
function export:f_175_NPCsUnassigned()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  l0 = self[27]
  l0:In(0)
end
function export:f_175_Out()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_Prepped()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_54_Out
  l0:SetInfiniteDBNO()
end
function export:f_175_Started()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_175_VIPDied()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_175_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[175]
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = self[76]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective3",
    id = "642908"
  }
  l0:IncrementObjective()
end
function export:f_58_Out()
  local l0
  self = self._graph
  self:en_176()
  l0 = self[176]
  l0:Start()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372061019435968"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_165_Out
  l0:Enable()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[52]
  l0:In(1)
end
function export:f_55_TimeElapsed()
  local l0
  self = self._graph
  self:en_176()
  l0 = self[176]
  l0:Prep()
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Travino_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_61_Out
  l0:SetInfiniteDBNO()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Seconds = 15
  l0:Start()
end
function export:f_1_Out_2()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Seconds = 60
  l0:Start()
end
function export:f_1_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_141_Out_0
  l0.Out[1] = self.f_141_Out_1
  l0.Out[2] = self.f_141_Out_2
  l0:In()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[69]
  l0.Bool = self.GUTTIEREZ_NEUTRALIZED
  l0:True()
end
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerDetected = l0.Target
end
function export:f_164_SetFalse()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerDetected = l0.Target
end
function export:f_164_SetFromBool()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerDetected = l0.Target
end
function export:f_164_SetTrue()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerDetected = l0.Target
end
function export:f_164_Toggled()
  local l0
  self = self._graph
  l0 = self[164]
  self.PlayerDetected = l0.Target
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_123_Disabled()
  local l0
  self = self._graph
  l0 = self[171]
  l0:Input(2)
end
function export:f_123_ExitRadius()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Disable()
end
function export:f_15_DBNO()
  local l0
  self = self._graph
  l0 = self[132]
  l0:Input(1)
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_136_Out_0
  l0.Out[1] = self.f_136_Out_1
  l0:In()
end
function export:f_15_Killed()
  local l0
  self = self._graph
  l0 = self[132]
  l0:Input(0)
end
function export:f_92_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0.Out[2] = self.f_60_Out_2
  l0.Out[3] = self.f_60_Out_3
  l0:In()
end
function export:f_25_Out()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:End()
end
function export:f_94_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_162_Out
  l0:In()
end
function export:f_94_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Huerta_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = self.f_99_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_94_FleeFailed()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(1)
end
function export:f_94_FleeStarted()
  local l0
  self = self._graph
  l0 = self[153]
  l0:Input(2)
end
function export:f_94_FleeSuccess()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Input(0)
end
function export:f_160_Out()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:Disable()
end
function export:f_171_Out()
  local l0
  self = self._graph
  l0 = self[170]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetEscaped",
    id = "165454"
  }
  l0:Fail()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[2]
  l0:Input(1)
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Condition(1)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_75_Out
  l0:In()
end
function export:f_153_Out()
  local l0
  self = self._graph
  l0 = self[150]
  l0.Affiliation = "T_13"
  l0:GetAllAlive()
end
function export:f_40_Assigned()
  local l0
  self = self._graph
  l0 = self[36]
  l0.NPC = self.Huerta_MAN_2_Female_Gunman
  l0.Patrol = "9223372069235680084"
  l0:Assign()
end
function export:f_99_Started()
  local l0
  self = self._graph
  self:en_144()
  l0 = self[144]
  l0:Enable()
end
function export:f_33_Out()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:Enable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[158]
  l0.VehicleMaster = self.FleeVehicle
  l0.Force = 1
  l0:Stop()
end
function export:f_4_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HUERTA_NEUTRALIZED
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_129_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_159_UntargetedSearchSet()
  local l0
  self = self._graph
  self:en_147()
  l0 = self[147]
  l0:Enable()
end
function export:f_54_Out()
  local l0
  self = self._graph
  self:en_175()
  l0 = self[175]
  l0:Start()
end
function export:f_133_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Deactivate()
end
function export:f_109_TimeElapsed()
  local l0
  self = self._graph
  self:en_175()
  l0 = self[175]
  l0:Prep()
end
function export:f_98_Started()
  local l0
  self = self._graph
  self:en_154()
  l0 = self[154]
  l0:Enable()
end
function export:f_115_DBNO()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(1)
end
function export:f_115_Disabled()
  local l0
  self = self._graph
  self:en_93()
  l0 = self[93]
  l0:HideNotification()
end
function export:f_115_Enabled()
  local l0
  self = self._graph
  self:en_93()
  l0 = self[93]
  l0:Display()
end
function export:f_115_Killed()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(0)
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[2]
  l0:Input(0)
end
function export:f_50_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective030",
    item = "Objective",
    id = "355875"
  }
  l0:ShowNewObjective()
end
function export:f_162_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_172_Disabled()
  local l0
  self = self._graph
  l0 = self[171]
  l0:Input(0)
end
function export:f_172_ExitRadius()
  local l0
  self = self._graph
  self:en_172()
  l0 = self[172]
  l0:Disable()
end
function export:f_57_Started()
  local l0
  self = self._graph
  self:en_152()
  l0 = self[152]
  l0:Enable()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:en_51()
  local l0
  l0 = self[51]
  l0.Target = self.Travino_CLO_Lieutenant
end
function export:en_163()
  local l0
  l0 = self[163]
  l0.Affiliation = "T_13"
end
function export:en_147()
  local l0
  l0 = self[147]
  l0.Affiliation = "T_13"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:en_144()
  local l0
  l0 = self[144]
  l0.Pawn = self.Huerta_CLO_Lieutenant
  l0.CheckNow = 1
end
function export:en_110()
  local l0
  l0 = self[110]
  l0.PGTCLO[0] = "9223372047434939528"
  l0.PGTMissionArea = "9223372056193134680"
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.CLO = "9223372061008855367"
end
function export:en_157()
  local l0
  l0 = self[157]
  l0.Affiliation = "T_13"
end
function export:en_176()
  local l0
  l0 = self[176]
  l0.VipVehicleCLO = "9223372047584076630"
  l0.VipCLO = "9223372047301737136"
  l0.Vip_WanderZone = "9223372056308723171"
  l0.EscortCLO_FrontPassenger = "9223372047301737100"
  l0.EscortFrontPassenger_WanderZone = "9223372056308723169"
  l0.FrontPassenger_WithVIP = 0
  l0.ConvoyConfig = "ConvoyConfig.9223372072885894953"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372073006919810"
  l0.Destination = "9223372072885894730"
  l0.Updated_Destination = "9223372072885894730"
  l0.AutoUnassign = 1
  l0.Affiliation = "T_13"
  l0.IgnorePlayer = 1
end
function export:en_130()
  local l0
  l0 = self[130]
  l0.CLO = "9223372061008855366"
end
function export:en_65()
  local l0
  l0 = self[65]
  l0.MissionArea = "9223372061392311678"
  l0.MissionLayer = "S11M030B_Main_01"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_47()
  local l0
  l0 = self[47]
  l0.Target = self.Guttierez_CLO_Lieutenant
end
function export:en_135()
  local l0
  l0 = self[135]
  l0.CLO = "9223372061008855368"
end
function export:en_154()
  local l0
  l0 = self[154]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:en_152()
  local l0
  l0 = self[152]
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:en_93()
  local l0
  l0 = self[93]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping",
    id = "165455"
  }
  l0.Duration = -1
end
function export:en_117()
  local l0
  l0 = self[117]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:en_134()
  local l0
  l0 = self[134]
  l0.CLO = "9223372061008855369"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.MissionArea = "9223372048238132560"
  l0.MissionLayer = "S11M030B_Main_01"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_167()
  local l0
  l0 = self[167]
  l0.Entity1 = self.Travino_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
function export:en_169()
  local l0
  l0 = self[169]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping3",
    id = "689701"
  }
  l0.Duration = -1
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:en_168()
  local l0
  l0 = self[168]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping2",
    id = "689700"
  }
  l0.Duration = -1
end
function export:en_175()
  local l0
  l0 = self[175]
  l0.VipVehicleCLO = "9223372049430258161"
  l0.VipCLO = "9223372049430258160"
  l0.Vip_WanderZone = "9223372056308723171"
  l0.EscortCLO_FrontPassenger = "9223372048502249255"
  l0.EscortFrontPassenger_WanderZone = "9223372056308723171"
  l0.FrontPassenger_WithVIP = 0
  l0.EscortCLO_RearLeftPassenger = "9223372048502249257"
  l0.EscortRearLeftPassenger_WanderZone = "9223372068894980091"
  l0.ConvoyConfig = "ConvoyConfig.9223372072885894953"
  l0.Updated_ConvoyConfig = "ConvoyConfig.9223372073006919810"
  l0.Destination = "9223372072885894278"
  l0.Updated_Destination = "9223372072885894278"
  l0.AutoUnassign = 1
  l0.Affiliation = "T_13"
  l0.IgnorePlayer = 1
end
function export:en_123()
  local l0
  l0 = self[123]
  l0.Entity1 = self.Huerta_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:en_94()
  local l0
  l0 = self[94]
  l0.Target = self.Huerta_CLO_Lieutenant
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S11M030B"
  l0.ShowMissionComplete = 1
end
function export:en_115()
  local l0
  l0 = self[115]
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:en_172()
  local l0
  l0 = self[172]
  l0.Entity1 = self.Guttierez_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
_compilerVersion = 4
