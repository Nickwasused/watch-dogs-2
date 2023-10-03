export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/FleeBehaviorMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PGTMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
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
  self._name = "S11M030B_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main"
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
  self.box_MultipleOR_118 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_118
  l0._graph = self
  l0._name = "box_MultipleOR_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|22018309"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_118_Out
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|144485626"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Monitor_Flee_Behavior_51 = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self.box_Monitor_Flee_Behavior_51
  l0._graph = self
  l0._name = "box_Monitor_Flee_Behavior_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|156948076"
  l0.Enabled = self.f_box_Monitor_Flee_Behavior_51_Enabled
  l0.Disabled = self.f_box_Monitor_Flee_Behavior_51_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_box_Monitor_Flee_Behavior_51_FleeStarted
  l0.FleeSuccess = self.f_box_Monitor_Flee_Behavior_51_FleeSuccess
  l0.FleeFailed = self.f_box_Monitor_Flee_Behavior_51_FleeFailed
  self.box_MissionMessageController_v3_24 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_24
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|169981947"
  l0.Out = self.f_box_MissionMessageController_v3_24_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|180849220"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_SetBoolean_v2_22 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_22
  l0._graph = self
  l0._name = "box_SetBoolean_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|190237040"
  l0.Out = self.f_box_SetBoolean_v2_22_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_22_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_22_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_22_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_22_SetFromBool
  self.box_Timer_v2_114 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_114
  l0._graph = self
  l0._name = "box_Timer_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|195995123"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_114_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_114_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PGTController_v2_14 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_14
  l0._graph = self
  l0._name = "box_PGTController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|202692847"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_14_ScriptedAgentsAdded
  self.box_MissionMessageController_v3_70 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_70
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|203795055"
  l0.Out = self.f_box_MissionMessageController_v3_70_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_35 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|210250299"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_AISquadStateMonitor_163 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_163
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|258761865"
  l0.Enabled = self.f_box_AISquadStateMonitor_163_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_163_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_163_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MultipleOR_116 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_116
  l0._graph = self
  l0._name = "box_MultipleOR_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|311153783"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_116_Out
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|336981145"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_MultipleOR_120 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_120
  l0._graph = self
  l0._name = "box_MultipleOR_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|348287772"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_120_Out
  self.box_SetBoolean_v2_69 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_69
  l0._graph = self
  l0._name = "box_SetBoolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|379251612"
  l0.Out = self.f_box_SetBoolean_v2_69_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_69_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_69_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_69_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_69_SetFromBool
  self.box_Assign_Patrol_Controller_v2_174 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_174
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|394942362"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_174_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_MultipleOR_62 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_62
  l0._graph = self
  l0._name = "box_MultipleOR_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|411230415"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_62_Out
  self.box_MultipleOR_139 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_139
  l0._graph = self
  l0._name = "box_MultipleOR_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|415487817"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_139_Out
  self.box_AISquadStateMonitor_147 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_147
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|486518562"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AISquadStateMonitor_147_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_147_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_OnceOnly_v3_27 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_27
  l0._graph = self
  l0._name = "box_OnceOnly_v3_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|572394305"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_27_Out
  l0.ResetOut = DummyFunction
  self.box_Neutralize_Gameplay_80 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_80
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|573211896"
  l0.Started = self.f_box_Neutralize_Gameplay_80_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_80_Neutralized
  self.box_PawnHealthMonitor_v3_29 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_29
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|578416186"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_29_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_29_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_29_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Assign_Patrol_Controller_v2_36 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_36
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|590554470"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_36_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_MissionLayer_v2_39 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_39
  l0._graph = self
  l0._name = "box_MissionLayer_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|597154161"
  l0.Loaded = self.f_box_MissionLayer_v2_39_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_161 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_161
  l0._graph = self
  l0._name = "box_MultipleOR_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|604741738"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_161_Out
  self.box_PawnHealthMonitor_v3_11 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_11
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|612191365"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_11_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_11_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_11_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_11_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PawnHealthMonitor_v3_5 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_5
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|613303325"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_5_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_5_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_5_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_5_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PawnHealthMonitor_v3_7 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_7
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|637598592"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_7_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_7_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_7_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_MissionMessageController_v3_87 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_87
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|661208136"
  l0.Out = self.f_box_MissionMessageController_v3_87_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleMonitor_v3_144 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_144
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|689836393"
  l0.Enabled = self.f_box_VehicleMonitor_v3_144_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_144_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_144_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_144_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_144_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v3_144_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v3_144_BailedOut
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
  self.box_PlayDialog_v2_84 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_84
  l0._graph = self
  l0._name = "box_PlayDialog_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|726345422"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_84_Out
  self.box_PGTMonitor_v2_110 = cbox:CreateBox("domino/System/PGTMonitor_v2.lua")
  l0 = self.box_PGTMonitor_v2_110
  l0._graph = self
  l0._name = "box_PGTMonitor_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|730853113"
  l0._DynamicAnchors = {
    PGTCLO = 1,
    EntityID = 1,
    CLO = 2
  }
  l0.Enabled = self.f_box_PGTMonitor_v2_110_Enabled
  l0.Disabled = DummyFunction
  l0.PatrolsAssigned = DummyFunction
  l0.AllDead = self.f_box_PGTMonitor_v2_110_AllDead
  l0.GotEntityIDs = self.f_box_PGTMonitor_v2_110_GotEntityIDs
  self.box_CLOController_32 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_32
  l0._graph = self
  l0._name = "box_CLOController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|792900045"
  l0.Activated = self.f_box_CLOController_32_Activated
  l0.Deactivated = self.f_box_CLOController_32_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_SetBoolean_v2_105 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_105
  l0._graph = self
  l0._name = "box_SetBoolean_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|800945075"
  l0.Out = self.f_box_SetBoolean_v2_105_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_105_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_105_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_105_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_105_SetFromBool
  self.box_OnceOnly_v3_64 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_64
  l0._graph = self
  l0._name = "box_OnceOnly_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|815966261"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_64_Out
  l0.ResetOut = DummyFunction
  self.box_Neutralize_Gameplay_74 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_74
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|849364445"
  l0.Started = self.f_box_Neutralize_Gameplay_74_Started
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_74_Neutralized
  self.box_MissionController_v4_170 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_170
  l0._graph = self
  l0._name = "box_MissionController_v4_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|851963023"
  self.box_MissionMessageController_v3_76 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_76
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|857100347"
  l0.Out = self.f_box_MissionMessageController_v3_76_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_140 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_140
  l0._graph = self
  l0._name = "box_MultipleOR_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|860891080"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_140_Out
  self.box_ReinforcementSystemMonitor_v2_157 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_157
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|889932400"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ReinforcementSystemMonitor_v2_157_Disabled
  l0.None = DummyFunction
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_157_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_Prepare_Convoy_176 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_176
  l0._graph = self
  l0._name = "box_Prepare_Convoy_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|892371525"
  l0.Out = self.f_box_Prepare_Convoy_176_Out
  l0.Prepped = self.f_box_Prepare_Convoy_176_Prepped
  l0.Started = self.f_box_Prepare_Convoy_176_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_176_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_176_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_176_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_176_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_176_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_176_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_176_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_176_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_176_DestinationReached
  self.box_Escape_Gameplay_71 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_71
  l0._graph = self
  l0._name = "box_Escape_Gameplay_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|900176345"
  l0.Started = self.f_box_Escape_Gameplay_71_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_71_Escaped
  l0.LeftArea = DummyFunction
  self.box_CLOController_130 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_130
  l0._graph = self
  l0._name = "box_CLOController_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|948827239"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Neutralize_Gameplay_30 = cbox:CreateBox("domino/Library/common/MissionIngredients.Neutralize_Gameplay.debug.lua")
  l0 = self.box_Neutralize_Gameplay_30
  l0._graph = self
  l0._name = "box_Neutralize_Gameplay_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|965804842"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Neutralized = self.f_box_Neutralize_Gameplay_30_Neutralized
  self.box_Assign_Patrol_Controller_v2_88 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_88
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1011400979"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_88_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_MissionZone_65 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_65
  l0._graph = self
  l0._name = "box_MissionZone_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1036397637"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_VehicleBhvController_158 = cbox:CreateBox("domino/System/VehicleBhvController.lua")
  l0 = self.box_VehicleBhvController_158
  l0._graph = self
  l0._name = "box_VehicleBhvController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1043706177"
  l0.StartCompleted = DummyFunction
  l0.StopCompleted = self.f_box_VehicleBhvController_158_StopCompleted
  l0.ForcedFakeFollow = DummyFunction
  self.box_PlayDialog_v2_19 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_19
  l0._graph = self
  l0._name = "box_PlayDialog_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1061230272"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_19_Out
  self.box_Monitor_Flee_Behavior_47 = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self.box_Monitor_Flee_Behavior_47
  l0._graph = self
  l0._name = "box_Monitor_Flee_Behavior_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1068502523"
  l0.Enabled = self.f_box_Monitor_Flee_Behavior_47_Enabled
  l0.Disabled = self.f_box_Monitor_Flee_Behavior_47_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_box_Monitor_Flee_Behavior_47_FleeStarted
  l0.FleeSuccess = self.f_box_Monitor_Flee_Behavior_47_FleeSuccess
  l0.FleeFailed = self.f_box_Monitor_Flee_Behavior_47_FleeFailed
  self.box_OnceOnly_v3_52 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_52
  l0._graph = self
  l0._name = "box_OnceOnly_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1081739829"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_52_Out
  l0.ResetOut = DummyFunction
  self.box_PGTController_v2_12 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_12
  l0._graph = self
  l0._name = "box_PGTController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1105823939"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_12_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_132 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_132
  l0._graph = self
  l0._name = "box_MultipleOR_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1132730303"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_132_Out
  self.box_CLOController_135 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_135
  l0._graph = self
  l0._name = "box_CLOController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1135811503"
  l0.Activated = self.f_box_CLOController_135_Activated
  l0.Deactivated = self.f_box_CLOController_135_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_VehicleMonitor_v3_154 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_154
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1158367063"
  l0.Enabled = self.f_box_VehicleMonitor_v3_154_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_154_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_154_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_154_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_154_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v3_154_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v3_154_BailedOut
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
  self.box_VehicleMonitor_v3_152 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_152
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1197139394"
  l0.Enabled = self.f_box_VehicleMonitor_v3_152_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_152_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_152_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_152_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_152_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v3_152_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v3_152_BailedOut
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
  self.box_VehicleSeatingController_146 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_146
  l0._graph = self
  l0._name = "box_VehicleSeatingController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1220522773"
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_box_VehicleSeatingController_146_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_TutorialController_93 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_93
  l0._graph = self
  l0._name = "box_TutorialController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1224325208"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_93_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_13 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_13
  l0._graph = self
  l0._name = "box_MissionLayer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1234399866"
  l0.Loaded = self.f_box_MissionLayer_v2_13_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PawnHealthMonitor_v3_117 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_117
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1253980609"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_117_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_117_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_117_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_117_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_CLOController_134 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_134
  l0._graph = self
  l0._name = "box_CLOController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1264692325"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Assign_Patrol_Controller_v2_173 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_173
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1299139764"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_173_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_MissionZone_18 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_18
  l0._graph = self
  l0._name = "box_MissionZone_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1311137382"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_18_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_Proximity_Monitor_167 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_167
  l0._graph = self
  l0._name = "box_Proximity_Monitor_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1331691525"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_167_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_167_ExitRadius
  self.box_OnceOnly_v3_45 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_45
  l0._graph = self
  l0._name = "box_OnceOnly_v3_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1344567785"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_45_Out
  l0.ResetOut = DummyFunction
  self.box_TutorialController_169 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_169
  l0._graph = self
  l0._name = "box_TutorialController_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1386680791"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_169_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PawnHealthMonitor_v3_23 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_23
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1426363502"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_23_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_23_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_23_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_23_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_OnceOnly_v3_48 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_48
  l0._graph = self
  l0._name = "box_OnceOnly_v3_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1456697442"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_48_Out
  l0.ResetOut = DummyFunction
  self.box_GetNPC_150 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_150
  l0._graph = self
  l0._name = "box_GetNPC_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1469300328"
  l0.GotNPCList = self.f_box_GetNPC_150_GotNPCList
  self.box_MissionMessageController_v3_68 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_68
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1481738725"
  l0.Out = self.f_box_MissionMessageController_v3_68_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_168 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_168
  l0._graph = self
  l0._name = "box_TutorialController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1527663343"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_168_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_26 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_26
  l0._graph = self
  l0._name = "box_SetBoolean_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1534021803"
  l0.Out = self.f_box_SetBoolean_v2_26_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_26_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_26_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_26_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_26_SetFromBool
  self.box_CinematicPrep_38 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_38
  l0._graph = self
  l0._name = "box_CinematicPrep_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1617955194"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_38_PostOut
  self.box_Prepare_Convoy_175 = cbox:CreateBox("domino/Library/singleplayer/Prepare/Prepare_Helpers.Prepare_Convoy.debug.lua")
  l0 = self.box_Prepare_Convoy_175
  l0._graph = self
  l0._name = "box_Prepare_Convoy_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1638696129"
  l0.Out = self.f_box_Prepare_Convoy_175_Out
  l0.Prepped = self.f_box_Prepare_Convoy_175_Prepped
  l0.Started = self.f_box_Prepare_Convoy_175_Started
  l0.ConvoyStarted = self.f_box_Prepare_Convoy_175_ConvoyStarted
  l0.ConvoyStopped = self.f_box_Prepare_Convoy_175_ConvoyStopped
  l0.ConvoyAggro = self.f_box_Prepare_Convoy_175_ConvoyAggro
  l0.ConvoyAggroNotPlayer = self.f_box_Prepare_Convoy_175_ConvoyAggroNotPlayer
  l0.ConvoyStuck = self.f_box_Prepare_Convoy_175_ConvoyStuck
  l0.VIPDied = self.f_box_Prepare_Convoy_175_VIPDied
  l0.VipVehicleDestroyed = self.f_box_Prepare_Convoy_175_VipVehicleDestroyed
  l0.NPCsUnassigned = self.f_box_Prepare_Convoy_175_NPCsUnassigned
  l0.DestinationReached = self.f_box_Prepare_Convoy_175_DestinationReached
  self.box_MissionCheckpointReach_21 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_21
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1650526317"
  l0.Out = self.f_box_MissionCheckpointReach_21_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_49 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1654245360"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_Timer_v2_55 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_55
  l0._graph = self
  l0._name = "box_Timer_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1661781332"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_79 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_79
  l0._graph = self
  l0._name = "box_PlayDialog_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1667544587"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = self.f_box_PlayDialog_v2_79_Out
  self.box_SetBoolean_v2_164 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_164
  l0._graph = self
  l0._name = "box_SetBoolean_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1676888091"
  l0.Out = self.f_box_SetBoolean_v2_164_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_164_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_164_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_164_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_164_SetFromBool
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1677605395"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Proximity_Monitor_123 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_123
  l0._graph = self
  l0._name = "box_Proximity_Monitor_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1711815159"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_123_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_123_ExitRadius
  self.box_PawnHealthMonitor_v3_15 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_15
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1713005925"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_15_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_15_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_15_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PhoneCommunicationController_92 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_92
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1716656261"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_92_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Monitor_Flee_Behavior_94 = cbox:CreateBox("domino/System/FleeBehaviorMonitor.lua")
  l0 = self.box_Monitor_Flee_Behavior_94
  l0._graph = self
  l0._name = "box_Monitor_Flee_Behavior_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1750841477"
  l0.Enabled = self.f_box_Monitor_Flee_Behavior_94_Enabled
  l0.Disabled = self.f_box_Monitor_Flee_Behavior_94_Disabled
  l0.Blocked = DummyFunction
  l0.EnteredVehicle = DummyFunction
  l0.ExitedVehicle = DummyFunction
  l0.FleeStarted = self.f_box_Monitor_Flee_Behavior_94_FleeStarted
  l0.FleeSuccess = self.f_box_Monitor_Flee_Behavior_94_FleeSuccess
  l0.FleeFailed = self.f_box_Monitor_Flee_Behavior_94_FleeFailed
  self.box_MultipleOR_160 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_160
  l0._graph = self
  l0._name = "box_MultipleOR_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1752147368"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_160_Out
  self.box_MultipleOR_171 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_171
  l0._graph = self
  l0._name = "box_MultipleOR_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1755020200"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_171_Out
  self.box_MultipleOR_153 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_153
  l0._graph = self
  l0._name = "box_MultipleOR_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1826169669"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_153_Out
  self.box_Assign_Patrol_Controller_v2_40 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_40
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1829536530"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_40_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_PhoneCommunicationController_34 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_34
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1830730991"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_33 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_33
  l0._graph = self
  l0._name = "box_Multiple_AND_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1854674045"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_33_Out
  self.box_Mission_End_28 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_28
  l0._graph = self
  l0._name = "box_Mission_End_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1875182231"
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1880469072"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_PGTController_v2_4 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_4
  l0._graph = self
  l0._name = "box_PGTController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1895369855"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_4_ScriptedAgentsAdded
  self.box_AISquadStateController_159 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_159
  l0._graph = self
  l0._name = "box_AISquadStateController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1923559340"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_box_AISquadStateController_159_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MultipleOR_133 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_133
  l0._graph = self
  l0._name = "box_MultipleOR_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2002264030"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_133_Out
  self.box_Timer_v2_109 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_109
  l0._graph = self
  l0._name = "box_Timer_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2019817549"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PawnHealthMonitor_v3_115 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_115
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2040065494"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_115_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_115_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_115_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_115_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PhoneCommunicationController_50 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_50
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2060590648"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_50_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_172 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_172
  l0._graph = self
  l0._name = "box_Proximity_Monitor_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2122006340"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_172_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_172_ExitRadius
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
  l0 = self.box_MissionLayer_v2_13
  l0.LayerName = "S11M030B_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2106831466", "2106831466", "S11M030B_Main", "CheckPoint_0", "box_MissionLayer_v2_13.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_28()
  l0 = self.box_Mission_End_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1203660102", "1203660102", "S11M030B_Main", "CheckPoint_1", "box_Mission_End_28.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_39
  l0.LayerName = "S11M030B_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|426291144", "426291144", "S11M030B_Main", "In", "box_MissionLayer_v2_39.Load", self, l0)
  l0:Load()
end
function export:f_box_Simple_Node_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1857318454", "1857318454", "S11M030B_Main", "box_Simple_Node_6.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_118_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_115()
  l0 = self.box_MultipleOR_118
  l1 = self.box_PawnHealthMonitor_v3_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|185793239", "185793239", "S11M030B_Main", "box_MultipleOR_118.Out", "box_PawnHealthMonitor_v3_115.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Monitor_Flee_Behavior_51_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1811123945"
  l0.Out = self.f_box_Simple_Node_72_Out
  l0 = self.box_Monitor_Flee_Behavior_51
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|354977103", "354977103", "S11M030B_Main", "box_Monitor_Flee_Behavior_51.Disabled", "box_Simple_Node_72.In", l0, l1)
  l1:In()
end
function export:f_box_Monitor_Flee_Behavior_51_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Travino_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2128662220"
  l0.Started = self.f_box_Start_Update_Stop_flee_behavior_on_an_AI_57_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_Monitor_Flee_Behavior_51
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|496517701", "496517701", "S11M030B_Main", "box_Monitor_Flee_Behavior_51.Enabled", "box_Start_Update_Stop_flee_behavior_on_an_AI_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_Monitor_Flee_Behavior_51_FleeFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_160()
  l0 = self.box_Monitor_Flee_Behavior_51
  l1 = self.box_MultipleOR_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1462477368", "1462477368", "S11M030B_Main", "box_Monitor_Flee_Behavior_51.FleeFailed", "box_MultipleOR_160.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Monitor_Flee_Behavior_51_FleeStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_153()
  l0 = self.box_Monitor_Flee_Behavior_51
  l1 = self.box_MultipleOR_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1293618679", "1293618679", "S11M030B_Main", "box_Monitor_Flee_Behavior_51.FleeStarted", "box_MultipleOR_153.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Monitor_Flee_Behavior_51_FleeSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_160()
  l0 = self.box_Monitor_Flee_Behavior_51
  l1 = self.box_MultipleOR_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1790509529", "1790509529", "S11M030B_Main", "box_Monitor_Flee_Behavior_51.FleeSuccess", "box_MultipleOR_160.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_24_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_65()
  l0 = self.box_MissionMessageController_v3_24
  l1 = self.box_MissionZone_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1946158004", "1946158004", "S11M030B_Main", "box_MissionMessageController_v3_24.Out", "box_MissionZone_65.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_11()
  l0 = self.box_MultipleOR_9
  l1 = self.box_PawnHealthMonitor_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1378415108", "1378415108", "S11M030B_Main", "box_MultipleOR_9.Out", "box_PawnHealthMonitor_v3_11.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_22_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self.Fleeing = l0.Target
end
function export:f_box_SetBoolean_v2_22_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self.Fleeing = l0.Target
end
function export:f_box_SetBoolean_v2_22_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self.Fleeing = l0.Target
end
function export:f_box_SetBoolean_v2_22_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self.Fleeing = l0.Target
  l0 = self.box_PhoneCommunicationController_92
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346358"
  l0 = self.box_SetBoolean_v2_22
  l1 = self.box_PhoneCommunicationController_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1774629484", "1774629484", "S11M030B_Main", "box_SetBoolean_v2_22.SetTrue", "box_PhoneCommunicationController_92.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SetBoolean_v2_22_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self.Fleeing = l0.Target
end
function export:f_box_Timer_v2_114_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_71
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
  l0 = self.box_Timer_v2_114
  l1 = self.box_Escape_Gameplay_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|593946399", "593946399", "S11M030B_Main", "box_Timer_v2_114.Stopped", "box_Escape_Gameplay_71.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_114_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PlayerDetected
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|536306131"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_166_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_114
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|392370965", "392370965", "S11M030B_Main", "box_Timer_v2_114.TimeElapsed", "box_Compare_Boolean_v2_166.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_14_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GUTTIEREZ_NEUTRALIZED
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1014300744"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_131_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PGTController_v2_14
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1169111524", "1169111524", "S11M030B_Main", "box_PGTController_v2_14.ScriptedAgentsAdded", "box_Compare_Boolean_v2_131.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_70_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1105821902"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_MissionMessageController_v3_70
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|604453975", "604453975", "S11M030B_Main", "box_MissionMessageController_v3_70.Out", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.TargetCounter
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|931816338"
  l0.Out = self.f_box_Integer_Arithmetics_82_Out
  l0 = self.box_MultipleOR_35
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|584805193", "584805193", "S11M030B_Main", "box_MultipleOR_35.Out", "box_Integer_Arithmetics_82.Sub", l0, l1)
  l1:Sub()
end
function export:f_box_AISquadStateMonitor_163_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_163()
  l0 = self.box_AISquadStateMonitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2034609500", "2034609500", "S11M030B_Main", "box_AISquadStateMonitor_163.CombatState", "box_AISquadStateMonitor_163.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_163_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateMonitor_163
  l1 = self.box_SetBoolean_v2_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|905301910", "905301910", "S11M030B_Main", "box_AISquadStateMonitor_163.Disabled", "box_SetBoolean_v2_164.True", l0, l1)
  l1:True()
end
function export:f_box_AISquadStateMonitor_163_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1664715704"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_1_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_1_Out_3
  l0 = self.box_AISquadStateMonitor_163
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|383223900", "383223900", "S11M030B_Main", "box_AISquadStateMonitor_163.Enabled", "box_Ordered_Output_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_136_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_133()
  l0 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|375058725", "375058725", "S11M030B_Main", "box_Ordered_Output_136.Out", "box_MultipleOR_133.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_136_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2050575045", "2050575045", "S11M030B_Main", "box_Ordered_Output_136.Out", "box_MultipleOR_140.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_116_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_117()
  l0 = self.box_MultipleOR_116
  l1 = self.box_PawnHealthMonitor_v3_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|977704438", "977704438", "S11M030B_Main", "box_MultipleOR_116.Out", "box_PawnHealthMonitor_v3_117.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_48()
  l0 = self.box_MultipleOR_16
  l1 = self.box_OnceOnly_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1639796231", "1639796231", "S11M030B_Main", "box_MultipleOR_16.Out", "box_OnceOnly_v3_48.In", l0, l1)
  l1:In(1)
end
function export:f_box_AI_Agent_Zone_165_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_12
  l0.PGTMissionArea = "9223372056193134680"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|967106124", "967106124", "S11M030B_Main", "box_AI_Agent_Zone_165.Out", "box_PGTController_v2_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_120_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_5()
  l0 = self.box_MultipleOR_120
  l1 = self.box_PawnHealthMonitor_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|490065444", "490065444", "S11M030B_Main", "box_MultipleOR_120.Out", "box_PawnHealthMonitor_v3_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_SetBoolean_v2_69_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_69_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
  self:OnEnter_box_MultipleOR_35()
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1777837237", "1777837237", "S11M030B_Main", "box_SetBoolean_v2_69.SetTrue", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_69_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  self.GUTTIEREZ_NEUTRALIZED = l0.Target
end
function export:f_box_Assign_Patrol_Controller_v2_174_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_27()
  l0 = self.box_Assign_Patrol_Controller_v2_174
  l1 = self.box_OnceOnly_v3_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1437803916", "1437803916", "S11M030B_Main", "box_Assign_Patrol_Controller_v2_174.Assigned", "box_OnceOnly_v3_27.In", l0, l1)
  l1:In(1)
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_5()
  l0 = self.box_PawnHealthMonitor_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1809216060", "1809216060", "S11M030B_Main", "box_Ordered_Output_141.Out", "box_PawnHealthMonitor_v3_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_15()
  l0 = self.box_PawnHealthMonitor_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2144339154", "2144339154", "S11M030B_Main", "box_Ordered_Output_141.Out", "box_PawnHealthMonitor_v3_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_141_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_23()
  l0 = self.box_PawnHealthMonitor_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|520259033", "520259033", "S11M030B_Main", "box_Ordered_Output_141.Out", "box_PawnHealthMonitor_v3_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Monitor_Flee_Behavior_94()
  l0 = self.box_MultipleOR_62
  l1 = self.box_Monitor_Flee_Behavior_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1231127611", "1231127611", "S11M030B_Main", "box_MultipleOR_62.Out", "box_Monitor_Flee_Behavior_94.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_139_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_23()
  l0 = self.box_MultipleOR_139
  l1 = self.box_PawnHealthMonitor_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|778805475", "778805475", "S11M030B_Main", "box_MultipleOR_139.Out", "box_PawnHealthMonitor_v3_23.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_147_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_147()
  l0 = self.box_AISquadStateMonitor_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|712572181", "712572181", "S11M030B_Main", "box_AISquadStateMonitor_147.CombatState", "box_AISquadStateMonitor_147.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AISquadStateMonitor_147_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372050355234346"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2004507877"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_AISquadStateMonitor_147
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1656261170", "1656261170", "S11M030B_Main", "box_AISquadStateMonitor_147.Disabled", "box_ReinforcementSystemController_v2_156.StartReinforcing", l0, l1)
  l1:StartReinforcing()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.GUTTIEREZ_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1281033829"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_107_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|911907600", "911907600", "S11M030B_Main", "box_Ordered_Output_60.Out", "box_Compare_Boolean_v2_107.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.TRAVINO_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|978240216"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_108_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1256429364", "1256429364", "S11M030B_Main", "box_Ordered_Output_60.Out", "box_Compare_Boolean_v2_108.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HUERTA_NEUTRALIZED
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1521067298"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_106_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|261865159", "261865159", "S11M030B_Main", "box_Ordered_Output_60.Out", "box_Compare_Boolean_v2_106.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_60_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_65()
  l0 = self.box_MissionZone_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|818139160", "818139160", "S11M030B_Main", "box_Ordered_Output_60.Out", "box_MissionZone_65.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_166_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1089655369", "1089655369", "S11M030B_Main", "box_Compare_Boolean_v2_166.A_is_True", "box_SetBoolean_v2_22.True", clone, l0)
  l0:True()
end
function export:f_box_OnceOnly_v3_27_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_7()
  l0 = self.box_OnceOnly_v3_27
  l1 = self.box_PawnHealthMonitor_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|716062208", "716062208", "S11M030B_Main", "box_OnceOnly_v3_27.Out", "box_PawnHealthMonitor_v3_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Neutralize_Gameplay_80_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_48()
  l0 = self.box_Neutralize_Gameplay_80
  l1 = self.box_OnceOnly_v3_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|757406154", "757406154", "S11M030B_Main", "box_Neutralize_Gameplay_80.Neutralized", "box_OnceOnly_v3_48.In", l0, l1)
  l1:In(0)
end
function export:f_box_Neutralize_Gameplay_80_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_14
  l0.PGTMissionArea = "9223372056193134680"
  l0.AgentList = self.Huerta_Convoy
  l0 = self.box_Neutralize_Gameplay_80
  l1 = self.box_PGTController_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1329192921", "1329192921", "S11M030B_Main", "box_Neutralize_Gameplay_80.Started", "box_PGTController_v2_14.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_PawnHealthMonitor_v3_29_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_PawnHealthMonitor_v3_29
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1315997082", "1315997082", "S11M030B_Main", "box_PawnHealthMonitor_v3_29.DBNO", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_29_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_74
  l0.Entity = self.Huerta_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0 = self.box_PawnHealthMonitor_v3_29
  l1 = self.box_Neutralize_Gameplay_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|650162293", "650162293", "S11M030B_Main", "box_PawnHealthMonitor_v3_29.Disabled", "box_Neutralize_Gameplay_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_PawnHealthMonitor_v3_29_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_PawnHealthMonitor_v3_29
  l1 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1883004459", "1883004459", "S11M030B_Main", "box_PawnHealthMonitor_v3_29.Killed", "box_MultipleOR_49.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Assign_Patrol_Controller_v2_36_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_45()
  l0 = self.box_Assign_Patrol_Controller_v2_36
  l1 = self.box_OnceOnly_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|166944929", "166944929", "S11M030B_Main", "box_Assign_Patrol_Controller_v2_36.Assigned", "box_OnceOnly_v3_45.In", l0, l1)
  l1:In(1)
end
function export:f_box_MissionLayer_v2_39_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2045648651"
  l0.Out = self.f_box_Get_Player_ID_41_Out
  l0 = self.box_MissionLayer_v2_39
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|499012044", "499012044", "S11M030B_Main", "box_MissionLayer_v2_39.Loaded", "box_Get_Player_ID_41.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_161_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Monitor_Flee_Behavior_47()
  l0 = self.box_MultipleOR_161
  l1 = self.box_Monitor_Flee_Behavior_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1783809646", "1783809646", "S11M030B_Main", "box_MultipleOR_161.Out", "box_Monitor_Flee_Behavior_47.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PawnHealthMonitor_v3_11_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_PawnHealthMonitor_v3_11
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1568976900", "1568976900", "S11M030B_Main", "box_PawnHealthMonitor_v3_11.DBNO", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_169()
  l0 = self.box_PawnHealthMonitor_v3_11
  l1 = self.box_TutorialController_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|677738257", "677738257", "S11M030B_Main", "box_PawnHealthMonitor_v3_11.Disabled", "box_TutorialController_169.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PawnHealthMonitor_v3_11_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_169()
  l0 = self.box_PawnHealthMonitor_v3_11
  l1 = self.box_TutorialController_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|441681336", "441681336", "S11M030B_Main", "box_PawnHealthMonitor_v3_11.Enabled", "box_TutorialController_169.Display", l0, l1)
  l1:Display()
end
function export:f_box_PawnHealthMonitor_v3_11_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_PawnHealthMonitor_v3_11
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|600005257", "600005257", "S11M030B_Main", "box_PawnHealthMonitor_v3_11.Killed", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_5_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_120()
  l0 = self.box_PawnHealthMonitor_v3_5
  l1 = self.box_MultipleOR_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1815309114", "1815309114", "S11M030B_Main", "box_PawnHealthMonitor_v3_5.DBNO", "box_MultipleOR_120.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_133()
  l0 = self.box_PawnHealthMonitor_v3_5
  l1 = self.box_MultipleOR_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1044464348", "1044464348", "S11M030B_Main", "box_PawnHealthMonitor_v3_5.Disabled", "box_MultipleOR_133.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_5_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_32()
  l0 = self.box_PawnHealthMonitor_v3_5
  l1 = self.box_CLOController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2131172259", "2131172259", "S11M030B_Main", "box_PawnHealthMonitor_v3_5.Enabled", "box_CLOController_32.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PawnHealthMonitor_v3_5_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_120()
  l0 = self.box_PawnHealthMonitor_v3_5
  l1 = self.box_MultipleOR_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|780567422", "780567422", "S11M030B_Main", "box_PawnHealthMonitor_v3_5.Killed", "box_MultipleOR_120.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PawnHealthMonitor_v3_7_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_PawnHealthMonitor_v3_7
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1689432762", "1689432762", "S11M030B_Main", "box_PawnHealthMonitor_v3_7.DBNO", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_7_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Neutralize_Gameplay_80
  l0.Entity = self.Guttierez_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  l0 = self.box_PawnHealthMonitor_v3_7
  l1 = self.box_Neutralize_Gameplay_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|661729312", "661729312", "S11M030B_Main", "box_PawnHealthMonitor_v3_7.Disabled", "box_Neutralize_Gameplay_80.Start", l0, l1)
  l1:Start()
end
function export:f_box_PawnHealthMonitor_v3_7_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_PawnHealthMonitor_v3_7
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1193334715", "1193334715", "S11M030B_Main", "box_PawnHealthMonitor_v3_7.Killed", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_87_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_84
  l0.SoundId = "soundbinary/867520091.bnk"
  l0 = self.box_MissionMessageController_v3_87
  l1 = self.box_PlayDialog_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|73477239", "73477239", "S11M030B_Main", "box_MissionMessageController_v3_87.Out", "box_PlayDialog_v2_84.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_144_BailedOut()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_144_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_144_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_11()
  l0 = self.box_VehicleMonitor_v3_144
  l1 = self.box_PawnHealthMonitor_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1180360944", "1180360944", "S11M030B_Main", "box_VehicleMonitor_v3_144.Enabled", "box_PawnHealthMonitor_v3_11.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_144_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_144_Entered()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
  self:OnEnter_box_VehicleMonitor_v3_144()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|840803875", "840803875", "S11M030B_Main", "box_VehicleMonitor_v3_144.Entered", "box_VehicleMonitor_v3_144.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleMonitor_v3_144_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_144_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_144
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_Simple_Node_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_68
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective2",
    id = "642907"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|278116417", "278116417", "S11M030B_Main", "box_Simple_Node_77.Out", "box_MissionMessageController_v3_68.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Huerta_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1648298284"
  l0.Out = self.f_box_Pawn_Health_Controller_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1000171087", "1000171087", "S11M030B_Main", "box_Ordered_Output_10.Out", "box_Pawn_Health_Controller_58.SetInfiniteDBNO", clone, l0)
  l0:SetInfiniteDBNO()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1098595246"
  l0.Out = self.f_box_Simple_Node_46_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|537411199", "537411199", "S11M030B_Main", "box_Ordered_Output_10.Out", "box_Simple_Node_46.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  l0.Bool = self.TRAVINO_NEUTRALIZED
  l0 = self.box_PlayDialog_v2_84
  l1 = self.box_SetBoolean_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|622119313", "622119313", "S11M030B_Main", "box_PlayDialog_v2_84.Out", "box_SetBoolean_v2_26.True", l0, l1)
  l1:True()
end
function export:f_box_PGTMonitor_v2_110_AllDead()
  local l0
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_110()
  l0 = self.box_PGTMonitor_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1696741607", "1696741607", "S11M030B_Main", "box_PGTMonitor_v2_110.AllDead", "box_PGTMonitor_v2_110.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PGTMonitor_v2_110_Enabled()
  local l0
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_110()
  l0 = self.box_PGTMonitor_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1649488845", "1649488845", "S11M030B_Main", "box_PGTMonitor_v2_110.Enabled", "box_PGTMonitor_v2_110.GetEntityIDs", l0, l0)
  l0:GetEntityIDs()
end
function export:f_box_PGTMonitor_v2_110_GotEntityIDs()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTMonitor_v2_110
  self.Travino_CLO_Lieutenant = l0.EntityID[0]
  l0 = self.box_CinematicPrep_38
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTMonitor_v2_110
  l1 = self.box_CinematicPrep_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|427607818", "427607818", "S11M030B_Main", "box_PGTMonitor_v2_110.GotEntityIDs", "box_CinematicPrep_38.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CLOController_32_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_130()
  l0 = self.box_CLOController_32
  l1 = self.box_CLOController_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|307755024", "307755024", "S11M030B_Main", "box_CLOController_32.Activated", "box_CLOController_130.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_32_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_130()
  l0 = self.box_CLOController_32
  l1 = self.box_CLOController_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1179928984", "1179928984", "S11M030B_Main", "box_CLOController_32.Deactivated", "box_CLOController_130.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_SetBoolean_v2_105_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_105_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_105_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_105_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  self.HUERTA_NEUTRALIZED = l0.Target
  self:OnEnter_box_MultipleOR_35()
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1182466128", "1182466128", "S11M030B_Main", "box_SetBoolean_v2_105.SetTrue", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_SetBoolean_v2_105_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  self.HUERTA_NEUTRALIZED = l0.Target
end
function export:f_box_OnceOnly_v3_64_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_50
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346357"
  l0 = self.box_OnceOnly_v3_64
  l1 = self.box_PhoneCommunicationController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|687977771", "687977771", "S11M030B_Main", "box_OnceOnly_v3_64.Out", "box_PhoneCommunicationController_50.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Neutralize_Gameplay_74_Neutralized()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_52()
  l0 = self.box_Neutralize_Gameplay_74
  l1 = self.box_OnceOnly_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1626416154", "1626416154", "S11M030B_Main", "box_Neutralize_Gameplay_74.Neutralized", "box_OnceOnly_v3_52.In", l0, l1)
  l1:In(0)
end
function export:f_box_Neutralize_Gameplay_74_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_4
  l0.PGTMissionArea = "9223372056193134680"
  l0.AgentList = self.Guttierez_Convoy
  l0 = self.box_Neutralize_Gameplay_74
  l1 = self.box_PGTController_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1826349221", "1826349221", "S11M030B_Main", "box_Neutralize_Gameplay_74.Started", "box_PGTController_v2_4.AddScriptedAgents", l0, l1)
  l1:AddScriptedAgents()
end
function export:f_box_MissionMessageController_v3_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_19
  l0.SoundId = "soundbinary/1018141789.bnk"
  l0 = self.box_MissionMessageController_v3_76
  l1 = self.box_PlayDialog_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1234786673", "1234786673", "S11M030B_Main", "box_MissionMessageController_v3_76.Out", "box_PlayDialog_v2_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_140_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_135()
  l0 = self.box_MultipleOR_140
  l1 = self.box_CLOController_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1448386559", "1448386559", "S11M030B_Main", "box_MultipleOR_140.Out", "box_CLOController_135.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_ReinforcementSystemMonitor_v2_157_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "T_13"
  l0.ReinforcementConfig = nil
  l0.AgentList = self.Remaining_Enemies
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1353461631"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_157
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1600874943", "1600874943", "S11M030B_Main", "box_ReinforcementSystemMonitor_v2_157.Disabled", "box_ReinforcementSystemController_v2_148.AdoptScriptedAgents", l0, l1)
  l1:AdoptScriptedAgents()
end
function export:f_box_ReinforcementSystemMonitor_v2_157_Reinforcing()
  local l0
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_157()
  l0 = self.box_ReinforcementSystemMonitor_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|846595812", "846595812", "S11M030B_Main", "box_ReinforcementSystemMonitor_v2_157.Reinforcing", "box_ReinforcementSystemMonitor_v2_157.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Prepare_Convoy_176_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  l0 = self.box_Assign_Patrol_Controller_v2_40
  l0.NPC = self.Huerta_CLO_Lieutenant
  l0.Patrol = "9223372069235680084"
  l0 = self.box_Prepare_Convoy_176
  l1 = self.box_Assign_Patrol_Controller_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1922578018", "1922578018", "S11M030B_Main", "box_Prepare_Convoy_176.DestinationReached", "box_Assign_Patrol_Controller_v2_40.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Prepare_Convoy_176_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  self:OnEnter_box_OnceOnly_v3_45()
  l1 = self.box_OnceOnly_v3_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1876116246", "1876116246", "S11M030B_Main", "box_Prepare_Convoy_176.NPCsUnassigned", "box_OnceOnly_v3_45.In", l0, l1)
  l1:In(0)
end
function export:f_box_Prepare_Convoy_176_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|722833710"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_Prepare_Convoy_176
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|630651581", "630651581", "S11M030B_Main", "box_Prepare_Convoy_176.Prepped", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Prepare_Convoy_176_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
  self:OnEnter_box_PawnHealthMonitor_v3_29()
  l1 = self.box_PawnHealthMonitor_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|513539536", "513539536", "S11M030B_Main", "box_Prepare_Convoy_176.Started", "box_PawnHealthMonitor_v3_29.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Prepare_Convoy_176_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_176_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_176
  self.Huerta_CLO_Lieutenant = l0.VipID
  self.Huerta_MAN_2_Female_Gunman = l0.Escort_FrontPassenger
  self.Guttierez_Convoy = l0.AllNPCs
end
function export:f_box_Escape_Gameplay_71_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1804763621"
  l0.Out = self.f_box_Simple_Node_17_Out
  l0 = self.box_Escape_Gameplay_71
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|50139210", "50139210", "S11M030B_Main", "box_Escape_Gameplay_71.Escaped", "box_Simple_Node_17.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_71_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_71
  l1 = self.box_OnceOnly_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|737614302", "737614302", "S11M030B_Main", "box_Escape_Gameplay_71.Started", "box_OnceOnly_v3_64.In", l0, l1)
  l1:In(0)
end
function export:f_box_Integer_Arithmetics_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.TargetCounter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.TargetCounter
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1240157614"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_78_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_78_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|31384195", "31384195", "S11M030B_Main", "box_Integer_Arithmetics_82.Out", "box_Compare_Integers_v2_78.In", clone, l0)
  l0:In()
end
function export:f_box_Neutralize_Gameplay_30_Neutralized()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_87
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective",
    id = "413334"
  }
  l0 = self.box_Neutralize_Gameplay_30
  l1 = self.box_MissionMessageController_v3_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|124525469", "124525469", "S11M030B_Main", "box_Neutralize_Gameplay_30.Neutralized", "box_MissionMessageController_v3_87.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Compare_Boolean_v2_108_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Monitor_Flee_Behavior_51()
  l0 = self.box_Monitor_Flee_Behavior_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1049976484", "1049976484", "S11M030B_Main", "box_Compare_Boolean_v2_108.A_is_False", "box_Monitor_Flee_Behavior_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Assign_Patrol_Controller_v2_88_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_173
  l0.NPC = self.Guttierez_MAN_1_GunmanArmored
  l0.Patrol = "9223372069235680408"
  l0 = self.box_Assign_Patrol_Controller_v2_88
  l1 = self.box_Assign_Patrol_Controller_v2_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2052360642", "2052360642", "S11M030B_Main", "box_Assign_Patrol_Controller_v2_88.Assigned", "box_Assign_Patrol_Controller_v2_173.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Compare_Boolean_v2_131_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_34
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346355"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1468836632", "1468836632", "S11M030B_Main", "box_Compare_Boolean_v2_131.A_is_False", "box_PhoneCommunicationController_34.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_VehicleBhvController_158_StopCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_146
  l0.Vehicle = self.FleeVehicle
  l0.UseAnimation = 1
  l0 = self.box_VehicleBhvController_158
  l1 = self.box_VehicleSeatingController_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1057620780", "1057620780", "S11M030B_Main", "box_VehicleBhvController_158.StopCompleted", "box_VehicleSeatingController_146.Unassign", l0, l1)
  l1:Unassign()
end
function export:f_box_PlayDialog_v2_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_105
  l0.Bool = self.HUERTA_NEUTRALIZED
  l0 = self.box_PlayDialog_v2_19
  l1 = self.box_SetBoolean_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2105836385", "2105836385", "S11M030B_Main", "box_PlayDialog_v2_19.Out", "box_SetBoolean_v2_105.True", l0, l1)
  l1:True()
end
function export:f_box_Monitor_Flee_Behavior_47_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1308202228"
  l0.Out = self.f_box_Simple_Node_37_Out
  l0 = self.box_Monitor_Flee_Behavior_47
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|257553284", "257553284", "S11M030B_Main", "box_Monitor_Flee_Behavior_47.Disabled", "box_Simple_Node_37.In", l0, l1)
  l1:In()
end
function export:f_box_Monitor_Flee_Behavior_47_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Guttierez_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2021366197"
  l0.Started = self.f_box_Start_Update_Stop_flee_behavior_on_an_AI_98_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_Monitor_Flee_Behavior_47
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1080832128", "1080832128", "S11M030B_Main", "box_Monitor_Flee_Behavior_47.Enabled", "box_Start_Update_Stop_flee_behavior_on_an_AI_98.Start", l0, l1)
  l1:Start()
end
function export:f_box_Monitor_Flee_Behavior_47_FleeFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_161()
  l0 = self.box_Monitor_Flee_Behavior_47
  l1 = self.box_MultipleOR_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1004613665", "1004613665", "S11M030B_Main", "box_Monitor_Flee_Behavior_47.FleeFailed", "box_MultipleOR_161.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Monitor_Flee_Behavior_47_FleeStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_153()
  l0 = self.box_Monitor_Flee_Behavior_47
  l1 = self.box_MultipleOR_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|617471757", "617471757", "S11M030B_Main", "box_Monitor_Flee_Behavior_47.FleeStarted", "box_MultipleOR_153.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Monitor_Flee_Behavior_47_FleeSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_161()
  l0 = self.box_Monitor_Flee_Behavior_47
  l1 = self.box_MultipleOR_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1023897775", "1023897775", "S11M030B_Main", "box_Monitor_Flee_Behavior_47.FleeSuccess", "box_MultipleOR_161.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_52_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1642162470"
  l0.Out = self.f_box_Simple_Node_56_Out
  l0 = self.box_OnceOnly_v3_52
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|371855539", "371855539", "S11M030B_Main", "box_OnceOnly_v3_52.Out", "box_Simple_Node_56.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1058426794", "1058426794", "S11M030B_Main", "box_Simple_Node_63.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1780595075"
  l0.Out = self.f_box_Simple_Node_59_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|830672197", "830672197", "S11M030B_Main", "box_Simple_Node_46.Out", "box_Simple_Node_59.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1436102421"
  l0.Out = self.f_box_Simple_Node_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|81078639", "81078639", "S11M030B_Main", "box_Ordered_Output_31.Out", "box_Simple_Node_44.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_163()
  l0 = self.box_AISquadStateMonitor_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|729056025", "729056025", "S11M030B_Main", "box_Ordered_Output_31.Out", "box_AISquadStateMonitor_163.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PGTController_v2_12_AllSpawned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PGTMonitor_v2_110()
  l0 = self.box_PGTController_v2_12
  l1 = self.box_PGTMonitor_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|448748198", "448748198", "S11M030B_Main", "box_PGTController_v2_12.AllSpawned", "box_PGTMonitor_v2_110.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_132_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_15()
  l0 = self.box_MultipleOR_132
  l1 = self.box_PawnHealthMonitor_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1311023948", "1311023948", "S11M030B_Main", "box_MultipleOR_132.Out", "box_PawnHealthMonitor_v3_15.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CLOController_135_Activated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_134()
  l0 = self.box_CLOController_135
  l1 = self.box_CLOController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1912678852", "1912678852", "S11M030B_Main", "box_CLOController_135.Activated", "box_CLOController_134.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_135_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_134()
  l0 = self.box_CLOController_135
  l1 = self.box_CLOController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1071776120", "1071776120", "S11M030B_Main", "box_CLOController_135.Deactivated", "box_CLOController_134.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_VehicleMonitor_v3_154_BailedOut()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_154_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_154_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_117()
  l0 = self.box_VehicleMonitor_v3_154
  l1 = self.box_PawnHealthMonitor_v3_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|893822054", "893822054", "S11M030B_Main", "box_VehicleMonitor_v3_154.Enabled", "box_PawnHealthMonitor_v3_117.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_154_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_154_Entered()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
  self:OnEnter_box_VehicleMonitor_v3_154()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|352855014", "352855014", "S11M030B_Main", "box_VehicleMonitor_v3_154.Entered", "box_VehicleMonitor_v3_154.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleMonitor_v3_154_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_154_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_154
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_152_BailedOut()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_152_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_152_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_115()
  l0 = self.box_VehicleMonitor_v3_152
  l1 = self.box_PawnHealthMonitor_v3_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1317685255", "1317685255", "S11M030B_Main", "box_VehicleMonitor_v3_152.Enabled", "box_PawnHealthMonitor_v3_115.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_152_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_152_Entered()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
  self:OnEnter_box_VehicleMonitor_v3_152()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|267763818", "267763818", "S11M030B_Main", "box_VehicleMonitor_v3_152.Entered", "box_VehicleMonitor_v3_152.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VehicleMonitor_v3_152_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_152_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_152
  self.FleeVehicle = l0.VehicleID
end
function export:f_box_VehicleSeatingController_146_Unassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_159
  l0.Position = "9223372055362789289"
  l0.Affiliation = "T_13"
  l0.IsThreat = 1
  l0 = self.box_VehicleSeatingController_146
  l1 = self.box_AISquadStateController_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|133736728", "133736728", "S11M030B_Main", "box_VehicleSeatingController_146.Unassigned", "box_AISquadStateController_159.SetInUntargetedSearch", l0, l1)
  l1:SetInUntargetedSearch()
end
function export:f_box_TutorialController_93_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_167()
  l0 = self.box_TutorialController_93
  l1 = self.box_Proximity_Monitor_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1387360736", "1387360736", "S11M030B_Main", "box_TutorialController_93.DisplayRequested", "box_Proximity_Monitor_167.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_13_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1773123727"
  l0.Out = self.f_box_Get_Player_ID_43_Out
  l0 = self.box_MissionLayer_v2_13
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1726045020", "1726045020", "S11M030B_Main", "box_MissionLayer_v2_13.Loaded", "box_Get_Player_ID_43.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Integers_v2_78_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_18()
  l0 = self.box_MissionZone_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|650875063", "650875063", "S11M030B_Main", "box_Compare_Integers_v2_78.A_eq_B", "box_MissionZone_18.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Integers_v2_78_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1360492090"
  l0.Out = self.f_box_Simple_Node_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1191367951", "1191367951", "S11M030B_Main", "box_Compare_Integers_v2_78.A_lt_B", "box_Simple_Node_3.In", clone, l0)
  l0:In()
end
function export:f_box_PawnHealthMonitor_v3_117_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_PawnHealthMonitor_v3_117
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|569121245", "569121245", "S11M030B_Main", "box_PawnHealthMonitor_v3_117.DBNO", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_117_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_168()
  l0 = self.box_PawnHealthMonitor_v3_117
  l1 = self.box_TutorialController_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1629532795", "1629532795", "S11M030B_Main", "box_PawnHealthMonitor_v3_117.Disabled", "box_TutorialController_168.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PawnHealthMonitor_v3_117_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_168()
  l0 = self.box_PawnHealthMonitor_v3_117
  l1 = self.box_TutorialController_168
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|70329324", "70329324", "S11M030B_Main", "box_PawnHealthMonitor_v3_117.Enabled", "box_TutorialController_168.Display", l0, l1)
  l1:Display()
end
function export:f_box_PawnHealthMonitor_v3_117_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_PawnHealthMonitor_v3_117
  l1 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2107265539", "2107265539", "S11M030B_Main", "box_PawnHealthMonitor_v3_117.Killed", "box_MultipleOR_116.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_107_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Monitor_Flee_Behavior_47()
  l0 = self.box_Monitor_Flee_Behavior_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1975703149", "1975703149", "S11M030B_Main", "box_Compare_Boolean_v2_107.A_is_False", "box_Monitor_Flee_Behavior_47.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Assign_Patrol_Controller_v2_173_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_174
  l0.NPC = self.Guttierez_MAN_3_Sniper
  l0.Patrol = "9223372053264750772"
  l0 = self.box_Assign_Patrol_Controller_v2_173
  l1 = self.box_Assign_Patrol_Controller_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1365865657", "1365865657", "S11M030B_Main", "box_Assign_Patrol_Controller_v2_173.Assigned", "box_Assign_Patrol_Controller_v2_174.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Simple_Node_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|10037762"
  l0.Out = self.f_box_Simple_Node_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1533786568", "1533786568", "S11M030B_Main", "box_Simple_Node_37.Out", "box_Simple_Node_6.In", clone, l0)
  l0:In()
end
function export:f_box_MissionZone_18_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_114()
  l0 = self.box_MissionZone_18
  l1 = self.box_Timer_v2_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1692707688", "1692707688", "S11M030B_Main", "box_MissionZone_18.Disabled", "box_Timer_v2_114.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_167_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_171()
  l0 = self.box_Proximity_Monitor_167
  l1 = self.box_MultipleOR_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|374355196", "374355196", "S11M030B_Main", "box_Proximity_Monitor_167.Disabled", "box_MultipleOR_171.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Proximity_Monitor_167_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_167()
  l0 = self.box_Proximity_Monitor_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1736872585", "1736872585", "S11M030B_Main", "box_Proximity_Monitor_167.ExitRadius", "box_Proximity_Monitor_167.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_45_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_29()
  l0 = self.box_OnceOnly_v3_45
  l1 = self.box_PawnHealthMonitor_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|35539529", "35539529", "S11M030B_Main", "box_OnceOnly_v3_45.Out", "box_PawnHealthMonitor_v3_29.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_114()
  l0 = self.box_Timer_v2_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1814044539", "1814044539", "S11M030B_Main", "box_Simple_Node_3.Out", "box_Timer_v2_114.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_TutorialController_169_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_123()
  l0 = self.box_TutorialController_169
  l1 = self.box_Proximity_Monitor_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|443546830", "443546830", "S11M030B_Main", "box_TutorialController_169.DisplayRequested", "box_Proximity_Monitor_123.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PawnHealthMonitor_v3_23_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_PawnHealthMonitor_v3_23
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1192048425", "1192048425", "S11M030B_Main", "box_PawnHealthMonitor_v3_23.DBNO", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_23_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_140()
  l0 = self.box_PawnHealthMonitor_v3_23
  l1 = self.box_MultipleOR_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|199357334", "199357334", "S11M030B_Main", "box_PawnHealthMonitor_v3_23.Disabled", "box_MultipleOR_140.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_23_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_135()
  l0 = self.box_PawnHealthMonitor_v3_23
  l1 = self.box_CLOController_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1161307217", "1161307217", "S11M030B_Main", "box_PawnHealthMonitor_v3_23.Enabled", "box_CLOController_135.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PawnHealthMonitor_v3_23_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_139()
  l0 = self.box_PawnHealthMonitor_v3_23
  l1 = self.box_MultipleOR_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2058724231", "2058724231", "S11M030B_Main", "box_PawnHealthMonitor_v3_23.Killed", "box_MultipleOR_139.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1693225252"
  l0.Out = self.f_box_Simple_Node_42_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|683405270", "683405270", "S11M030B_Main", "box_Simple_Node_44.Out", "box_Simple_Node_42.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_48_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|701146248"
  l0.Out = self.f_box_Simple_Node_77_Out
  l0 = self.box_OnceOnly_v3_48
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2041400774", "2041400774", "S11M030B_Main", "box_OnceOnly_v3_48.Out", "box_Simple_Node_77.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_129_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346352"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1182875917", "1182875917", "S11M030B_Main", "box_Compare_Boolean_v2_129.A_is_False", "box_PhoneCommunicationController_20.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_GetNPC_150_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_150
  self.Remaining_Enemies = l0.NPCList
  self:OnEnter_box_ReinforcementSystemMonitor_v2_157()
  l1 = self.box_ReinforcementSystemMonitor_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1975368876", "1975368876", "S11M030B_Main", "box_GetNPC_150.GotNPCList", "box_ReinforcementSystemMonitor_v2_157.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_79
  l0.SoundId = "soundbinary/1923986992.bnk"
  l0 = self.box_MissionMessageController_v3_68
  l1 = self.box_PlayDialog_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1525318836", "1525318836", "S11M030B_Main", "box_MissionMessageController_v3_68.Out", "box_PlayDialog_v2_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_106_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|308594187", "308594187", "S11M030B_Main", "box_Compare_Boolean_v2_106.A_is_False", "box_Multiple_AND_33.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_TutorialController_168_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_172()
  l0 = self.box_TutorialController_168
  l1 = self.box_Proximity_Monitor_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1899696781", "1899696781", "S11M030B_Main", "box_TutorialController_168.DisplayRequested", "box_Proximity_Monitor_172.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetBoolean_v2_26_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_box_SetBoolean_v2_26_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.TRAVINO_NEUTRALIZED = l0.Target
  self:OnEnter_box_MultipleOR_35()
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2052267118", "2052267118", "S11M030B_Main", "box_SetBoolean_v2_26.SetTrue", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_26_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_26
  self.TRAVINO_NEUTRALIZED = l0.Target
end
function export:f_box_Pawn_Health_Controller_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Neutralize_Gameplay_30
  l0.Entity = self.Travino_CLO_Lieutenant
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Neutralize",
    id = "267208"
  }
  l0.BreakableSpawnedEffectsCount = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|210196810", "210196810", "S11M030B_Main", "box_Pawn_Health_Controller_61.Out", "box_Neutralize_Gameplay_30.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_38_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_70
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
  l0 = self.box_CinematicPrep_38
  l1 = self.box_MissionMessageController_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|131372469", "131372469", "S11M030B_Main", "box_CinematicPrep_38.PostOut", "box_MissionMessageController_v3_70.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Prepare_Convoy_175_ConvoyAggro()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_ConvoyAggroNotPlayer()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_ConvoyStarted()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_ConvoyStuck()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_DestinationReached()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  l0 = self.box_Assign_Patrol_Controller_v2_88
  l0.NPC = self.Guttierez_CLO_Lieutenant
  l0.Patrol = "9223372059900078419"
  l0 = self.box_Prepare_Convoy_175
  l1 = self.box_Assign_Patrol_Controller_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|941705869", "941705869", "S11M030B_Main", "box_Prepare_Convoy_175.DestinationReached", "box_Assign_Patrol_Controller_v2_88.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Prepare_Convoy_175_NPCsUnassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  self:OnEnter_box_OnceOnly_v3_27()
  l1 = self.box_OnceOnly_v3_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|662519249", "662519249", "S11M030B_Main", "box_Prepare_Convoy_175.NPCsUnassigned", "box_OnceOnly_v3_27.In", l0, l1)
  l1:In(0)
end
function export:f_box_Prepare_Convoy_175_Out()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_Prepped()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Guttierez_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1930620887"
  l0.Out = self.f_box_Pawn_Health_Controller_54_Out
  l0 = self.box_Prepare_Convoy_175
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1783293274", "1783293274", "S11M030B_Main", "box_Prepare_Convoy_175.Prepped", "box_Pawn_Health_Controller_54.SetInfiniteDBNO", l0, l1)
  l1:SetInfiniteDBNO()
end
function export:f_box_Prepare_Convoy_175_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
  self:OnEnter_box_PawnHealthMonitor_v3_7()
  l1 = self.box_PawnHealthMonitor_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|985845299", "985845299", "S11M030B_Main", "box_Prepare_Convoy_175.Started", "box_PawnHealthMonitor_v3_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Prepare_Convoy_175_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Prepare_Convoy_175_VipVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_Prepare_Convoy_175
  self.Guttierez_CLO_Lieutenant = l0.VipID
  self.Guttierez_MAN_1_GunmanArmored = l0.Escort_FrontPassenger
  self.Guttierez_MAN_3_Sniper = l0.Escort_RearLeftPassenger
  self.Huerta_Convoy = l0.AllNPCs
end
function export:f_box_Simple_Node_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_76
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective020",
    item = "SubObjective3",
    id = "642908"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|9124316", "9124316", "S11M030B_Main", "box_Simple_Node_56.Out", "box_MissionMessageController_v3_76.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Pawn_Health_Controller_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_176()
  l0 = self.box_Prepare_Convoy_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2008610351", "2008610351", "S11M030B_Main", "box_Pawn_Health_Controller_58.Out", "box_Prepare_Convoy_176.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372061019435968"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|340878978"
  l0.Out = self.f_box_AI_Agent_Zone_165_Out
  l0 = self.box_MissionCheckpointReach_21
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1534113501", "1534113501", "S11M030B_Main", "box_MissionCheckpointReach_21.Out", "box_AI_Agent_Zone_165.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_52()
  l0 = self.box_MultipleOR_49
  l1 = self.box_OnceOnly_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1392939092", "1392939092", "S11M030B_Main", "box_MultipleOR_49.Out", "box_OnceOnly_v3_52.In", l0, l1)
  l1:In(1)
end
function export:f_box_Timer_v2_55_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_176()
  l0 = self.box_Timer_v2_55
  l1 = self.box_Prepare_Convoy_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1723446253", "1723446253", "S11M030B_Main", "box_Timer_v2_55.TimeElapsed", "box_Prepare_Convoy_176.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Travino_CLO_Lieutenant
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1548408600"
  l0.Out = self.f_box_Pawn_Health_Controller_61_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|604081890", "604081890", "S11M030B_Main", "box_Ordered_Output_1.Out", "box_Pawn_Health_Controller_61.SetInfiniteDBNO", clone, l0)
  l0:SetInfiniteDBNO()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_109
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|887255857", "887255857", "S11M030B_Main", "box_Ordered_Output_1.Out", "box_Timer_v2_109.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_1_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_55
  l0.Seconds = 60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2075614306", "2075614306", "S11M030B_Main", "box_Ordered_Output_1.Out", "box_Timer_v2_55.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_1_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|407071368"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_141_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|761350755", "761350755", "S11M030B_Main", "box_Ordered_Output_1.Out", "box_Ordered_Output_141.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_79_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_69
  l0.Bool = self.GUTTIEREZ_NEUTRALIZED
  l0 = self.box_PlayDialog_v2_79
  l1 = self.box_SetBoolean_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|771039705", "771039705", "S11M030B_Main", "box_PlayDialog_v2_79.Out", "box_SetBoolean_v2_69.True", l0, l1)
  l1:True()
end
function export:f_box_SetBoolean_v2_164_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_164
  self.PlayerDetected = l0.Target
end
function export:f_box_SetBoolean_v2_164_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_164
  self.PlayerDetected = l0.Target
end
function export:f_box_SetBoolean_v2_164_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_164
  self.PlayerDetected = l0.Target
end
function export:f_box_SetBoolean_v2_164_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_164
  self.PlayerDetected = l0.Target
end
function export:f_box_SetBoolean_v2_164_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_164
  self.PlayerDetected = l0.Target
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_21
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_2
  l1 = self.box_MissionCheckpointReach_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2044961725", "2044961725", "S11M030B_Main", "box_MultipleOR_2.Out", "box_MissionCheckpointReach_21.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_18()
  l0 = self.box_MissionZone_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|844903950", "844903950", "S11M030B_Main", "box_Simple_Node_42.Out", "box_MissionZone_18.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_123_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_171()
  l0 = self.box_Proximity_Monitor_123
  l1 = self.box_MultipleOR_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1599493826", "1599493826", "S11M030B_Main", "box_Proximity_Monitor_123.Disabled", "box_MultipleOR_171.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Proximity_Monitor_123_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_123()
  l0 = self.box_Proximity_Monitor_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|989843158", "989843158", "S11M030B_Main", "box_Proximity_Monitor_123.ExitRadius", "box_Proximity_Monitor_123.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v3_15_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_PawnHealthMonitor_v3_15
  l1 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1283489139", "1283489139", "S11M030B_Main", "box_PawnHealthMonitor_v3_15.DBNO", "box_MultipleOR_132.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_15_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|307274579"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_136_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_136_Out_1
  l0 = self.box_PawnHealthMonitor_v3_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|98142708", "98142708", "S11M030B_Main", "box_PawnHealthMonitor_v3_15.Disabled", "box_Ordered_Output_136.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_15_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_132()
  l0 = self.box_PawnHealthMonitor_v3_15
  l1 = self.box_MultipleOR_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1593373685", "1593373685", "S11M030B_Main", "box_PawnHealthMonitor_v3_15.Killed", "box_MultipleOR_132.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PhoneCommunicationController_92_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|492751563"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_60_Out_3
  l0 = self.box_PhoneCommunicationController_92
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1068899699", "1068899699", "S11M030B_Main", "box_PhoneCommunicationController_92.StartCommunicationOut", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_28()
  l0 = self.box_Mission_End_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|826482130", "826482130", "S11M030B_Main", "box_Simple_Node_25.Out", "box_Mission_End_28.End", clone, l0)
  l0:End()
end
function export:f_box_Monitor_Flee_Behavior_94_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2083955809"
  l0.Out = self.f_box_Simple_Node_162_Out
  l0 = self.box_Monitor_Flee_Behavior_94
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1485075683", "1485075683", "S11M030B_Main", "box_Monitor_Flee_Behavior_94.Disabled", "box_Simple_Node_162.In", l0, l1)
  l1:In()
end
function export:f_box_Monitor_Flee_Behavior_94_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Huerta_CLO_Lieutenant
  l0.TargetList = nil
  l0.Destination = "9223372055362789289"
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602259"
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1850449547"
  l0.Started = self.f_box_Start_Update_Stop_flee_behavior_on_an_AI_99_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_Monitor_Flee_Behavior_94
  l1 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|482809987", "482809987", "S11M030B_Main", "box_Monitor_Flee_Behavior_94.Enabled", "box_Start_Update_Stop_flee_behavior_on_an_AI_99.Start", l0, l1)
  l1:Start()
end
function export:f_box_Monitor_Flee_Behavior_94_FleeFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_Monitor_Flee_Behavior_94
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2054177266", "2054177266", "S11M030B_Main", "box_Monitor_Flee_Behavior_94.FleeFailed", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Monitor_Flee_Behavior_94_FleeStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_153()
  l0 = self.box_Monitor_Flee_Behavior_94
  l1 = self.box_MultipleOR_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1280627012", "1280627012", "S11M030B_Main", "box_Monitor_Flee_Behavior_94.FleeStarted", "box_MultipleOR_153.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Monitor_Flee_Behavior_94_FleeSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_Monitor_Flee_Behavior_94
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|223958661", "223958661", "S11M030B_Main", "box_Monitor_Flee_Behavior_94.FleeSuccess", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_160_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Monitor_Flee_Behavior_51()
  l0 = self.box_MultipleOR_160
  l1 = self.box_Monitor_Flee_Behavior_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|658070327", "658070327", "S11M030B_Main", "box_MultipleOR_160.Out", "box_Monitor_Flee_Behavior_51.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_171_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionController_v4_170
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONFAILURE",
    item = "TargetEscaped",
    id = "165454"
  }
  l0 = self.box_MultipleOR_171
  l1 = self.box_MissionController_v4_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|353999763", "353999763", "S11M030B_Main", "box_MultipleOR_171.Out", "box_MissionController_v4_170.Fail", l0, l1)
  l1:Fail()
end
function export:f_box_Get_Player_ID_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|634579912", "634579912", "S11M030B_Main", "box_Get_Player_ID_43.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_59_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_33()
  l0 = self.box_Multiple_AND_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1957653931", "1957653931", "S11M030B_Main", "box_Simple_Node_59.Out", "box_Multiple_AND_33.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Simple_Node_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1739953128"
  l0.Out = self.f_box_Simple_Node_25_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1653737522", "1653737522", "S11M030B_Main", "box_Simple_Node_17.Out", "box_Simple_Node_25.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_72_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2129540112"
  l0.Out = self.f_box_Simple_Node_75_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1820805536", "1820805536", "S11M030B_Main", "box_Simple_Node_72.Out", "box_Simple_Node_75.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_153_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_150
  l0.Affiliation = "T_13"
  l0 = self.box_MultipleOR_153
  l1 = self.box_GetNPC_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1572558476", "1572558476", "S11M030B_Main", "box_MultipleOR_153.Out", "box_GetNPC_150.GetAllAlive", l0, l1)
  l1:GetAllAlive()
end
function export:f_box_Assign_Patrol_Controller_v2_40_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_36
  l0.NPC = self.Huerta_MAN_2_Female_Gunman
  l0.Patrol = "9223372069235680084"
  l0 = self.box_Assign_Patrol_Controller_v2_40
  l1 = self.box_Assign_Patrol_Controller_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|656543117", "656543117", "S11M030B_Main", "box_Assign_Patrol_Controller_v2_40.Assigned", "box_Assign_Patrol_Controller_v2_36.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Start_Update_Stop_flee_behavior_on_an_AI_99_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_144()
  l0 = self.box_VehicleMonitor_v3_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|531644019", "531644019", "S11M030B_Main", "box_Start_Update_Stop_flee_behavior_on_an_AI_99.Started", "box_VehicleMonitor_v3_144.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Multiple_AND_33_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Monitor_Flee_Behavior_94()
  l0 = self.box_Multiple_AND_33
  l1 = self.box_Monitor_Flee_Behavior_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1881979524", "1881979524", "S11M030B_Main", "box_Multiple_AND_33.Out", "box_Monitor_Flee_Behavior_94.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleBhvController_158
  l0.VehicleMaster = self.FleeVehicle
  l0.Force = 1
  l0 = self.box_MultipleOR_8
  l1 = self.box_VehicleBhvController_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|473573616", "473573616", "S11M030B_Main", "box_MultipleOR_8.Out", "box_VehicleBhvController_158.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PGTController_v2_4_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HUERTA_NEUTRALIZED
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1462772700"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_129_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PGTController_v2_4
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|444254378", "444254378", "S11M030B_Main", "box_PGTController_v2_4.ScriptedAgentsAdded", "box_Compare_Boolean_v2_129.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateController_159_UntargetedSearchSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_147()
  l0 = self.box_AISquadStateController_159
  l1 = self.box_AISquadStateMonitor_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|961515847", "961515847", "S11M030B_Main", "box_AISquadStateController_159.UntargetedSearchSet", "box_AISquadStateMonitor_147.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Pawn_Health_Controller_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Prepare_Convoy_175()
  l0 = self.box_Prepare_Convoy_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1426897381", "1426897381", "S11M030B_Main", "box_Pawn_Health_Controller_54.Out", "box_Prepare_Convoy_175.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_133_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_32()
  l0 = self.box_MultipleOR_133
  l1 = self.box_CLOController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1521084758", "1521084758", "S11M030B_Main", "box_MultipleOR_133.Out", "box_CLOController_32.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Timer_v2_109_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Prepare_Convoy_175()
  l0 = self.box_Timer_v2_109
  l1 = self.box_Prepare_Convoy_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1610263760", "1610263760", "S11M030B_Main", "box_Timer_v2_109.TimeElapsed", "box_Prepare_Convoy_175.Prep", l0, l1)
  l1:Prep()
end
function export:f_box_Start_Update_Stop_flee_behavior_on_an_AI_98_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_154()
  l0 = self.box_VehicleMonitor_v3_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|479690019", "479690019", "S11M030B_Main", "box_Start_Update_Stop_flee_behavior_on_an_AI_98.Started", "box_VehicleMonitor_v3_154.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PawnHealthMonitor_v3_115_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_PawnHealthMonitor_v3_115
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1610048372", "1610048372", "S11M030B_Main", "box_PawnHealthMonitor_v3_115.DBNO", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_115_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_93()
  l0 = self.box_PawnHealthMonitor_v3_115
  l1 = self.box_TutorialController_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|989816420", "989816420", "S11M030B_Main", "box_PawnHealthMonitor_v3_115.Disabled", "box_TutorialController_93.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PawnHealthMonitor_v3_115_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_93()
  l0 = self.box_PawnHealthMonitor_v3_115
  l1 = self.box_TutorialController_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1080940296", "1080940296", "S11M030B_Main", "box_PawnHealthMonitor_v3_115.Enabled", "box_TutorialController_93.Display", l0, l1)
  l1:Display()
end
function export:f_box_PawnHealthMonitor_v3_115_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_118()
  l0 = self.box_PawnHealthMonitor_v3_115
  l1 = self.box_MultipleOR_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|441174346", "441174346", "S11M030B_Main", "box_PawnHealthMonitor_v3_115.Killed", "box_MultipleOR_118.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Get_Player_ID_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1085224865", "1085224865", "S11M030B_Main", "box_Get_Player_ID_41.Out", "box_MultipleOR_2.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PhoneCommunicationController_50_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_24
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.Objectives.Objective030",
    item = "Objective",
    id = "355875"
  }
  l0 = self.box_PhoneCommunicationController_50
  l1 = self.box_MissionMessageController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1183953001", "1183953001", "S11M030B_Main", "box_PhoneCommunicationController_50.StartCommunicationOut", "box_MissionMessageController_v3_24.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Simple_Node_162_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1094880191"
  l0.Out = self.f_box_Simple_Node_63_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|916219063", "916219063", "S11M030B_Main", "box_Simple_Node_162.Out", "box_Simple_Node_63.In", clone, l0)
  l0:In()
end
function export:f_box_Proximity_Monitor_172_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_171()
  l0 = self.box_Proximity_Monitor_172
  l1 = self.box_MultipleOR_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|469444821", "469444821", "S11M030B_Main", "box_Proximity_Monitor_172.Disabled", "box_MultipleOR_171.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_172_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_172()
  l0 = self.box_Proximity_Monitor_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1711149086", "1711149086", "S11M030B_Main", "box_Proximity_Monitor_172.ExitRadius", "box_Proximity_Monitor_172.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Start_Update_Stop_flee_behavior_on_an_AI_57_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FleeBehaviorController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_152()
  l0 = self.box_VehicleMonitor_v3_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|2085087999", "2085087999", "S11M030B_Main", "box_Start_Update_Stop_flee_behavior_on_an_AI_57.Started", "box_VehicleMonitor_v3_152.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\S11M030B\\S11M030B.domino|@S11M030B_Main|1009848516", "1009848516", "S11M030B_Main", "box_Simple_Node_75.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:OnEnter_box_MultipleOR_118()
end
function export:OnEnter_box_Monitor_Flee_Behavior_51()
  local l0
  l0 = self.box_Monitor_Flee_Behavior_51
  l0.Target = self.Travino_CLO_Lieutenant
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_Timer_v2_114()
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_AISquadStateMonitor_163()
  local l0
  l0 = self.box_AISquadStateMonitor_163
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_MultipleOR_116()
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_MultipleOR_120()
end
function export:OnEnter_box_MultipleOR_62()
end
function export:OnEnter_box_MultipleOR_139()
end
function export:OnEnter_box_AISquadStateMonitor_147()
  local l0
  l0 = self.box_AISquadStateMonitor_147
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_OnceOnly_v3_27()
end
function export:OnEnter_box_PawnHealthMonitor_v3_29()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_29
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:OnEnter_box_MultipleOR_161()
end
function export:OnEnter_box_PawnHealthMonitor_v3_11()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_11
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:OnEnter_box_PawnHealthMonitor_v3_5()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_5
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:OnEnter_box_PawnHealthMonitor_v3_7()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_7
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:OnEnter_box_VehicleMonitor_v3_144()
  local l0
  l0 = self.box_VehicleMonitor_v3_144
  l0.Pawn = self.Huerta_CLO_Lieutenant
  l0.CheckNow = 1
end
function export:OnEnter_box_PGTMonitor_v2_110()
  local l0
  l0 = self.box_PGTMonitor_v2_110
  l0.PGTCLO[0] = "9223372047434939528"
  l0.PGTMissionArea = "9223372056193134680"
end
function export:OnEnter_box_CLOController_32()
  local l0
  l0 = self.box_CLOController_32
  l0.CLO = "9223372061008855367"
end
function export:OnEnter_box_MultipleOR_140()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_157()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_157
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_Prepare_Convoy_176()
  local l0
  l0 = self.box_Prepare_Convoy_176
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
function export:OnEnter_box_CLOController_130()
  local l0
  l0 = self.box_CLOController_130
  l0.CLO = "9223372061008855366"
end
function export:OnEnter_box_MissionZone_65()
  local l0
  l0 = self.box_MissionZone_65
  l0.MissionArea = "9223372061392311678"
  l0.MissionLayer = "S11M030B_Main_01"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Monitor_Flee_Behavior_47()
  local l0
  l0 = self.box_Monitor_Flee_Behavior_47
  l0.Target = self.Guttierez_CLO_Lieutenant
end
function export:OnEnter_box_OnceOnly_v3_52()
end
function export:OnEnter_box_MultipleOR_132()
end
function export:OnEnter_box_CLOController_135()
  local l0
  l0 = self.box_CLOController_135
  l0.CLO = "9223372061008855368"
end
function export:OnEnter_box_VehicleMonitor_v3_154()
  local l0
  l0 = self.box_VehicleMonitor_v3_154
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:OnEnter_box_VehicleMonitor_v3_152()
  local l0
  l0 = self.box_VehicleMonitor_v3_152
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:OnEnter_box_TutorialController_93()
  local l0
  l0 = self.box_TutorialController_93
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping",
    id = "165455"
  }
  l0.Duration = -1
end
function export:OnEnter_box_PawnHealthMonitor_v3_117()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_117
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:OnEnter_box_CLOController_134()
  local l0
  l0 = self.box_CLOController_134
  l0.CLO = "9223372061008855369"
end
function export:OnEnter_box_MissionZone_18()
  local l0
  l0 = self.box_MissionZone_18
  l0.MissionArea = "9223372048238132560"
  l0.MissionLayer = "S11M030B_Main_01"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Proximity_Monitor_167()
  local l0
  l0 = self.box_Proximity_Monitor_167
  l0.Entity1 = self.Travino_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
function export:OnEnter_box_OnceOnly_v3_45()
end
function export:OnEnter_box_TutorialController_169()
  local l0
  l0 = self.box_TutorialController_169
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping3",
    id = "689701"
  }
  l0.Duration = -1
end
function export:OnEnter_box_PawnHealthMonitor_v3_23()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_23
  l0.Pawn = self.Huerta_CLO_Lieutenant
end
function export:OnEnter_box_OnceOnly_v3_48()
end
function export:OnEnter_box_TutorialController_168()
  local l0
  l0 = self.box_TutorialController_168
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M035.EXTRA",
    item = "TargetEscaping2",
    id = "689700"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Prepare_Convoy_175()
  local l0
  l0 = self.box_Prepare_Convoy_175
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
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_Proximity_Monitor_123()
  local l0
  l0 = self.box_Proximity_Monitor_123
  l0.Entity1 = self.Huerta_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
function export:OnEnter_box_PawnHealthMonitor_v3_15()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_15
  l0.Pawn = self.Guttierez_CLO_Lieutenant
end
function export:OnEnter_box_Monitor_Flee_Behavior_94()
  local l0
  l0 = self.box_Monitor_Flee_Behavior_94
  l0.Target = self.Huerta_CLO_Lieutenant
end
function export:OnEnter_box_MultipleOR_160()
end
function export:OnEnter_box_MultipleOR_171()
end
function export:OnEnter_box_MultipleOR_153()
end
function export:OnEnter_box_Multiple_AND_33()
end
function export:OnEnter_box_Mission_End_28()
  local l0
  l0 = self.box_Mission_End_28
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S11M030B"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MultipleOR_133()
end
function export:OnEnter_box_PawnHealthMonitor_v3_115()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_115
  l0.Pawn = self.Travino_CLO_Lieutenant
end
function export:OnEnter_box_Proximity_Monitor_172()
  local l0
  l0 = self.box_Proximity_Monitor_172
  l0.Entity1 = self.Guttierez_CLO_Lieutenant
  l0.Entity2 = "9223372061392311678"
  l0.Radius = 1300
end
_compilerVersion = 4
