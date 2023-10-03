export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIBuddyController.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_WalkAndTalk"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk"
  self.Started = DummyFunction
  self.TalkerDead = DummyFunction
  self.ConversationCompleted = DummyFunction
  self.TalkerDestinationReached = DummyFunction
  self.Disabled = DummyFunction
  self.CombatStarted = DummyFunction
  self.PlayerInjured = DummyFunction
  self.ConversationUser2 = nil
  self.PlayerEntity = nil
  self.PrintDebug = 1
  self.ConversationTrigger = nil
  self.Icon = nil
  self.MissionTarget_ReachElevatorShaft = "9223372046446092886"
  self.Player_Vehicle = nil
  self.ConversationPaused = 0
  self.S08M010_ProximityTrigger_FollowHoratio = "9223372046880010872"
  self.WalkAndTalkActionPack = "Nuddle_WalkAndTalk"
  self.LobbyDoor = "9223372052006825374"
  self.PatrolPath = "9223372052006823569"
  self.TalkerDestinationTrigger = nil
  self.s08m010_Simple_Primitive_walkandtalklimitation = "9223372055275840235"
  self.Receptionist_NPC = nil
  self.Greeter_NPC = nil
  self.s08m010_ProximityTrigger_StartDialog = "9223372065645916290"
  self.box_MissionZone_33 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_33
  l0._graph = self
  l0._name = "box_MissionZone_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|54433232"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_OnceOnly_v3_50 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_50
  l0._graph = self
  l0._name = "box_OnceOnly_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|55578903"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_50_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_16 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_16
  l0._graph = self
  l0._name = "box_Multiple_AND_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|67967731"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_16_Out
  self.box_OnceOnly_v3_43 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_43
  l0._graph = self
  l0._name = "box_OnceOnly_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|73568295"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_43_Out
  l0.ResetOut = DummyFunction
  self.box_AISquadStateMonitor_48 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_48
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|178280894"
  l0.Enabled = self.f_box_AISquadStateMonitor_48_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_48_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_48_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|179182395"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_29_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Proximity_Monitor_9 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_9
  l0._graph = self
  l0._name = "box_Proximity_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|226413334"
  l0.Enabled = self.f_box_Proximity_Monitor_9_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_9_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_9_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_OnceOnly_v3_46 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_46
  l0._graph = self
  l0._name = "box_OnceOnly_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|361090060"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_46_Out
  l0.ResetOut = DummyFunction
  self.box_GameplayConversationController_v3_39 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_39
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|430088401"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_GameplayConversationController_v3_39_Stopped
  l0.Paused = self.f_box_GameplayConversationController_v3_39_Paused
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = self.f_box_GameplayConversationController_v3_39_Finished
  self.box_Intel_Controller_68 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_68
  l0._graph = self
  l0._name = "box_Intel_Controller_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|432780584"
  l0.Enabled = self.f_box_Intel_Controller_68_Enabled
  l0.Disabled = DummyFunction
  self.box_CLOController_28 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|447372707"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_28_OnUserInPlace
  self.box_AISquadStateMonitor_59 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_59
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|496838353"
  l0.Enabled = self.f_box_AISquadStateMonitor_59_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_59_Disabled
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_59_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = DummyFunction
  l0.None = DummyFunction
  self.box_MultipleOR_60 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_60
  l0._graph = self
  l0._name = "box_MultipleOR_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|608761996"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_60_Out
  self.box_TriggerMonitor_v2_45 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_45
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|613175161"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_45_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_45_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_74 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_74
  l0._graph = self
  l0._name = "box_MultipleOR_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|635729895"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_74_Out
  self.box_Proximity_Monitor_12 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_12
  l0._graph = self
  l0._name = "box_Proximity_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|739923708"
  l0.Enabled = self.f_box_Proximity_Monitor_12_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_12_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_12_ExitRadius
  self.box_AI_Buddy_Controller_18 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_18
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|752505729"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = DummyFunction
  self.box_CLOController_53 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_53
  l0._graph = self
  l0._name = "box_CLOController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|842615253"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_53_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Reach_Gameplay_4 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_4
  l0._graph = self
  l0._name = "box_Reach_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|852702693"
  l0.Started = self.f_box_Reach_Gameplay_4_Started
  l0.Stopped = self.f_box_Reach_Gameplay_4_Stopped
  l0.Reached = DummyFunction
  self.box_GameplayConversationController_v3_54 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_54
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|905275739"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self.box_VehicleMonitor_v3_64 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_64
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|917175803"
  l0.Enabled = self.f_box_VehicleMonitor_v3_64_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_64_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_64_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
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
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1054957541"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_Proximity_Monitor_36 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_36
  l0._graph = self
  l0._name = "box_Proximity_Monitor_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1097818127"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_36_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_36_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_CLOController_52 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_52
  l0._graph = self
  l0._name = "box_CLOController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1152457183"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_52_OnUserInPlace
  self.box_TriggerMonitor_v2_24 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_24
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1162499668"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_24_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_24_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_SetBoolean_v2_17 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_17
  l0._graph = self
  l0._name = "box_SetBoolean_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1181660214"
  l0.Out = self.f_box_SetBoolean_v2_17_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_17_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_17_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_17_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_17_SetFromBool
  self.box_SetBoolean_v2_40 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_40
  l0._graph = self
  l0._name = "box_SetBoolean_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1198952377"
  l0.Out = self.f_box_SetBoolean_v2_40_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_40_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_40_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_40_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_40_SetFromBool
  self.box_MultipleOR_62 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_62
  l0._graph = self
  l0._name = "box_MultipleOR_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1210234081"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_62_Out
  self.box_TriggerMonitor_v2_20 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_20
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1217220280"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_20_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_20_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Proximity_Monitor_55 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_55
  l0._graph = self
  l0._name = "box_Proximity_Monitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1397190349"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Proximity_Monitor_55_Disabled
  l0.EnterRadius = self.f_box_Proximity_Monitor_55_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_LogicGate_v2_71 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_71
  l0._graph = self
  l0._name = "box_LogicGate_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1441505599"
  l0.Out = self.f_box_LogicGate_v2_71_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_OnceOnly_v3_26 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_26
  l0._graph = self
  l0._name = "box_OnceOnly_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1488048364"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_26_Out
  l0.ResetOut = DummyFunction
  self.box_AI_Buddy_Controller_7 = cbox:CreateBox("domino/System/AIBuddyController.lua")
  l0 = self.box_AI_Buddy_Controller_7
  l0._graph = self
  l0._name = "box_AI_Buddy_Controller_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1571344672"
  l0.Out = DummyFunction
  l0.Updated = DummyFunction
  l0.IsFollowing = DummyFunction
  l0.IsGoingToCLO = DummyFunction
  l0.IsWaiting = DummyFunction
  l0.Assigned = self.f_box_AI_Buddy_Controller_7_Assigned
  self.box_OnceOnly_v3_15 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_15
  l0._graph = self
  l0._name = "box_OnceOnly_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1621625697"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_15_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_49 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_49
  l0._graph = self
  l0._name = "box_OnceOnly_v3_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1638813095"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_49_Out
  l0.ResetOut = DummyFunction
  self.box_VehicleMonitor_v3_61 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_61
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1704008733"
  l0.Enabled = self.f_box_VehicleMonitor_v3_61_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_61_Disabled
  l0.Enter = self.f_box_VehicleMonitor_v3_61_Enter
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
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
  self.box_Multiple_AND_21 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_21
  l0._graph = self
  l0._name = "box_Multiple_AND_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1720932987"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_21_Out
  self.box_SetBoolean_v2_41 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_41
  l0._graph = self
  l0._name = "box_SetBoolean_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1772560074"
  l0.Out = self.f_box_SetBoolean_v2_41_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_41_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_41_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_41_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_41_SetFromBool
  self.box_PawnHealthMonitor_v3_38 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_38
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1872542764"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_38_Disabled
  l0.Damaged = self.f_box_PawnHealthMonitor_v3_38_Damaged
  l0.Killed = self.f_box_PawnHealthMonitor_v3_38_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_38_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_GameplayConversationController_v3_37 = cbox:CreateBox("domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_37
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1875960715"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self.box_Assign_Patrol_Controller_v2_19 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_19
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2140343021"
  l0.Out = DummyFunction
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.SpeedSet = self.f_box_Assign_Patrol_Controller_v2_19_SpeedSet
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  self:OnEnter_box_FelonySystemController_v2_8()
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|512561223", "512561223", "S08M010_WalkAndTalk", "Disable", "box_FelonySystemController_v2_8.Enable", self, l0)
  l0:Enable()
end
function export:Start()
  local l0
  l0 = self.box_SetBoolean_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1095446303", "1095446303", "S08M010_WalkAndTalk", "Start", "box_SetBoolean_v2_41.False", self, l0)
  l0:False()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|453194878", "453194878", "S08M010_WalkAndTalk", "box_Ordered_Output_51.Out", "ConversationCompleted", clone, self)
  self:ConversationCompleted()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_50()
  l0 = self.box_OnceOnly_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1223722806", "1223722806", "S08M010_WalkAndTalk", "box_Ordered_Output_51.Out", "box_OnceOnly_v3_50.In", clone, l0)
  l0:In(0)
end
function export:f_box_OnceOnly_v3_50_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_71()
  l0 = self.box_OnceOnly_v3_50
  l1 = self.box_LogicGate_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|482647664", "482647664", "S08M010_WalkAndTalk", "box_OnceOnly_v3_50.Out", "box_LogicGate_v2_71.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_33()
  l0 = self.box_MissionZone_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1937358049", "1937358049", "S08M010_WalkAndTalk", "box_Simple_Node_35.Out", "box_MissionZone_33.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Entity_v2_23_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1288849427", "1288849427", "S08M010_WalkAndTalk", "box_Compare_Entity_v2_23.Equal", "box_TriggerMonitor_v2_24.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_16_Out()
  local l0
  self = self._graph
  l0 = self.box_Multiple_AND_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|827975727", "827975727", "S08M010_WalkAndTalk", "box_Multiple_AND_16.Out", "Started", l0, self)
  self:Started()
end
function export:f_box_OnceOnly_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1200075111"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_OnceOnly_v3_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|284544481", "284544481", "S08M010_WalkAndTalk", "box_OnceOnly_v3_43.Out", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingMonitor_63_EntityIsNotInVehicle()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reach_Gameplay_4()
  l0 = self.box_Reach_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1167093583", "1167093583", "S08M010_WalkAndTalk", "box_VehicleSeatingMonitor_63.EntityIsNotInVehicle", "box_Reach_Gameplay_4.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_AISquadStateMonitor_48_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_AISquadStateMonitor_48
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|5387096", "5387096", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_48.CombatState", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_48_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_59()
  l0 = self.box_AISquadStateMonitor_48
  l1 = self.box_AISquadStateMonitor_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1747165956", "1747165956", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_48.Disabled", "box_AISquadStateMonitor_59.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_48_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_59()
  l0 = self.box_AISquadStateMonitor_48
  l1 = self.box_AISquadStateMonitor_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1496125380", "1496125380", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_48.Enabled", "box_AISquadStateMonitor_59.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_29_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_53
  l0.User = self.Greeter_NPC
  l0 = self.box_CLOController_29
  l1 = self.box_CLOController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2087661882", "2087661882", "S08M010_WalkAndTalk", "box_CLOController_29.UnspawnedUser", "box_CLOController_53.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Proximity_Monitor_9_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_61()
  l0 = self.box_Proximity_Monitor_9
  l1 = self.box_VehicleMonitor_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|723343473", "723343473", "S08M010_WalkAndTalk", "box_Proximity_Monitor_9.Disabled", "box_VehicleMonitor_v3_61.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_9_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_61()
  l0 = self.box_Proximity_Monitor_9
  l1 = self.box_VehicleMonitor_v3_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|815525602", "815525602", "S08M010_WalkAndTalk", "box_Proximity_Monitor_9.Enabled", "box_VehicleMonitor_v3_61.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Proximity_Monitor_9_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  l0.Pawn = self.PlayerEntity
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_VehicleSeatingMonitor_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|169132072"
  l0.EntityIsInVehicle = DummyFunction
  l0.EntityIsNotInVehicle = self.f_box_VehicleSeatingMonitor_63_EntityIsNotInVehicle
  l0.VehicleIsEmpty = DummyFunction
  l0.VehicleIsNotEmpty = DummyFunction
  l0 = self.box_Proximity_Monitor_9
  l1 = Boxes[PathID("domino/System/VehicleSeatingMonitor.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|261046938", "261046938", "S08M010_WalkAndTalk", "box_Proximity_Monitor_9.EnterRadius", "box_VehicleSeatingMonitor_63.IsInVehicle", l0, l1)
  l1:IsInVehicle()
end
function export:f_box_Player_State_Controller_14_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|543750218"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|562366059", "562366059", "S08M010_WalkAndTalk", "box_Player_State_Controller_14.MaxSpeedSet", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Entity_v2_22_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_20()
  l0 = self.box_TriggerMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|743649375", "743649375", "S08M010_WalkAndTalk", "box_Compare_Entity_v2_22.Equal", "box_TriggerMonitor_v2_20.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_39()
  l0 = self.box_GameplayConversationController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1012477047", "1012477047", "S08M010_WalkAndTalk", "box_Ordered_Output_30.Out", "box_GameplayConversationController_v3_39.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  DrawTextToScreen("Comment: WORK AROUND CONVERSATION NOT STOPPING PROPERLY", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: WORK AROUND CONVERSATION NOT STOPPING PROPERLY")
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|452059657"
  l0.Out = self.f_box_Simple_Node_5_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2025945940", "2025945940", "S08M010_WalkAndTalk", "box_Ordered_Output_30.Out", "box_Simple_Node_5.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_30_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|60286914"
  l0.Out = self.f_box_Simple_Node_35_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|177072469", "177072469", "S08M010_WalkAndTalk", "box_Ordered_Output_30.Out", "box_Simple_Node_35.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1703424073"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0 = self.box_OnceOnly_v3_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|566937071", "566937071", "S08M010_WalkAndTalk", "box_OnceOnly_v3_46.Out", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_GameplayConversationController_v3_39_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|34038841"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_GameplayConversationController_v3_39
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|685358466", "685358466", "S08M010_WalkAndTalk", "box_GameplayConversationController_v3_39.Finished", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_GameplayConversationController_v3_39_Paused()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_39
  l1 = self.box_SetBoolean_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|629623485", "629623485", "S08M010_WalkAndTalk", "box_GameplayConversationController_v3_39.Paused", "box_SetBoolean_v2_40.True", l0, l1)
  l1:True()
end
function export:f_box_GameplayConversationController_v3_39_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_26()
  l0 = self.box_GameplayConversationController_v3_39
  l1 = self.box_OnceOnly_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|152579990", "152579990", "S08M010_WalkAndTalk", "box_GameplayConversationController_v3_39.Stopped", "box_OnceOnly_v3_26.In", l0, l1)
  l1:In(0)
end
function export:f_box_Intel_Controller_68_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = self.WalkAndTalkActionPack
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoNormal"
  l0._graph = self
  l0._name = "box_SetActionMap_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|960284778"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_32_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_Intel_Controller_68
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|396267666", "396267666", "S08M010_WalkAndTalk", "box_Intel_Controller_68.Enabled", "box_SetActionMap_v2_32.Push", l0, l1)
  l1:Push()
end
function export:f_box_CLOController_28_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_28
  self.Receptionist_NPC = l0.UserID
  l0 = self.box_CLOController_52
  l0.CLO = self.Greeter
  l0 = self.box_CLOController_28
  l1 = self.box_CLOController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1923572544", "1923572544", "S08M010_WalkAndTalk", "box_CLOController_28.OnUserInPlace", "box_CLOController_52.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_26()
  l0 = self.box_OnceOnly_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|110034392", "110034392", "S08M010_WalkAndTalk", "box_Simple_Node_5.Out", "box_OnceOnly_v3_26.In", clone, l0)
  l0:In(1)
end
function export:f_box_AISquadStateMonitor_59_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_60()
  l0 = self.box_AISquadStateMonitor_59
  l1 = self.box_MultipleOR_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2117416078", "2117416078", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_59.CombatState", "box_MultipleOR_60.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_59_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_38()
  l0 = self.box_AISquadStateMonitor_59
  l1 = self.box_PawnHealthMonitor_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2015846845", "2015846845", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_59.Disabled", "box_PawnHealthMonitor_v3_38.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_59_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_38()
  l0 = self.box_AISquadStateMonitor_59
  l1 = self.box_PawnHealthMonitor_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1494510250", "1494510250", "S08M010_WalkAndTalk", "box_AISquadStateMonitor_59.Enabled", "box_PawnHealthMonitor_v3_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_39()
  l0 = self.box_GameplayConversationController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|639518569", "639518569", "S08M010_WalkAndTalk", "box_Ordered_Output_3.Out", "box_GameplayConversationController_v3_39.Pause", clone, l0)
  l0:Pause()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_18
  l0.NPC = self.ConversationUser2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1617065029", "1617065029", "S08M010_WalkAndTalk", "box_Ordered_Output_3.Out", "box_AI_Buddy_Controller_18.Wait", clone, l0)
  l0:Wait()
end
function export:f_box_MultipleOR_60_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1803695959"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_MultipleOR_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|366274441", "366274441", "S08M010_WalkAndTalk", "box_MultipleOR_60.Out", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_45_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_GameplayConversationController_v3_39()
  l0 = self.box_TriggerMonitor_v2_45
  l1 = self.box_GameplayConversationController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|886535990", "886535990", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_45.Disabled", "box_GameplayConversationController_v3_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_45_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_45
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.ConversationUser2
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_47"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1446153301"
  l1.Out = DummyFunction
  l1.Equal = self.f_box_Compare_Entity_v2_47_Equal
  l1.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_45
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|972422345", "972422345", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_45.Enter", "box_Compare_Entity_v2_47.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_31_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = 1
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|851818349"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = self.f_box_Player_State_Controller_58_CombatAllowedSet
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1063617101", "1063617101", "S08M010_WalkAndTalk", "box_SetActionMap_v2_31.Popped", "box_Player_State_Controller_58.SetCombatAllowed", clone, l0)
  l0:SetCombatAllowed()
end
function export:f_box_MultipleOR_74_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_71()
  l0 = self.box_MultipleOR_74
  l1 = self.box_LogicGate_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1626668418", "1626668418", "S08M010_WalkAndTalk", "box_MultipleOR_74.Out", "box_LogicGate_v2_71.Close", l0, l1)
  l1:Close()
end
function export:f_box_FelonySystemController_v2_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1473055325", "1473055325", "S08M010_WalkAndTalk", "box_FelonySystemController_v2_8.Disabled", "box_MultipleOR_66.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_FelonySystemController_v2_8_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|539866702", "539866702", "S08M010_WalkAndTalk", "box_FelonySystemController_v2_8.Enabled", "box_Proximity_Monitor_9.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Proximity_Monitor_12_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_48()
  l0 = self.box_Proximity_Monitor_12
  l1 = self.box_AISquadStateMonitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|780208410", "780208410", "S08M010_WalkAndTalk", "box_Proximity_Monitor_12.Disabled", "box_AISquadStateMonitor_48.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Proximity_Monitor_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2032922206"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_42_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_42_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_42_Out_4
  l0 = self.box_Proximity_Monitor_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1124709704", "1124709704", "S08M010_WalkAndTalk", "box_Proximity_Monitor_12.Enabled", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_Proximity_Monitor_12_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_Proximity_Monitor_12
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1103870086", "1103870086", "S08M010_WalkAndTalk", "box_Proximity_Monitor_12.ExitRadius", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Set_Entity_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.ConversationUser2 = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.DestinationTrigger
  l0._graph = self
  l0._name = "box_Set_Entity_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1349541606"
  l0.Out = self.f_box_Set_Entity_44_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1658941750", "1658941750", "S08M010_WalkAndTalk", "box_Set_Entity_10.Out", "box_Set_Entity_44.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_CLOController_53_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self.box_CLOController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|154755468", "154755468", "S08M010_WalkAndTalk", "box_CLOController_53.UnspawnedUser", "Disabled", l0, self)
  self:Disabled()
end
function export:f_box_Player_State_Controller_58_CombatAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_29
  l0.User = self.Receptionist_NPC
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|404427595", "404427595", "S08M010_WalkAndTalk", "box_Player_State_Controller_58.CombatAllowedSet", "box_CLOController_29.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Reach_Gameplay_4_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Sprint"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|235952824"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_14_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Reach_Gameplay_4
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1908842101", "1908842101", "S08M010_WalkAndTalk", "box_Reach_Gameplay_4.Started", "box_Player_State_Controller_14.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_Reach_Gameplay_4_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = self.MoveSpeed
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1305661357"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_1_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Reach_Gameplay_4
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2067910602", "2067910602", "S08M010_WalkAndTalk", "box_Reach_Gameplay_4.Stopped", "box_Player_State_Controller_1.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_Simple_Node_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_39()
  l0 = self.box_GameplayConversationController_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1233985077", "1233985077", "S08M010_WalkAndTalk", "box_Simple_Node_67.Out", "box_GameplayConversationController_v3_39.Resume", clone, l0)
  l0:Resume()
end
function export:f_box_Set_Entity_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PlayerEntity = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Talker
  l0._graph = self
  l0._name = "box_Set_Entity_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|771724876"
  l0.Out = self.f_box_Set_Entity_10_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1461857973", "1461857973", "S08M010_WalkAndTalk", "box_Set_Entity_6.Out", "box_Set_Entity_10.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_VehicleMonitor_v3_64_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1970806525"
  l0.Out = self.f_box_Simple_Node_65_Out
  l0 = self.box_VehicleMonitor_v3_64
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2117599612", "2117599612", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_64.Disabled", "box_Simple_Node_65.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_64_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_62()
  l0 = self.box_VehicleMonitor_v3_64
  l1 = self.box_MultipleOR_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1628859761", "1628859761", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_64.Enabled", "box_MultipleOR_62.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v3_64_Leave()
  local l0
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_64()
  l0 = self.box_VehicleMonitor_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|22927255", "22927255", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_64.Leave", "box_VehicleMonitor_v3_64.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetActionMap_v2_32_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = 0
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1101455535"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = self.f_box_Player_State_Controller_57_CombatAllowedSet
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1819221748", "1819221748", "S08M010_WalkAndTalk", "box_SetActionMap_v2_32.Pushed", "box_Player_State_Controller_57.SetCombatAllowed", clone, l0)
  l0:SetCombatAllowed()
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_9()
  l0 = self.box_MultipleOR_66
  l1 = self.box_Proximity_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1231593366", "1231593366", "S08M010_WalkAndTalk", "box_MultipleOR_66.Out", "box_Proximity_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Set_Entity_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PatrolPath = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_28
  l0.CLO = self.Receptionist
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1045334474", "1045334474", "S08M010_WalkAndTalk", "box_Set_Entity_11.Out", "box_CLOController_28.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Proximity_Monitor_36_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_37
  l0.User1 = self.Receptionist_NPC
  l0.User2 = self.Receptionist_NPC
  l0.Conversation = "ConversationSetting.9223372057008326222"
  l0 = self.box_Proximity_Monitor_36
  l1 = self.box_GameplayConversationController_v3_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|222909144", "222909144", "S08M010_WalkAndTalk", "box_Proximity_Monitor_36.Disabled", "box_GameplayConversationController_v3_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_36_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1146920132", "1146920132", "S08M010_WalkAndTalk", "box_Proximity_Monitor_36.EnterRadius", "box_Proximity_Monitor_36.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Player_State_Controller_57_CombatAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonySystemController_v2_8()
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1019271835", "1019271835", "S08M010_WalkAndTalk", "box_Player_State_Controller_57.CombatAllowedSet", "box_FelonySystemController_v2_8.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_Buddy_Controller_7
  l0.NPC = self.ConversationUser2
  l0.Patrol = self.PatrolPath
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1184250853", "1184250853", "S08M010_WalkAndTalk", "box_Ordered_Output_2.Out", "box_AI_Buddy_Controller_7.AssignPatrol", clone, l0)
  l0:AssignPatrol()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConversationPaused
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1463967930"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_13_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1568381132", "1568381132", "S08M010_WalkAndTalk", "box_Ordered_Output_2.Out", "box_Compare_Boolean_v2_13.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_52_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_52
  self.Greeter_NPC = l0.UserID
  l0 = self.box_Intel_Controller_68
  l0.Entity = self.ConversationUser2
  l0 = self.box_CLOController_52
  l1 = self.box_Intel_Controller_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|12566294", "12566294", "S08M010_WalkAndTalk", "box_CLOController_52.OnUserInPlace", "box_Intel_Controller_68.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_24_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_TriggerMonitor_v2_24
  l1 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|827147792", "827147792", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_24.Disabled", "box_Multiple_AND_21.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_TriggerMonitor_v2_24_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_24
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.PlayerEntity
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_23"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|62919807"
  l1.Out = DummyFunction
  l1.Equal = self.f_box_Compare_Entity_v2_23_Equal
  l1.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_24
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1820794319", "1820794319", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_24.Enter", "box_Compare_Entity_v2_23.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_17_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.PrintDebug = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.PrintDebug = l0.Target
end
function export:f_box_SetBoolean_v2_17_SetFromBool()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.PrintDebug = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Player
  l0._graph = self
  l0._name = "box_Set_Entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|913215899"
  l0.Out = self.f_box_Set_Entity_6_Out
  l0 = self.box_SetBoolean_v2_17
  l1 = Boxes[PathID("domino/System/SetEntity.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1434999690", "1434999690", "S08M010_WalkAndTalk", "box_SetBoolean_v2_17.SetFromBool", "box_Set_Entity_6.FromEntity", l0, l1)
  l1:FromEntity()
end
function export:f_box_SetBoolean_v2_17_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.PrintDebug = l0.Target
end
function export:f_box_SetBoolean_v2_17_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_17
  self.PrintDebug = l0.Target
end
function export:f_box_SetBoolean_v2_40_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_40_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self.ConversationPaused = l0.Target
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_16()
  l0 = self.box_Multiple_AND_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|828089864", "828089864", "S08M010_WalkAndTalk", "box_Ordered_Output_27.Out", "box_Multiple_AND_16.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_45()
  l0 = self.box_TriggerMonitor_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|777264499", "777264499", "S08M010_WalkAndTalk", "box_Ordered_Output_27.Out", "box_TriggerMonitor_v2_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_62_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_4()
  l0 = self.box_MultipleOR_62
  l1 = self.box_Reach_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|504387486", "504387486", "S08M010_WalkAndTalk", "box_MultipleOR_62.Out", "box_Reach_Gameplay_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_20_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_TriggerMonitor_v2_20
  l1 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1238689169", "1238689169", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_20.Disabled", "box_Multiple_AND_21.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_TriggerMonitor_v2_20_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_20
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.ConversationUser2
  l1._graph = self
  l1._name = "box_Compare_Entity_v2_22"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|303013650"
  l1.Out = DummyFunction
  l1.Equal = self.f_box_Compare_Entity_v2_22_Equal
  l1.NotEqual = DummyFunction
  l0 = self.box_TriggerMonitor_v2_20
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2072828605", "2072828605", "S08M010_WalkAndTalk", "box_TriggerMonitor_v2_20.Enter", "box_Compare_Entity_v2_22.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_36()
  l0 = self.box_Proximity_Monitor_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2003568565", "2003568565", "S08M010_WalkAndTalk", "box_Ordered_Output_56.Out", "box_Proximity_Monitor_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_55()
  l0 = self.box_Proximity_Monitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1954833948", "1954833948", "S08M010_WalkAndTalk", "box_Ordered_Output_56.Out", "box_Proximity_Monitor_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Player_State_Controller_1_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1116852942"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1790464164", "1790464164", "S08M010_WalkAndTalk", "box_Player_State_Controller_1.MaxSpeedSet", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_33()
  l0 = self.box_MissionZone_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1421045456", "1421045456", "S08M010_WalkAndTalk", "box_Simple_Node_34.Out", "box_MissionZone_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Set_Entity_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.TalkerDestinationTrigger = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.WalkPatrolPath
  l0._graph = self
  l0._name = "box_Set_Entity_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1067065500"
  l0.Out = self.f_box_Set_Entity_11_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1394623663", "1394623663", "S08M010_WalkAndTalk", "box_Set_Entity_44.Out", "box_Set_Entity_11.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_Proximity_Monitor_55_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_GameplayConversationController_v3_54
  l0.User1 = self.Greeter_NPC
  l0.User2 = self.Greeter_NPC
  l0.Conversation = "ConversationSetting.9223372057008326222"
  l0 = self.box_Proximity_Monitor_55
  l1 = self.box_GameplayConversationController_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|964643436", "964643436", "S08M010_WalkAndTalk", "box_Proximity_Monitor_55.Disabled", "box_GameplayConversationController_v3_54.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_55_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_55()
  l0 = self.box_Proximity_Monitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1412163205", "1412163205", "S08M010_WalkAndTalk", "box_Proximity_Monitor_55.EnterRadius", "box_Proximity_Monitor_55.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_LogicGate_v2_71_Out()
  local l0
  self = self._graph
  l0 = self.box_LogicGate_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1516331103", "1516331103", "S08M010_WalkAndTalk", "box_LogicGate_v2_71.Out", "TalkerDestinationReached", l0, self)
  self:TalkerDestinationReached()
end
function export:f_box_Compare_Entity_v2_47_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_45()
  l0 = self.box_TriggerMonitor_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|641265000", "641265000", "S08M010_WalkAndTalk", "box_Compare_Entity_v2_47.Equal", "box_TriggerMonitor_v2_45.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_13_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|818926150", "818926150", "S08M010_WalkAndTalk", "box_Compare_Boolean_v2_13.A_is_False", "box_OnceOnly_v3_43.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Boolean_v2_13_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|909569101"
  l0.Out = self.f_box_Simple_Node_67_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|199243385", "199243385", "S08M010_WalkAndTalk", "box_Compare_Boolean_v2_13.A_is_True", "box_Simple_Node_67.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_26_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Sprint"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1967055664"
  l0.MaxSpeedSet = self.f_box_Player_State_Controller_25_MaxSpeedSet
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_OnceOnly_v3_26
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|106909208", "106909208", "S08M010_WalkAndTalk", "box_OnceOnly_v3_26.Out", "box_Player_State_Controller_25.SetMaxSpeed", l0, l1)
  l1:SetMaxSpeed()
end
function export:f_box_AI_Buddy_Controller_7_Assigned()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_19
  l0.NPC = self.ConversationUser2
  l0.Patrol = self.PatrolPath
  l0.Speed = 2
  l0 = self.box_AI_Buddy_Controller_7
  l1 = self.box_Assign_Patrol_Controller_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|52494334", "52494334", "S08M010_WalkAndTalk", "box_AI_Buddy_Controller_7.Assigned", "box_Assign_Patrol_Controller_v2_19.SetSpeed", l0, l1)
  l1:SetSpeed()
end
function export:f_box_OnceOnly_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_16()
  l0 = self.box_OnceOnly_v3_15
  l1 = self.box_Multiple_AND_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1179463830", "1179463830", "S08M010_WalkAndTalk", "box_OnceOnly_v3_15.Out", "box_Multiple_AND_16.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_OnceOnly_v3_49_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1233040637"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_OnceOnly_v3_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|731717913", "731717913", "S08M010_WalkAndTalk", "box_OnceOnly_v3_49.Out", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|833217766", "833217766", "S08M010_WalkAndTalk", "box_Ordered_Output_73.Out", "TalkerDead", clone, self)
  self:TalkerDead()
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1217375861", "1217375861", "S08M010_WalkAndTalk", "box_Ordered_Output_73.Out", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_VehicleMonitor_v3_61_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_12()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|53097285", "53097285", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_61.Disabled", "box_Proximity_Monitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_61_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_12()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_Proximity_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1690301019", "1690301019", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_61.Enabled", "box_Proximity_Monitor_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_61_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_64()
  l0 = self.box_VehicleMonitor_v3_61
  l1 = self.box_VehicleMonitor_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|502994193", "502994193", "S08M010_WalkAndTalk", "box_VehicleMonitor_v3_61.Enter", "box_VehicleMonitor_v3_64.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Multiple_AND_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_50()
  l0 = self.box_Multiple_AND_21
  l1 = self.box_OnceOnly_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|347098146", "347098146", "S08M010_WalkAndTalk", "box_Multiple_AND_21.Out", "box_OnceOnly_v3_50.In", l0, l1)
  l1:In(1)
end
function export:f_box_SetBoolean_v2_41_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_41_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConversationPaused = l0.Target
  l0 = self.box_SetBoolean_v2_17
  l0.Bool = self.Debug
  l0 = self.box_SetBoolean_v2_41
  l1 = self.box_SetBoolean_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|148703303", "148703303", "S08M010_WalkAndTalk", "box_SetBoolean_v2_41.SetFalse", "box_SetBoolean_v2_17.FromBool", l0, l1)
  l1:FromBool()
end
function export:f_box_SetBoolean_v2_41_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_41_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConversationPaused = l0.Target
end
function export:f_box_SetBoolean_v2_41_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_41
  self.ConversationPaused = l0.Target
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1995328989", "1995328989", "S08M010_WalkAndTalk", "box_Ordered_Output_75.Out", "CombatStarted", clone, self)
  self:CombatStarted()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_74()
  l0 = self.box_MultipleOR_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|397211402", "397211402", "S08M010_WalkAndTalk", "box_Ordered_Output_75.Out", "box_MultipleOR_74.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PawnHealthMonitor_v3_38_Damaged()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_46()
  l0 = self.box_PawnHealthMonitor_v3_38
  l1 = self.box_OnceOnly_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|779187844", "779187844", "S08M010_WalkAndTalk", "box_PawnHealthMonitor_v3_38.Damaged", "box_OnceOnly_v3_46.In", l0, l1)
  l1:In(0)
end
function export:f_box_PawnHealthMonitor_v3_38_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_46()
  l0 = self.box_PawnHealthMonitor_v3_38
  l1 = self.box_OnceOnly_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2094392097", "2094392097", "S08M010_WalkAndTalk", "box_PawnHealthMonitor_v3_38.DBNO", "box_OnceOnly_v3_46.In", l0, l1)
  l1:In(2)
end
function export:f_box_PawnHealthMonitor_v3_38_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|329283184"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_30_Out_2
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0 = self.box_PawnHealthMonitor_v3_38
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|978667908", "978667908", "S08M010_WalkAndTalk", "box_PawnHealthMonitor_v3_38.Disabled", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_PawnHealthMonitor_v3_38_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_46()
  l0 = self.box_PawnHealthMonitor_v3_38
  l1 = self.box_OnceOnly_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|408610085", "408610085", "S08M010_WalkAndTalk", "box_PawnHealthMonitor_v3_38.Killed", "box_OnceOnly_v3_46.In", l0, l1)
  l1:In(1)
end
function export:f_box_Player_State_Controller_25_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = self.WalkAndTalkActionPack
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|625360906"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_31_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|601457054", "601457054", "S08M010_WalkAndTalk", "box_Player_State_Controller_25.MaxSpeedSet", "box_SetActionMap_v2_31.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Simple_Node_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1501419057", "1501419057", "S08M010_WalkAndTalk", "box_Simple_Node_65.Out", "box_MultipleOR_66.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_48()
  l0 = self.box_AISquadStateMonitor_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|296442986", "296442986", "S08M010_WalkAndTalk", "box_Ordered_Output_42.Out", "box_AISquadStateMonitor_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_20()
  l0 = self.box_TriggerMonitor_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|19387129", "19387129", "S08M010_WalkAndTalk", "box_Ordered_Output_42.Out", "box_TriggerMonitor_v2_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_42_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_24()
  l0 = self.box_TriggerMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1221856271", "1221856271", "S08M010_WalkAndTalk", "box_Ordered_Output_42.Out", "box_TriggerMonitor_v2_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_42_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|1318620629"
  l0.Out = self.f_box_Simple_Node_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|640667028", "640667028", "S08M010_WalkAndTalk", "box_Ordered_Output_42.Out", "box_Simple_Node_34.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_42_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|2119403760", "2119403760", "S08M010_WalkAndTalk", "box_Ordered_Output_42.Out", "box_OnceOnly_v3_49.In", clone, l0)
  l0:In(0)
end
function export:f_box_Assign_Patrol_Controller_v2_19_SpeedSet()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_19
  l1 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|143618210", "143618210", "S08M010_WalkAndTalk", "box_Assign_Patrol_Controller_v2_19.SpeedSet", "box_OnceOnly_v3_15.In", l0, l1)
  l1:In(0)
end
function export:OnEnter_box_MissionZone_33()
  local l0
  l0 = self.box_MissionZone_33
  l0.MissionArea = self.MissionArea
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_OnceOnly_v3_50()
end
function export:OnEnter_box_Multiple_AND_16()
end
function export:OnEnter_box_AISquadStateMonitor_48()
  local l0
  l0 = self.box_AISquadStateMonitor_48
  l0.Affiliation = "SFPD"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_Proximity_Monitor_9()
  local l0
  l0 = self.box_Proximity_Monitor_9
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.ConversationUser2
  l0.Radius = 6
  l0.CheckNow = 1
end
function export:OnEnter_box_OnceOnly_v3_46()
end
function export:OnEnter_box_GameplayConversationController_v3_39()
  local l0
  l0 = self.box_GameplayConversationController_v3_39
  l0.User1 = self.PlayerEntity
  l0.User2 = self.ConversationUser2
  l0.Conversation = self.Conversation
end
function export:OnEnter_box_AISquadStateMonitor_59()
  local l0
  l0 = self.box_AISquadStateMonitor_59
  l0.Affiliation = "UZulu"
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_60()
end
function export:OnEnter_box_TriggerMonitor_v2_45()
  local l0
  l0 = self.box_TriggerMonitor_v2_45
  l0.Trigger = self.s08m010_ProximityTrigger_StartDialog
end
function export:OnEnter_box_MultipleOR_74()
end
function export:OnEnter_box_FelonySystemController_v2_8()
  local l0
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_WalkAndTalk|661738079"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_8_Enabled
  l0.Disabled = self.f_box_FelonySystemController_v2_8_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
end
function export:OnEnter_box_Proximity_Monitor_12()
  local l0
  l0 = self.box_Proximity_Monitor_12
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.ConversationUser2
  l0.Radius = 8
  l0.CheckNow = 1
end
function export:OnEnter_box_Reach_Gameplay_4()
  local l0
  l0 = self.box_Reach_Gameplay_4
  l0.Entity = self.ConversationUser2
  l0.Entity_AreaRadius = 0
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Follow",
    id = "167934"
  }
end
function export:OnEnter_box_VehicleMonitor_v3_64()
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_Proximity_Monitor_36()
  local l0
  l0 = self.box_Proximity_Monitor_36
  l0.Entity1 = self.ConversationUser2
  l0.Entity2 = self.Receptionist_NPC
  l0.Radius = 8
end
function export:OnEnter_box_TriggerMonitor_v2_24()
  local l0
  l0 = self.box_TriggerMonitor_v2_24
  l0.Trigger = self.TalkerDestinationTrigger
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_62()
end
function export:OnEnter_box_TriggerMonitor_v2_20()
  local l0
  l0 = self.box_TriggerMonitor_v2_20
  l0.Trigger = self.TalkerDestinationTrigger
  l0.CheckNow = 1
end
function export:OnEnter_box_Proximity_Monitor_55()
  local l0
  l0 = self.box_Proximity_Monitor_55
  l0.Entity1 = self.ConversationUser2
  l0.Entity2 = self.Greeter_NPC
  l0.Radius = 8
end
function export:OnEnter_box_LogicGate_v2_71()
end
function export:OnEnter_box_OnceOnly_v3_26()
end
function export:OnEnter_box_VehicleMonitor_v3_61()
end
function export:OnEnter_box_Multiple_AND_21()
end
function export:OnEnter_box_PawnHealthMonitor_v3_38()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_38
  l0.Pawn = self.ConversationUser2
end
function export:Started()
end
function export:TalkerDead()
end
function export:ConversationCompleted()
end
function export:TalkerDestinationReached()
end
function export:Disabled()
end
function export:CombatStarted()
end
function export:PlayerInjured()
end
_compilerVersion = 4
